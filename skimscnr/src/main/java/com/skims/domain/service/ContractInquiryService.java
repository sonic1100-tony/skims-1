package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.constant.RelpcTpcdEnum;
import com.skims.domain.entity.*;
import com.skims.domain.repository.*;
import com.skims.dto.ContractInformationDto;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
public class ContractInquiryService {

    @Autowired
    InsInsCrRepository insInsCrRepository;

    @Autowired
    InsCrRelpcRepository insCrRelpcRepository;

    @Autowired
    InsCrRelpcRelRepository insCrRelpcRelRepository;

    @Autowired
    InsNrdpsTisrdAtrRepository insNrdpsTisrdAtrRepository;

    @Autowired
    InsCrCvrRepository insCrCvrRepository;

    @Autowired
    ObjectMapper mapper;

    /**
     * 계약상세정보 조회
     * @param plyno
     * @return
     */
    public Optional<ContractInformationDto> getContractDetailInformation(String plyno) {

        return insInsCrRepository.findByPlynoAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(plyno,
                LocalDateTime.now(),
                LocalDateTime.now()).map(
                        insInsCr -> ContractInformationDto.builder()
                                .insuranceContract(mapper.convertValue(insInsCr, ContractInformationDto.InsuranceContract.class))
                                .contractors(insCrRelpcRepository.findByPlynoAndRelpcTpcdAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(
                                        plyno,
                                        "01",
                                        LocalDateTime.now(),
                                        LocalDateTime.now())
                                        .stream().map(e->mapper.convertValue(e, ContractInformationDto.Contractor.class))
                                        .map(
                                                contractor -> contractor.toBuilder()
                                                        .relpcRelcd("01")
                                                        .build() )
                                        .collect(Collectors.toList()))
                                .insuredPeople(insCrRelpcRepository.findByPlynoAndRelpcTpcdAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(
                                        plyno,
                                        "02",
                                        LocalDateTime.now(),
                                        LocalDateTime.now()).stream().map(e->mapper.convertValue(e, ContractInformationDto.InsuredPerson.class))
                                        .map(
                                                insuredPerson -> insuredPerson.toBuilder()
                                                        .relpcRelcd("01")
                                                        .build() )
                                        .collect(Collectors.toList()))
                                .beneficiaries(insCrRelpcRepository.findByPlynoAndRelpcTpcdAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(
                                        plyno,
                                        "11",
                                        LocalDateTime.now(),
                                        LocalDateTime.now()).stream().map(e->mapper.convertValue(e, ContractInformationDto.Beneficiary.class))
                                        .map(
                                                beneficiary -> beneficiary.toBuilder()
                                                        .relpcRelcd("01")
                                                        .build() )
                                        .collect(Collectors.toList()))
                                .build());
    }

    /**
     * 증권번호 생성
     * @return
     */
    public String createPolicyNumber() {

        /** 채번 Sample */
        Optional<String> optionalS = insInsCrRepository.findMaxPlyno();
        String policyNumber = "0000000001";

        if( optionalS.isPresent() ) {
            if( NumberUtils.isDigits(optionalS.get()) ) {
                BigDecimal temp = new BigDecimal(optionalS.get()).add(BigDecimal.ONE);
                policyNumber = padLeftZeros(temp.toString(),10);
            }
        }

        log.info("증권번호 채번 테스트: {}", policyNumber);

        return policyNumber;
    }

