/**
 * InsTfErcd Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;


import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class InsTfErcdPK implements Serializable {
    private String tfDlMetcd; //--이체처리방식코드
    private String wdcmpOrVnccd; //--출금사van사코드
    private String tfRqDmFlgcd; //--이체신청청구구분코드
    private String tfRqErcd; //--이체신청오류코드
}
