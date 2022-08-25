package com.skims.domain.service;

import com.skims.domain.entity.FinPrmRvSb;
import com.skims.domain.repository.FinPrmRvSbRepository;
import com.skims.dto.ImmediatelyWithdrawDto;
import com.skims.dto.ReceiveStandbyDto;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Optional;

@Service
public class ReceiveStandbyService {

    @Autowired
    FinPrmRvSbRepository finPrmRvSbRepository;

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

    public void processPremiumReceive(ReceiveStandbyDto dto) throws Exception{

        //수납처리
        FinPrmRvSb entity = finPrmRvSbRepository.findByRvSbno(dto.getReceiveStandbyNumber()).orElseThrow(() -> new Exception("수납대기가 존재하지 않습니다"));

        entity = entity.toBuilder()
            .rvdt(LocalDate.now())
            .rvXcno(dto.getReceiveStandbyNumber().substring(8))
            .rvOrgcd("SK001")
            .bkcd(dto.getBankCode())
            .dpsnm(dto.getDepositor())
            .actno(dto.getAccountNumber())
            .mdfDthms(LocalDateTime.now()).build();

        finPrmRvSbRepository.saveAndFlush(entity);

        //TODO 수납후처리 호출

    }

    public ReceiveStandbyDto inquiryReceiveStandby(String receiveStandbyNumber) throws Exception{
        FinPrmRvSb entity = finPrmRvSbRepository.findByRvSbno(receiveStandbyNumber).orElseThrow(() -> new Exception("수납대기가 존재하지 않습니다"));
        //TODO 조회항목 확인 후 추가
        ReceiveStandbyDto result = ReceiveStandbyDto.builder()
                .wonCurrencyPremium(entity.getWoncrPrm())
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
