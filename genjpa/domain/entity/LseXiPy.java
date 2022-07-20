/**
 * LseXiPy Entity 클래스
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
@Table(name = "lse_xi_py") //--추산지급
@Schema(description = "추산지급")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseXiPy implements Serializable {
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

    @Column(name = "cc_seq", precision = 3, scale = 0, nullable = false)
    @Schema(description = "산출회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ccSeq; //--산출회차

    @Column(name = "dm_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "청구순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmSeqno; //--청구순번

    @Column(name = "chrps_stfno", length = 50, nullable = false)
    @Schema(description = "담당자직원번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsStfno; //--담당자직원번호

    @Column(name = "chrps_orgcd", length = 7, nullable = false)
    @Schema(description = "담당자기관코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsOrgcd; //--담당자기관코드

    @Column(name = "udrtk_tycd", length = 10, nullable = false)
    @Schema(description = "인수형태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udrtkTycd; //--인수형태코드

    @Column(name = "ibnf_cs_flgcd", length = 10, nullable = false)
    @Schema(description = "보험금비용구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ibnfCsFlgcd; //--보험금비용구분코드

    @Column(name = "clm_nv_seqno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "사고조사순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmNvSeqno; //--사고조사순번

    @Column(name = "prv_flgcd", length = 10, nullable = true)
    @Schema(description = "결재구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prvFlgcd; //--결재구분코드

    @Column(name = "cmp_ky_yr", length = 4, nullable = true)
    @Schema(description = "보상키년도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpKyYr; //--보상키년도

    @Column(name = "cmp_ky_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "보상키순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cmpKySeqno; //--보상키순번

    @Column(name = "prvdt", nullable = true)
    @Schema(description = "결재일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date prvdt; //--결재일자

    @Column(name = "cs_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "비용순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal csSeqno; //--비용순번

    @Column(name = "end_yn", length = 1, nullable = false)
    @Schema(description = "종결여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String endYn; //--종결여부

    @Column(name = "payao_yn", length = 1, nullable = false)
    @Schema(description = "즉시불여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String payaoYn; //--즉시불여부

    @Column(name = "ppdt", nullable = false)
    @Schema(description = "계상일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ppdt; //--계상일자

    @Column(name = "ltrm_rert", precision = 12, scale = 6, nullable = false)
    @Schema(description = "장기출재율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmRert; //--장기출재율

    @Column(name = "ltrm_re_ibamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장기출재보험금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmReIbamt; //--장기출재보험금액

    @Column(name = "ltrm_re_remn_xiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장기출재잔여추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmReRemnXiamt; //--장기출재잔여추산금액

    @Column(name = "gu_xi_pyno", length = 20, nullable = true)
    @Schema(description = "구추산지급번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String guXiPyno; //--구추산지급번호

    @Column(name = "pyaf_stcd", length = 10, nullable = true)
    @Schema(description = "지급후상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyafStcd; //--지급후상태코드

    @Column(name = "ccl_cc_seq", precision = 3, scale = 0, nullable = true)
    @Schema(description = "취소산출회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cclCcSeq; //--취소산출회차

    @Column(name = "cmp_py_rltno", length = 50, nullable = true)
    @Schema(description = "보상지급연계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpPyRltno; //--보상지급연계번호

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "sep_py_yn", length = 1, nullable = true)
    @Schema(description = "분할지급여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sepPyYn; //--분할지급여부

    @Column(name = "ltrm_re_ac_tfdt", nullable = true)
    @Schema(description = "장기출재경리이체일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ltrmReAcTfdt; //--장기출재경리이체일자

    @Column(name = "otcm_ppdt", nullable = true)
    @Schema(description = "타사계상일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date otcmPpdt; //--타사계상일자

    @Column(name = "fnl_dcu_rcpdt", nullable = true)
    @Schema(description = "최종서류접수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date fnlDcuRcpdt; //--최종서류접수일자

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndsno; //--배서번호

    @Column(name = "prpn_cmp_yn", length = 1, nullable = true)
    @Schema(description = "비례보상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prpnCmpYn; //--비례보상여부

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "환율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xcrt; //--환율

    @Column(name = "xcrt_apdt", nullable = true)
    @Schema(description = "환율적용일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date xcrtApdt; //--환율적용일자

    @Column(name = "pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pyamt; //--지급금액

    @Column(name = "woncr_cv_pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "원화환산지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvPyamt; //--원화환산지급금액

    @Column(name = "remn_xi_mncd", length = 10, nullable = true)
    @Schema(description = "잔여추산화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String remnXiMncd; //--잔여추산화폐코드

    @Column(name = "remn_xi_amt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "잔여추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal remnXiAmt; //--잔여추산금액

    @Column(name = "cs_mncd", length = 10, nullable = true)
    @Schema(description = "비용화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String csMncd; //--비용화폐코드

    @Column(name = "cs_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal csAmt; //--비용금액

    @Column(name = "re_nvcs", precision = 17, scale = 2, nullable = true)
    @Schema(description = "출재조사비", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal reNvcs; //--출재조사비

    @Column(name = "woncr_cv_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "원화환산비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvCsamt; //--원화환산비용금액

    @Column(name = "condt_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "공동인수비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtCsamt; //--공동인수비용금액

    @Column(name = "condt_woncv_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "공동인수원화환산비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtWoncvCsamt; //--공동인수원화환산비용금액

    @Column(name = "condt_remn_xi_csamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "공동인수잔여추산비용금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtRemnXiCsamt; //--공동인수잔여추산비용금액

    @Column(name = "remn_xi_cs_mncd", length = 10, nullable = true)
    @Schema(description = "잔여추산비용화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String remnXiCsMncd; //--잔여추산비용화폐코드

    @Column(name = "remn_xi_csamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "잔여추산비용금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal remnXiCsamt; //--잔여추산비용금액

    @Column(name = "fr_cc_xiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "최초산출추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal frCcXiamt; //--최초산출추산금액

    @Column(name = "condt_pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtPyamt; //--공동인수지급금액

    @Column(name = "condt_woncr_cv_pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수원화환산지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtWoncrCvPyamt; //--공동인수원화환산지급금액

    @Column(name = "condt_remn_xiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공동인수잔여추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtRemnXiamt; //--공동인수잔여추산금액

    @Column(name = "xi_py_flgcd", length = 10, nullable = true)
    @Schema(description = "추산지급구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xiPyFlgcd; //--추산지급구분코드

    @Column(name = "xi_py_flg_rscd", length = 10, nullable = true)
    @Schema(description = "추산지급구분사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xiPyFlgRscd; //--추산지급구분사유코드

    @Column(name = "xi_py_dt_rscd", length = 10, nullable = true)
    @Schema(description = "추산지급세부사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xiPyDtRscd; //--추산지급세부사유코드

    @Column(name = "stdt", nullable = true)
    @Schema(description = "기준일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date stdt; //--기준일자

    @Column(name = "py_prdt", nullable = true)
    @Schema(description = "지급예정일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pyPrdt; //--지급예정일자

    @Column(name = "dlay_ntrt", precision = 5, scale = 2, nullable = false)
    @Schema(description = "지연이자율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dlayNtrt; //--지연이자율

    @Column(name = "dlay_nt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지연이자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dlayNt; //--지연이자

    @Column(name = "dlay_nt_py_yn", length = 1, nullable = true)
    @Schema(description = "지연이자지급여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlayNtPyYn; //--지연이자지급여부

    @Column(name = "dlay_nt_np_rscd", length = 10, nullable = true)
    @Schema(description = "지연이자미지급사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlayNtNpRscd; //--지연이자미지급사유코드

    @Column(name = "dlay_nt_cal_metcd", length = 10, nullable = true)
    @Schema(description = "지연이자계산방식코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlayNtCalMetcd; //--지연이자계산방식코드

    @Column(name = "dlay_nt_pout_mtt", length = 500, nullable = true)
    @Schema(description = "지연이자특이사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlayNtPoutMtt; //--지연이자특이사항

    @Column(name = "woncv_ibnf_dlay_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산보험금지연이자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvIbnfDlayNt; //--원화환산보험금지연이자

    @Column(name = "py_ccl_yn", length = 1, nullable = true)
    @Schema(description = "지급취소여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyCclYn; //--지급취소여부

    @Column(name = "bnd_sz_yn", length = 1, nullable = true)
    @Schema(description = "채권압류여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bndSzYn; //--채권압류여부

    @Column(name = "cla_ln_yn", length = 1, nullable = true)
    @Schema(description = "약관대출여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String claLnYn; //--약관대출여부

    @Column(name = "gn_ln_yn", length = 1, nullable = true)
    @Schema(description = "일반대출여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gnLnYn; //--일반대출여부

    @Column(name = "pr_es_yn", length = 1, nullable = true)
    @Schema(description = "질권설정여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prEsYn; //--질권설정여부

    @Column(name = "uc_prm_yn", length = 1, nullable = true)
    @Schema(description = "미수보험료여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ucPrmYn; //--미수보험료여부

    @Column(name = "nv_lw_cs_yn", length = 1, nullable = true)
    @Schema(description = "조사소송비용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvLwCsYn; //--조사소송비용여부

    @Column(name = "idm_bj_yn", length = 1, nullable = true)
    @Schema(description = "구상대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String idmBjYn; //--구상대상여부

    @Column(name = "bsns_dl_alarm_yn", length = 1, nullable = true)
    @Schema(description = "업무처리알람여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bsnsDlAlarmYn; //--업무처리알람여부

    @Column(name = "chrps_ctn", length = 500, nullable = true)
    @Schema(description = "담당자의견", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsCtn; //--담당자의견

    @Column(name = "condt_payao_yn", length = 1, nullable = true)
    @Schema(description = "공동인수즉시불여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String condtPayaoYn; //--공동인수즉시불여부

    @Column(name = "clc_spc", length = 4000, nullable = true)
    @Schema(description = "산정내역", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clcSpc; //--산정내역

    @Column(name = "opccs_ud_rq_yn", length = 1, nullable = true)
    @Schema(description = "수술비심사요청여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opccsUdRqYn; //--수술비심사요청여부

    @Column(name = "trpa_ud_rq_yn", length = 1, nullable = true)
    @Schema(description = "진료비심사요청여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trpaUdRqYn; //--진료비심사요청여부

    @Column(name = "cla_ln_ar_nt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "약관대출연체이자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal claLnArNt; //--약관대출연체이자

    @Column(name = "cla_lnamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "약관대출금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal claLnamt; //--약관대출금액

    @Column(name = "cdamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "발생손해금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cdamt; //--발생손해금액

    @Column(name = "dm_dmamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "청구손해액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmDmamt; //--청구손해액

    @Column(name = "imu_rd_rscd", length = 10, nullable = true)
    @Schema(description = "면책삭감사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String imuRdRscd; //--면책삭감사유코드

    @Column(name = "imu_rd_rs_dtcd", length = 10, nullable = true)
    @Schema(description = "면책삭감사유상세코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String imuRdRsDtcd; //--면책삭감사유상세코드

    @Column(name = "imu_rd_dt_ctn", length = 4000, nullable = true)
    @Schema(description = "면책삭감상세의견", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String imuRdDtCtn; //--면책삭감상세의견

    @Column(name = "imu_rprdt", nullable = true)
    @Schema(description = "면책통보일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date imuRprdt; //--면책통보일자

    @Column(name = "soc_auto_snd_yn", length = 1, nullable = true)
    @Schema(description = "soc자동발송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String socAutoSndYn; //--soc자동발송여부

    @Column(name = "re_xi_ibamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "출재추산보험금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal reXiIbamt; //--출재추산보험금액

    @Column(name = "lms_snd_yn", length = 1, nullable = true)
    @Schema(description = "lms발송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lmsSndYn; //--lms발송여부

    @Column(name = "auto_cc_dgre", precision = 5, scale = 0, nullable = true)
    @Schema(description = "자동산출차수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal autoCcDgre; //--자동산출차수

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
    public LseXiPy(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, String plyno, BigDecimal ccSeq, BigDecimal dmSeqno, String chrpsStfno, String chrpsOrgcd, String udrtkTycd, String ibnfCsFlgcd, BigDecimal clmNvSeqno, String prvFlgcd, String cmpKyYr, BigDecimal cmpKySeqno, Date prvdt, BigDecimal csSeqno, String endYn, String payaoYn, Date ppdt, BigDecimal ltrmRert, BigDecimal ltrmReIbamt, BigDecimal ltrmReRemnXiamt, String guXiPyno, String pyafStcd, BigDecimal cclCcSeq, String cmpPyRltno, String ikdGrpcd, String sepPyYn, Date ltrmReAcTfdt, Date otcmPpdt, Date fnlDcuRcpdt, String ndsno, String prpnCmpYn, String mncd, BigDecimal xcrt, Date xcrtApdt, BigDecimal pyamt, BigDecimal woncrCvPyamt, String remnXiMncd, BigDecimal remnXiAmt, String csMncd, BigDecimal csAmt, BigDecimal reNvcs, BigDecimal woncrCvCsamt, BigDecimal condtCsamt, BigDecimal condtWoncvCsamt, BigDecimal condtRemnXiCsamt, String remnXiCsMncd, BigDecimal remnXiCsamt, BigDecimal frCcXiamt, BigDecimal condtPyamt, BigDecimal condtWoncrCvPyamt, BigDecimal condtRemnXiamt, String xiPyFlgcd, String xiPyFlgRscd, String xiPyDtRscd, Date stdt, Date pyPrdt, BigDecimal dlayNtrt, BigDecimal dlayNt, String dlayNtPyYn, String dlayNtNpRscd, String dlayNtCalMetcd, String dlayNtPoutMtt, BigDecimal woncvIbnfDlayNt, String pyCclYn, String bndSzYn, String claLnYn, String gnLnYn, String prEsYn, String ucPrmYn, String nvLwCsYn, String idmBjYn, String bsnsDlAlarmYn, String chrpsCtn, String condtPayaoYn, String clcSpc, String opccsUdRqYn, String trpaUdRqYn, BigDecimal claLnArNt, BigDecimal claLnamt, BigDecimal cdamt, BigDecimal dmDmamt, String imuRdRscd, String imuRdRsDtcd, String imuRdDtCtn, Date imuRprdt, String socAutoSndYn, BigDecimal reXiIbamt, String lmsSndYn, BigDecimal autoCcDgre, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.plyno = plyno;
        this.ccSeq = ccSeq;
        this.dmSeqno = dmSeqno;
        this.chrpsStfno = chrpsStfno;
        this.chrpsOrgcd = chrpsOrgcd;
        this.udrtkTycd = udrtkTycd;
        this.ibnfCsFlgcd = ibnfCsFlgcd;
        this.clmNvSeqno = clmNvSeqno;
        this.prvFlgcd = prvFlgcd;
        this.cmpKyYr = cmpKyYr;
        this.cmpKySeqno = cmpKySeqno;
        this.prvdt = prvdt;
        this.csSeqno = csSeqno;
        this.endYn = endYn;
        this.payaoYn = payaoYn;
        this.ppdt = ppdt;
        this.ltrmRert = ltrmRert;
        this.ltrmReIbamt = ltrmReIbamt;
        this.ltrmReRemnXiamt = ltrmReRemnXiamt;
        this.guXiPyno = guXiPyno;
        this.pyafStcd = pyafStcd;
        this.cclCcSeq = cclCcSeq;
        this.cmpPyRltno = cmpPyRltno;
        this.ikdGrpcd = ikdGrpcd;
        this.sepPyYn = sepPyYn;
        this.ltrmReAcTfdt = ltrmReAcTfdt;
        this.otcmPpdt = otcmPpdt;
        this.fnlDcuRcpdt = fnlDcuRcpdt;
        this.ndsno = ndsno;
        this.prpnCmpYn = prpnCmpYn;
        this.mncd = mncd;
        this.xcrt = xcrt;
        this.xcrtApdt = xcrtApdt;
        this.pyamt = pyamt;
        this.woncrCvPyamt = woncrCvPyamt;
        this.remnXiMncd = remnXiMncd;
        this.remnXiAmt = remnXiAmt;
        this.csMncd = csMncd;
        this.csAmt = csAmt;
        this.reNvcs = reNvcs;
        this.woncrCvCsamt = woncrCvCsamt;
        this.condtCsamt = condtCsamt;
        this.condtWoncvCsamt = condtWoncvCsamt;
        this.condtRemnXiCsamt = condtRemnXiCsamt;
        this.remnXiCsMncd = remnXiCsMncd;
        this.remnXiCsamt = remnXiCsamt;
        this.frCcXiamt = frCcXiamt;
        this.condtPyamt = condtPyamt;
        this.condtWoncrCvPyamt = condtWoncrCvPyamt;
        this.condtRemnXiamt = condtRemnXiamt;
        this.xiPyFlgcd = xiPyFlgcd;
        this.xiPyFlgRscd = xiPyFlgRscd;
        this.xiPyDtRscd = xiPyDtRscd;
        this.stdt = stdt;
        this.pyPrdt = pyPrdt;
        this.dlayNtrt = dlayNtrt;
        this.dlayNt = dlayNt;
        this.dlayNtPyYn = dlayNtPyYn;
        this.dlayNtNpRscd = dlayNtNpRscd;
        this.dlayNtCalMetcd = dlayNtCalMetcd;
        this.dlayNtPoutMtt = dlayNtPoutMtt;
        this.woncvIbnfDlayNt = woncvIbnfDlayNt;
        this.pyCclYn = pyCclYn;
        this.bndSzYn = bndSzYn;
        this.claLnYn = claLnYn;
        this.gnLnYn = gnLnYn;
        this.prEsYn = prEsYn;
        this.ucPrmYn = ucPrmYn;
        this.nvLwCsYn = nvLwCsYn;
        this.idmBjYn = idmBjYn;
        this.bsnsDlAlarmYn = bsnsDlAlarmYn;
        this.chrpsCtn = chrpsCtn;
        this.condtPayaoYn = condtPayaoYn;
        this.clcSpc = clcSpc;
        this.opccsUdRqYn = opccsUdRqYn;
        this.trpaUdRqYn = trpaUdRqYn;
        this.claLnArNt = claLnArNt;
        this.claLnamt = claLnamt;
        this.cdamt = cdamt;
        this.dmDmamt = dmDmamt;
        this.imuRdRscd = imuRdRscd;
        this.imuRdRsDtcd = imuRdRsDtcd;
        this.imuRdDtCtn = imuRdDtCtn;
        this.imuRprdt = imuRprdt;
        this.socAutoSndYn = socAutoSndYn;
        this.reXiIbamt = reXiIbamt;
        this.lmsSndYn = lmsSndYn;
        this.autoCcDgre = autoCcDgre;
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
