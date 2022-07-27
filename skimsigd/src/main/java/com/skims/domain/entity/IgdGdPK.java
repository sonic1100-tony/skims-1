/**
 * IgdGd Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class IgdGdPK implements Serializable {
    private String gdcd; //--상품코드
    private LocalDate apNddt; //--적용종료일자
    private LocalDate apStrdt; //--적용시작일자
}
