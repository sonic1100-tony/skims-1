package com.skims.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDecisionRequest {

    @Schema(title = "입금구분코드(1:초회납)", example = "1")
    private String depositFlagCode;

    @Schema(title = "금종구분코드(01:현금)", example = "01")
    private String mntFlgcd;

    @Schema(title = "설계번호", example = "LA20220101")
    private String plno;

    @Schema(title = "발행후변경순번", example = "1")
    private BigDecimal cgafChSeqno;

    @Schema(title = "증권번호", example = "LA20220101")
    private String plyno;

    @Schema(title = "기본보험료", example = "1000")
    private BigDecimal basePremium;

    @Schema(title = "적용보험료", example = "1000")
    private BigDecimal applicationPremium;

    @Schema(title = "납입보험료", example = "1000")
    private BigDecimal paymentPremium;

    @Schema(title = "영수관리번호")
    private String rpAdmno;
}
