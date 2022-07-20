/**
 * InsDpDlEr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.PostLoad;
import javax.persistence.PostPersist;
import javax.persistence.PostRemove;
import javax.persistence.PostUpdate;
import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Entity
@Table(name = "ins_dp_dl_er") //--입금처리오류
@Schema(description = "입금처리오류")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsDpDlEr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "dp_dl_er_seqno", precision = 11, scale = 0, nullable = false)
    @Schema(description = "입금처리오류순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dpDlErSeqno; //--입금처리오류순번

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "납입회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pymSeq; //--납입회차

    @Column(name = "dp_cascd", length = 10, nullable = true)
    @Schema(description = "입금원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpCascd; //--입금원인코드

    @Column(name = "dp_dt_cascd", length = 10, nullable = true)
    @Schema(description = "입금세부원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpDtCascd; //--입금세부원인코드

    @Column(name = "rtx_kndcd", length = 10, nullable = true)
    @Schema(description = "영수증종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtxKndcd; //--영수증종류코드

    @Column(name = "dp_rst_ercd", length = 10, nullable = true)
    @Schema(description = "입금결과오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpRstErcd; //--입금결과오류코드

    @Column(name = "fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "최종납입년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnlPymYymm; //--최종납입년월

    @Column(name = "pym_cyccd", length = 10, nullable = true)
    @Schema(description = "납입주기코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymCyccd; //--납입주기코드

    @Column(name = "pym_mtdcd", length = 10, nullable = true)
    @Schema(description = "납입방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymMtdcd; //--납입방법코드

    @Column(name = "rpdt", nullable = true)
    @Schema(description = "영수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rpdt; //--영수일자

    @Column(name = "rvi_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "부활이자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rviNt; //--부활이자

    @Column(name = "pty_or_rtn_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "추징환급보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ptyOrRtnPrm; //--추징환급보험료

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal apPrm; //--적용보험료

    @Column(name = "rpamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "영수금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rpamt; //--영수금액

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhStfno; //--취급직원번호

    @Column(name = "dpps_flgcd", length = 10, nullable = true)
    @Schema(description = "입금원구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dppsFlgcd; //--입금원구분코드

    @Column(name = "rv_dl_rstcd", length = 10, nullable = true)
    @Schema(description = "수납처리결과코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rvDlRstcd; //--수납처리결과코드

    @Column(name = "ctm_inq_auto_tfsno", length = 30, nullable = false)
    @Schema(description = "고객조회자동이체번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmInqAutoTfsno; //--고객조회자동이체번호

    @Column(name = "pvl_prdt", nullable = true)
    @Schema(description = "계상예정일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pvlPrdt; //--계상예정일자

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "rv_sbno", length = 20, nullable = true)
    @Schema(description = "수납대기번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rvSbno; //--수납대기번호

    @Column(name = "fr_dp_rst_ercd", length = 10, nullable = true)
    @Schema(description = "최초입금결과오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String frDpRstErcd; //--최초입금결과오류코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date mdfDthms; //--수정일시

    @Builder
    public InsDpDlEr(BigDecimal dpDlErSeqno, String plyno, BigDecimal pymSeq, String dpCascd, String dpDtCascd, String rtxKndcd, String dpRstErcd, String fnlPymYymm, String pymCyccd, String pymMtdcd, Date rpdt, BigDecimal rviNt, BigDecimal ptyOrRtnPrm, BigDecimal apPrm, BigDecimal rpamt, String dhStfno, String dppsFlgcd, String rvDlRstcd, String ctmInqAutoTfsno, Date pvlPrdt, String ikdGrpcd, String rvSbno, String frDpRstErcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
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
	
	//----------------------------------------------------
    // Load/Persist/Update/Remove(조회/신규/수정/삭제)
    // Entity Pre/Post(이전/이후) 처리에 대한 정의(PreLoad는 없음)
    // * DB의 Trigger와 비슷한 JPA기능
    //----------------------------------------------------
    @PostLoad
    public void onPostLoad() {
        log.info("onPostLoad : Select후 호출" );
    }

    @PrePersist
    public void onPrePersist() {
        log.info("onPrePersist : Insert전 호출");
    }
    
    @PostPersist
    public void onPostPersist() {
        log.info("onPrePersist : Insert후 호출");
    }
    
    @PreUpdate
    public void onPreUpdate() {
        log.info("onPreUpdate : Update전 호출");
    }
    
    @PostUpdate
    public void onPostUpdate() {
        log.info("onPostUpdate : Update후 호출"); 
    }
    
    @PreRemove
    public void onPreRemove() {
        log.info("onPreRemove  : Delete전 호출");    
    }
    
    @PostRemove
    public void onPostRemove() {
        log.info("onPostRemove : Delete후 호출");
    }
}
