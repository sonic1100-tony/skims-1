package com.skims.constant;

import lombok.Getter;

@Getter
public enum PlStcdEnum {

    PL_STCD_01("01", "저장중"),
    PL_STCD_42("42", "심사승인");


    private String code;
    private String value;

    PlStcdEnum(String code, String value) {
        this.code = code;
        this.value = value;
    }
}
