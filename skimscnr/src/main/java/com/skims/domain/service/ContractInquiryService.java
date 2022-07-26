package com.skims.domain.service;

import com.skims.domain.repository.InsInsCrRepository;
import com.skims.dto.ContractInformationDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;

@Service
@Slf4j
public class ContractInquiryService {

    @Autowired
    InsInsCrRepository insInsCrRepository;

    public Optional<ContractInformationDto> getContractDetailInformation(String policyNumber) {

        return Optional.ofNullable(ContractInformationDto.builder()
                .insInsCr(insInsCrRepository.findByPlynoAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(policyNumber,
                                LocalDateTime.now(),
                                LocalDateTime.now()).get())
                .build());
    }
}
