package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReceiveStandbyDto {

    // 발생시스템코드
    private String occurrenceSystemCode;

    // 거래유형1차분류코드
    private String dealingsTypeOrder1ClassificationCode;

    // 거래유형2차분류코드
    private String dealingsTypeOrder2ClassificationCode;

    // 영수일자
    private LocalDate receiptDate;

    // 취급기관코드
    private String handlingOrganizationCode;

    // 취급직원번호
    private String handlingStaffNumber;

    // 보종군코드
    private String insuranceKindGroupCode;

    // 보험종목코드
    private String insuranceItemCode;

    // 계약일자
    private LocalDate contractDate;

    // 증권번호
    private String policyNumber;

    // 수입보험료발생순번
    private BigDecimal incomePremiumOccurrenceSequenceNumber;

    // 배서번호
    private String endorsementNumber;

    // 고객번호
    private String customerNumber;

    // 계약자주민번호
    private String contractorResidentNumber;

    // 책임개시일자
    private LocalDate responsibilityThirdPartyBodilyInjuryOpenDate;

    // 인수형태코드
    private String undertakeTypeClassificationCode;

    // 입금원인코드
    private String depositCauseCode;

    // 금종구분코드
    private String moneyTypeFlagCode;

    // 입금일자
    private LocalDate depositDate;

    // 영수관리번호
    private String receiptAdministrationNumber;

    // 설계번호
    private String planNumber;

    // 업무배서구분코드
    private String businessEndorsementFlagCode;

    // 집계구분코드
    private String totalFlagCode;

    // 집계건수
    private BigDecimal totalCount;

    // 전체보험료
    private BigDecimal totalPremium;

    // 원화보험료
    private BigDecimal wonCurrencyPremium;

    // 이체수수료
    private BigDecimal transferCommission;

    // 기타금액구분코드
    private String etcAmountFlagCode;

    // 기타금액
    private BigDecimal etcAmount;

    // 계약자명
    private String contractorName;
}
