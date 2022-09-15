package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DepositReflectionRequest {

    // 수납대기번호
    private String receiveStandbyNumber;

    // 영수관리번호
    private String receiptAdministrationNumber;

    // 수납일자
    private LocalDate receiveDate;

    // 수납정산번호
    private String receiveExactCalculationNumber;

    // 금종구분코드
    private String moneyTypeFlagCode;
}
