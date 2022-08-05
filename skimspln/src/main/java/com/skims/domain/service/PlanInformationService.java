package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.*;
import com.skims.domain.repository.*;
import com.skims.dto.PlanInformationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
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
            //TODO : 관계자관계테이블 조회
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
}
