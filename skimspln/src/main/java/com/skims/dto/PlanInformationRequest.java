package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PlanInformationRequest implements Serializable {

    /** 설계번호 **/
    private String plno;

    /** 발행후변경순번 **/
    private BigDecimal cgafChSeqno;

}
