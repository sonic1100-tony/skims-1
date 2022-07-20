/**
 * InsWhpyRq Entity 클래스
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
@Table(name = "ins_whpy_rq") //--제지급신청
@Schema(description = "제지급신청")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsWhpyRq implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "whpy_rqdt", nullable = false)
    @Schema(description = "제지급신청일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date whpyRqdt; //--제지급신청일자

    @Column(name = "ssno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ssno; //--발행번호

    @Column(name = "ss_dtno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "발행세부번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ssDtno; //--발행세부번호

    @Column(name = "crt_rsno", length = 48, nullable = false)
    @Schema(description = "계약자주민번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crtRsno; //--계약자주민번호

    @Column(name = "crt_name", length = 100, nullable = false)
    @Schema(description = "계약자이름", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crtName; //--계약자이름

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "ssdt", nullable = false)
    @Schema(description = "발행일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ssdt; //--발행일자

    @Column(name = "rqor_cd", length = 7, nullable = true)
    @Schema(description = "신청기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rqorCd; //--신청기관코드

    @Column(name = "whpy_rq_dl_stcd", length = 10, nullable = true)
    @Schema(description = "제지급신청처리상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String whpyRqDlStcd; //--제지급신청처리상태코드

    @Column(name = "rq_vald_yn", length = 1, nullable = true)
    @Schema(description = "신청유효여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rqValdYn; //--신청유효여부

    @Column(name = "oldss_no", precision = 5, scale = 0, nullable = true)
    @Schema(description = "구발행번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal oldssNo; //--구발행번호

    @Column(name = "frc_rq_yn", length = 1, nullable = true)
    @Schema(description = "강제신청여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String frcRqYn; //--강제신청여부

    @Column(name = "py_dl_stcd", length = 10, nullable = true)
    @Schema(description = "지급처리상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyDlStcd; //--지급처리상태코드

    @Column(name = "py_rcp_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급접수방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyRcpMtdcd; //--지급접수방법코드

    @Column(name = "py_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyMtdcd; //--지급방법코드

    @Column(name = "pfb_rcps_relcd", length = 10, nullable = true)
    @Schema(description = "수익자수령인관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pfbRcpsRelcd; //--수익자수령인관계코드

    @Column(name = "rqaps_rsno", length = 48, nullable = true)
    @Schema(description = "신청자주민번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rqapsRsno; //--신청자주민번호

    @Column(name = "rqaps_nm", length = 100, nullable = true)
    @Schema(description = "신청자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rqapsNm; //--신청자명

    @Column(name = "dlg_py_rscd", length = 10, nullable = true)
    @Schema(description = "위임지급사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlgPyRscd; //--위임지급사유코드

    @Column(name = "py_bjnm", length = 100, nullable = true)
    @Schema(description = "지급대상명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyBjnm; //--지급대상명

    @Column(name = "py_bj_rs_bzmno", length = 48, nullable = true)
    @Schema(description = "지급대상주민사업자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyBjRsBzmno; //--지급대상주민사업자번호

    @Column(name = "actno", length = 48, nullable = true)
    @Schema(description = "계좌번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actno; //--계좌번호

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkcd; //--은행코드

    @Column(name = "dpsr_rs_bzmno", length = 48, nullable = true)
    @Schema(description = "예금주주민사업자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrRsBzmno; //--예금주주민사업자번호

    @Column(name = "dpsnm", length = 100, nullable = true)
    @Schema(description = "예금주명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsnm; //--예금주명

    @Column(name = "py_bj_dpsr_relcd", length = 10, nullable = true)
    @Schema(description = "지급대상예금주관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyBjDpsrRelcd; //--지급대상예금주관계코드

    @Column(name = "rcapm_orgcd", length = 7, nullable = true)
    @Schema(description = "출납기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcapmOrgcd; //--출납기관코드

    @Column(name = "cnv_yn", length = 1, nullable = true)
    @Schema(description = "통화여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cnvYn; //--통화여부

    @Column(name = "cnvps_nm", length = 100, nullable = true)
    @Schema(description = "통화자성명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cnvpsNm; //--통화자성명

    @Column(name = "rqamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "신청금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rqamt; //--신청금액

    @Column(name = "uiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공제금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal uiamt; //--공제금액

    @Column(name = "sb_pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "차감지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sbPyamt; //--차감지급금액

    @Column(name = "rsv_dl_rst_ercd", length = 10, nullable = true)
    @Schema(description = "예약처리결과오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rsvDlRstErcd; //--예약처리결과오류코드

    @Column(name = "cla_ln_ap_yn", length = 1, nullable = true)
    @Schema(description = "약관대출승인여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String claLnApYn; //--약관대출승인여부

    @Column(name = "ln_fd_usecd", length = 10, nullable = true)
    @Schema(description = "대출자금용도코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lnFdUsecd; //--대출자금용도코드

    @Column(name = "clnrf_bkcd", length = 10, nullable = true)
    @Schema(description = "약대상환은행코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clnrfBkcd; //--약대상환은행코드

    @Column(name = "clnrf_actno", length = 48, nullable = true)
    @Schema(description = "약대상환계좌번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clnrfActno; //--약대상환계좌번호

    @Column(name = "clnrf_dpsr_rs_bzmno", length = 48, nullable = true)
    @Schema(description = "약대상환예금주주민사업자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clnrfDpsrRsBzmno; //--약대상환예금주주민사업자번호

    @Column(name = "clnrf_dpsnm", length = 100, nullable = true)
    @Schema(description = "약대상환예금주명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clnrfDpsnm; //--약대상환예금주명

    @Column(name = "clnrf_tf_hpdy_cd", length = 10, nullable = true)
    @Schema(description = "약대상환이체희망일코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clnrfTfHpdyCd; //--약대상환이체희망일코드

    @Column(name = "clnrf_crt_relcd", length = 10, nullable = true)
    @Schema(description = "약대상환계약자관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clnrfCrtRelcd; //--약대상환계약자관계코드

    @Column(name = "py_cr_tpcd", length = 10, nullable = true)
    @Schema(description = "지급발생유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyCrTpcd; //--지급발생유형코드

    @Column(name = "py_rs_cascd", length = 10, nullable = true)
    @Schema(description = "지급사유원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyRsCascd; //--지급사유원인코드

    @Column(name = "py_rs_mdccd", length = 10, nullable = true)
    @Schema(description = "지급사유중분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyRsMdccd; //--지급사유중분류코드

    @Column(name = "py_rs_smccd", length = 10, nullable = true)
    @Schema(description = "지급사유소분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyRsSmccd; //--지급사유소분류코드

    @Column(name = "an_tfact_tpcd", length = 10, nullable = true)
    @Schema(description = "연금이체계좌유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String anTfactTpcd; //--연금이체계좌유형코드

    @Column(name = "an_tfact_isdy_flgcd", length = 10, nullable = true)
    @Schema(description = "연금이체계좌가입일구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String anTfactIsdyFlgcd; //--연금이체계좌가입일구분코드

    @Column(name = "evd_da_flgcd", length = 10, nullable = true)
    @Schema(description = "증빙자료구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String evdDaFlgcd; //--증빙자료구분코드

    @Column(name = "evd_da_dsc_vl", length = 100, nullable = true)
    @Schema(description = "증빙자료식별값", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String evdDaDscVl; //--증빙자료식별값

    @Column(name = "evd_da_save_ptncd", length = 10, nullable = true)
    @Schema(description = "증빙자료저장경로코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String evdDaSavePtncd; //--증빙자료저장경로코드

    @Column(name = "auto_py_flgcd", length = 2, nullable = true)
    @Schema(description = "자동지급구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoPyFlgcd; //--자동지급구분코드

    @Column(name = "py_nt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "지급이자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pyNt; //--지급이자

    @Column(name = "rl_dpsnm", length = 100, nullable = true)
    @Schema(description = "실예금주명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rlDpsnm; //--실예금주명

    @Column(name = "befo_chek_rstcd", length = 2, nullable = true)
    @Schema(description = "사전체크결과코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String befoChekRstcd; //--사전체크결과코드

    @Column(name = "dl_org_anscd", length = 4, nullable = true)
    @Schema(description = "거래기관응답코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlOrgAnscd; //--거래기관응답코드

    @Column(name = "dpsr_inq_anscd", length = 4, nullable = true)
    @Schema(description = "예금주조회응답코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrInqAnscd; //--예금주조회응답코드

    @Column(name = "py_rs_crdt", nullable = true)
    @Schema(description = "지급사유발생일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pyRsCrdt; //--지급사유발생일자

    @Column(name = "cmp_rcgnt_dt", nullable = true)
    @Schema(description = "회사인식일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cmpRcgntDt; //--회사인식일자

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
    public InsWhpyRq(Date whpyRqdt, BigDecimal ssno, BigDecimal ssDtno, String crtRsno, String crtName, String plyno, Date ssdt, String rqorCd, String whpyRqDlStcd, String rqValdYn, BigDecimal oldssNo, String frcRqYn, String pyDlStcd, String pyRcpMtdcd, String pyMtdcd, String pfbRcpsRelcd, String rqapsRsno, String rqapsNm, String dlgPyRscd, String pyBjnm, String pyBjRsBzmno, String actno, String bkcd, String dpsrRsBzmno, String dpsnm, String pyBjDpsrRelcd, String rcapmOrgcd, String cnvYn, String cnvpsNm, BigDecimal rqamt, BigDecimal uiamt, BigDecimal sbPyamt, String rsvDlRstErcd, String claLnApYn, String lnFdUsecd, String clnrfBkcd, String clnrfActno, String clnrfDpsrRsBzmno, String clnrfDpsnm, String clnrfTfHpdyCd, String clnrfCrtRelcd, String pyCrTpcd, String pyRsCascd, String pyRsMdccd, String pyRsSmccd, String anTfactTpcd, String anTfactIsdyFlgcd, String evdDaFlgcd, String evdDaDscVl, String evdDaSavePtncd, String autoPyFlgcd, BigDecimal pyNt, String rlDpsnm, String befoChekRstcd, String dlOrgAnscd, String dpsrInqAnscd, Date pyRsCrdt, Date cmpRcgntDt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.whpyRqdt = whpyRqdt;
        this.ssno = ssno;
        this.ssDtno = ssDtno;
        this.crtRsno = crtRsno;
        this.crtName = crtName;
        this.plyno = plyno;
        this.ssdt = ssdt;
        this.rqorCd = rqorCd;
        this.whpyRqDlStcd = whpyRqDlStcd;
        this.rqValdYn = rqValdYn;
        this.oldssNo = oldssNo;
        this.frcRqYn = frcRqYn;
        this.pyDlStcd = pyDlStcd;
        this.pyRcpMtdcd = pyRcpMtdcd;
        this.pyMtdcd = pyMtdcd;
        this.pfbRcpsRelcd = pfbRcpsRelcd;
        this.rqapsRsno = rqapsRsno;
        this.rqapsNm = rqapsNm;
        this.dlgPyRscd = dlgPyRscd;
        this.pyBjnm = pyBjnm;
        this.pyBjRsBzmno = pyBjRsBzmno;
        this.actno = actno;
        this.bkcd = bkcd;
        this.dpsrRsBzmno = dpsrRsBzmno;
        this.dpsnm = dpsnm;
        this.pyBjDpsrRelcd = pyBjDpsrRelcd;
        this.rcapmOrgcd = rcapmOrgcd;
        this.cnvYn = cnvYn;
        this.cnvpsNm = cnvpsNm;
        this.rqamt = rqamt;
        this.uiamt = uiamt;
        this.sbPyamt = sbPyamt;
        this.rsvDlRstErcd = rsvDlRstErcd;
        this.claLnApYn = claLnApYn;
        this.lnFdUsecd = lnFdUsecd;
        this.clnrfBkcd = clnrfBkcd;
        this.clnrfActno = clnrfActno;
        this.clnrfDpsrRsBzmno = clnrfDpsrRsBzmno;
        this.clnrfDpsnm = clnrfDpsnm;
        this.clnrfTfHpdyCd = clnrfTfHpdyCd;
        this.clnrfCrtRelcd = clnrfCrtRelcd;
        this.pyCrTpcd = pyCrTpcd;
        this.pyRsCascd = pyRsCascd;
        this.pyRsMdccd = pyRsMdccd;
        this.pyRsSmccd = pyRsSmccd;
        this.anTfactTpcd = anTfactTpcd;
        this.anTfactIsdyFlgcd = anTfactIsdyFlgcd;
        this.evdDaFlgcd = evdDaFlgcd;
        this.evdDaDscVl = evdDaDscVl;
        this.evdDaSavePtncd = evdDaSavePtncd;
        this.autoPyFlgcd = autoPyFlgcd;
        this.pyNt = pyNt;
        this.rlDpsnm = rlDpsnm;
        this.befoChekRstcd = befoChekRstcd;
        this.dlOrgAnscd = dlOrgAnscd;
        this.dpsrInqAnscd = dpsrInqAnscd;
        this.pyRsCrdt = pyRsCrdt;
        this.cmpRcgntDt = cmpRcgntDt;
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
