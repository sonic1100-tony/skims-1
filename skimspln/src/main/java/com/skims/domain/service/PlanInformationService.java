package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.InsInsPl;
import com.skims.domain.entity.InsPlCvr;
import com.skims.domain.entity.InsPlNrdpsTisrdAtr;
import com.skims.domain.entity.InsPlRelpc;
import com.skims.domain.repository.InsInsPlRepository;
import com.skims.domain.repository.InsPlCvrRepository;
import com.skims.domain.repository.InsPlNrdpsTisrdAtrRepository;
import com.skims.domain.repository.InsPlRelpcRepository;
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
    ObjectMapper mapper;

    public Optional<PlanInformationDto> getPlanInformation(String plno, BigDecimal cgafChSeqno) {

        PlanInformationDto dto = new PlanInformationDto();

        //설계 조회
        Optional<InsInsPl> insInsPl = insInsPlRepository.findByPlnoAndCgafChSeqno(plno, cgafChSeqno);
        dto.setPlno(plno);
        dto.setCgafChSeqno(cgafChSeqno);
        dto.setInsurancePlan(mapper.convertValue(insInsPl, PlanInformationDto.InsurancePlan.class));

        //설계관계자 조회
        List<InsPlRelpc> insPlRelpcs = insPlRelpcRepository.findByPlnoAndCgafChSeqno(plno, cgafChSeqno);
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

            //설계담보 조회
            List<InsPlCvr> insPlCvrs = insPlCvrRepository.findByPlnoAndCgafChSeqnoAndRelpcSeqno(plno, cgafChSeqno, insuredPerson.getRelpcSeqno());
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
