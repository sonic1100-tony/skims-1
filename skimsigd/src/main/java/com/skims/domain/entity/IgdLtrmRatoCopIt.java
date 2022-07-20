/**
 * IgdLtrmRatoCopIt Entity 클래스
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
@Table(name = "igd_ltrm_rato_cop_it") //--장기이율구성항목
@Schema(description = "장기이율구성항목")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(IgdLtrmRatoCopItPK.class)
public class IgdLtrmRatoCopIt implements Serializable {
    @Id //  String
    @Column(name = "ltrm_rt_tabl_flgcd", length = 10, nullable = false)
    @Schema(description = "장기요율테이블구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드

    @Id //  String
    @Column(name = "in_out_flgcd", length = 1, nullable = false)
    @Schema(description = "inout구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inOutFlgcd; //--inout구분코드

    @Id //  BigDecimal
    @Column(name = "it_idc_ordr", precision = 3, scale = 0, nullable = false)
    @Schema(description = "항목표시순서", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal itIdcOrdr; //--항목표시순서

    @Id //  Date
    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apNddt; //--적용종료일자

    @Column(name = "rt_itcd_atrvl", length = 100, nullable = false)
    @Schema(description = "요율항목코드속성값", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtItcdAtrvl; //--요율항목코드속성값

    @Column(name = "rt_it_cdnm", length = 100, nullable = false)
    @Schema(description = "요율항목코드명", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtItCdnm; //--요율항목코드명

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdfUsrId; //--수정사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date mdfDthms; //--수정일시

    @Builder
    public IgdLtrmRatoCopIt(String ltrmRtTablFlgcd, String inOutFlgcd, BigDecimal itIdcOrdr, Date apStrdt, Date apNddt, String rtItcdAtrvl, String rtItCdnm, String mdfUsrId, Date inpDthms, Date mdfDthms) {
        this.ltrmRtTablFlgcd = ltrmRtTablFlgcd;
        this.inOutFlgcd = inOutFlgcd;
        this.itIdcOrdr = itIdcOrdr;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.rtItcdAtrvl = rtItcdAtrvl;
        this.rtItCdnm = rtItCdnm;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
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
