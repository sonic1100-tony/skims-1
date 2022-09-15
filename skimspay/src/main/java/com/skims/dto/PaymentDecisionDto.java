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
public class PaymentDecisionDto {

    // 입금구분코드(1:초회납, 2: 계속분, 5:부활, 6:변경)
    private String depositFlagCode;

    // 금종구분코드(01:현금, 07:페이)
    private String mntFlgcd;

    // 설계번호
    private String plno;

    // 발행후변경순번
    private BigDecimal cgafChSeqno;

    // 증권번호
    private String plyno;

    // 기본보험료
    private BigDecimal basePremium;

    // 적용보험료
    private BigDecimal applicationPremium;

    // 납입보험료
    private BigDecimal paymentPremium;

    // 영수관리번호
    private String rpAdmno;
}
