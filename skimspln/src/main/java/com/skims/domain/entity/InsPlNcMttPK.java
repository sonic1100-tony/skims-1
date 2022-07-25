/**
 * InsPlNcMtt Entity Primary Key 클래스
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
public class InsPlNcMttPK implements Serializable {
    private String plno; //--설계번호
    private BigDecimal cgafChSeqno; //--발행후변경순번
    private BigDecimal relpcSeqno; //--관계자순번
    private String ncMttItno; //--알릴사항항목번호
}
