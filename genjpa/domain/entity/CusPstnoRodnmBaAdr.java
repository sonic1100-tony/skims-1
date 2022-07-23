/**
 * CusPstnoRodnmBaAdr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "cus_pstno_rodnm_ba_adr") //--우편번호도로명기본주소
@Schema(description = "우편번호도로명기본주소")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class CusPstnoRodnmBaAdr implements Serializable {
    @Id //  String
    @Column(name = "pstno_id", length = 10, nullable = false)
    @Schema(description = "우편번호id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pstnoId; //--우편번호id

    @Column(name = "pstno", length = 6, nullable = true)
    @Schema(description = "우편번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pstno; //--우편번호

    @Column(name = "pst_sno", length = 3, nullable = true)
    @Schema(description = "우편일련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pstSno; //--우편일련번호

    @Column(name = "sd", length = 30, nullable = true)
    @Schema(description = "시도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sd; //--시도

    @Column(name = "sgng", length = 30, nullable = true)
    @Schema(description = "시군구", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sgng; //--시군구

    @Column(name = "twm", length = 30, nullable = true)
    @Schema(description = "읍면", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String twm; //--읍면

    @Column(name = "road_nm", length = 100, nullable = true)
    @Schema(description = "도로명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String roadNm; //--도로명

    @Column(name = "mn_bldno", length = 50, nullable = true)
    @Schema(description = "주건물번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mnBldno; //--주건물번호

    @Column(name = "sub_bldno", length = 5, nullable = true)
    @Schema(description = "부건물번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String subBldno; //--부건물번호

    @Column(name = "bldnm", length = 100, nullable = true)
    @Schema(description = "건물명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bldnm; //--건물명

    @Column(name = "dt_bldnm", length = 100, nullable = true)
    @Schema(description = "상세건물명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dtBldnm; //--상세건물명

    @Column(name = "undg_flgcd", length = 10, nullable = true)
    @Schema(description = "지하구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String undgFlgcd; //--지하구분코드

    @Column(name = "road_nm_flgcd", length = 12, nullable = false)
    @Schema(description = "도로명구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String roadNmFlgcd; //--도로명구분코드

    @Column(name = "laco_dong_flgcd", length = 10, nullable = true)
    @Schema(description = "법정동구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lacoDongFlgcd; //--법정동구분코드

    @Column(name = "laco_dngnm", length = 30, nullable = true)
    @Schema(description = "법정동명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lacoDngnm; //--법정동명

    @Column(name = "ams_dong_flgcd", length = 10, nullable = true)
    @Schema(description = "행정동구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String amsDongFlgcd; //--행정동구분코드

    @Column(name = "ams_dngnm", length = 30, nullable = true)
    @Schema(description = "행정동명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String amsDngnm; //--행정동명

    @Column(name = "bld_admno", length = 30, nullable = true)
    @Schema(description = "건물관리번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bldAdmno; //--건물관리번호

    @Column(name = "twmd_sno", length = 3, nullable = false)
    @Schema(description = "읍면동일련번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String twmdSno; //--읍면동일련번호

    @Column(name = "twmd", length = 30, nullable = true)
    @Schema(description = "읍면동", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String twmd; //--읍면동

    @Column(name = "cmpx_bldnm", length = 100, nullable = true)
    @Schema(description = "복합건물명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpxBldnm; //--복합건물명

    @Column(name = "eng_road_nm_adr", length = 200, nullable = true)
    @Schema(description = "영문도로명주소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String engRoadNmAdr; //--영문도로명주소

    @Column(name = "eng_road_nm", length = 100, nullable = true)
    @Schema(description = "영문도로명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String engRoadNm; //--영문도로명

    @Column(name = "tot_nw_adr", length = 200, nullable = true)
    @Schema(description = "전체신규주소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String totNwAdr; //--전체신규주소

    @Column(name = "ba_adr", length = 100, nullable = true)
    @Schema(description = "기본주소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String baAdr; //--기본주소

    @Column(name = "ref_it", length = 100, nullable = true)
    @Schema(description = "참고항목", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String refIt; //--참고항목

    @Column(name = "bf_pstno", length = 6, nullable = true)
    @Schema(description = "전우편번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfPstno; //--전우편번호

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
    public CusPstnoRodnmBaAdr(String pstnoId, String pstno, String pstSno, String sd, String sgng, String twm, String roadNm, String mnBldno, String subBldno, String bldnm, String dtBldnm, String undgFlgcd, String roadNmFlgcd, String lacoDongFlgcd, String lacoDngnm, String amsDongFlgcd, String amsDngnm, String bldAdmno, String twmdSno, String twmd, String cmpxBldnm, String engRoadNmAdr, String engRoadNm, String totNwAdr, String baAdr, String refIt, String bfPstno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.pstnoId = pstnoId;
        this.pstno = pstno;
        this.pstSno = pstSno;
        this.sd = sd;
        this.sgng = sgng;
        this.twm = twm;
        this.roadNm = roadNm;
        this.mnBldno = mnBldno;
        this.subBldno = subBldno;
        this.bldnm = bldnm;
        this.dtBldnm = dtBldnm;
        this.undgFlgcd = undgFlgcd;
        this.roadNmFlgcd = roadNmFlgcd;
        this.lacoDongFlgcd = lacoDongFlgcd;
        this.lacoDngnm = lacoDngnm;
        this.amsDongFlgcd = amsDongFlgcd;
        this.amsDngnm = amsDngnm;
        this.bldAdmno = bldAdmno;
        this.twmdSno = twmdSno;
        this.twmd = twmd;
        this.cmpxBldnm = cmpxBldnm;
        this.engRoadNmAdr = engRoadNmAdr;
        this.engRoadNm = engRoadNm;
        this.totNwAdr = totNwAdr;
        this.baAdr = baAdr;
        this.refIt = refIt;
        this.bfPstno = bfPstno;
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