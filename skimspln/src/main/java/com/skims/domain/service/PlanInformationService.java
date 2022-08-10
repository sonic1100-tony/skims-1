package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.*;
import com.skims.domain.repository.*;
import com.skims.dto.PlanInformationDto;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class PlanInformationService {

    @Autowired
    InsInsPlRepository insInsPlRepository;
    @Autowired
    InsPlRelpcRepository insPlRelpcRepository;
    @Autowired
    InsPlNrdpsTisrdAtrRepository insPlNrdpsTisrdAtrRepository;
    @Autowired
    InsPlCvrRepository insPlCvrRepository;
    @Autowired
    InsPlRelpcRelRepository insPlRelpcRelRepository;
    @Autowired
    ObjectMapper mapper;

    public Optional<PlanInformationDto> getPlanInformation(String plno, BigDecimal cgafChSeqno) {

        PlanInformationDto dto = new PlanInformationDto();

        //설계 조회
        Optional<InsInsPl> insInsPl = insInsPlRepository.findByPlnoAndCgafChSeqno(plno, cgafChSeqno);
        dto.setPlno(plno);
        dto.setCgafChSeqno(cgafChSeqno);
        dto.setInsurancePlan(mapper.convertValue(insInsPl, PlanInformationDto.InsurancePlan.class));

        //피보험자 조회
        //관계자유형코드(relpc_tpcd) 02:피보험자
        List<InsPlRelpc> insPlRelpcs = insPlRelpcRepository.findByPlnoAndCgafChSeqnoAndRelpcTpcd(plno, cgafChSeqno, "02");
        dto.setInsuredPersons(insPlRelpcs.stream().map(e->{
            PlanInformationDto.InsuredPerson insuredPerson = mapper.convertValue(e, PlanInformationDto.InsuredPerson.class);
            //설계피보험자부보자속성 조회
            Optional<InsPlNrdpsTisrdAtr> insPlNrdpsTisrdAtr = insPlNrdpsTisrdAtrRepository.findByPlnoAndCgafChSeqnoAndRelpcSeqno(plno, cgafChSeqno, insuredPerson.getRelpcSeqno());
            if(insPlNrdpsTisrdAtr.isPresent()) {
                insuredPerson.setDrveTycd(insPlNrdpsTisrdAtr.get().getDrveTycd());
                insuredPerson.setJbcd(insPlNrdpsTisrdAtr.get().getJbcd());
                insuredPerson.setJbChSeqno(insPlNrdpsTisrdAtr.get().getJbChSeqno());
                insuredPerson.setInjrRnkcd(insPlNrdpsTisrdAtr.get().getInjrRnkcd());
            }
            //관계자관계 조회
            Optional<InsPlRelpcRel> insPlRelpcRel = insPlRelpcRelRepository.findByPlnoAndCgafChSeqnoAndCnftRelpcSeqnoAndCnftRelpcTpcd(plno, cgafChSeqno, insuredPerson.getRelpcSeqno(), insuredPerson.getRelpcTpcd());
            insuredPerson.setRelpcRelcd(insPlRelpcRel.get().getRelpcRelcd()); //관계자관계코드
            
            //설계담보 조회
            //담보대상구분코드(cvrBjFlgcd) 01:피보험자
            List<InsPlCvr> insPlCvrs = insPlCvrRepository.findByPlnoAndCgafChSeqnoAndCvrBjFlgcdAndRelpcOjSeqno(plno, cgafChSeqno, "01",insuredPerson.getRelpcSeqno());
            List<PlanInformationDto.Coverage> coverages = new ArrayList<>();
            insPlCvrs.forEach(f->{
                coverages.add(mapper.convertValue(f, PlanInformationDto.Coverage.class));
            });
            insuredPerson.setCoverages(coverages);

            return insuredPerson;
        }).collect(Collectors.toList()));

        return Optional.ofNullable(dto);
    }
    public String savePlanInformation(PlanInformationDto dto) {

        String planNumber = "";
        if(dto.getPlno().isEmpty())
        {
            planNumber = this.getPlanNumber();
            dto.setPlno(planNumber);
        }

        InsInsPl insInsPl = InsInsPl.builder()
                .plno(dto.getPlno())
                .cgafChSeqno(dto.getCgafChSeqno())
                .pldt(dto.getInsurancePlan().getPldt())
                .valdPlYn("1")
                .cmMtdcd(dto.getInsurancePlan().getCmMtdcd())
                .plStcd(dto.getInsurancePlan().getPlStcd())
                .plStChdt(dto.getInsurancePlan().getPlStChdt())
                .xpDmgrt(new BigDecimal(0))
                .plyno(dto.getInsurancePlan().getPlyno())
                .cnrdt(dto.getInsurancePlan().getCnrdt())
                .fnlCrStcd(dto.getInsurancePlan().getFnlCrStcd())
                .fnlCrDtStcd(dto.getInsurancePlan().getFnlCrDtStcd())
                .fnlCrStChdt(dto.getInsurancePlan().getFnlCrStChdt())
                .fnlPymSeq(dto.getInsurancePlan().getFnlPymSeq())
                .fnlPymYymm(dto.getInsurancePlan().getFnlPymYymm())
                .plyLvlFlgcd("01")
                .gdcd(dto.getInsurancePlan().getGdcd())
                .ikdGrpcd(dto.getInsurancePlan().getIkdGrpcd())
                .apldt(dto.getInsurancePlan().getApldt())
                .trmSctFlgcd(dto.getInsurancePlan().getTrmSctFlgcd())
                .insSt(dto.getInsurancePlan().getInsSt())
                .insClstr(dto.getInsurancePlan().getInsClstr())
                .insDays(dto.getInsurancePlan().getInsDays())
                .instrMc(dto.getInsurancePlan().getInstrMc())
                .bfcrAprt(new BigDecimal(0))
                .fstiRpPrm(dto.getInsurancePlan().getFstiRpPrm())
                .dpsrt(new BigDecimal(0))
                .fcntrDmgrt(new BigDecimal(0))
                .dmgrtMdCfc(new BigDecimal(0))
                .pymTrmFlgcd(dto.getInsurancePlan().getPymTrmFlgcd())
                .pymTrm(dto.getInsurancePlan().getPymTrm())
                .pymTrmcd(dto.getInsurancePlan().getPymTrmcd())
                .rlPymTrm(dto.getInsurancePlan().getRlPymTrm())
                .ndFlgcd(dto.getInsurancePlan().getNdFlgcd())
                .nd(dto.getInsurancePlan().getNd())
                .ndcd(dto.getInsurancePlan().getNdcd())
                .rlNdTrm(dto.getInsurancePlan().getRlNdTrm())
                .pymCyccd(dto.getInsurancePlan().getPymCyccd())
                .mwWlamt(new BigDecimal(0))
                .rviNt(new BigDecimal(0))
                .anPyGirt(new BigDecimal(0))
                .txPfamt(new BigDecimal(0))
                .grDscrt(new BigDecimal(0))
                .baPrm(dto.getInsurancePlan().getBaPrm())
                .apPrm(dto.getInsurancePlan().getApPrm())
                .dhStfno(dto.getInsurancePlan().getDhStfno())
                .mdfUsrId("test")
                .mdfDthms(LocalDateTime.now())
                .build();

        if(!planNumber.isEmpty()) {
            insInsPl.setInpUsrId("test");
            insInsPl.setInpDthms(LocalDateTime.now());
        }

        insInsPlRepository.save(insInsPl);

        for(int i=0; i<dto.getInsuredPersons().size(); i++)
        {
            InsPlRelpc insPlRelpc = InsPlRelpc.builder()
                    .plno(dto.getPlno())
                    .cgafChSeqno(dto.getCgafChSeqno())
                    .relpcSeqno(dto.getInsuredPersons().get(i).getRelpcSeqno())
                    .ikdGrpcd(dto.getInsurancePlan().getIkdGrpcd())
                    .relpcTpcd(dto.getInsuredPersons().get(i).getRelpcTpcd())
                    .relpcStcd(dto.getInsuredPersons().get(i).getRelpcStcd())
                    .stChdt(dto.getInsuredPersons().get(i).getStChdt())
                    .prsRelpcYn(dto.getInsuredPersons().get(i).getPrsRelpcYn())
                    .ctmno(dto.getInsuredPersons().get(i).getCtmno())
                    .prmPymRt(new BigDecimal(0))
                    .utRt(new BigDecimal(0))
                    .mdfUsrId("test")
                    .mdfDthms(LocalDateTime.now())
                    .build();

            if(!planNumber.isEmpty()) {
                insPlRelpc.setInpUsrId("test");
                insPlRelpc.setInpDthms(LocalDateTime.now());
            }

            insPlRelpcRepository.save(insPlRelpc);

            InsPlNrdpsTisrdAtr insPlNrdpsTisrdAtr = InsPlNrdpsTisrdAtr.builder()
                    .plno(dto.getPlno())
                    .cgafChSeqno(dto.getCgafChSeqno())
                    .relpcSeqno(dto.getInsuredPersons().get(i).getRelpcSeqno())
                    .ikdGrpcd(dto.getInsurancePlan().getIkdGrpcd())
                    .drveTycd(dto.getInsuredPersons().get(i).getDrveTycd())
                    .sexcd(dto.getInsuredPersons().get(i).getSexcd())
                    .age(dto.getInsuredPersons().get(i).getAge())
                    .jbcd(dto.getInsuredPersons().get(i).getJbcd())
                    .jbChSeqno(dto.getInsuredPersons().get(i).getJbChSeqno())
                    .injrRnkcd(dto.getInsuredPersons().get(i).getInjrRnkcd())
                    .mnthAvgPa(new BigDecimal(0))
                    .yearPaTamt(new BigDecimal(0))
                    .dscrt(new BigDecimal(0))
                    .mdfUsrId("test")
                    .mdfDthms(LocalDateTime.now())
                    .build();

            if(!planNumber.isEmpty()) {
                insPlNrdpsTisrdAtr.setInpUsrId("test");
                insPlNrdpsTisrdAtr.setInpDthms(LocalDateTime.now());
            }

            insPlNrdpsTisrdAtrRepository.save(insPlNrdpsTisrdAtr);

            InsPlRelpcRel insPlRelpcRel = InsPlRelpcRel.builder()
                    .plno(dto.getPlno())
                    .cgafChSeqno(dto.getCgafChSeqno())
                    .stRelpcSeqno(new BigDecimal(1))
                    .cnftRelpcSeqno(dto.getInsuredPersons().get(i).getRelpcSeqno())
                    .cnftRelpcTpcd(dto.getInsuredPersons().get(i).getRelpcTpcd())
                    .relpcRelcd(dto.getInsuredPersons().get(i).getRelpcRelcd())
                    .deIbnfDvrt(new BigDecimal(0))
                    .mdfUsrId("test")
                    .mdfDthms(LocalDateTime.now())
                    .build();

            if(!planNumber.isEmpty()) {
                insPlRelpcRel.setInpUsrId("test");
                insPlRelpcRel.setInpDthms(LocalDateTime.now());
            }

            insPlRelpcRelRepository.save(insPlRelpcRel);

            for(int j=0; j<dto.getInsuredPersons().get(i).getCoverages().size(); j++)
            {
                InsPlCvr insPlCvr = InsPlCvr.builder()
                        .plno(dto.getPlno())
                        .cgafChSeqno(dto.getCgafChSeqno())
                        .cvrcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrcd())
                        .cvrSeqno(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrSeqno())
                        .ikdGrpcd(dto.getInsurancePlan().getIkdGrpcd())
                        .cvrBaTrtFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrBaTrtFlgcd())
                        .cvrStcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrStcd())
                        .cvrStChdt(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrStChdt())
                        .isamt(dto.getInsuredPersons().get(i).getCoverages().get(j).getIsamt())
                        .ndsIsamt(new BigDecimal(0))
                        .baPrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getBaPrm())
                        .ndsBaPrm(new BigDecimal(0))
                        .apPrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getApPrm())
                        .ndsApPrm(new BigDecimal(0))
                        .scdInsTrmApprm(new BigDecimal(0))
                        .insSt(dto.getInsuredPersons().get(i).getCoverages().get(j).getInsSt())
                        .insClstr(dto.getInsuredPersons().get(i).getCoverages().get(j).getInsClstr())
                        .selfChamt(new BigDecimal(0))
                        .chbfApPrm(new BigDecimal(0))
                        .chafApPrm(new BigDecimal(0))
                        .pymCyccd(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymCyccd())
                        .pymTrmcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymTrmcd())
                        .cvrFnlPymYymm(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrFnlPymYymm())
                        .cvrFnlPymSeq(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrFnlPymSeq())
                        .ndFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getNdFlgcd())
                        .nd(dto.getInsuredPersons().get(i).getCoverages().get(j).getNd())
                        .ndcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getNdcd())
                        .rlNdTrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getRlNdTrm())
                        .pymTrmFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymTrmFlgcd())
                        .pymTrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymTrm())
                        .rlPymTrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getRlPymTrm())
                        .nrdpsApAge(dto.getInsuredPersons().get(i).getCoverages().get(j).getNrdpsApAge())
                        .isamtCd(dto.getInsuredPersons().get(i).getCoverages().get(j).getIsamtCd())
                        .xpDmamt(new BigDecimal(0))
                        .mdDmamt(new BigDecimal(0))
                        .trtApCvrPrmsm(new BigDecimal(0))
                        .agrRt(new BigDecimal(0))
                        .woncrCvSelfChamt(new BigDecimal(0))
                        .dcRt(new BigDecimal(0))
                        .adSelfChamt(new BigDecimal(0))
                        .mdfUsrId("test")
                        .mdfDthms(LocalDateTime.now())
                        .build();

                if(!planNumber.isEmpty()) {
                    insPlCvr.setInpUsrId("test");
                    insPlCvr.setInpDthms(LocalDateTime.now());
                }

                insPlCvrRepository.save(insPlCvr);
            }

        }
        return dto.getPlno();

    }

    private String getPlanNumber(){

        Optional<String> maxPlno = insInsPlRepository.findMaxPlno();
        String planNumber = null;

        if(maxPlno.isPresent()){
            if( NumberUtils.isDigits(maxPlno.get()) ) {
                BigDecimal temp = new BigDecimal(maxPlno.get()).add(BigDecimal.ONE);
                planNumber = padLeftZeros(temp.toString(),15);
            }
        }

        return planNumber;
    }

    private String padLeftZeros(String inputString, int length) {
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
