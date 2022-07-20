/**
 * CusCtmCntrtCrr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
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
@Table(name = "cus_ctm_cntrt_crr") //--고객접촉이력
@Schema(description = "고객접촉이력")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class CusCtmCntrtCrr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "cntrt_dthms", nullable = false)
    @Schema(description = "접촉일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cntrtDthms; //--접촉일시

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmno; //--고객번호

    @Column(name = "cntrt_mncd", length = 10, nullable = false)
    @Schema(description = "접촉수단코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cntrtMncd; //--접촉수단코드

    @Column(name = "cntps_id", length = 50, nullable = true)
    @Schema(description = "접촉자id", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cntpsId; //--접촉자id

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "whol_bsns_dl_tpnm", length = 50, nullable = true)
    @Schema(description = "전사업무처리유형명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wholBsnsDlTpnm; //--전사업무처리유형명

    @Column(name = "whol_bsns_dl_tp_dtnm", length = 50, nullable = true)
    @Schema(description = "전사업무처리유형상세명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wholBsnsDlTpDtnm; //--전사업무처리유형상세명

    @Column(name = "ntc_bjps_flgcd", length = 10, nullable = true)
    @Schema(description = "안내대상자구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntcBjpsFlgcd; //--안내대상자구분코드

    @Column(name = "cntrt_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "접촉처리구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cntrtDlFlgcd; //--접촉처리구분코드

    @Column(name = "isno", length = 13, nullable = true)
    @Schema(description = "발급번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String isno; //--발급번호

    @Column(name = "rqdt", nullable = true)
    @Schema(description = "신청일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rqdt; //--신청일자

    @Column(name = "ctm_cntrt_rcv_cn", length = 100, nullable = true)
    @Schema(description = "고객접촉수신내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmCntrtRcvCn; //--고객접촉수신내용

    @Column(name = "doc_id", length = 50, nullable = true)
    @Schema(description = "docid", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String docId; //--docid

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
    public CusCtmCntrtCrr(Date cntrtDthms, String ctmno, String cntrtMncd, String cntpsId, String plyno, String wholBsnsDlTpnm, String wholBsnsDlTpDtnm, String ntcBjpsFlgcd, String cntrtDlFlgcd, String isno, Date rqdt, String ctmCntrtRcvCn, String docId, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.cntrtDthms = cntrtDthms;
        this.ctmno = ctmno;
        this.cntrtMncd = cntrtMncd;
        this.cntpsId = cntpsId;
        this.plyno = plyno;
        this.wholBsnsDlTpnm = wholBsnsDlTpnm;
        this.wholBsnsDlTpDtnm = wholBsnsDlTpDtnm;
        this.ntcBjpsFlgcd = ntcBjpsFlgcd;
        this.cntrtDlFlgcd = cntrtDlFlgcd;
        this.isno = isno;
        this.rqdt = rqdt;
        this.ctmCntrtRcvCn = ctmCntrtRcvCn;
        this.docId = docId;
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
