package com.skims.domain.service;

import com.skims.client.PayFeignClient;
import com.skims.domain.entity.FinPrmRvSb;
import com.skims.domain.repository.FinPrmRvSbRepository;
import com.skims.dto.DepositReflectionRequest;
import com.skims.dto.ImmediatelyWithdrawDto;
import com.skims.dto.ReceiveStandbyDto;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static java.util.stream.Collectors.reducing;

@Slf4j
@Service
public class ReceiveStandbyService {

    @Autowired
    FinPrmRvSbRepository finPrmRvSbRepository;

    @Autowired
    PayFeignClient payFeignClient;

    @Transactional
    public String savePremiumReceiveStandby(ReceiveStandbyDto dto){
        String premiumReceiveStandbyNumber = this.getPremiumReceiveStandbyNumber();

        FinPrmRvSb entity = FinPrmRvSb.builder()
                .rvSbno(premiumReceiveStandbyNumber)
                .crSyscd(dto.getOccurrenceSystemCode())
                .dlTpO1Csfcd(dto.getDealingsTypeOrder1ClassificationCode())
                .dlTpO2Csfcd(dto.getDealingsTypeOrder2ClassificationCode())
                .rpdt(dto.getReceiptDate())
                .dhOrgcd(dto.getHandlingOrganizationCode())
                .dhStfno(dto.getHandlingStaffNumber())
                .ikdGrpcd(dto.getInsuranceKindGroupCode())
                .insImcd(dto.getInsuranceItemCode())
                .cnrdt(dto.getContractDate())
                .plyno(dto.getPolicyNumber())
                .incmPrmCrSeqno(dto.getIncomePremiumOccurrenceSequenceNumber())
                .ndsno(dto.getEndorsementNumber())
                .ctmno(dto.getCustomerNumber())
                .crtRsno(dto.getContractorResidentNumber())
                .rpblOpndt(dto.getResponsibilityThirdPartyBodilyInjuryOpenDate())
                .udrtkTycd(dto.getUndertakeTypeClassificationCode())
                .dpCascd(dto.getDepositCauseCode())
                .mntFlgcd(dto.getMoneyTypeFlagCode())
                .dpdt(dto.getDepositDate())
                .rpAdmno(dto.getReceiptAdministrationNumber())
                .plno(dto.getPlanNumber())
                .bsnsNdsFlgcd(dto.getBusinessEndorsementFlagCode())
                .totFlgcd(dto.getTotalFlagCode())
                .totct(dto.getTotalCount())
                .totPrm(dto.getTotalPremium())
                .woncrPrm(dto.getWonCurrencyPremium())
                .crRnPrm(BigDecimal.ZERO)
                .crDtamt(BigDecimal.ZERO)
                .mncd("WON")
                .fcPrm(BigDecimal.ZERO)
                .apXcrt(BigDecimal.ZERO)
                .tfCm(dto.getTransferCommission())
                .etamtFlgcd(dto.getEtcAmountFlagCode())
                .etamt(dto.getEtcAmount())
                .girAttfErYn("0")
                .crrnm(dto.getContractorName())
                .inrPrm(BigDecimal.ZERO)
                .rvDlFlgcd("01")
                .inpUsrId("test")
                .inpDthms(LocalDateTime.now())
                .mdfUsrId("test")
                .mdfDthms(LocalDateTime.now())
                .build();

        finPrmRvSbRepository.saveAndFlush(entity);

        return premiumReceiveStandbyNumber;
    }

    private String getPremiumReceiveStandbyNumber(){

        Optional<String> maxRvSbno = finPrmRvSbRepository.findMaxRvSbno();
        String premiumReceiveStandbyNumber = null;

        if(maxRvSbno.isPresent()){
            if( NumberUtils.isDigits(maxRvSbno.get()) ) {
                BigDecimal temp = new BigDecimal(maxRvSbno.get()).add(BigDecimal.ONE);
                premiumReceiveStandbyNumber = padLeftZeros(temp.toString(),15);
            }
        }

        return premiumReceiveStandbyNumber;
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

    @Transactional
    public void processPremiumReceive(ReceiveStandbyDto dto){

        List<FinPrmRvSb> finPrmRvSbList = finPrmRvSbRepository.findByRpAdmno(dto.getReceiptAdministrationNumber());

        if(finPrmRvSbList.isEmpty()){
            throw new RuntimeException("수납대기가 존재하지 않습니다");
        }

        //수납처리
        for(FinPrmRvSb finPrmRvSb : finPrmRvSbList){
            //수납처리
            finPrmRvSb = finPrmRvSb.toBuilder()
                    .rvdt(LocalDate.now())
                    .rvXcno("0000001") // TODO 수납정산 테이블 생략으로 임시로 수납정산번호 셋팅
                    .rvOrgcd("SK001")
                    .bkcd(dto.getBankCode())
                    .dpsnm(dto.getDepositor())
                    .actno(dto.getAccountNumber())
                    .mntFlgcd("01")
                    .mdfDthms(LocalDateTime.now()).build();

            finPrmRvSbRepository.saveAndFlush(finPrmRvSb);

            //수납후처리 호출
            DepositReflectionRequest payRequest = DepositReflectionRequest.builder()
                    .receiveStandbyNumber(finPrmRvSb.getRvSbno())
                    .receiptAdministrationNumber(dto.getReceiptAdministrationNumber())
                    .receiveDate(finPrmRvSb.getRvdt())
                    .receiveExactCalculationNumber(finPrmRvSb.getRvXcno())
                    .moneyTypeFlagCode(finPrmRvSb.getMntFlgcd())
                    .build();

            payFeignClient.reflectDepositAfterReceive(payRequest);
        }

    }

    public ReceiveStandbyDto inquiryReceiveStandby(String receiptAdministrationNumber) {

        List<FinPrmRvSb> finPrmRvSbList = finPrmRvSbRepository.findByRpAdmno(receiptAdministrationNumber);
        BigDecimal wonCurrencyPremium = finPrmRvSbList.stream().
                collect(reducing(BigDecimal.ZERO, FinPrmRvSb::getWoncrPrm, BigDecimal::add));

        //TODO 조회항목 확인 후 추가
        ReceiveStandbyDto result = ReceiveStandbyDto.builder()
                .wonCurrencyPremium(wonCurrencyPremium)
                .build();
        return result;
    }

    public String processWithdraw(ImmediatelyWithdrawDto dto){

        String answerCode = "";

        //TODO VAN사 연계 출금 처리

        //출금 처리 테스트를 위한 성공응답 셋팅
        answerCode = "0000";

        return answerCode;
    }

}
