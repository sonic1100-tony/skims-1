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
public class ReceiveRequest {

    //수납대기번호
    private String receiveStandbyNumber;

    // 은행코드
    private String bankCode;

    // 예금주명
    private String depositor;

    // 계좌번호
    private String accountNumber;
}
