/**
 * IgdLtrmPrm Entity 클래스
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
@Table(name = "igd_ltrm_prm") //--장기보험료
@Schema(description = "장기보험료")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class IgdLtrmPrm implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "gdcd", length = 10, nullable = false)
    @Schema(description = "상품코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gdcd; //--상품코드

    @Column(name = "cvrcd", length = 8, nullable = false)
    @Schema(description = "담보코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrcd; //--담보코드

    @Column(name = "rt_key_assmb_cd", length = 100, nullable = false)
    @Schema(description = "요율key조립코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtKeyAssmbCd; //--요율key조립코드

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apNddt; //--적용종료일자

    @Column(name = "nd_flgcd", length = 10, nullable = false)
    @Schema(description = "만기구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndFlgcd; //--만기구분코드

    @Column(name = "ins_trm", precision = 3, scale = 0, nullable = false)
    @Schema(description = "보험기간", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal insTrm; //--보험기간

    @Column(name = "nw_rnw_flgcd", length = 10, nullable = false)
    @Schema(description = "신규갱신구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwRnwFlgcd; //--신규갱신구분코드

    @Column(name = "pym_trm_flgcd", length = 10, nullable = false)
    @Schema(description = "납입기간구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymTrmFlgcd; //--납입기간구분코드

    @Column(name = "pym_trm", precision = 3, scale = 0, nullable = false)
    @Schema(description = "납입기간", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pymTrm; //--납입기간

    @Column(name = "sexcd", length = 10, nullable = false)
    @Schema(description = "성별코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sexcd; //--성별코드

    @Column(name = "injr_rnkcd", length = 10, nullable = false)
    @Schema(description = "상해급수코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrRnkcd; //--상해급수코드

    @Column(name = "drve_tycd", length = 10, nullable = false)
    @Schema(description = "운전형태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drveTycd; //--운전형태코드

    @Column(name = "sustd_yn", length = 1, nullable = false)
    @Schema(description = "표준하체여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sustdYn; //--표준하체여부

    @Column(name = "cmp_lmcd", length = 10, nullable = false)
    @Schema(description = "보상한도코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpLmcd; //--보상한도코드

    @Column(name = "is_age", precision = 3, scale = 0, nullable = false)
    @Schema(description = "가입연령", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal isAge; //--가입연령

    @Column(name = "rt_flg_vl1", length = 50, nullable = false)
    @Schema(description = "요율구분값1", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl1; //--요율구분값1

    @Column(name = "rt_flg_vl2", length = 50, nullable = false)
    @Schema(description = "요율구분값2", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl2; //--요율구분값2

    @Column(name = "rt_flg_vl3", length = 50, nullable = false)
    @Schema(description = "요율구분값3", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl3; //--요율구분값3

    @Column(name = "rt_flg_vl4", length = 50, nullable = false)
    @Schema(description = "요율구분값4", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl4; //--요율구분값4

    @Column(name = "rt_flg_vl5", length = 50, nullable = false)
    @Schema(description = "요율구분값5", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl5; //--요율구분값5

    @Column(name = "rt_flg_vl6", length = 50, nullable = false)
    @Schema(description = "요율구분값6", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl6; //--요율구분값6

    @Column(name = "rt_flg_vl7", length = 50, nullable = false)
    @Schema(description = "요율구분값7", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl7; //--요율구분값7

    @Column(name = "rt_flg_vl8", length = 50, nullable = false)
    @Schema(description = "요율구분값8", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl8; //--요율구분값8

    @Column(name = "rt_flg_vl9", length = 50, nullable = false)
    @Schema(description = "요율구분값9", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl9; //--요율구분값9

    @Column(name = "rt_flg_vl10", length = 50, nullable = false)
    @Schema(description = "요율구분값10", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtFlgVl10; //--요율구분값10

    @Column(name = "pym_cyccd", length = 10, nullable = false)
    @Schema(description = "납입주기코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymCyccd; //--납입주기코드

    @Column(name = "st_isamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "기준가입금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal stIsamt; //--기준가입금액

    @Column(name = "bz_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "영업보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal bzPrm; //--영업보험료

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
    public IgdLtrmPrm(String gdcd, String cvrcd, String rtKeyAssmbCd, Date apStrdt, Date apNddt, String ndFlgcd, BigDecimal insTrm, String nwRnwFlgcd, String pymTrmFlgcd, BigDecimal pymTrm, String sexcd, String injrRnkcd, String drveTycd, String sustdYn, String cmpLmcd, BigDecimal isAge, String rtFlgVl1, String rtFlgVl2, String rtFlgVl3, String rtFlgVl4, String rtFlgVl5, String rtFlgVl6, String rtFlgVl7, String rtFlgVl8, String rtFlgVl9, String rtFlgVl10, String pymCyccd, BigDecimal stIsamt, BigDecimal bzPrm, String mdfUsrId, Date inpDthms, Date mdfDthms) {
        this.gdcd = gdcd;
        this.cvrcd = cvrcd;
        this.rtKeyAssmbCd = rtKeyAssmbCd;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.ndFlgcd = ndFlgcd;
        this.insTrm = insTrm;
        this.nwRnwFlgcd = nwRnwFlgcd;
        this.pymTrmFlgcd = pymTrmFlgcd;
        this.pymTrm = pymTrm;
        this.sexcd = sexcd;
        this.injrRnkcd = injrRnkcd;
        this.drveTycd = drveTycd;
        this.sustdYn = sustdYn;
        this.cmpLmcd = cmpLmcd;
        this.isAge = isAge;
        this.rtFlgVl1 = rtFlgVl1;
        this.rtFlgVl2 = rtFlgVl2;
        this.rtFlgVl3 = rtFlgVl3;
        this.rtFlgVl4 = rtFlgVl4;
        this.rtFlgVl5 = rtFlgVl5;
        this.rtFlgVl6 = rtFlgVl6;
        this.rtFlgVl7 = rtFlgVl7;
        this.rtFlgVl8 = rtFlgVl8;
        this.rtFlgVl9 = rtFlgVl9;
        this.rtFlgVl10 = rtFlgVl10;
        this.pymCyccd = pymCyccd;
        this.stIsamt = stIsamt;
        this.bzPrm = bzPrm;
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
