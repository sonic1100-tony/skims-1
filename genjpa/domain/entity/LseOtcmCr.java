/**
 * LseOtcmCr Entity 클래스
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
@Table(name = "lse_otcm_cr") //--사고자계약
@Schema(description = "사고자계약")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseOtcmCr implements Serializable {
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

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndsno; //--배서번호

    @Column(name = "cr_stcd", length = 10, nullable = false)
    @Schema(description = "계약상태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crStcd; //--계약상태코드

    @Column(name = "ins_imcd", length = 10, nullable = false)
    @Schema(description = "보험종목코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insImcd; //--보험종목코드

    @Column(name = "gdcd", length = 10, nullable = false)
    @Schema(description = "상품코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gdcd; //--상품코드

    @Column(name = "crrnm", length = 100, nullable = false)
    @Schema(description = "계약자명", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crrnm; //--계약자명

    @Column(name = "nrdnm", length = 100, nullable = true)
    @Schema(description = "피보험자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdnm; //--피보험자명

    @Column(name = "owrnm", length = 100, nullable = true)
    @Schema(description = "소유자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String owrnm; //--소유자명

    @Column(name = "ojnm", length = 200, nullable = true)
    @Schema(description = "목적물명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ojnm; //--목적물명

    @Column(name = "cnrdt", nullable = false)
    @Schema(description = "계약일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cnrdt; //--계약일자

    @Column(name = "cr_seek_flgcd", length = 10, nullable = false)
    @Schema(description = "계약찾기구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crSeekFlgcd; //--계약찾기구분코드

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

    @Column(name = "dh_stfno", length = 50, nullable = false)
    @Schema(description = "취급직원번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhStfno; //--취급직원번호

    @Column(name = "ce_stfno", length = 50, nullable = false)
    @Schema(description = "모집직원번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ceStfno; //--모집직원번호

    @Column(name = "clm_prg_stcd", length = 10, nullable = false)
    @Schema(description = "사고진행상태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmPrgStcd; //--사고진행상태코드

    @Column(name = "otcm_plyno", length = 25, nullable = true)
    @Schema(description = "타사증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String otcmPlyno; //--타사증권번호

    @Column(name = "qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "지분율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal qtrt; //--지분율

    @Column(name = "crt_ctmno", length = 13, nullable = true)
    @Schema(description = "계약자고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crtCtmno; //--계약자고객번호

    @Column(name = "nrdps_ctmno", length = 13, nullable = true)
    @Schema(description = "피보험자고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsCtmno; //--피보험자고객번호

    @Column(name = "udrtk_tycd", length = 10, nullable = false)
    @Schema(description = "인수형태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udrtkTycd; //--인수형태코드

    @Column(name = "mgcmp_cd", length = 10, nullable = true)
    @Schema(description = "간사사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mgcmpCd; //--간사사코드

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "clm_thtm_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "사고당시연령", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmThtmAge; //--사고당시연령

    @Column(name = "cr_rnd_yyct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "계약경과년수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal crRndYyct; //--계약경과년수

    @Column(name = "cr_rnd_mc", precision = 3, scale = 0, nullable = true)
    @Schema(description = "계약경과월수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal crRndMc; //--계약경과월수

    @Column(name = "chrps_stfno", length = 50, nullable = true)
    @Schema(description = "담당자직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsStfno; //--담당자직원번호

    @Column(name = "clm_bj_yn", length = 1, nullable = false)
    @Schema(description = "사고대상여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmBjYn; //--사고대상여부

    @Column(name = "dcn_yn", length = 1, nullable = true)
    @Schema(description = "확정여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcnYn; //--확정여부

    @Column(name = "ch_rscd", length = 10, nullable = true)
    @Schema(description = "변경사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chRscd; //--변경사유코드

    @Column(name = "ndsno_ch_yn", length = 1, nullable = true)
    @Schema(description = "배서번호변경여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndsnoChYn; //--배서번호변경여부

    @Column(name = "frc_ad_yn", length = 1, nullable = true)
    @Schema(description = "강제추가여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String frcAdYn; //--강제추가여부

    @Column(name = "ndsch_frc_ad_rscd", length = 10, nullable = true)
    @Schema(description = "배서변경강제추가사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndschFrcAdRscd; //--배서변경강제추가사유코드

    @Column(name = "cr_pout_mtt_yn", length = 1, nullable = true)
    @Schema(description = "계약특이사항여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crPoutMttYn; //--계약특이사항여부

    @Column(name = "wr_dher_cr_yn", length = 1, nullable = true)
    @Schema(description = "불량취급자계약여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wrDherCrYn; //--불량취급자계약여부

    @Column(name = "rcp_mdcs_flgcd", length = 10, nullable = true)
    @Schema(description = "접수의료비구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpMdcsFlgcd; //--접수의료비구분코드

    @Column(name = "rcp_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "접수순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rcpSeqno; //--접수순번

    @Column(name = "thcp_pfrt", precision = 7, scale = 4, nullable = true)
    @Schema(description = "당사참여율", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal thcpPfrt; //--당사참여율

    @Column(name = "lap_durn_clm_py_rscd", length = 10, nullable = true)
    @Schema(description = "실효중사고지급사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lapDurnClmPyRscd; //--실효중사고지급사유코드

    @Column(name = "lap_durn_clm_py_chrps_ctn", length = 1000, nullable = true)
    @Schema(description = "실효중사고지급담당자의견", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lapDurnClmPyChrpsCtn; //--실효중사고지급담당자의견

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
    public LseOtcmCr(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, String plyno, String ndsno, String crStcd, String insImcd, String gdcd, String crrnm, String nrdnm, String owrnm, String ojnm, Date cnrdt, String crSeekFlgcd, String imuYn, String endYn, Date enddt, String dhStfno, String ceStfno, String clmPrgStcd, String otcmPlyno, BigDecimal qtrt, String crtCtmno, String nrdpsCtmno, String udrtkTycd, String mgcmpCd, String ikdGrpcd, BigDecimal clmThtmAge, BigDecimal crRndYyct, BigDecimal crRndMc, String chrpsStfno, String clmBjYn, String dcnYn, String chRscd, String ndsnoChYn, String frcAdYn, String ndschFrcAdRscd, String crPoutMttYn, String wrDherCrYn, String rcpMdcsFlgcd, BigDecimal rcpSeqno, BigDecimal thcpPfrt, String lapDurnClmPyRscd, String lapDurnClmPyChrpsCtn, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.plyno = plyno;
        this.ndsno = ndsno;
        this.crStcd = crStcd;
        this.insImcd = insImcd;
        this.gdcd = gdcd;
        this.crrnm = crrnm;
        this.nrdnm = nrdnm;
        this.owrnm = owrnm;
        this.ojnm = ojnm;
        this.cnrdt = cnrdt;
        this.crSeekFlgcd = crSeekFlgcd;
        this.imuYn = imuYn;
        this.endYn = endYn;
        this.enddt = enddt;
        this.dhStfno = dhStfno;
        this.ceStfno = ceStfno;
        this.clmPrgStcd = clmPrgStcd;
        this.otcmPlyno = otcmPlyno;
        this.qtrt = qtrt;
        this.crtCtmno = crtCtmno;
        this.nrdpsCtmno = nrdpsCtmno;
        this.udrtkTycd = udrtkTycd;
        this.mgcmpCd = mgcmpCd;
        this.ikdGrpcd = ikdGrpcd;
        this.clmThtmAge = clmThtmAge;
        this.crRndYyct = crRndYyct;
        this.crRndMc = crRndMc;
        this.chrpsStfno = chrpsStfno;
        this.clmBjYn = clmBjYn;
        this.dcnYn = dcnYn;
        this.chRscd = chRscd;
        this.ndsnoChYn = ndsnoChYn;
        this.frcAdYn = frcAdYn;
        this.ndschFrcAdRscd = ndschFrcAdRscd;
        this.crPoutMttYn = crPoutMttYn;
        this.wrDherCrYn = wrDherCrYn;
        this.rcpMdcsFlgcd = rcpMdcsFlgcd;
        this.rcpSeqno = rcpSeqno;
        this.thcpPfrt = thcpPfrt;
        this.lapDurnClmPyRscd = lapDurnClmPyRscd;
        this.lapDurnClmPyChrpsCtn = lapDurnClmPyChrpsCtn;
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
