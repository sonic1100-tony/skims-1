package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.InsInsPl;
import com.skims.domain.repository.InsInsPlRepository;
import com.skims.dto.PlanInformationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Optional;

@Service
public class PlanInformationService {

    @Autowired
    InsInsPlRepository insInsPlRepository;

    @Autowired
    ObjectMapper mapper;

    public Optional<PlanInformationDto> getPlanInformation(String plno, BigDecimal cgafChSeqno) {

        PlanInformationDto dto = new PlanInformationDto();

        //설계테이블 조회
        Optional<InsInsPl> insInsPl = insInsPlRepository.findByPlnoAndCgafChSeqno(plno, cgafChSeqno);
        dto = mapper.convertValue(insInsPl, PlanInformationDto.class);


        return Optional.ofNullable(dto);
    }
}
