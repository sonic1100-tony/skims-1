package com.skims.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class IgdGdJoinIgdGdCvr {
    private String gdcd; //--상품코드
    private LocalDate apNddt; //--적용종료일자
    private LocalDate apStrdt; //--적용시작일자
    private String gdSlnm; //--상품판매명
    private String cvrcd; //--담보코드
    private String cvrPrsnm; //--담보대표명
}
