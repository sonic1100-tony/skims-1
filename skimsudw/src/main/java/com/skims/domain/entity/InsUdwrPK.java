/**
 * InsUdwr Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;

import java.sql.Date;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class InsUdwrPK implements Serializable {
    private String udStfno; //--심사직원번호
    private String udPlFlgcd; //--심사설계구분코드
    private String udPrioRancd; //--심사우선순위코드
    private String udlmiTpFlgcd; //--인수제한유형구분코드
    private Date apStrdt; //--적용시작일자
}
