/**
 * InsTfWrkDlCrst Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class InsTfWrkDlCrstPK implements Serializable {
    private LocalDate stdt; //--기준일자
    private String tfWrkFlgcd; //--이체작업구분코드
    private BigDecimal seqno; //--순번
}
