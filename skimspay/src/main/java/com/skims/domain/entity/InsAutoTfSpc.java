/**
 * InsAutoTfSpc Entity 클래스
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
@Table(name = "ins_auto_tf_spc") //--자동이체내역
@Schema(description = "자동이체내역")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsAutoTfSpc implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "auto_tfsno", length = 20, nullable = false)
    @Schema(description = "자동이체번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoTfsno; //--자동이체번호

    @Column(name = "plyno_or_lnno", length = 16, nullable = false)
    @Schema(description = "증권번호대출번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plynoOrLnno; //--증권번호대출번호

    @Column(name = "prs_plyno_or_lnno", length = 16, nullable = false)
    @Schema(description = "대표증권번호대출번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prsPlynoOrLnno; //--대표증권번호대출번호

    @Column(name = "auto_tf_cg_kndcd", length = 10, nullable = false)
    @Schema(description = "자동이체요금종류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoTfCgKndcd; //--자동이체요금종류코드

    @Column(name = "auto_tfdt", nullable = false)
    @Schema(description = "자동이체일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date autoTfdt; //--자동이체일자

    @Column(name = "prs_ply_rqpym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "대표증권의뢰납입회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal prsPlyRqpymSeq; //--대표증권의뢰납입회차

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndsno; //--배서번호

    @Column(name = "olcrr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구이력순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal olcrrSeqno; //--구이력순번

    @Column(name = "oldbl_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구중복순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal oldblSeqno; //--구중복순번

    @Column(name = "rq_pym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "요청납입회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rqPymSeq; //--요청납입회차

    @Column(name = "requ_fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "의뢰최종납입년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String requFnlPymYymm; //--의뢰최종납입년월

    @Column(name = "dl_pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "처리납입회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dlPymSeq; //--처리납입회차

    @Column(name = "dl_fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "처리최종납입년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlFnlPymYymm; //--처리최종납입년월

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal apPrm; //--적용보험료

    @Column(name = "tfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "이체금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal tfamt; //--이체금액

    @Column(name = "rv_dl_rstcd", length = 10, nullable = true)
    @Schema(description = "수납처리결과코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rvDlRstcd; //--수납처리결과코드

    @Column(name = "dp_dl_wrk_dthms", nullable = true)
    @Schema(description = "입금처리작업일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dpDlWrkDthms; //--입금처리작업일시

    @Column(name = "tf_requ_flgcd", length = 10, nullable = true)
    @Schema(description = "이체의뢰구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRequFlgcd; //--이체의뢰구분코드

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhStfno; //--취급직원번호

    @Column(name = "tf_bj_yymm", length = 6, nullable = true)
    @Schema(description = "이체대상년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfBjYymm; //--이체대상년월

    @Column(name = "tf_bjdt_cd", length = 10, nullable = true)
    @Schema(description = "이체대상일코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfBjdtCd; //--이체대상일코드

    @Column(name = "tf_ad_dscrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "이체추가할인율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal tfAdDscrt; //--이체추가할인율

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
    public InsAutoTfSpc(String autoTfsno, String plynoOrLnno, String prsPlynoOrLnno, String autoTfCgKndcd, Date autoTfdt, BigDecimal prsPlyRqpymSeq, String ndsno, BigDecimal olcrrSeqno, BigDecimal oldblSeqno, BigDecimal rqPymSeq, String requFnlPymYymm, BigDecimal dlPymSeq, String dlFnlPymYymm, BigDecimal apPrm, BigDecimal tfamt, String rvDlRstcd, Date dpDlWrkDthms, String tfRequFlgcd, String dhStfno, String tfBjYymm, String tfBjdtCd, BigDecimal tfAdDscrt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
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
