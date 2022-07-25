/**
 * IgdLtrmRatoCopIt Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class IgdLtrmRatoCopItPK implements Serializable {
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드
    private String inOutFlgcd; //--inout구분코드
    private BigDecimal itIdcOrdr; //--항목표시순서
    private Date apStrdt; //--적용시작일자
}
