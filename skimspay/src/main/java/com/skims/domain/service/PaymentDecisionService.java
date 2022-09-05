package com.skims.domain.service;

import com.skims.client.FinFeignClient;
import com.skims.domain.entity.InsIncmPrm;
import com.skims.domain.entity.InsRpAdm;
import com.skims.domain.repository.InsIncmPrmRepository;
import com.skims.domain.repository.InsRpAdmRepository;
import com.skims.dto.PaymentDecisionDto;
import com.skims.dto.ReceiveStandbyRequest;
import io.micrometer.core.instrument.util.StringUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

@Service
@Slf4j
public class PaymentDecisionService {

    @Autowired
    InsRpAdmRepository insRpAdmRepository;
    @Autowired
    InsIncmPrmRepository insIncmPrmRepository;

    @Autowired
    FinFeignClient finFeignClient;

    public String savePaymentDecision(PaymentDecisionDto paymentDecisionDto) {

        // 영수관리번호
        String rpAdmno = this.getReceiptAdministrationNumber();
        if(!StringUtils.isBlank(paymentDecisionDto.getRpAdmno())) rpAdmno = paymentDecisionDto.getRpAdmno();

        InsRpAdm insRpAdm = InsRpAdm.builder()
                .rpAdmno(rpAdmno) // 영수관리번호
                .rpDthms(LocalDateTime.now()) // 영수일시
                .rpamt(paymentDecisionDto.getPaymentPremium()) // 납입보험료
                .mntFlgcd(paymentDecisionDto.getMntFlgcd()) // 금종구분코드
                .plno(paymentDecisionDto.getPlno()) // 설계번호
                .cgafChSeqno(paymentDecisionDto.getCgafChSeqno()) // 발행후변경순번
                .inpUsrId("SK001")
                .inpDthms(LocalDateTime.now())
                .mdfUsrId("SK001")
                .mdfDthms(LocalDateTime.now())
                .build();

        // 영수관리(insRpAdm) insert
        insRpAdmRepository.saveAndFlush(insRpAdm);

        String plyno = paymentDecisionDto.getPlyno();
        if(StringUtils.isBlank(plyno))  plyno = this.getPolicyNumber();
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
                .dpCascd("01") // 입금원인코드()
                .dpDtCascd("00") // 입금세부원인코드()
                .dhStfno("SK001")
                .fcApPrm(BigDecimal.ZERO)
                .usdCvApPrm(BigDecimal.ZERO)
                .fcApXcrt(BigDecimal.ZERO)
                .usdApXcrt(BigDecimal.ZERO)
                .fcCondtTPrm(BigDecimal.ZERO)
                .condtTPrm(BigDecimal.ZERO)
                .pypAdCs(BigDecimal.ZERO)
                .baCvrPrm(BigDecimal.ZERO)
                .trtPrm(BigDecimal.ZERO)
                .cuPrm(BigDecimal.ZERO)
                .flpyCvrTrtPrm(BigDecimal.ZERO)
                .dcbfCuPrm(BigDecimal.ZERO)
                .cuNprm(BigDecimal.ZERO)
                .rviNt(BigDecimal.ZERO)
                .dcbfPrm(BigDecimal.ZERO)
                .ikdGrpcd("LA")
                .cclWdrRtnNt(BigDecimal.ZERO)
                .inpUsrId("SK001")
                .inpDthms(LocalDateTime.now())
                .mdfUsrId("SK001")
                .mdfDthms(LocalDateTime.now())
                .build();

        // 수입보험료(insIncmPrm) insert
        insIncmPrmRepository.saveAndFlush(insIncmPrm);


        //수납대기 생성
        ReceiveStandbyRequest finRequest = ReceiveStandbyRequest.builder()
                .occurrenceSystemCode("02")
                .dealingsTypeOrder1ClassificationCode("01")
                .dealingsTypeOrder2ClassificationCode("0101")
                .receiptDate(LocalDate.now())
                .handlingOrganizationCode("SK")
                .handlingStaffNumber("SK001")
                .insuranceKindGroupCode("LA")
                .insuranceItemCode("LAA1010")
                .contractDate(LocalDate.now())
                .policyNumber(plyno)
                .incomePremiumOccurrenceSequenceNumber(incmPrmCrSeqno)
                .customerNumber("330003015")
                .contractorResidentNumber("9001011111111")
                .responsibilityThirdPartyBodilyInjuryOpenDate(LocalDate.now())
                .undertakeTypeClassificationCode("01")
                .depositCauseCode("01")
                .moneyTypeFlagCode("01")
                .depositDate(LocalDate.now())
                .receiptAdministrationNumber(rpAdmno)
                .planNumber(paymentDecisionDto.getPlno())
                .totalCount(BigDecimal.ZERO)
                .totalPremium(paymentDecisionDto.getPaymentPremium())
                .wonCurrencyPremium(paymentDecisionDto.getPaymentPremium())
                .transferCommission(BigDecimal.ZERO)
//                .etcAmountFlagCode(null)
                .etcAmount(BigDecimal.ZERO)
                .contractorName("홍길동").build();

        // 수납대기 생성 및 수납대기번호 update
        String receiveStandbyNumber = finFeignClient.insertReceiveStandby(finRequest);
        insIncmPrm.setRvSbno(receiveStandbyNumber);
        insIncmPrmRepository.saveAndFlush(insIncmPrm);

        return rpAdmno;
    }

    private void validationInput(PaymentDecisionDto paymentDecisionDto) throws Exception {
        if(!StringUtils.isBlank(paymentDecisionDto.getPlno())){
            throw new Exception("설계번호가 존재하지 않습니다.");
        }
    }

    private String getReceiptAdministrationNumber(){

        Optional<String> maxRpAdmno = insRpAdmRepository.findMaxRpAdmno();
        String receiptAdministrationNumber = null;

        if(maxRpAdmno.isPresent()){
            if( NumberUtils.isDigits(maxRpAdmno.get()) ) {
                BigDecimal temp = new BigDecimal(maxRpAdmno.get()).add(BigDecimal.ONE);
                receiptAdministrationNumber = padLeftZeros(temp.toString(),20);
            }
        }

        return receiptAdministrationNumber;
    }
    private String getPolicyNumber(){

        Optional<String> maxPlyno = insIncmPrmRepository.findMaxPlyno();
        String policyNumber = null;

        if(maxPlyno.isPresent()){
            if( NumberUtils.isDigits(maxPlyno.get()) ) {
                BigDecimal temp = new BigDecimal(maxPlyno.get()).add(BigDecimal.ONE);
                policyNumber = padLeftZeros(temp.toString(),16);
            }
        }

        return policyNumber;
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
