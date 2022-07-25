/**
 * CusPstnoRodnmSrhAdr Entity Primary Key 클래스
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
public class CusPstnoRodnmSrhAdrPK implements Serializable {
    private String roadNmFlgcd; //--도로명구분코드
    private String twmdSno; //--읍면동일련번호
}
