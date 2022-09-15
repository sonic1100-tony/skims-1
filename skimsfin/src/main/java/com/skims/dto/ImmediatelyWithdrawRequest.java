package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ImmediatelyWithdrawRequest {

    // 은행코드
    private String bankCode;

    // 계좌번호
    private String accountNumber;

    // 생년월일
    private String birthDate;

    // 금액
    private BigDecimal amount;
}
