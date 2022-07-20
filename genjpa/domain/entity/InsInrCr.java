/**
 * InsInrCr Entity 클래스
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
@Table(name = "ins_inr_cr") //--통합계약
@Schema(description = "통합계약")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsInrCr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "st_yymm", length = 6, nullable = false)
    @Schema(description = "기준년월", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String stYymm; //--기준년월

    @Column(name = "inr_cr_da_flgcd", length = 10, nullable = false)
    @Schema(description = "통합계약자료구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inrCrDaFlgcd; //--통합계약자료구분코드

    @Column(name = "ins_st", nullable = true)
    @Schema(description = "보험시기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date insSt; //--보험시기

    @Column(name = "ins_clstr", nullable = true)
    @Schema(description = "보험종기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date insClstr; //--보험종기

    @Column(name = "crt_ctmno", length = 13, nullable = true)
    @Schema(description = "계약자고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crtCtmno; //--계약자고객번호

    @Column(name = "cr_stcd", length = 10, nullable = true)
    @Schema(description = "계약상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crStcd; //--계약상태코드

    @Column(name = "cr_dt_stcd", length = 10, nullable = true)
    @Schema(description = "계약세부상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crDtStcd; //--계약세부상태코드

    @Column(name = "st_chdt", nullable = true)
    @Schema(description = "상태변경일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date stChdt; //--상태변경일자

    @Column(name = "hdqt_orgcd", length = 7, nullable = true)
    @Schema(description = "본부기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hdqtOrgcd; //--본부기관코드

    @Column(name = "aregp_orgcd", length = 7, nullable = true)
    @Schema(description = "지역단기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String aregpOrgcd; //--지역단기관코드

    @Column(name = "dh_orgcd", length = 7, nullable = true)
    @Schema(description = "취급기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhOrgcd; //--취급기관코드

    @Column(name = "dh_stfcd", length = 50, nullable = true)
    @Schema(description = "취급직원코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhStfcd; //--취급직원코드

    @Column(name = "usrno", length = 10, nullable = true)
    @Schema(description = "사용인번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String usrno; //--사용인번호

    @Column(name = "inr_naamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "통합계약금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal inrNaamt; //--통합계약금액

    @Column(name = "inr_cr_dl_yn", length = 1, nullable = true)
    @Schema(description = "통합계약처리여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inrCrDlYn; //--통합계약처리여부

    @Column(name = "inr_cr_nt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "통합계약이자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal inrCrNt; //--통합계약이자

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
    public InsInrCr(String plyno, String stYymm, String inrCrDaFlgcd, Date insSt, Date insClstr, String crtCtmno, String crStcd, String crDtStcd, Date stChdt, String hdqtOrgcd, String aregpOrgcd, String dhOrgcd, String dhStfcd, String usrno, BigDecimal inrNaamt, String inrCrDlYn, BigDecimal inrCrNt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plyno = plyno;
        this.stYymm = stYymm;
        this.inrCrDaFlgcd = inrCrDaFlgcd;
        this.insSt = insSt;
        this.insClstr = insClstr;
        this.crtCtmno = crtCtmno;
        this.crStcd = crStcd;
        this.crDtStcd = crDtStcd;
        this.stChdt = stChdt;
        this.hdqtOrgcd = hdqtOrgcd;
        this.aregpOrgcd = aregpOrgcd;
        this.dhOrgcd = dhOrgcd;
        this.dhStfcd = dhStfcd;
        this.usrno = usrno;
        this.inrNaamt = inrNaamt;
        this.inrCrDlYn = inrCrDlYn;
        this.inrCrNt = inrCrNt;
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
