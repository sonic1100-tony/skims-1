package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.repository.InsCrRelpcRelRepository;
import com.skims.domain.repository.InsCrRelpcRepository;
import com.skims.domain.repository.InsInsCrRepository;
import com.skims.dto.ContractInformationDto;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
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
    ObjectMapper mapper;

    public Optional<ContractInformationDto> getContractDetailInformation(String plyno) {

        /** 채번 Sample */
        Optional<String> optionalS = insInsCrRepository.findMaxPlyno();
        String newPolicyNumber = null;

        if( optionalS.isPresent() ) {
            if( NumberUtils.isDigits(optionalS.get()) ) {
                BigDecimal temp = new BigDecimal(optionalS.get()).add(BigDecimal.ONE);
                newPolicyNumber = padLeftZeros(temp.toString(),10);
            }
        }
        else
            newPolicyNumber = "0000000001";

        log.info("증권번호 채번 테스트: {}", newPolicyNumber);

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
