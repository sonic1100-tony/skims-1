/**
 * InsAutoTfSpc Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
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

import com.skims.domain.listener.InsAutoTfSpcListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsAutoTfSpcListener.class)
@Table(name = "ins_auto_tf_spc") // --자동이체내역
@Schema(description = "자동이체내역")
public class InsAutoTfSpc implements Serializable {
    @Id // Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    // @Schema(description = "", nullable = true , defaultValue = "" , example = ""
    // , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; // --aid

    @Column(name = "auto_tfsno", length = 20, nullable = false)
    @Schema(description = "자동이체번호", nullable = false)
    private String autoTfsno; // --자동이체번호

    @Column(name = "plyno_or_lnno", length = 16, nullable = false)
    @Schema(description = "증권번호대출번호", nullable = false)
    private String plynoOrLnno; // --증권번호대출번호

    @Column(name = "prs_plyno_or_lnno", length = 16, nullable = false)
    @Schema(description = "대표증권번호대출번호", nullable = false)
    private String prsPlynoOrLnno; // --대표증권번호대출번호

    @Column(name = "auto_tf_cg_kndcd", length = 10, nullable = false)
    @Schema(description = "자동이체요금종류코드", nullable = false)
    private String autoTfCgKndcd; // --자동이체요금종류코드

    @Column(name = "auto_tfdt", nullable = false)
    @Schema(description = "자동이체일자", nullable = false)
    private LocalDate autoTfdt; // --자동이체일자

    @Column(name = "prs_ply_rqpym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "대표증권의뢰납입회차", nullable = false)
    private BigDecimal prsPlyRqpymSeq; // --대표증권의뢰납입회차

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; // --배서번호

    @Column(name = "olcrr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구이력순번", nullable = false)
    private BigDecimal olcrrSeqno; // --구이력순번

    @Column(name = "oldbl_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구중복순번", nullable = false)
    private BigDecimal oldblSeqno; // --구중복순번

    @Column(name = "rq_pym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "요청납입회차", nullable = false)
    private BigDecimal rqPymSeq; // --요청납입회차

    @Column(name = "requ_fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "의뢰최종납입년월", nullable = true)
    private String requFnlPymYymm; // --의뢰최종납입년월

    @Column(name = "dl_pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "처리납입회차", nullable = true)
    private BigDecimal dlPymSeq; // --처리납입회차

    @Column(name = "dl_fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "처리최종납입년월", nullable = true)
    private String dlFnlPymYymm; // --처리최종납입년월

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    private BigDecimal apPrm; // --적용보험료

    @Column(name = "tfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "이체금액", nullable = false)
    private BigDecimal tfamt; // --이체금액

    @Column(name = "rv_dl_rstcd", length = 10, nullable = true)
    @Schema(description = "수납처리결과코드", nullable = true)
    private String rvDlRstcd; // --수납처리결과코드

    @Column(name = "dp_dl_wrk_dthms", nullable = true)
    @Schema(description = "입금처리작업일시", nullable = true)
    private LocalDateTime dpDlWrkDthms; // --입금처리작업일시

    @Column(name = "tf_requ_flgcd", length = 10, nullable = true)
    @Schema(description = "이체의뢰구분코드", nullable = true)
    private String tfRequFlgcd; // --이체의뢰구분코드

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    private String dhStfno; // --취급직원번호

    @Column(name = "tf_bj_yymm", length = 6, nullable = true)
    @Schema(description = "이체대상년월", nullable = true)
    private String tfBjYymm; // --이체대상년월

    @Column(name = "tf_bjdt_cd", length = 10, nullable = true)
    @Schema(description = "이체대상일코드", nullable = true)
    private String tfBjdtCd; // --이체대상일코드

    @Column(name = "tf_ad_dscrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "이체추가할인율", nullable = true)
    private BigDecimal tfAdDscrt; // --이체추가할인율

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; // --입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; // --입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; // --수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; // --수정일시

    @Builder
    public InsAutoTfSpc(String autoTfsno, String plynoOrLnno, String prsPlynoOrLnno, String autoTfCgKndcd,
            LocalDate autoTfdt, BigDecimal prsPlyRqpymSeq, String ndsno, BigDecimal olcrrSeqno, BigDecimal oldblSeqno,
            BigDecimal rqPymSeq, String requFnlPymYymm, BigDecimal dlPymSeq, String dlFnlPymYymm, BigDecimal apPrm,
            BigDecimal tfamt, String rvDlRstcd, LocalDateTime dpDlWrkDthms, String tfRequFlgcd, String dhStfno,
            String tfBjYymm, String tfBjdtCd, BigDecimal tfAdDscrt, String inpUsrId, LocalDateTime inpDthms,
            String mdfUsrId, LocalDateTime mdfDthms) {
        this.autoTfsno = autoTfsno;
        this.plynoOrLnno = plynoOrLnno;
        this.prsPlynoOrLnno = prsPlynoOrLnno;
        this.autoTfCgKndcd = autoTfCgKndcd;
        this.autoTfdt = autoTfdt;
        this.prsPlyRqpymSeq = prsPlyRqpymSeq;
        this.ndsno = ndsno;
        this.olcrrSeqno = olcrrSeqno;
        this.oldblSeqno = oldblSeqno;
        this.rqPymSeq = rqPymSeq;
        this.requFnlPymYymm = requFnlPymYymm;
        this.dlPymSeq = dlPymSeq;
        this.dlFnlPymYymm = dlFnlPymYymm;
        this.apPrm = apPrm;
        this.tfamt = tfamt;
        this.rvDlRstcd = rvDlRstcd;
        this.dpDlWrkDthms = dpDlWrkDthms;
        this.tfRequFlgcd = tfRequFlgcd;
        this.dhStfno = dhStfno;
        this.tfBjYymm = tfBjYymm;
        this.tfBjdtCd = tfBjdtCd;
        this.tfAdDscrt = tfAdDscrt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
