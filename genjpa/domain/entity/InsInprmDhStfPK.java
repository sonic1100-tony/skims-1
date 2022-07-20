/**
 * InsInprmDhStf Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;

import java.math.BigDecimal;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class InsInprmDhStfPK implements Serializable {
    private String plyno; //--증권번호
    private BigDecimal incmPrmCrSeqno; //--수입보험료발생순번
    private String dhStfTpcd; //--취급직원유형코드
    private String dhStfno; //--취급직원번호
}
