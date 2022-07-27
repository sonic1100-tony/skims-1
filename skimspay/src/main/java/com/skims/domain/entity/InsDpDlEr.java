/**
 * InsDpDlEr Entity 클래스
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

import com.skims.domain.listener.InsDpDlErListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsDpDlErListener.class)
@Table(name = "ins_dp_dl_er") //--입금처리오류
@Schema(description = "입금처리오류")
public class InsDpDlEr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "dp_dl_er_seqno", precision = 11, scale = 0, nullable = false)
    @Schema(description = "입금처리오류순번", nullable = false)
    private BigDecimal dpDlErSeqno; //--입금처리오류순번

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "납입회차", nullable = true)
    private BigDecimal pymSeq; //--납입회차

    @Column(name = "dp_cascd", length = 10, nullable = true)
    @Schema(description = "입금원인코드", nullable = true)
    private String dpCascd; //--입금원인코드

    @Column(name = "dp_dt_cascd", length = 10, nullable = true)
    @Schema(description = "입금세부원인코드", nullable = true)
    private String dpDtCascd; //--입금세부원인코드

    @Column(name = "rtx_kndcd", length = 10, nullable = true)
    @Schema(description = "영수증종류코드", nullable = true)
    private String rtxKndcd; //--영수증종류코드

    @Column(name = "dp_rst_ercd", length = 10, nullable = true)
    @Schema(description = "입금결과오류코드", nullable = true)
    private String dpRstErcd; //--입금결과오류코드

    @Column(name = "fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "최종납입년월", nullable = true)
    private String fnlPymYymm; //--최종납입년월

    @Column(name = "pym_cyccd", length = 10, nullable = true)
    @Schema(description = "납입주기코드", nullable = true)
    private String pymCyccd; //--납입주기코드

    @Column(name = "pym_mtdcd", length = 10, nullable = true)
    @Schema(description = "납입방법코드", nullable = true)
    private String pymMtdcd; //--납입방법코드

    @Column(name = "rpdt", nullable = true)
    @Schema(description = "영수일자", nullable = true)
    private LocalDate rpdt; //--영수일자

    @Column(name = "rvi_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "부활이자", nullable = false)
    private BigDecimal rviNt; //--부활이자

    @Column(name = "pty_or_rtn_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "추징환급보험료", nullable = false)
    private BigDecimal ptyOrRtnPrm; //--추징환급보험료

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    private BigDecimal apPrm; //--적용보험료

    @Column(name = "rpamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "영수금액", nullable = false)
    private BigDecimal rpamt; //--영수금액

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    private String dhStfno; //--취급직원번호

    @Column(name = "dpps_flgcd", length = 10, nullable = true)
    @Schema(description = "입금원구분코드", nullable = true)
    private String dppsFlgcd; //--입금원구분코드

    @Column(name = "rv_dl_rstcd", length = 10, nullable = true)
    @Schema(description = "수납처리결과코드", nullable = true)
    private String rvDlRstcd; //--수납처리결과코드

    @Column(name = "ctm_inq_auto_tfsno", length = 30, nullable = false)
    @Schema(description = "고객조회자동이체번호", nullable = false)
    private String ctmInqAutoTfsno; //--고객조회자동이체번호

    @Column(name = "pvl_prdt", nullable = true)
    @Schema(description = "계상예정일자", nullable = true)
    private LocalDate pvlPrdt; //--계상예정일자

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "rv_sbno", length = 20, nullable = true)
    @Schema(description = "수납대기번호", nullable = true)
    private String rvSbno; //--수납대기번호

    @Column(name = "fr_dp_rst_ercd", length = 10, nullable = true)
    @Schema(description = "최초입금결과오류코드", nullable = true)
    private String frDpRstErcd; //--최초입금결과오류코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public InsDpDlEr(BigDecimal dpDlErSeqno, String plyno, BigDecimal pymSeq, String dpCascd, String dpDtCascd, String rtxKndcd, String dpRstErcd, String fnlPymYymm, String pymCyccd, String pymMtdcd, LocalDate rpdt, BigDecimal rviNt, BigDecimal ptyOrRtnPrm, BigDecimal apPrm, BigDecimal rpamt, String dhStfno, String dppsFlgcd, String rvDlRstcd, String ctmInqAutoTfsno, LocalDate pvlPrdt, String ikdGrpcd, String rvSbno, String frDpRstErcd, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.dpDlErSeqno = dpDlErSeqno;
        this.plyno = plyno;
        this.pymSeq = pymSeq;
        this.dpCascd = dpCascd;
        this.dpDtCascd = dpDtCascd;
        this.rtxKndcd = rtxKndcd;
        this.dpRstErcd = dpRstErcd;
        this.fnlPymYymm = fnlPymYymm;
        this.pymCyccd = pymCyccd;
        this.pymMtdcd = pymMtdcd;
        this.rpdt = rpdt;
        this.rviNt = rviNt;
        this.ptyOrRtnPrm = ptyOrRtnPrm;
        this.apPrm = apPrm;
        this.rpamt = rpamt;
        this.dhStfno = dhStfno;
        this.dppsFlgcd = dppsFlgcd;
        this.rvDlRstcd = rvDlRstcd;
        this.ctmInqAutoTfsno = ctmInqAutoTfsno;
        this.pvlPrdt = pvlPrdt;
        this.ikdGrpcd = ikdGrpcd;
        this.rvSbno = rvSbno;
        this.frDpRstErcd = frDpRstErcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
