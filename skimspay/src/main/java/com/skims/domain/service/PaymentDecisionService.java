package com.skims.domain.service;

import com.skims.domain.entity.InsIncmPrm;
import com.skims.domain.entity.InsRpAdm;
import com.skims.domain.repository.InsIncmPrmRepository;
import com.skims.domain.repository.InsRpAdmRepository;
import com.skims.dto.PaymentDecisionDto;
import io.micrometer.core.instrument.util.StringUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
@Slf4j
public class PaymentDecisionService {

    @Autowired
    InsRpAdmRepository insRpAdmRepository;
    @Autowired
    InsIncmPrmRepository insIncmPrmRepository;

    public String savePaymentDecision(PaymentDecisionDto paymentDecisionDto) {

        // 영수관리번호
        String rpAdmno = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"))+"000001";
        if(!StringUtils.isBlank(paymentDecisionDto.getRpAdmno())) rpAdmno = paymentDecisionDto.getRpAdmno();

        InsRpAdm insRpAdm = InsRpAdm.builder()
                .rpAdmno(rpAdmno) // 영수관리번호
                .rpDthms(LocalDateTime.now()) // 영수일시
                .rpamt(paymentDecisionDto.getPaymentPremium()) // 납입보험료
                .mntFlgcd(paymentDecisionDto.getMntFlgcd()) // 금종구분코드
                .plno(paymentDecisionDto.getPlno()) // 설계번호
                .cgafChSeqno(paymentDecisionDto.getCgafChSeqno()) // 발행후변경순번
                .build();

        // 영수관리(insRpAdm) insert
        insRpAdmRepository.saveAndFlush(insRpAdm);

        String plyno = paymentDecisionDto.getPlyno();
        if(StringUtils.isBlank(plyno))  plyno = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"))+"001";
        BigDecimal incmPrmCrSeqno = BigDecimal.ONE;


        // 수입보험료(insIncmPrm) insert
        InsIncmPrm insIncmPrm = InsIncmPrm.builder()
                .plyno(plyno) // 증권번호
                .incmPrmCrSeqno(incmPrmCrSeqno) // 수입보험료발생순번
                .ndsno("0000")  // 배서번호
                .pymSeq(BigDecimal.ONE) // 납입회차(1)
                .pymDudt(LocalDate.now()) // 납입응당일자
                .dcbfPrm(paymentDecisionDto.getPaymentPremium()) // 기본보험료
                .apPrm(paymentDecisionDto.getApplicationPremium()) // 적용보험료
                .rpPrm(paymentDecisionDto.getPaymentPremium()) // 납입보험료
                .rpAdmno(rpAdmno) // 영수관리번호
                .prmFlgcd("1") // 보험료구분코드(1:분납/계속분)
             //   .dpCascd() // 입금원인코드()
           //     .dpDtCascd() // 입금세부원인코드()
                .build();

        // 수입보험료(insIncmPrm) insert
        insIncmPrmRepository.saveAndFlush(insIncmPrm);

        return rpAdmno;
    }

    private void validationInput(PaymentDecisionDto paymentDecisionDto) throws Exception {
        if(!StringUtils.isBlank(paymentDecisionDto.getPlno())){
            throw new Exception("설계번호가 존재하지 않습니다.");
        }
    }
}
