/**
 * CusJb Entity 클래스
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
@Table(name = "cus_jb") //--직업
@Schema(description = "직업")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(CusJbPK.class)
public class CusJb implements Serializable {
    @Id //  BigDecimal
    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "직업변경순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal jbChSeqno; //--직업변경순번

    @Id //  String
    @Column(name = "jbcd", length = 10, nullable = false)
    @Schema(description = "직업코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbcd; //--직업코드

    @Column(name = "jbnm", length = 100, nullable = true)
    @Schema(description = "직업명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbnm; //--직업명

    @Column(name = "dt_jbnm", length = 100, nullable = true)
    @Schema(description = "세부직업명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dtJbnm; //--세부직업명

    @Column(name = "ap_strdt", nullable = true)
    @Schema(description = "적용시작일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = true)
    @Schema(description = "적용종료일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apNddt; //--적용종료일자

    @Column(name = "ppr_jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "상위직업변경순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pprJbChSeqno; //--상위직업변경순번

    @Column(name = "ppr_jbcd", length = 10, nullable = true)
    @Schema(description = "상위직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pprJbcd; //--상위직업코드

    @Column(name = "injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "상해급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrRnkcd; //--상해급수코드

    @Column(name = "injr_grdcd", length = 10, nullable = true)
    @Schema(description = "상해등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrGrdcd; //--상해등급코드

    @Column(name = "trf_rnkcd", length = 10, nullable = true)
    @Schema(description = "교통급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trfRnkcd; //--교통급수코드

    @Column(name = "xc_cvr_yn", length = 1, nullable = true)
    @Schema(description = "할증담보여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcCvrYn; //--할증담보여부

    @Column(name = "cr_jbcd", length = 10, nullable = true)
    @Schema(description = "자동차직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crJbcd; //--자동차직업코드

    @Column(name = "ltrm_xclc_jb_flgcd", length = 10, nullable = true)
    @Schema(description = "장기우량직업구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltrmXclcJbFlgcd; //--장기우량직업구분코드

    @Column(name = "jb_xpnm", length = 2000, nullable = true)
    @Schema(description = "직업설명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbXpnm; //--직업설명

    @Column(name = "jb_dt_tpnm", length = 2000, nullable = true)
    @Schema(description = "직업세부유형명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbDtTpnm; //--직업세부유형명

    @Column(name = "apldo_out_bjyn", length = 1, nullable = true)
    @Schema(description = "청약서출력대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String apldoOutBjyn; //--청약서출력대상여부

    @Column(name = "jb_xpnm_out_cn", length = 4000, nullable = true)
    @Schema(description = "직업설명출력내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbXpnmOutCn; //--직업설명출력내용

    @Column(name = "ud_xcpt_jb_yn", length = 1, nullable = true)
    @Schema(description = "심사제외직업여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udXcptJbYn; //--심사제외직업여부

    @Column(name = "injr_rk_grdcd", length = 1, nullable = true)
    @Schema(description = "상해위험등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrRkGrdcd; //--상해위험등급코드

    @Column(name = "dsas_rk_grdcd", length = 1, nullable = true)
    @Schema(description = "질병위험등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dsasRkGrdcd; //--질병위험등급코드

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
    public CusJb(BigDecimal jbChSeqno, String jbcd, String jbnm, String dtJbnm, Date apStrdt, Date apNddt, BigDecimal pprJbChSeqno, String pprJbcd, String injrRnkcd, String injrGrdcd, String trfRnkcd, String xcCvrYn, String crJbcd, String ltrmXclcJbFlgcd, String jbXpnm, String jbDtTpnm, String apldoOutBjyn, String jbXpnmOutCn, String udXcptJbYn, String injrRkGrdcd, String dsasRkGrdcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.jbChSeqno = jbChSeqno;
        this.jbcd = jbcd;
        this.jbnm = jbnm;
        this.dtJbnm = dtJbnm;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.pprJbChSeqno = pprJbChSeqno;
        this.pprJbcd = pprJbcd;
        this.injrRnkcd = injrRnkcd;
        this.injrGrdcd = injrGrdcd;
        this.trfRnkcd = trfRnkcd;
        this.xcCvrYn = xcCvrYn;
        this.crJbcd = crJbcd;
        this.ltrmXclcJbFlgcd = ltrmXclcJbFlgcd;
        this.jbXpnm = jbXpnm;
        this.jbDtTpnm = jbDtTpnm;
        this.apldoOutBjyn = apldoOutBjyn;
        this.jbXpnmOutCn = jbXpnmOutCn;
        this.udXcptJbYn = udXcptJbYn;
        this.injrRkGrdcd = injrRkGrdcd;
        this.dsasRkGrdcd = dsasRkGrdcd;
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
