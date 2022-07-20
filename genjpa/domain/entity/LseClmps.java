/**
 * LseClmps Entity 클래스
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
@Table(name = "lse_clmps") //--사고자
@Schema(description = "사고자")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseClmps implements Serializable {
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

    @Column(name = "clmps_flgcd", length = 10, nullable = false)
    @Schema(description = "사고자구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmpsFlgcd; //--사고자구분코드

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmno; //--고객번호

    @Column(name = "clmnm", length = 100, nullable = true)
    @Schema(description = "사고자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmnm; //--사고자명

    @Column(name = "imu_yn", length = 1, nullable = false)
    @Schema(description = "면책여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String imuYn; //--면책여부

    @Column(name = "end_yn", length = 1, nullable = false)
    @Schema(description = "종결여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String endYn; //--종결여부

    @Column(name = "enddt", nullable = true)
    @Schema(description = "종결일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date enddt; //--종결일자

    @Column(name = "clm_nv_kndcd", length = 10, nullable = true)
    @Schema(description = "사고조사종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmNvKndcd; //--사고조사종류코드

    @Column(name = "clmps_mdf_yn", length = 1, nullable = true)
    @Schema(description = "사고자수정여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmpsMdfYn; //--사고자수정여부

    @Column(name = "ctm_dscno_flgcd", length = 10, nullable = true)
    @Schema(description = "고객식별번호구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmDscnoFlgcd; //--고객식별번호구분코드

    @Column(name = "ctm_dscno", length = 48, nullable = true)
    @Schema(description = "고객식별번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmDscno; //--고객식별번호

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "dcn_yn", length = 1, nullable = true)
    @Schema(description = "확정여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcnYn; //--확정여부

    @Column(name = "cntad_flgcd", length = 10, nullable = true)
    @Schema(description = "연락처구분코드", nullable = true)
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

    @Column(name = "tlsno", length = 50, nullable = true)
    @Schema(description = "전화일련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tlsno; //--전화일련번호

    @Column(name = "clm_bj_rcp_yymm", length = 6, nullable = true)
    @Schema(description = "사고대상접수년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmBjRcpYymm; //--사고대상접수년월

    @Column(name = "clm_bj_rcpnv_seqno", length = 5, nullable = true)
    @Schema(description = "사고대상접수조사순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmBjRcpnvSeqno; //--사고대상접수조사순번

    @Column(name = "clm_bj_clmps_seqno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "사고대상사고자순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmBjClmpsSeqno; //--사고대상사고자순번

    @Column(name = "jbnm", length = 100, nullable = true)
    @Schema(description = "직업명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbnm; //--직업명

    @Column(name = "dmgnm", length = 300, nullable = true)
    @Schema(description = "피해물명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmgnm; //--피해물명

    @Column(name = "arecd", length = 10, nullable = true)
    @Schema(description = "지역코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String arecd; //--지역코드

    @Column(name = "sd", length = 30, nullable = true)
    @Schema(description = "시도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sd; //--시도

    @Column(name = "sgng", length = 30, nullable = true)
    @Schema(description = "시군구", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sgng; //--시군구

    @Column(name = "crdif_utl_agre_yn", length = 1, nullable = true)
    @Schema(description = "신용정보활용동의여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdifUtlAgreYn; //--신용정보활용동의여부

    @Column(name = "mrl_grdcd", length = 10, nullable = true)
    @Schema(description = "mrl등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mrlGrdcd; //--mrl등급코드

    @Column(name = "mrl_grd_cc_cn", length = 4000, nullable = true)
    @Schema(description = "mrl등급산출내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mrlGrdCcCn; //--mrl등급산출내용

    @Column(name = "fsvs_cvap_yn", length = 1, nullable = true)
    @Schema(description = "금감원민원여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fsvsCvapYn; //--금감원민원여부

    @Column(name = "mrl_grd_rank", precision = 10, scale = 0, nullable = true)
    @Schema(description = "mrl등급순위", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mrlGrdRank; //--mrl등급순위

    @Column(name = "mdcs_tlm_opndt", nullable = true)
    @Schema(description = "의료비전문개시일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date mdcsTlmOpndt; //--의료비전문개시일자

    @Column(name = "mdcs_tlm_admno", length = 7, nullable = true)
    @Schema(description = "의료비전문관리번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdcsTlmAdmno; //--의료비전문관리번호

    @Column(name = "mdcs_tlm_ts_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "의료비전문전송순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mdcsTlmTsSeqno; //--의료비전문전송순번

    @Column(name = "prpn_cmp_bjpcd", length = 10, nullable = true)
    @Schema(description = "비례보상대상코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prpnCmpBjpcd; //--비례보상대상코드

    @Column(name = "icps_scrg_ct", precision = 15, scale = 0, nullable = true)
    @Schema(description = "icps스코어링건수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal icpsScrgCt; //--icps스코어링건수

    @Column(name = "icps_scrg_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "icps스코어링금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal icpsScrgAmt; //--icps스코어링금액

    @Column(name = "xstf_yn", length = 1, nullable = true)
    @Schema(description = "임직원여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xstfYn; //--임직원여부

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
    public LseClmps(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, String clmpsFlgcd, String ctmno, String clmnm, String imuYn, String endYn, Date enddt, String clmNvKndcd, String clmpsMdfYn, String ctmDscnoFlgcd, String ctmDscno, String plyno, String dcnYn, String cntadFlgcd, String tlano, String tltno, String tlsno, String clmBjRcpYymm, String clmBjRcpnvSeqno, BigDecimal clmBjClmpsSeqno, String jbnm, String dmgnm, String arecd, String sd, String sgng, String crdifUtlAgreYn, String mrlGrdcd, String mrlGrdCcCn, String fsvsCvapYn, BigDecimal mrlGrdRank, Date mdcsTlmOpndt, String mdcsTlmAdmno, BigDecimal mdcsTlmTsSeqno, String prpnCmpBjpcd, BigDecimal icpsScrgCt, BigDecimal icpsScrgAmt, String xstfYn, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.clmpsFlgcd = clmpsFlgcd;
        this.ctmno = ctmno;
        this.clmnm = clmnm;
        this.imuYn = imuYn;
        this.endYn = endYn;
        this.enddt = enddt;
        this.clmNvKndcd = clmNvKndcd;
        this.clmpsMdfYn = clmpsMdfYn;
        this.ctmDscnoFlgcd = ctmDscnoFlgcd;
        this.ctmDscno = ctmDscno;
        this.plyno = plyno;
        this.dcnYn = dcnYn;
        this.cntadFlgcd = cntadFlgcd;
        this.tlano = tlano;
        this.tltno = tltno;
        this.tlsno = tlsno;
        this.clmBjRcpYymm = clmBjRcpYymm;
        this.clmBjRcpnvSeqno = clmBjRcpnvSeqno;
        this.clmBjClmpsSeqno = clmBjClmpsSeqno;
        this.jbnm = jbnm;
        this.dmgnm = dmgnm;
        this.arecd = arecd;
        this.sd = sd;
        this.sgng = sgng;
        this.crdifUtlAgreYn = crdifUtlAgreYn;
        this.mrlGrdcd = mrlGrdcd;
        this.mrlGrdCcCn = mrlGrdCcCn;
        this.fsvsCvapYn = fsvsCvapYn;
        this.mrlGrdRank = mrlGrdRank;
        this.mdcsTlmOpndt = mdcsTlmOpndt;
        this.mdcsTlmAdmno = mdcsTlmAdmno;
        this.mdcsTlmTsSeqno = mdcsTlmTsSeqno;
        this.prpnCmpBjpcd = prpnCmpBjpcd;
        this.icpsScrgCt = icpsScrgCt;
        this.icpsScrgAmt = icpsScrgAmt;
        this.xstfYn = xstfYn;
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