    /**
     * 계약상세정보 생성
     * @param dto
     */
    public void createContractDetailInformation(ContractInformationDto dto) {

        dto.setPlyno(createPolicyNumber());

        LocalDate apStrdt = LocalDate.now();                                // 적용시작일자
        LocalDate apNddt = LocalDate.of(9999,12,31);  // 적용종료일자
        LocalDateTime ndsApStrDthms = apStrdt.atStartOfDay();               // 배서승인시작일자
        LocalDateTime ndsApNdDthms = apNddt.atStartOfDay();                 // 배서승인종료일자
        String ndsno = "0000";                                              // 배서번호
        String userId = "testId";                                           // 사용자ID
        LocalDateTime localDateTime = LocalDateTime.now();                  // 현재일시
        String stRelpcTpcd = "02";                                          // 관계자유형코드(주피보험자)


        // 보험계약
        insInsCrRepository.saveAndFlush(mapper.convertValue(dto.getInsuranceContract(), InsInsCr.class).toBuilder()
                .plyno(dto.getPlyno())
                .ndsno(ndsno)
                .apStrdt(apStrdt)
                .apNddt(apNddt)
                .ndsApStrDthms(ndsApStrDthms)
                .ndsApNdDthms(ndsApNdDthms)
                .inpUsrId(userId)
                .inpDthms(localDateTime)
                .mdfUsrId(userId)
                .mdfDthms(localDateTime)
                .build());

        // 계약관계자(피보험자)
        dto.getInsuredPeople().stream().forEach(
                e-> {
                    // 관계자유형코드 = 피보험자 && 대표자여부 = "1"
                    if( "02".equals(e.getRelpcTpcd()) && "1".equals(e.getPrsRelpcYn()) ) {
                        dto.setMnNrdpsRelpcSeqno(e.getRelpcSeqno());
                    }

                    insCrRelpcRepository.saveAndFlush(mapper.convertValue(e, InsCrRelpc.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());

                    insCrRelpcRelRepository.saveAndFlush(mapper.convertValue(e, InsCrRelpcRel.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .stRelpcSeqno(dto.getMnNrdpsRelpcSeqno())
                            .stRelpcTpcd(RelpcTpcdEnum.RELPC_TPCD_02.getCode())
                            .cnftRelpcSeqno(e.getRelpcSeqno())
                            .cnftRelpcTpcd(e.getRelpcTpcd())
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());

                    insNrdpsTisrdAtrRepository.saveAndFlush(mapper.convertValue(e, InsNrdpsTisrdAtr.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());;

                    e.getCoverages().stream().forEach(
                            ee -> {
                                insCrCvrRepository.saveAndFlush(mapper.convertValue(ee, InsCrCvr.class).toBuilder()
                                        .plyno(dto.getPlyno())
                                        .ndsno(ndsno)
                                        .apStrdt(apStrdt)
                                        .apNddt(apNddt)
                                        .ndsApStrDthms(ndsApStrDthms)
                                        .ndsApNdDthms(ndsApNdDthms)
                                        .inpUsrId(userId)
                                        .inpDthms(localDateTime)
                                        .mdfUsrId(userId)
                                        .mdfDthms(localDateTime)
                                        .build());
                            }
                    );
                }
        );

        // 계약관계자(계약자)
        dto.getContractors().stream().forEach(
                e-> {
                    insCrRelpcRepository.saveAndFlush(mapper.convertValue(e, InsCrRelpc.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());

                    insCrRelpcRelRepository.saveAndFlush(mapper.convertValue(e, InsCrRelpcRel.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .stRelpcSeqno(dto.getMnNrdpsRelpcSeqno())
                            .stRelpcTpcd(RelpcTpcdEnum.RELPC_TPCD_02.getCode())
                            .cnftRelpcSeqno(e.getRelpcSeqno())
                            .cnftRelpcTpcd(e.getRelpcTpcd())
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());
                }
        );

        // 계약관계자(수익자)
        dto.getBeneficiaries().stream().forEach(
                e-> {
                    insCrRelpcRepository.saveAndFlush(mapper.convertValue(e, InsCrRelpc.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());

                    insCrRelpcRelRepository.saveAndFlush(mapper.convertValue(e, InsCrRelpcRel.class).toBuilder()
                            .plyno(dto.getPlyno())
                            .ndsno(ndsno)
                            .apStrdt(apStrdt)
                            .apNddt(apNddt)
                            .ndsApStrDthms(ndsApStrDthms)
                            .ndsApNdDthms(ndsApNdDthms)
                            .stRelpcSeqno(dto.getMnNrdpsRelpcSeqno())
                            .stRelpcTpcd(RelpcTpcdEnum.RELPC_TPCD_02.getCode())
                            .cnftRelpcSeqno(e.getRelpcSeqno())
                            .cnftRelpcTpcd(e.getRelpcTpcd())
                            .inpUsrId(userId)
                            .inpDthms(localDateTime)
                            .mdfUsrId(userId)
                            .mdfDthms(localDateTime)
                            .build());
                }
        );
    }

    public String padLeftZeros(String inputString, int length) {
        if (inputString.length() >= length) {
            return inputString;
        }
        StringBuilder sb = new StringBuilder();
        while (sb.length() < length - inputString.length()) {
            sb.append('0');
        }
        sb.append(inputString);

        return sb.toString();
    }
}
