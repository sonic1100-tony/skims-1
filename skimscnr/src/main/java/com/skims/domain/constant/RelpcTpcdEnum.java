package com.skims.domain.constant;

import lombok.Getter;

@Getter
public enum RelpcTpcdEnum {

    RELPC_TPCD_01("01", "계약자"),
    RELPC_TPCD_02( "02", "주피보험자"),
    RELPC_TPCD_11( "11", "수익자");

    private String code;
    private String value;

    RelpcTpcdEnum(String code, String value) {
        this.code = code;
        this.value = value;
    }
}
