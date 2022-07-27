/**
 * IgdGd Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.IgdGdListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(IgdGdListener.class)
@Table(name = "igd_gd") //--상품
@Schema(description = "상품")
@IdClass(IgdGdPK.class)
public class IgdGd implements Serializable {
    @Id //  String
    @Column(name = "gdcd", length = 10, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "상품코드", nullable = false)
    private String gdcd; //--상품코드

    @Id //  LocalDate
    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private LocalDate apNddt; //--적용종료일자

    @Id //  LocalDate
    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private LocalDate apStrdt; //--적용시작일자

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ins_imcd", length = 10, nullable = false)
    @Schema(description = "보험종목코드", nullable = false)
    private String insImcd; //--보험종목코드

    @Column(name = "cla_lng_flgcd", length = 10, nullable = false)
    @Schema(description = "약관언어구분코드", nullable = false)
    private String claLngFlgcd; //--약관언어구분코드

    @Column(name = "gd_ty_flgcd", length = 10, nullable = false)
    @Schema(description = "상품형태구분코드", nullable = false)
    private String gdTyFlgcd; //--상품형태구분코드

    @Column(name = "gd_slnm", length = 100, nullable = false)
    @Schema(description = "상품판매명", nullable = false)
    private String gdSlnm; //--상품판매명

    @Column(name = "gd_shtnm", length = 100, nullable = true)
    @Schema(description = "상품단축명", nullable = true)
    private String gdShtnm; //--상품단축명

    @Column(name = "gd_kornm", length = 150, nullable = true)
    @Schema(description = "상품한글명", nullable = true)
    private String gdKornm; //--상품한글명

    @Column(name = "gd_ennm", length = 100, nullable = true)
    @Schema(description = "상품영문명", nullable = true)
    private String gdEnnm; //--상품영문명

    @Column(name = "gd_xpnm", length = 1000, nullable = true)
    @Schema(description = "상품설명", nullable = true)
    private String gdXpnm; //--상품설명

    @Column(name = "gd_per_yn", length = 1, nullable = false)
    @Schema(description = "상품인가여부", nullable = false)
    private String gdPerYn; //--상품인가여부

    @Column(name = "gd_pernm", length = 100, nullable = true)
    @Schema(description = "상품인가명", nullable = true)
    private String gdPernm; //--상품인가명

    @Column(name = "gd_per_tpcd", length = 10, nullable = true)
    @Schema(description = "상품인가유형코드", nullable = true)
    private String gdPerTpcd; //--상품인가유형코드

    @Column(name = "gd_perdt", nullable = true)
    @Schema(description = "상품인가일자", nullable = true)
    private LocalDate gdPerdt; //--상품인가일자

    @Column(name = "gd_sl_tpcd", length = 10, nullable = true)
    @Schema(description = "상품판매유형코드", nullable = true)
    private String gdSlTpcd; //--상품판매유형코드

    @Column(name = "cr_opn_ba_hms", length = 4, nullable = true)
    @Schema(description = "계약개시기본시간", nullable = true)
    private String crOpnBaHms; //--계약개시기본시간

    @Column(name = "cr_nd_ba_hms", length = 4, nullable = true)
    @Schema(description = "계약종료기본시간", nullable = true)
    private String crNdBaHms; //--계약종료기본시간

    @Column(name = "fc_dh_yn", length = 1, nullable = false)
    @Schema(description = "외화취급여부", nullable = false)
    private String fcDhYn; //--외화취급여부

    @Column(name = "re_unt_flgcd", length = 10, nullable = true)
    @Schema(description = "출재단위구분코드", nullable = true)
    private String reUntFlgcd; //--출재단위구분코드

    @Column(name = "pym_xmp_unt_flgcd", length = 10, nullable = false)
    @Schema(description = "납입면제단위구분코드", nullable = false)
    private String pymXmpUntFlgcd; //--납입면제단위구분코드

    @Column(name = "ppy_prm_prm_yn", length = 1, nullable = true)
    @Schema(description = "선납보험료허용여부", nullable = true)
    private String ppyPrmPrmYn; //--선납보험료허용여부

    @Column(name = "ppy_prm_mxpsb_mc", precision = 4, scale = 0, nullable = true)
    @Schema(description = "선납보험료최대가능월수", nullable = true)
    private BigDecimal ppyPrmMxpsbMc; //--선납보험료최대가능월수

    @Column(name = "psncl_dbins_prm_yn", length = 1, nullable = true)
    @Schema(description = "개인별중복보험허용여부", nullable = true)
    private String psnclDbinsPrmYn; //--개인별중복보험허용여부

    @Column(name = "cv_ins_av_yn", length = 1, nullable = true)
    @Schema(description = "전환보험가능여부", nullable = true)
    private String cvInsAvYn; //--전환보험가능여부

    @Column(name = "auto_tf_dc_yn", length = 1, nullable = true)
    @Schema(description = "자동이체할인여부", nullable = true)
    private String autoTfDcYn; //--자동이체할인여부

    @Column(name = "type_flgcd", length = 10, nullable = true)
    @Schema(description = "종구분코드", nullable = true)
    private String typeFlgcd; //--종구분코드

    @Column(name = "type_cn_flgcd", length = 10, nullable = true)
    @Schema(description = "종내용구분코드", nullable = true)
    private String typeCnFlgcd; //--종내용구분코드

    @Column(name = "spe_scr_rnw_yn", length = 1, nullable = true)
    @Schema(description = "종별화면갱신여부", nullable = true)
    private String speScrRnwYn; //--종별화면갱신여부

    @Column(name = "dv_tpcd", length = 10, nullable = true)
    @Schema(description = "배당유형코드", nullable = true)
    private String dvTpcd; //--배당유형코드

    @Column(name = "prm_str_flgcd", length = 10, nullable = true)
    @Schema(description = "보험료구조구분코드", nullable = true)
    private String prmStrFlgcd; //--보험료구조구분코드

    @Column(name = "mw_rtamt_cr_flgcd", length = 10, nullable = true)
    @Schema(description = "중도환급금액발생구분코드", nullable = true)
    private String mwRtamtCrFlgcd; //--중도환급금액발생구분코드

    @Column(name = "nd_rtamt_cr_yn", length = 1, nullable = true)
    @Schema(description = "만기환급금액발생여부", nullable = true)
    private String ndRtamtCrYn; //--만기환급금액발생여부

    @Column(name = "dgn_gd_yn", length = 1, nullable = true)
    @Schema(description = "진단상품여부", nullable = true)
    private String dgnGdYn; //--진단상품여부

    @Column(name = "auto_rnw_av_yn", length = 1, nullable = true)
    @Schema(description = "자동갱신가능여부", nullable = true)
    private String autoRnwAvYn; //--자동갱신가능여부

    @Column(name = "prm_inp_flgcd", length = 10, nullable = true)
    @Schema(description = "보험료입력구분코드", nullable = true)
    private String prmInpFlgcd; //--보험료입력구분코드

    @Column(name = "cu_prm_ocpym_yn", length = 1, nullable = true)
    @Schema(description = "적립보험료수시납입여부", nullable = true)
    private String cuPrmOcpymYn; //--적립보험료수시납입여부

    @Column(name = "ctu_crdtf_av_yn", length = 1, nullable = true)
    @Schema(description = "계속카드이체가능여부", nullable = true)
    private String ctuCrdtfAvYn; //--계속카드이체가능여부

    @Column(name = "cla_ln_av_yn", length = 1, nullable = true)
    @Schema(description = "약관대출가능여부", nullable = true)
    private String claLnAvYn; //--약관대출가능여부

    @Column(name = "sb_pym_flgcd", length = 10, nullable = false)
    @Schema(description = "대체납입구분코드", nullable = false)
    private String sbPymFlgcd; //--대체납입구분코드

    @Column(name = "sb_pym_tpcd", length = 10, nullable = true)
    @Schema(description = "대체납입유형코드", nullable = true)
    private String sbPymTpcd; //--대체납입유형코드

    @Column(name = "age_cc_st_flgcd", length = 10, nullable = true)
    @Schema(description = "연령산출기준구분코드", nullable = true)
    private String ageCcStFlgcd; //--연령산출기준구분코드

    @Column(name = "bz_mtdrp_csfcd", length = 10, nullable = true)
    @Schema(description = "사업방법서분류코드", nullable = true)
    private String bzMtdrpCsfcd; //--사업방법서분류코드

    @Column(name = "is_pl_cht_wrtyn", length = 1, nullable = true)
    @Schema(description = "가입설계차트출력여부", nullable = true)
    private String isPlChtWrtyn; //--가입설계차트출력여부

    @Column(name = "xtn_tpcd", length = 10, nullable = true)
    @Schema(description = "소멸유형코드", nullable = true)
    private String xtnTpcd; //--소멸유형코드

    @Column(name = "xtntm_rtamt_flgcd", length = 10, nullable = true)
    @Schema(description = "소멸시환급금구분코드", nullable = true)
    private String xtntmRtamtFlgcd; //--소멸시환급금구분코드

    @Column(name = "trmcl_expl_ntc_mntct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "기간별예시안내개월수", nullable = true)
    private BigDecimal trmclExplNtcMntct; //--기간별예시안내개월수

    @Column(name = "rmimc_flgcd", length = 7, nullable = true)
    @Schema(description = "실손의료비구분코드", nullable = true)
    private String rmimcFlgcd; //--실손의료비구분코드

    @Column(name = "gr_is_flgcd", length = 10, nullable = true)
    @Schema(description = "단체가입구분코드", nullable = true)
    private String grIsFlgcd; //--단체가입구분코드

    @Column(name = "gr_dc_av_yn", length = 1, nullable = true)
    @Schema(description = "단체할인가능여부", nullable = true)
    private String grDcAvYn; //--단체할인가능여부

    @Column(name = "gr_mn_is_psct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "단체최소가입인원수", nullable = true)
    private BigDecimal grMnIsPsct; //--단체최소가입인원수

    @Column(name = "avg_rt_us_yn", length = 1, nullable = true)
    @Schema(description = "평균요율사용여부", nullable = true)
    private String avgRtUsYn; //--평균요율사용여부

    @Column(name = "pr_es_prm_yn", length = 1, nullable = false)
    @Schema(description = "질권설정허용여부", nullable = false)
    private String prEsPrmYn; //--질권설정허용여부

    @Column(name = "lowt_prm_mncd", length = 10, nullable = true)
    @Schema(description = "최저보험료화폐코드", nullable = true)
    private String lowtPrmMncd; //--최저보험료화폐코드

    @Column(name = "lowt_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "최저보험료", nullable = false)
    private BigDecimal lowtPrm; //--최저보험료

    @Column(name = "cvr_prm_sgdlg_flgcd", length = 10, nullable = true)
    @Schema(description = "담보보험료단수처리구분코드", nullable = true)
    private String cvrPrmSgdlgFlgcd; //--담보보험료단수처리구분코드

    @Column(name = "apprm_sglr_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "적용보험료단수처리구분코드", nullable = true)
    private String apprmSglrDlFlgcd; //--적용보험료단수처리구분코드

    @Column(name = "sl_pl_adm_yn", length = 1, nullable = true)
    @Schema(description = "판매플랜관리여부", nullable = true)
    private String slPlAdmYn; //--판매플랜관리여부

    @Column(name = "cr_logfl_pst_info", length = 100, nullable = true)
    @Schema(description = "계약log파일위치정보", nullable = true)
    private String crLogflPstInfo; //--계약log파일위치정보

    @Column(name = "op_envr_cv_yn", length = 1, nullable = false)
    @Schema(description = "운용환경전환여부", nullable = false)
    private String opEnvrCvYn; //--운용환경전환여부

    @Column(name = "ins_trm_bavl", length = 3, nullable = true)
    @Schema(description = "보험기간기본값", nullable = true)
    private String insTrmBavl; //--보험기간기본값

    @Column(name = "ins_trm_lm", length = 3, nullable = true)
    @Schema(description = "보험기간한도", nullable = true)
    private String insTrmLm; //--보험기간한도

    @Column(name = "pym_grc_trm", length = 3, nullable = true)
    @Schema(description = "납입유예기간", nullable = true)
    private String pymGrcTrm; //--납입유예기간

    @Column(name = "tx_pf_gd_csfcd", length = 10, nullable = true)
    @Schema(description = "세금우대상품분류코드", nullable = true)
    private String txPfGdCsfcd; //--세금우대상품분류코드

    @Column(name = "sl_pl_op_tpcd", length = 10, nullable = true)
    @Schema(description = "판매플랜운용유형코드", nullable = true)
    private String slPlOpTpcd; //--판매플랜운용유형코드

    @Column(name = "ply_out_tp_flgcd", length = 10, nullable = true)
    @Schema(description = "증권출력유형구분코드", nullable = true)
    private String plyOutTpFlgcd; //--증권출력유형구분코드

    @Column(name = "type_ch_av_yn", length = 1, nullable = true)
    @Schema(description = "종변경가능여부", nullable = true)
    private String typeChAvYn; //--종변경가능여부

    @Column(name = "gd_dt_scr_yn", length = 1, nullable = true)
    @Schema(description = "상품세부화면여부", nullable = true)
    private String gdDtScrYn; //--상품세부화면여부

    @Column(name = "dt_scr_id", length = 10, nullable = true)
    @Schema(description = "세부화면id", nullable = true)
    private String dtScrId; //--세부화면id

    @Column(name = "dc_ap_flgcd", length = 10, nullable = true)
    @Schema(description = "할인적용구분코드", nullable = true)
    private String dcApFlgcd; //--할인적용구분코드

    @Column(name = "dt_inpsc_xstn_yn", length = 1, nullable = true)
    @Schema(description = "상세입력화면존재여부", nullable = true)
    private String dtInpscXstnYn; //--상세입력화면존재여부

    @Column(name = "dt_inpsc_id", length = 10, nullable = true)
    @Schema(description = "상세입력화면id", nullable = true)
    private String dtInpscId; //--상세입력화면id

    @Column(name = "mw_wdra_av_rt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "중도인출가능비율", nullable = false)
    private BigDecimal mwWdraAvRt; //--중도인출가능비율

    @Column(name = "mw_wdra_str_rndcd", length = 10, nullable = true)
    @Schema(description = "중도인출시작경과코드", nullable = true)
    private String mwWdraStrRndcd; //--중도인출시작경과코드

    @Column(name = "mw_wdra_cr_cyccd", length = 10, nullable = true)
    @Schema(description = "중도인출발생주기코드", nullable = true)
    private String mwWdraCrCyccd; //--중도인출발생주기코드

    @Column(name = "mw_wdra_cr_caseq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "중도인출발생호출회차", nullable = true)
    private BigDecimal mwWdraCrCaseq; //--중도인출발생호출회차

    @Column(name = "dvpns_rpr_ikdcd", length = 10, nullable = true)
    @Schema(description = "개발원통보보종코드", nullable = true)
    private String dvpnsRprIkdcd; //--개발원통보보종코드

    @Column(name = "gd_exppr_out_yn", length = 1, nullable = true)
    @Schema(description = "상품해설서출력여부", nullable = true)
    private String gdExpprOutYn; //--상품해설서출력여부

    @Column(name = "marne_nelp_cal_metcd", length = 10, nullable = true)
    @Schema(description = "해상미경과계산방식코드", nullable = true)
    private String marneNelpCalMetcd; //--해상미경과계산방식코드

    @Column(name = "pect_sl_mntr_bjpcd", length = 10, nullable = true)
    @Schema(description = "완전판매모니터링대상코드", nullable = true)
    private String pectSlMntrBjpcd; //--완전판매모니터링대상코드

    @Column(name = "prm_inp_tpcd", length = 10, nullable = true)
    @Schema(description = "보험료입력유형코드", nullable = true)
    private String prmInpTpcd; //--보험료입력유형코드

    @Column(name = "rntcl_dscrt_ap_yn", length = 1, nullable = true)
    @Schema(description = "경과기간별할인율적용여부", nullable = true)
    private String rntclDscrtApYn; //--경과기간별할인율적용여부

    @Column(name = "gds_mx_dc_lmrt", precision = 5, scale = 2, nullable = true)
    @Schema(description = "상품별최대할인한도율", nullable = true)
    private BigDecimal gdsMxDcLmrt; //--상품별최대할인한도율

    @Column(name = "prm_sb_pym_tpcd", length = 10, nullable = true)
    @Schema(description = "보험료대체납입유형코드", nullable = true)
    private String prmSbPymTpcd; //--보험료대체납입유형코드

    @Column(name = "prm_npy_sb_flgcd", length = 10, nullable = true)
    @Schema(description = "보험료미납대체구분코드", nullable = true)
    private String prmNpySbFlgcd; //--보험료미납대체구분코드

    @Column(name = "scr_idc_ordr", precision = 5, scale = 0, nullable = true)
    @Schema(description = "화면표시순서", nullable = true)
    private BigDecimal scrIdcOrdr; //--화면표시순서

    @Column(name = "mx_mn_cc_tpcd", length = 10, nullable = true)
    @Schema(description = "최대최소산출유형코드", nullable = true)
    private String mxMnCcTpcd; //--최대최소산출유형코드

    @Column(name = "rnwdc_fund_chek_yn", length = 1, nullable = true)
    @Schema(description = "갱신할인재원체크여부", nullable = true)
    private String rnwdcFundChekYn; //--갱신할인재원체크여부

    @Column(name = "rmimc_rkrt_dcl_yn", length = 1, nullable = true)
    @Schema(description = "실손의료비위험율공시여부", nullable = true)
    private String rmimcRkrtDclYn; //--실손의료비위험율공시여부

    @Column(name = "anul_bzprm_rt_adtm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "매년영업보험료비율부가기간", nullable = true)
    private BigDecimal anulBzprmRtAdtm; //--매년영업보험료비율부가기간

    @Column(name = "cc_xcpt_dlcd", length = 10, nullable = true)
    @Schema(description = "산출예외처리코드", nullable = true)
    private String ccXcptDlcd; //--산출예외처리코드

    @Column(name = "indpd_trt_tpcd", length = 10, nullable = true)
    @Schema(description = "독립특약유형코드", nullable = true)
    private String indpdTrtTpcd; //--독립특약유형코드

    @Column(name = "indpd_trt_incld_yn", length = 1, nullable = true)
    @Schema(description = "독립특약포함여부", nullable = true)
    private String indpdTrtIncldYn; //--독립특약포함여부

    @Column(name = "gd_mx_is_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "상품최대가입연령", nullable = true)
    private BigDecimal gdMxIsAge; //--상품최대가입연령

    @Column(name = "mx_rnw_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "최대갱신기간", nullable = true)
    private BigDecimal mxRnwTrm; //--최대갱신기간

    @Column(name = "sm_prm_mn_yn", length = 1, nullable = true)
    @Schema(description = "합계보험료유지여부", nullable = true)
    private String smPrmMnYn; //--합계보험료유지여부

    @Column(name = "rlpmi_md_ins_csfcd", length = 10, nullable = true)
    @Schema(description = "실손의료보험분류코드", nullable = true)
    private String rlpmiMdInsCsfcd; //--실손의료보험분류코드

    @Column(name = "psvn_bj_gd_yn", length = 1, nullable = true)
    @Schema(description = "보호대상상품여부", nullable = true)
    private String psvnBjGdYn; //--보호대상상품여부

    @Column(name = "re_isgd_tpcd", length = 10, nullable = true)
    @Schema(description = "재가입상품유형코드", nullable = true)
    private String reIsgdTpcd; //--재가입상품유형코드

    @Column(name = "adpym_prm_lm_flgcd", length = 10, nullable = true)
    @Schema(description = "추가납입보험료한도구분코드", nullable = true)
    private String adpymPrmLmFlgcd; //--추가납입보험료한도구분코드

    @Column(name = "irt_cn_gd_yn", length = 1, nullable = true)
    @Schema(description = "금리연동상품여부", nullable = true)
    private String irtCnGdYn; //--금리연동상품여부

    @Column(name = "ltrm_gd_grp_csfcd", length = 10, nullable = true)
    @Schema(description = "장기상품군분류코드", nullable = true)
    private String ltrmGdGrpCsfcd; //--장기상품군분류코드

    @Column(name = "sof_gd_csfcd", length = 10, nullable = true)
    @Schema(description = "감독원상품분류코드", nullable = true)
    private String sofGdCsfcd; //--감독원상품분류코드

    @Column(name = "crycd", length = 10, nullable = true)
    @Schema(description = "계약형태코드", nullable = true)
    private String crycd; //--계약형태코드

    @Column(name = "is_av_oj_tpcd", length = 7, nullable = true)
    @Schema(description = "가입가능목적물유형코드", nullable = true)
    private String isAvOjTpcd; //--가입가능목적물유형코드

    @Column(name = "rtn_tp_info_cd", length = 10, nullable = true)
    @Schema(description = "환급유형정보코드", nullable = true)
    private String rtnTpInfoCd; //--환급유형정보코드

    @Column(name = "adpym_av_flgcd", length = 10, nullable = true)
    @Schema(description = "추가납입가능구분코드", nullable = true)
    private String adpymAvFlgcd; //--추가납입가능구분코드

    @Column(name = "mwwdr_av_flgcd", length = 10, nullable = true)
    @Schema(description = "중도인출가능구분코드", nullable = true)
    private String mwwdrAvFlgcd; //--중도인출가능구분코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public IgdGd(String gdcd, LocalDate apNddt, LocalDate apStrdt, String ikdGrpcd, String insImcd, String claLngFlgcd, String gdTyFlgcd, String gdSlnm, String gdShtnm, String gdKornm, String gdEnnm, String gdXpnm, String gdPerYn, String gdPernm, String gdPerTpcd, LocalDate gdPerdt, String gdSlTpcd, String crOpnBaHms, String crNdBaHms, String fcDhYn, String reUntFlgcd, String pymXmpUntFlgcd, String ppyPrmPrmYn, BigDecimal ppyPrmMxpsbMc, String psnclDbinsPrmYn, String cvInsAvYn, String autoTfDcYn, String typeFlgcd, String typeCnFlgcd, String speScrRnwYn, String dvTpcd, String prmStrFlgcd, String mwRtamtCrFlgcd, String ndRtamtCrYn, String dgnGdYn, String autoRnwAvYn, String prmInpFlgcd, String cuPrmOcpymYn, String ctuCrdtfAvYn, String claLnAvYn, String sbPymFlgcd, String sbPymTpcd, String ageCcStFlgcd, String bzMtdrpCsfcd, String isPlChtWrtyn, String xtnTpcd, String xtntmRtamtFlgcd, BigDecimal trmclExplNtcMntct, String rmimcFlgcd, String grIsFlgcd, String grDcAvYn, BigDecimal grMnIsPsct, String avgRtUsYn, String prEsPrmYn, String lowtPrmMncd, BigDecimal lowtPrm, String cvrPrmSgdlgFlgcd, String apprmSglrDlFlgcd, String slPlAdmYn, String crLogflPstInfo, String opEnvrCvYn, String insTrmBavl, String insTrmLm, String pymGrcTrm, String txPfGdCsfcd, String slPlOpTpcd, String plyOutTpFlgcd, String typeChAvYn, String gdDtScrYn, String dtScrId, String dcApFlgcd, String dtInpscXstnYn, String dtInpscId, BigDecimal mwWdraAvRt, String mwWdraStrRndcd, String mwWdraCrCyccd, BigDecimal mwWdraCrCaseq, String dvpnsRprIkdcd, String gdExpprOutYn, String marneNelpCalMetcd, String pectSlMntrBjpcd, String prmInpTpcd, String rntclDscrtApYn, BigDecimal gdsMxDcLmrt, String prmSbPymTpcd, String prmNpySbFlgcd, BigDecimal scrIdcOrdr, String mxMnCcTpcd, String rnwdcFundChekYn, String rmimcRkrtDclYn, BigDecimal anulBzprmRtAdtm, String ccXcptDlcd, String indpdTrtTpcd, String indpdTrtIncldYn, BigDecimal gdMxIsAge, BigDecimal mxRnwTrm, String smPrmMnYn, String rlpmiMdInsCsfcd, String psvnBjGdYn, String reIsgdTpcd, String adpymPrmLmFlgcd, String irtCnGdYn, String ltrmGdGrpCsfcd, String sofGdCsfcd, String crycd, String isAvOjTpcd, String rtnTpInfoCd, String adpymAvFlgcd, String mwwdrAvFlgcd, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.gdcd = gdcd;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ikdGrpcd = ikdGrpcd;
        this.insImcd = insImcd;
        this.claLngFlgcd = claLngFlgcd;
        this.gdTyFlgcd = gdTyFlgcd;
        this.gdSlnm = gdSlnm;
        this.gdShtnm = gdShtnm;
        this.gdKornm = gdKornm;
        this.gdEnnm = gdEnnm;
        this.gdXpnm = gdXpnm;
        this.gdPerYn = gdPerYn;
        this.gdPernm = gdPernm;
        this.gdPerTpcd = gdPerTpcd;
        this.gdPerdt = gdPerdt;
        this.gdSlTpcd = gdSlTpcd;
        this.crOpnBaHms = crOpnBaHms;
        this.crNdBaHms = crNdBaHms;
        this.fcDhYn = fcDhYn;
        this.reUntFlgcd = reUntFlgcd;
        this.pymXmpUntFlgcd = pymXmpUntFlgcd;
        this.ppyPrmPrmYn = ppyPrmPrmYn;
        this.ppyPrmMxpsbMc = ppyPrmMxpsbMc;
        this.psnclDbinsPrmYn = psnclDbinsPrmYn;
        this.cvInsAvYn = cvInsAvYn;
        this.autoTfDcYn = autoTfDcYn;
        this.typeFlgcd = typeFlgcd;
        this.typeCnFlgcd = typeCnFlgcd;
        this.speScrRnwYn = speScrRnwYn;
        this.dvTpcd = dvTpcd;
        this.prmStrFlgcd = prmStrFlgcd;
        this.mwRtamtCrFlgcd = mwRtamtCrFlgcd;
        this.ndRtamtCrYn = ndRtamtCrYn;
        this.dgnGdYn = dgnGdYn;
        this.autoRnwAvYn = autoRnwAvYn;
        this.prmInpFlgcd = prmInpFlgcd;
        this.cuPrmOcpymYn = cuPrmOcpymYn;
        this.ctuCrdtfAvYn = ctuCrdtfAvYn;
        this.claLnAvYn = claLnAvYn;
        this.sbPymFlgcd = sbPymFlgcd;
        this.sbPymTpcd = sbPymTpcd;
        this.ageCcStFlgcd = ageCcStFlgcd;
        this.bzMtdrpCsfcd = bzMtdrpCsfcd;
        this.isPlChtWrtyn = isPlChtWrtyn;
        this.xtnTpcd = xtnTpcd;
        this.xtntmRtamtFlgcd = xtntmRtamtFlgcd;
        this.trmclExplNtcMntct = trmclExplNtcMntct;
        this.rmimcFlgcd = rmimcFlgcd;
        this.grIsFlgcd = grIsFlgcd;
        this.grDcAvYn = grDcAvYn;
        this.grMnIsPsct = grMnIsPsct;
        this.avgRtUsYn = avgRtUsYn;
        this.prEsPrmYn = prEsPrmYn;
        this.lowtPrmMncd = lowtPrmMncd;
        this.lowtPrm = lowtPrm;
        this.cvrPrmSgdlgFlgcd = cvrPrmSgdlgFlgcd;
        this.apprmSglrDlFlgcd = apprmSglrDlFlgcd;
        this.slPlAdmYn = slPlAdmYn;
        this.crLogflPstInfo = crLogflPstInfo;
        this.opEnvrCvYn = opEnvrCvYn;
        this.insTrmBavl = insTrmBavl;
        this.insTrmLm = insTrmLm;
        this.pymGrcTrm = pymGrcTrm;
        this.txPfGdCsfcd = txPfGdCsfcd;
        this.slPlOpTpcd = slPlOpTpcd;
        this.plyOutTpFlgcd = plyOutTpFlgcd;
        this.typeChAvYn = typeChAvYn;
        this.gdDtScrYn = gdDtScrYn;
        this.dtScrId = dtScrId;
        this.dcApFlgcd = dcApFlgcd;
        this.dtInpscXstnYn = dtInpscXstnYn;
        this.dtInpscId = dtInpscId;
        this.mwWdraAvRt = mwWdraAvRt;
        this.mwWdraStrRndcd = mwWdraStrRndcd;
        this.mwWdraCrCyccd = mwWdraCrCyccd;
        this.mwWdraCrCaseq = mwWdraCrCaseq;
        this.dvpnsRprIkdcd = dvpnsRprIkdcd;
        this.gdExpprOutYn = gdExpprOutYn;
        this.marneNelpCalMetcd = marneNelpCalMetcd;
        this.pectSlMntrBjpcd = pectSlMntrBjpcd;
        this.prmInpTpcd = prmInpTpcd;
        this.rntclDscrtApYn = rntclDscrtApYn;
        this.gdsMxDcLmrt = gdsMxDcLmrt;
        this.prmSbPymTpcd = prmSbPymTpcd;
        this.prmNpySbFlgcd = prmNpySbFlgcd;
        this.scrIdcOrdr = scrIdcOrdr;
        this.mxMnCcTpcd = mxMnCcTpcd;
        this.rnwdcFundChekYn = rnwdcFundChekYn;
        this.rmimcRkrtDclYn = rmimcRkrtDclYn;
        this.anulBzprmRtAdtm = anulBzprmRtAdtm;
        this.ccXcptDlcd = ccXcptDlcd;
        this.indpdTrtTpcd = indpdTrtTpcd;
        this.indpdTrtIncldYn = indpdTrtIncldYn;
        this.gdMxIsAge = gdMxIsAge;
        this.mxRnwTrm = mxRnwTrm;
        this.smPrmMnYn = smPrmMnYn;
        this.rlpmiMdInsCsfcd = rlpmiMdInsCsfcd;
        this.psvnBjGdYn = psvnBjGdYn;
        this.reIsgdTpcd = reIsgdTpcd;
        this.adpymPrmLmFlgcd = adpymPrmLmFlgcd;
        this.irtCnGdYn = irtCnGdYn;
        this.ltrmGdGrpCsfcd = ltrmGdGrpCsfcd;
        this.sofGdCsfcd = sofGdCsfcd;
        this.crycd = crycd;
        this.isAvOjTpcd = isAvOjTpcd;
        this.rtnTpInfoCd = rtnTpInfoCd;
        this.adpymAvFlgcd = adpymAvFlgcd;
        this.mwwdrAvFlgcd = mwwdrAvFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
