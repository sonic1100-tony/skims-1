/**
 * InsPlRelpcRel Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.InsPlRelpcRelListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPlRelpcRelListener.class)
@Table(name = "ins_pl_relpc_rel") //--설계관계자관계
@Schema(description = "설계관계자관계")
@IdClass(InsPlRelpcRelPK.class)
public class InsPlRelpcRel implements Serializable {
    @Id //  String
    @Column(name = "plno", length = 17, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "설계번호", nullable = false)
    private String plno; //--설계번호

    @Id //  BigDecimal
    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Id //  BigDecimal
    @Column(name = "st_relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "기준관계자순번", nullable = false)
    private BigDecimal stRelpcSeqno; //--기준관계자순번

    @Id //  BigDecimal
    @Column(name = "cnft_relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "대응관계자순번", nullable = false)
    private BigDecimal cnftRelpcSeqno; //--대응관계자순번

    @Column(name = "st_relpc_tpcd", length = 10, nullable = true)
    @Schema(description = "기준관계자유형코드", nullable = true)
    private String stRelpcTpcd; //--기준관계자유형코드

    @Column(name = "cnft_relpc_tpcd", length = 10, nullable = true)
    @Schema(description = "대응관계자유형코드", nullable = true)
    private String cnftRelpcTpcd; //--대응관계자유형코드

    @Column(name = "relpc_relcd", length = 10, nullable = true)
    @Schema(description = "관계자관계코드", nullable = true)
    private String relpcRelcd; //--관계자관계코드

    @Column(name = "de_ibnf_dvrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "사망보험금배분율", nullable = false)
    private BigDecimal deIbnfDvrt; //--사망보험금배분율

    @Column(name = "ltrm_nds_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "장기배서처리구분코드", nullable = true)
    private String ltrmNdsDlFlgcd; //--장기배서처리구분코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Timestamp inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Timestamp mdfDthms; //--수정일시

    @Builder
    public InsPlRelpcRel(String plno, BigDecimal cgafChSeqno, BigDecimal stRelpcSeqno, BigDecimal cnftRelpcSeqno, String stRelpcTpcd, String cnftRelpcTpcd, String relpcRelcd, BigDecimal deIbnfDvrt, String ltrmNdsDlFlgcd, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.stRelpcSeqno = stRelpcSeqno;
        this.cnftRelpcSeqno = cnftRelpcSeqno;
        this.stRelpcTpcd = stRelpcTpcd;
        this.cnftRelpcTpcd = cnftRelpcTpcd;
        this.relpcRelcd = relpcRelcd;
        this.deIbnfDvrt = deIbnfDvrt;
        this.ltrmNdsDlFlgcd = ltrmNdsDlFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
