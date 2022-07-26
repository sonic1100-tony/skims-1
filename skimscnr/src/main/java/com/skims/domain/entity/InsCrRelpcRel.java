/**
 * InsCrRelpcRel Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.InsCrRelpcRelListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCrRelpcRelListener.class)
@Table(name = "ins_cr_relpc_rel") //--계약관계자관계
@Schema(description = "계약관계자관계")
public class InsCrRelpcRel implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Column(name = "st_relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "기준관계자순번", nullable = false)
    private BigDecimal stRelpcSeqno; //--기준관계자순번

    @Column(name = "cnft_relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "대응관계자순번", nullable = false)
    private BigDecimal cnftRelpcSeqno; //--대응관계자순번

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private Date apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private Date apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private Timestamp ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private Timestamp ndsApNdDthms; //--배서승인종료일시

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
    public InsCrRelpcRel(String plyno, BigDecimal stRelpcSeqno, BigDecimal cnftRelpcSeqno, Date apNddt, Date apStrdt, String ndsno, String valdNdsYn, Timestamp ndsApStrDthms, Timestamp ndsApNdDthms, String stRelpcTpcd, String cnftRelpcTpcd, String relpcRelcd, BigDecimal deIbnfDvrt, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.plyno = plyno;
        this.stRelpcSeqno = stRelpcSeqno;
        this.cnftRelpcSeqno = cnftRelpcSeqno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.stRelpcTpcd = stRelpcTpcd;
        this.cnftRelpcTpcd = cnftRelpcTpcd;
        this.relpcRelcd = relpcRelcd;
        this.deIbnfDvrt = deIbnfDvrt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
