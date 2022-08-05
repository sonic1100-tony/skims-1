package com.skims.domain.service;

import com.skims.domain.entity.FinPrmRvSb;
import com.skims.domain.repository.FinPrmRvSbRepository;
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

}
