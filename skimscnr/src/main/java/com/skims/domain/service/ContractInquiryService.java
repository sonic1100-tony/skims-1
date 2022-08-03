package com.skims.domain.service;

import com.skims.domain.repository.InsInsCrRepository;
import com.skims.dto.ContractInformationDto;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Optional;

@Service
@Slf4j
public class ContractInquiryService {

//    @Autowired
    InsInsCrRepository insInsCrRepository;

    public Optional<ContractInformationDto> getContractDetailInformation(String policyNumber) {

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



        return insInsCrRepository.findByPlynoAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(policyNumber,
                LocalDateTime.now(),
                LocalDateTime.now()).map(insCr -> ContractInformationDto.builder()
                .insInsCr(insCr)
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
