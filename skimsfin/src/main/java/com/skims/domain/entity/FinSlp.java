/**
 * FinSlp Entity 클래스
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
import javax.persistence.IdClass;
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
@Table(name = "fin_slp") //--전표
@Schema(description = "전표")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(FinSlpPK.class)
public class FinSlp implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Id //  String
    @Column(name = "st_yymm", length = 6, nullable = false)
    @Schema(description = "기준년월", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String stYymm; //--기준년월

    @Column(name = "slpdt", nullable = false)
    @Schema(description = "전표일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date slpdt; //--전표일자

    @Column(name = "slpno", length = 7, nullable = false)
    @Schema(description = "전표번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpno; //--전표번호

    @Column(name = "gn_spc_flgcd", length = 10, nullable = false)
    @Schema(description = "일반특별구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gnSpcFlgcd; //--일반특별구분코드

    @Column(name = "cr_syscd", length = 10, nullable = false)
    @Schema(description = "발생시스템코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crSyscd; //--발생시스템코드

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "slp_prv_stcd", length = 10, nullable = true)
    @Schema(description = "전표결재상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpPrvStcd; //--전표결재상태코드

    @Column(name = "slp_prv_dthms", nullable = true)
    @Schema(description = "전표결재일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date slpPrvDthms; //--전표결재일시

    @Column(name = "slp_prv_stfno", length = 50, nullable = true)
    @Schema(description = "전표결재직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpPrvStfno; //--전표결재직원번호

    @Column(name = "cr_dl_orgcd", length = 7, nullable = true)
    @Schema(description = "발생거래기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crDlOrgcd; //--발생거래기관코드

    @Column(name = "cr_deldt", nullable = true)
    @Schema(description = "발생거래일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date crDeldt; //--발생거래일자

    @Column(name = "cr_dlno", length = 20, nullable = true)
    @Schema(description = "발생거래번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crDlno; //--발생거래번호

    @Column(name = "slp_stcd", length = 10, nullable = false)
    @Schema(description = "전표상태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpStcd; //--전표상태코드

    @Column(name = "ers_dthms", nullable = true)
    @Schema(description = "삭제일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ersDthms; //--삭제일시

    @Column(name = "act_atrcd", length = 10, nullable = true)
    @Schema(description = "회계속성코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actAtrcd; //--회계속성코드

    @Column(name = "hdcft_slp_prv_stcd", length = 10, nullable = true)
    @Schema(description = "수기전표결재상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hdcftSlpPrvStcd; //--수기전표결재상태코드

    @Column(name = "elec_evd_img_bsnno", length = 50, nullable = true)
    @Schema(description = "전자증빙이미지업무번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String elecEvdImgBsnno; //--전자증빙이미지업무번호

    @Column(name = "elec_prv_dcu_id", length = 20, nullable = true)
    @Schema(description = "전자결재문서아이디", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String elecPrvDcuId; //--전자결재문서아이디

    @Column(name = "tacc_ldg_crt_flgcd", length = 10, nullable = true)
    @Schema(description = "총계정원장생성구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String taccLdgCrtFlgcd; //--총계정원장생성구분코드

    @Column(name = "ifrs_slpdt", nullable = true)
    @Schema(description = "ifrs전표일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ifrsSlpdt; //--ifrs전표일자

    @Column(name = "ifrs_slpno", length = 7, nullable = true)
    @Schema(description = "ifrs전표번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ifrsSlpno; //--ifrs전표번호

    @Column(name = "act_ldg_flgcd", length = 10, nullable = false)
    @Schema(description = "회계원장구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actLdgFlgcd; //--회계원장구분코드

    @Column(name = "erp_ts_yn", length = 1, nullable = true)
    @Schema(description = "erp전송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpTsYn; //--erp전송여부

    @Column(name = "erp_tsdt", length = 8, nullable = true)
    @Schema(description = "erp전송일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpTsdt; //--erp전송일자

    @Column(name = "erp_sync_ta_yn", length = 1, nullable = true)
    @Schema(description = "erp동시이관여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpSyncTaYn; //--erp동시이관여부

    @Column(name = "erp_slpno", length = 10, nullable = true)
    @Schema(description = "erp전표번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpSlpno; //--erp전표번호

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
    public FinSlp(String stYymm, Date slpdt, String slpno, String gnSpcFlgcd, String crSyscd, String dlTpO1Csfcd, String dlTpO2Csfcd, String slpPrvStcd, Date slpPrvDthms, String slpPrvStfno, String crDlOrgcd, Date crDeldt, String crDlno, String slpStcd, Date ersDthms, String actAtrcd, String hdcftSlpPrvStcd, String elecEvdImgBsnno, String elecPrvDcuId, String taccLdgCrtFlgcd, Date ifrsSlpdt, String ifrsSlpno, String actLdgFlgcd, String erpTsYn, String erpTsdt, String erpSyncTaYn, String erpSlpno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.stYymm = stYymm;
        this.slpdt = slpdt;
        this.slpno = slpno;
        this.gnSpcFlgcd = gnSpcFlgcd;
        this.crSyscd = crSyscd;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.slpPrvStcd = slpPrvStcd;
        this.slpPrvDthms = slpPrvDthms;
        this.slpPrvStfno = slpPrvStfno;
        this.crDlOrgcd = crDlOrgcd;
        this.crDeldt = crDeldt;
        this.crDlno = crDlno;
        this.slpStcd = slpStcd;
        this.ersDthms = ersDthms;
        this.actAtrcd = actAtrcd;
        this.hdcftSlpPrvStcd = hdcftSlpPrvStcd;
        this.elecEvdImgBsnno = elecEvdImgBsnno;
        this.elecPrvDcuId = elecPrvDcuId;
        this.taccLdgCrtFlgcd = taccLdgCrtFlgcd;
        this.ifrsSlpdt = ifrsSlpdt;
        this.ifrsSlpno = ifrsSlpno;
        this.actLdgFlgcd = actLdgFlgcd;
        this.erpTsYn = erpTsYn;
        this.erpTsdt = erpTsdt;
        this.erpSyncTaYn = erpSyncTaYn;
        this.erpSlpno = erpSlpno;
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
