/**
 * LseClmBsnsPrgSt Entity 클래스
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
@Table(name = "lse_clm_bsns_prg_st") //--사고업무진행상태
@Schema(description = "사고업무진행상태")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseClmBsnsPrgSt implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "rcp_yymm", length = 6, nullable = false)
    @Schema(description = "접수년월", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpYymm; //--접수년월

    @Column(name = "rcp_nv_seqno", length = 9, nullable = false)
    @Schema(description = "접수조사순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpNvSeqno; //--접수조사순번

    @Column(name = "clmps_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "사고자순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmpsSeqno; //--사고자순번

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "cr_seqno", precision = 7, scale = 0, nullable = false)
    @Schema(description = "발생순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal crSeqno; //--발생순번

    @Column(name = "clm_bsns_prg_stcd", length = 10, nullable = false)
    @Schema(description = "사고업무진행상태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmBsnsPrgStcd; //--사고업무진행상태코드

    @Column(name = "clm_prg_csfcd", length = 10, nullable = true)
    @Schema(description = "사고진행분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmPrgCsfcd; //--사고진행분류코드

    @Column(name = "idmrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "구상율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal idmrt; //--구상율

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "xcrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "환율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xcrt; //--환율

    @Column(name = "xcrt_apdt", nullable = true)
    @Schema(description = "환율적용일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date xcrtApdt; //--환율적용일자

    @Column(name = "rn_ibamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "원수보험금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rnIbamt; //--원수보험금액

    @Column(name = "woncr_cv_pyamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "원화환산지급금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvPyamt; //--원화환산지급금액

    @Column(name = "cs_xcrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "비용환율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal csXcrt; //--비용환율

    @Column(name = "cs_mncd", length = 10, nullable = true)
    @Schema(description = "비용화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String csMncd; //--비용화폐코드

    @Column(name = "cs_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal csAmt; //--비용금액

    @Column(name = "woncr_cv_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "원화환산비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvCsamt; //--원화환산비용금액

    @Column(name = "psrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "보유율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal psrt; //--보유율

    @Column(name = "xi_xcrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "추산환율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xiXcrt; //--추산환율

    @Column(name = "remn_xi_mncd", length = 10, nullable = true)
    @Schema(description = "잔여추산화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String remnXiMncd; //--잔여추산화폐코드

    @Column(name = "remn_xi_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "잔여추산금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal remnXiAmt; //--잔여추산금액

    @Column(name = "woncr_cv_xiamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "원화환산추산금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvXiamt; //--원화환산추산금액

    @Column(name = "remn_xi_cs_mncd", length = 10, nullable = true)
    @Schema(description = "잔여추산비용화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String remnXiCsMncd; //--잔여추산비용화폐코드

    @Column(name = "remn_xi_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "잔여추산비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal remnXiCsamt; //--잔여추산비용금액

    @Column(name = "woncv_xi_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "원화환산추산비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvXiCsamt; //--원화환산추산비용금액

    @Column(name = "tm_orgcd", length = 7, nullable = true)
    @Schema(description = "팀기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tmOrgcd; //--팀기관코드

    @Column(name = "tm_orgnm", length = 100, nullable = true)
    @Schema(description = "팀기관명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tmOrgnm; //--팀기관명

    @Column(name = "ppr_orgcd", length = 7, nullable = true)
    @Schema(description = "상위기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pprOrgcd; //--상위기관코드

    @Column(name = "ppr_orgnm", length = 100, nullable = true)
    @Schema(description = "상위기관명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pprOrgnm; //--상위기관명

    @Column(name = "nots_cn", length = 2000, nullable = true)
    @Schema(description = "적요내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String notsCn; //--적요내용

    @Column(name = "cr_dm_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "발생손해액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal crDmAmt; //--발생손해액

    @Column(name = "cc_seq", precision = 3, scale = 0, nullable = true)
    @Schema(description = "산출회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ccSeq; //--산출회차

    @Column(name = "dm_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "청구순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmSeqno; //--청구순번

    @Column(name = "chrps_stfno", length = 50, nullable = true)
    @Schema(description = "담당자직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsStfno; //--담당자직원번호

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
    public LseClmBsnsPrgSt(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, String plyno, BigDecimal crSeqno, String clmBsnsPrgStcd, String clmPrgCsfcd, BigDecimal idmrt, String mncd, BigDecimal xcrt, Date xcrtApdt, BigDecimal rnIbamt, BigDecimal woncrCvPyamt, BigDecimal csXcrt, String csMncd, BigDecimal csAmt, BigDecimal woncrCvCsamt, BigDecimal psrt, BigDecimal xiXcrt, String remnXiMncd, BigDecimal remnXiAmt, BigDecimal woncrCvXiamt, String remnXiCsMncd, BigDecimal remnXiCsamt, BigDecimal woncvXiCsamt, String tmOrgcd, String tmOrgnm, String pprOrgcd, String pprOrgnm, String notsCn, BigDecimal crDmAmt, BigDecimal ccSeq, BigDecimal dmSeqno, String chrpsStfno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.plyno = plyno;
        this.crSeqno = crSeqno;
        this.clmBsnsPrgStcd = clmBsnsPrgStcd;
        this.clmPrgCsfcd = clmPrgCsfcd;
        this.idmrt = idmrt;
        this.mncd = mncd;
        this.xcrt = xcrt;
        this.xcrtApdt = xcrtApdt;
        this.rnIbamt = rnIbamt;
        this.woncrCvPyamt = woncrCvPyamt;
        this.csXcrt = csXcrt;
        this.csMncd = csMncd;
        this.csAmt = csAmt;
        this.woncrCvCsamt = woncrCvCsamt;
        this.psrt = psrt;
        this.xiXcrt = xiXcrt;
        this.remnXiMncd = remnXiMncd;
        this.remnXiAmt = remnXiAmt;
        this.woncrCvXiamt = woncrCvXiamt;
        this.remnXiCsMncd = remnXiCsMncd;
        this.remnXiCsamt = remnXiCsamt;
        this.woncvXiCsamt = woncvXiCsamt;
        this.tmOrgcd = tmOrgcd;
        this.tmOrgnm = tmOrgnm;
        this.pprOrgcd = pprOrgcd;
        this.pprOrgnm = pprOrgnm;
        this.notsCn = notsCn;
        this.crDmAmt = crDmAmt;
        this.ccSeq = ccSeq;
        this.dmSeqno = dmSeqno;
        this.chrpsStfno = chrpsStfno;
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
