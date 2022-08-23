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
            insuredPerson.setCoverages(insPlCvrs.stream().map(f-> mapper.convertValue(f, PlanInformationDto.Coverage.class)).collect(Collectors.toList()));
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
        InsInsPl insInsPl = insInsPlRepository.findByPlnoAndCgafChSeqno(dto.getPlno(), dto.getCgafChSeqno())
                .orElseGet(() -> InsInsPl.builder().build());

        insInsPl.setPlno(dto.getPlno());
        insInsPl.setCgafChSeqno(dto.getCgafChSeqno());
        insInsPl.setPldt(dto.getInsurancePlan().getPldt());
        insInsPl.setValdPlYn("1");
        insInsPl.setCmMtdcd(dto.getInsurancePlan().getCmMtdcd());
        insInsPl.setPlStcd(dto.getInsurancePlan().getPlStcd());
        insInsPl.setPlStChdt(dto.getInsurancePlan().getPlStChdt());
        insInsPl.setXpDmgrt(new BigDecimal(0));
        insInsPl.setPlyno(dto.getInsurancePlan().getPlyno());
        insInsPl.setCnrdt(dto.getInsurancePlan().getCnrdt());
        insInsPl.setFnlCrStcd(dto.getInsurancePlan().getFnlCrStcd());
        insInsPl.setFnlCrDtStcd(dto.getInsurancePlan().getFnlCrDtStcd());
        insInsPl.setFnlCrStChdt(dto.getInsurancePlan().getFnlCrStChdt());
        insInsPl.setFnlPymSeq(dto.getInsurancePlan().getFnlPymSeq());
        insInsPl.setFnlPymYymm(dto.getInsurancePlan().getFnlPymYymm());
        insInsPl.setPlyLvlFlgcd("01");
        insInsPl.setGdcd(dto.getInsurancePlan().getGdcd());
        insInsPl.setIkdGrpcd(dto.getInsurancePlan().getIkdGrpcd());
        insInsPl.setApldt(dto.getInsurancePlan().getApldt());
        insInsPl.setTrmSctFlgcd(dto.getInsurancePlan().getTrmSctFlgcd());
        insInsPl.setInsSt(dto.getInsurancePlan().getInsSt());
        insInsPl.setInsClstr(dto.getInsurancePlan().getInsClstr());
        insInsPl.setInsDays(dto.getInsurancePlan().getInsDays());
        insInsPl.setInstrMc(dto.getInsurancePlan().getInstrMc());
        insInsPl.setBfcrAprt(new BigDecimal(0));
        insInsPl.setFstiRpPrm(dto.getInsurancePlan().getFstiRpPrm());
        insInsPl.setDpsrt(new BigDecimal(0));
        insInsPl.setFcntrDmgrt(new BigDecimal(0));
        insInsPl.setDmgrtMdCfc(new BigDecimal(0));
        insInsPl.setPymTrmFlgcd(dto.getInsurancePlan().getPymTrmFlgcd());
        insInsPl.setPymTrm(dto.getInsurancePlan().getPymTrm());
        insInsPl.setPymTrmcd(dto.getInsurancePlan().getPymTrmcd());
        insInsPl.setRlPymTrm(dto.getInsurancePlan().getRlPymTrm());
        insInsPl.setNdFlgcd(dto.getInsurancePlan().getNdFlgcd());
        insInsPl.setNd(dto.getInsurancePlan().getNd());
        insInsPl.setNdcd(dto.getInsurancePlan().getNdcd());
        insInsPl.setRlNdTrm(dto.getInsurancePlan().getRlNdTrm());
        insInsPl.setPymCyccd(dto.getInsurancePlan().getPymCyccd());
        insInsPl.setMwWlamt(new BigDecimal(0));
        insInsPl.setRviNt(new BigDecimal(0));
        insInsPl.setAnPyGirt(new BigDecimal(0));
        insInsPl.setTxPfamt(new BigDecimal(0));
        insInsPl.setGrDscrt(new BigDecimal(0));
        insInsPl.setBaPrm(dto.getInsurancePlan().getBaPrm());
        insInsPl.setApPrm(dto.getInsurancePlan().getApPrm());
        insInsPl.setDhStfno(dto.getInsurancePlan().getDhStfno());
        insInsPl.setMdfUsrId("test");
        insInsPl.setMdfDthms(LocalDateTime.now());

        if(!planNumber.isEmpty()) {
            insInsPl.setInpUsrId("test");
            insInsPl.setInpDthms(LocalDateTime.now());
        }
        insInsPlRepository.save(insInsPl);

        for(int i=0; i<dto.getInsuredPersons().size(); i++)
        {
            InsPlRelpc insPlRelpc;
            if(!planNumber.isEmpty()) {
                insPlRelpc = InsPlRelpc.builder().build();
            }
            else{
                insPlRelpc = insPlRelpcRepository.findByPlnoAndCgafChSeqnoAndRelpcTpcd(dto.getPlno(), dto.getCgafChSeqno(), dto.getInsuredPersons().get(i).getRelpcTpcd()).get(i);
            }
            insPlRelpc.setPlno(dto.getPlno());
            insPlRelpc.setCgafChSeqno(dto.getCgafChSeqno());
            insPlRelpc.setRelpcSeqno(dto.getInsuredPersons().get(i).getRelpcSeqno());
            insPlRelpc.setIkdGrpcd(dto.getInsurancePlan().getIkdGrpcd());
            insPlRelpc.setRelpcTpcd(dto.getInsuredPersons().get(i).getRelpcTpcd());
            insPlRelpc.setRelpcStcd(dto.getInsuredPersons().get(i).getRelpcStcd());
            insPlRelpc.setStChdt(dto.getInsuredPersons().get(i).getStChdt());
            insPlRelpc.setPrsRelpcYn(dto.getInsuredPersons().get(i).getPrsRelpcYn());
            insPlRelpc.setCtmno(dto.getInsuredPersons().get(i).getCtmno());
            insPlRelpc.setPrmPymRt(new BigDecimal(0));
            insPlRelpc.setUtRt(new BigDecimal(0));
            insPlRelpc.setMdfUsrId("test");
            insPlRelpc.setMdfDthms(LocalDateTime.now());

            if(!planNumber.isEmpty()) {
                insPlRelpc.setInpUsrId("test");
                insPlRelpc.setInpDthms(LocalDateTime.now());
            }

            insPlRelpcRepository.save(insPlRelpc);

            InsPlNrdpsTisrdAtr insPlNrdpsTisrdAtr = insPlNrdpsTisrdAtrRepository.findByPlnoAndCgafChSeqnoAndRelpcSeqno(dto.getPlno(), dto.getCgafChSeqno(), dto.getInsuredPersons().get(i).getRelpcSeqno())
                    .orElseGet(() -> InsPlNrdpsTisrdAtr.builder().build());

            insPlNrdpsTisrdAtr.setPlno(dto.getPlno());
            insPlNrdpsTisrdAtr.setCgafChSeqno(dto.getCgafChSeqno());
            insPlNrdpsTisrdAtr.setRelpcSeqno(dto.getInsuredPersons().get(i).getRelpcSeqno());
            insPlNrdpsTisrdAtr.setIkdGrpcd(dto.getInsurancePlan().getIkdGrpcd());
            insPlNrdpsTisrdAtr.setDrveTycd(dto.getInsuredPersons().get(i).getDrveTycd());
            insPlNrdpsTisrdAtr.setSexcd(dto.getInsuredPersons().get(i).getSexcd());
            insPlNrdpsTisrdAtr.setAge(dto.getInsuredPersons().get(i).getAge());
            insPlNrdpsTisrdAtr.setJbcd(dto.getInsuredPersons().get(i).getJbcd());
            insPlNrdpsTisrdAtr.setJbChSeqno(dto.getInsuredPersons().get(i).getJbChSeqno());
            insPlNrdpsTisrdAtr.setInjrRnkcd(dto.getInsuredPersons().get(i).getInjrRnkcd());
            insPlNrdpsTisrdAtr.setMnthAvgPa(new BigDecimal(0));
            insPlNrdpsTisrdAtr.setYearPaTamt(new BigDecimal(0));
            insPlNrdpsTisrdAtr.setDscrt(new BigDecimal(0));
            insPlNrdpsTisrdAtr.setMdfUsrId("test");
            insPlNrdpsTisrdAtr.setMdfDthms(LocalDateTime.now());

            if(!planNumber.isEmpty()) {
                insPlNrdpsTisrdAtr.setInpUsrId("test");
                insPlNrdpsTisrdAtr.setInpDthms(LocalDateTime.now());
            }

            insPlNrdpsTisrdAtrRepository.save(insPlNrdpsTisrdAtr);

            InsPlRelpcRel insPlRelpcRel = insPlRelpcRelRepository.findByPlnoAndCgafChSeqnoAndCnftRelpcSeqnoAndCnftRelpcTpcd(dto.getPlno(), dto.getCgafChSeqno(), dto.getInsuredPersons().get(i).getRelpcSeqno(), dto.getInsuredPersons().get(i).getRelpcTpcd())
                    .orElseGet(() -> InsPlRelpcRel.builder().build());

            insPlRelpcRel.setPlno(dto.getPlno());
            insPlRelpcRel.setCgafChSeqno(dto.getCgafChSeqno());
            insPlRelpcRel.setStRelpcSeqno(new BigDecimal(1));
            insPlRelpcRel.setCnftRelpcSeqno(dto.getInsuredPersons().get(i).getRelpcSeqno());
            insPlRelpcRel.setCnftRelpcTpcd(dto.getInsuredPersons().get(i).getRelpcTpcd());
            insPlRelpcRel.setRelpcRelcd(dto.getInsuredPersons().get(i).getRelpcRelcd());
            insPlRelpcRel.setDeIbnfDvrt(new BigDecimal(0));
            insPlRelpcRel.setMdfUsrId("test");
            insPlRelpcRel.setMdfDthms(LocalDateTime.now());

            if(!planNumber.isEmpty()) {
                insPlRelpcRel.setInpUsrId("test");
                insPlRelpcRel.setInpDthms(LocalDateTime.now());
            }
            insPlRelpcRelRepository.save(insPlRelpcRel);

            for(int j=0; j<dto.getInsuredPersons().get(i).getCoverages().size(); j++)
            {
                InsPlCvr insPlCvr;
                if(!planNumber.isEmpty()) {
                    insPlCvr = InsPlCvr.builder().build();
                }
                else{
                    insPlCvr = insPlCvrRepository.findByPlnoAndCgafChSeqnoAndCvrBjFlgcdAndRelpcOjSeqno(dto.getPlno(), dto.getCgafChSeqno(), dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrBjFlgcd(), dto.getInsuredPersons().get(i).getRelpcSeqno()).get(j);

                }

                insPlCvr.setPlno(dto.getPlno());
                insPlCvr.setCgafChSeqno(dto.getCgafChSeqno());
                insPlCvr.setCvrcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrcd());
                insPlCvr.setCvrSeqno(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrSeqno());
                insPlCvr.setIkdGrpcd(dto.getInsurancePlan().getIkdGrpcd());
                insPlCvr.setCvrBjFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrBjFlgcd());
                insPlCvr.setRelpcOjSeqno(dto.getInsuredPersons().get(i).getCoverages().get(j).getRelpcOjSeqno());
                insPlCvr.setCvrBaTrtFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrBaTrtFlgcd());
                insPlCvr.setCvrStcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrStcd());
                insPlCvr.setCvrStChdt(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrStChdt());
                insPlCvr.setIsamt(dto.getInsuredPersons().get(i).getCoverages().get(j).getIsamt());
                insPlCvr.setNdsIsamt(new BigDecimal(0));
                insPlCvr.setBaPrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getBaPrm());
                insPlCvr.setNdsBaPrm(new BigDecimal(0));
                insPlCvr.setApPrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getApPrm());
                insPlCvr.setNdsApPrm(new BigDecimal(0));
                insPlCvr.setScdInsTrmApprm(new BigDecimal(0));
                insPlCvr.setInsSt(dto.getInsuredPersons().get(i).getCoverages().get(j).getInsSt());
                insPlCvr.setInsClstr(dto.getInsuredPersons().get(i).getCoverages().get(j).getInsClstr());
                insPlCvr.setSelfChamt(new BigDecimal(0));
                insPlCvr.setChbfApPrm(new BigDecimal(0));
                insPlCvr.setChafApPrm(new BigDecimal(0));
                insPlCvr.setPymCyccd(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymCyccd());
                insPlCvr.setPymTrmcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymTrmcd());
                insPlCvr.setCvrFnlPymYymm(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrFnlPymYymm());
                insPlCvr.setCvrFnlPymSeq(dto.getInsuredPersons().get(i).getCoverages().get(j).getCvrFnlPymSeq());
                insPlCvr.setNdFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getNdFlgcd());
                insPlCvr.setNd(dto.getInsuredPersons().get(i).getCoverages().get(j).getNd());
                insPlCvr.setNdcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getNdcd());
                insPlCvr.setRlNdTrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getRlNdTrm());
                insPlCvr.setPymTrmFlgcd(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymTrmFlgcd());
                insPlCvr.setPymTrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getPymTrm());
                insPlCvr.setRlPymTrm(dto.getInsuredPersons().get(i).getCoverages().get(j).getRlPymTrm());
                insPlCvr.setNrdpsApAge(dto.getInsuredPersons().get(i).getCoverages().get(j).getNrdpsApAge());
                insPlCvr.setIsamtCd(dto.getInsuredPersons().get(i).getCoverages().get(j).getIsamtCd());
                insPlCvr.setXpDmamt(new BigDecimal(0));
                insPlCvr.setMdDmamt(new BigDecimal(0));
                insPlCvr.setTrtApCvrPrmsm(new BigDecimal(0));
                insPlCvr.setAgrRt(new BigDecimal(0));
                insPlCvr.setWoncrCvSelfChamt(new BigDecimal(0));
                insPlCvr.setDcRt(new BigDecimal(0));
                insPlCvr.setAdSelfChamt(new BigDecimal(0));
                insPlCvr.setMdfUsrId("test");
                insPlCvr.setMdfDthms(LocalDateTime.now());

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
                planNumber = padLeftZeros(temp.toString(),5);
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
