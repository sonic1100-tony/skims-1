/**
 * CusCtmCntad Entity 클래스
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
@Table(name = "cus_ctm_cntad") //--고객연락처
@Schema(description = "고객연락처")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class CusCtmCntad implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmno; //--고객번호

    @Column(name = "cntad_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "연락처순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cntadSeqno; //--연락처순번

    @Column(name = "ap_nd_dthms", nullable = false)
    @Schema(description = "적용종료일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apNdDthms; //--적용종료일시

    @Column(name = "ap_str_dthms", nullable = false)
    @Schema(description = "적용시작일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apStrDthms; //--적용시작일시

    @Column(name = "cntad_flgcd", length = 10, nullable = false)
    @Schema(description = "연락처구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cntadFlgcd; //--연락처구분코드

    @Column(name = "tlano", length = 4, nullable = true)
    @Schema(description = "전화지역번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tlano; //--전화지역번호

    @Column(name = "tltno", length = 4, nullable = true)
    @Schema(description = "전화국번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tltno; //--전화국번

    @Column(name = "str_tlsno", length = 50, nullable = true)
    @Schema(description = "시작전화일련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String strTlsno; //--시작전화일련번호

    @Column(name = "end_tlsno", length = 50, nullable = true)
    @Schema(description = "끝전화일련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String endTlsno; //--끝전화일련번호

    @Column(name = "nlnno", length = 4, nullable = true)
    @Schema(description = "내선번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nlnno; //--내선번호

    @Column(name = "brd_tl_ntnno", length = 4, nullable = true)
    @Schema(description = "외국전화국가번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String brdTlNtnno; //--외국전화국가번호

    @Column(name = "brd_tlno", length = 50, nullable = true)
    @Schema(description = "외국전화번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String brdTlno; //--외국전화번호

    @Column(name = "ch_dlno", length = 14, nullable = true)
    @Schema(description = "변경처리번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chDlno; //--변경처리번호

    @Column(name = "note", length = 2000, nullable = true)
    @Schema(description = "비고", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String note; //--비고

    @Column(name = "gu_fire_cntad_flgcd", length = 10, nullable = true)
    @Schema(description = "구화재연락처구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String guFireCntadFlgcd; //--구화재연락처구분코드

    @Column(name = "cntrt_fail_rscd", length = 10, nullable = true)
    @Schema(description = "접촉실패사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cntrtFailRscd; //--접촉실패사유코드

    @Column(name = "bsns_flgcd", length = 10, nullable = true)
    @Schema(description = "업무구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bsnsFlgcd; //--업무구분코드

    @Column(name = "mno_erno_flgcd", length = 10, nullable = true)
    @Schema(description = "결번오류번호구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mnoErnoFlgcd; //--결번오류번호구분코드

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
    public CusCtmCntad(String ctmno, BigDecimal cntadSeqno, Date apNdDthms, Date apStrDthms, String cntadFlgcd, String tlano, String tltno, String strTlsno, String endTlsno, String nlnno, String brdTlNtnno, String brdTlno, String chDlno, String note, String guFireCntadFlgcd, String cntrtFailRscd, String bsnsFlgcd, String mnoErnoFlgcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.ctmno = ctmno;
        this.cntadSeqno = cntadSeqno;
        this.apNdDthms = apNdDthms;
        this.apStrDthms = apStrDthms;
        this.cntadFlgcd = cntadFlgcd;
        this.tlano = tlano;
        this.tltno = tltno;
        this.strTlsno = strTlsno;
        this.endTlsno = endTlsno;
        this.nlnno = nlnno;
        this.brdTlNtnno = brdTlNtnno;
        this.brdTlno = brdTlno;
        this.chDlno = chDlno;
        this.note = note;
        this.guFireCntadFlgcd = guFireCntadFlgcd;
        this.cntrtFailRscd = cntrtFailRscd;
        this.bsnsFlgcd = bsnsFlgcd;
        this.mnoErnoFlgcd = mnoErnoFlgcd;
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
