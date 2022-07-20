/**
 * LseClmNvCsSpc Entity 클래스
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
@Table(name = "lse_clm_nv_cs_spc") //--사고조사비용내역
@Schema(description = "사고조사비용내역")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseClmNvCsSpc implements Serializable {
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

    @Column(name = "cc_seq", precision = 3, scale = 0, nullable = false)
    @Schema(description = "산출회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ccSeq; //--산출회차

    @Column(name = "cs_spc_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "비용내역순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal csSpcSeqno; //--비용내역순번

    @Column(name = "cs_flg_lclcd", length = 10, nullable = true)
    @Schema(description = "비용구분대분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String csFlgLclcd; //--비용구분대분류코드

    @Column(name = "cs_flgcd", length = 10, nullable = false)
    @Schema(description = "비용구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String csFlgcd; //--비용구분코드

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "환율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xcrt; //--환율

    @Column(name = "xcrt_apdt", nullable = true)
    @Schema(description = "환율적용일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date xcrtApdt; //--환율적용일자

    @Column(name = "cs_amt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal csAmt; //--비용금액

    @Column(name = "woncr_cv_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "원화환산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvCsamt; //--원화환산비용금액

    @Column(name = "remn_xi_mncd", length = 10, nullable = true)
    @Schema(description = "잔여추산화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String remnXiMncd; //--잔여추산화폐코드

    @Column(name = "remn_xi_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "잔여추산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal remnXiCsamt; //--잔여추산비용금액

    @Column(name = "nv_org_ctmno", length = 13, nullable = true)
    @Schema(description = "조사기관고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvOrgCtmno; //--조사기관고객번호

    @Column(name = "condt_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtCsamt; //--공동인수비용금액

    @Column(name = "condt_woncv_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수원화환산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtWoncvCsamt; //--공동인수원화환산비용금액

    @Column(name = "condt_remn_xi_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수잔여추산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtRemnXiCsamt; //--공동인수잔여추산비용금액

    @Column(name = "ltrm_rert", precision = 12, scale = 6, nullable = false)
    @Schema(description = "장기출재율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmRert; //--장기출재율

    @Column(name = "ltrm_re_nv_cs", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장기출재조사비용", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmReNvCs; //--장기출재조사비용

    @Column(name = "ltrm_re_remn_xiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장기출재잔여추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmReRemnXiamt; //--장기출재잔여추산금액

    @Column(name = "fr_xi_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "최초추산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal frXiCsamt; //--최초추산비용금액

    @Column(name = "condt_fr_xi_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수최초추산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtFrXiCsamt; //--공동인수최초추산비용금액

    @Column(name = "cmp_py_rltno", length = 50, nullable = true)
    @Schema(description = "보상지급연계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpPyRltno; //--보상지급연계번호

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ltins_pstcd", length = 10, nullable = true)
    @Schema(description = "장기보험경유처코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltinsPstcd; //--장기보험경유처코드

    @Column(name = "ltins_rins_ps", length = 10, nullable = true)
    @Schema(description = "장기보험재보험자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltinsRinsPs; //--장기보험재보험자

    @Column(name = "re_trt_flgcd", length = 10, nullable = true)
    @Schema(description = "출재특약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String reTrtFlgcd; //--출재특약구분코드

    @Column(name = "mdud_seq", precision = 3, scale = 0, nullable = true)
    @Schema(description = "의료심사회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mdudSeq; //--의료심사회차

    @Column(name = "pypl_flgcd", length = 10, nullable = true)
    @Schema(description = "지급처구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyplFlgcd; //--지급처구분코드

    @Column(name = "pypl_ctmno", length = 13, nullable = true)
    @Schema(description = "지급처고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyplCtmno; //--지급처고객번호

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
    public LseClmNvCsSpc(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, String plyno, BigDecimal ccSeq, BigDecimal csSpcSeqno, String csFlgLclcd, String csFlgcd, String mncd, BigDecimal xcrt, Date xcrtApdt, BigDecimal csAmt, BigDecimal woncrCvCsamt, String remnXiMncd, BigDecimal remnXiCsamt, String nvOrgCtmno, BigDecimal condtCsamt, BigDecimal condtWoncvCsamt, BigDecimal condtRemnXiCsamt, BigDecimal ltrmRert, BigDecimal ltrmReNvCs, BigDecimal ltrmReRemnXiamt, BigDecimal frXiCsamt, BigDecimal condtFrXiCsamt, String cmpPyRltno, String ikdGrpcd, String ltinsPstcd, String ltinsRinsPs, String reTrtFlgcd, BigDecimal mdudSeq, String pyplFlgcd, String pyplCtmno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.plyno = plyno;
        this.ccSeq = ccSeq;
        this.csSpcSeqno = csSpcSeqno;
        this.csFlgLclcd = csFlgLclcd;
        this.csFlgcd = csFlgcd;
        this.mncd = mncd;
        this.xcrt = xcrt;
        this.xcrtApdt = xcrtApdt;
        this.csAmt = csAmt;
        this.woncrCvCsamt = woncrCvCsamt;
        this.remnXiMncd = remnXiMncd;
        this.remnXiCsamt = remnXiCsamt;
        this.nvOrgCtmno = nvOrgCtmno;
        this.condtCsamt = condtCsamt;
        this.condtWoncvCsamt = condtWoncvCsamt;
        this.condtRemnXiCsamt = condtRemnXiCsamt;
        this.ltrmRert = ltrmRert;
        this.ltrmReNvCs = ltrmReNvCs;
        this.ltrmReRemnXiamt = ltrmReRemnXiamt;
        this.frXiCsamt = frXiCsamt;
        this.condtFrXiCsamt = condtFrXiCsamt;
        this.cmpPyRltno = cmpPyRltno;
        this.ikdGrpcd = ikdGrpcd;
        this.ltinsPstcd = ltinsPstcd;
        this.ltinsRinsPs = ltinsRinsPs;
        this.reTrtFlgcd = reTrtFlgcd;
        this.mdudSeq = mdudSeq;
        this.pyplFlgcd = pyplFlgcd;
        this.pyplCtmno = pyplCtmno;
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
