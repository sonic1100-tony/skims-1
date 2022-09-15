/**
 * InsPlCvr Entity 클래스
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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.InsPlCvrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPlCvrListener.class)
@Table(name = "ins_pl_cvr") // --설계담보
@Schema(description = "설계담보")
public class InsPlCvr implements Serializable {
    @Id // Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    // @Schema(description = "", nullable = true , defaultValue = "" , example = ""
    // , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; // --aid

    @Column(name = "plno", length = 17, nullable = false)
    @Schema(description = "설계번호", nullable = false)
    private String plno; // --설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    private BigDecimal cgafChSeqno; // --발행후변경순번

    @Column(name = "cvrcd", length = 8, nullable = false)
    @Schema(description = "담보코드", nullable = false)
    private String cvrcd; // --담보코드

    @Column(name = "cvr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "담보순번", nullable = false)
    private BigDecimal cvrSeqno; // --담보순번

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; // --보종군코드

    @Column(name = "cvr_bj_flgcd", length = 10, nullable = true)
    @Schema(description = "담보대상구분코드", nullable = true)
    private String cvrBjFlgcd; // --담보대상구분코드 (01:피보험자, 02:목적물, 03:계약)

    @Column(name = "relpc_oj_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "관계자목적물순번", nullable = true)
    private BigDecimal relpcOjSeqno; // --관계자목적물순번

    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "관계자순번", nullable = true)
    private BigDecimal relpcSeqno; // --관계자순번

    @Column(name = "cvr_ba_trt_flgcd", length = 10, nullable = false)
    @Schema(description = "담보기본특약구분코드", nullable = false)
    private String cvrBaTrtFlgcd; // --담보기본특약구분코드

    @Column(name = "cvr_subo_lvl_flgcd", length = 10, nullable = true)
    @Schema(description = "담보종속레벨구분코드", nullable = true)
    private String cvrSuboLvlFlgcd; // --담보종속레벨구분코드

    @Column(name = "cvr_stcd", length = 10, nullable = false)
    @Schema(description = "담보상태코드", nullable = false)
    private String cvrStcd; // --담보상태코드

    @Column(name = "cvr_st_chdt", nullable = true)
    @Schema(description = "담보상태변경일자", nullable = true)
    private LocalDate cvrStChdt; // --담보상태변경일자

    @Column(name = "isamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "가입금액", nullable = false)
    private BigDecimal isamt; // --가입금액

    @Column(name = "nds_isamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "배서가입금액", nullable = false)
    private BigDecimal ndsIsamt; // --배서가입금액

    @Column(name = "ba_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기본보험료", nullable = false)
    private BigDecimal baPrm; // --기본보험료

    @Column(name = "nds_ba_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "배서기본보험료", nullable = false)
    private BigDecimal ndsBaPrm; // --배서기본보험료

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    private BigDecimal apPrm; // --적용보험료

    @Column(name = "nds_ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "배서적용보험료", nullable = false)
    private BigDecimal ndsApPrm; // --배서적용보험료

    @Column(name = "scd_ins_trm_apprm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "제2보험기간적용보험료", nullable = false)
    private BigDecimal scdInsTrmApprm; // --제2보험기간적용보험료

    @Column(name = "ins_st", nullable = true)
    @Schema(description = "보험시기", nullable = true)
    private LocalDate insSt; // --보험시기

    @Column(name = "ins_st_hms", length = 4, nullable = true)
    @Schema(description = "보험시기시각", nullable = true)
    private String insStHms; // --보험시기시각

    @Column(name = "ins_clstr", nullable = true)
    @Schema(description = "보험종기", nullable = true)
    private LocalDate insClstr; // --보험종기

    @Column(name = "ins_clstr_hms", length = 4, nullable = true)
    @Schema(description = "보험종기시각", nullable = true)
    private String insClstrHms; // --보험종기시각

    @Column(name = "self_chamt_mncd", length = 10, nullable = true)
    @Schema(description = "자기부담금화폐코드", nullable = true)
    private String selfChamtMncd; // --자기부담금화폐코드

    @Column(name = "self_chamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "자기부담금액", nullable = false)
    private BigDecimal selfChamt; // --자기부담금액

    @Column(name = "agmt_aqr_rt_flgcd", length = 10, nullable = true)
    @Schema(description = "협정구득요율구분코드", nullable = true)
    private String agmtAqrRtFlgcd; // --협정구득요율구분코드

    @Column(name = "nrdps_lvlcd", length = 10, nullable = true)
    @Schema(description = "피보험자레벨코드", nullable = true)
    private String nrdpsLvlcd; // --피보험자레벨코드

    @Column(name = "rk_tpcd", length = 8, nullable = true)
    @Schema(description = "위험유형코드", nullable = true)
    private String rkTpcd; // --위험유형코드

    @Column(name = "rnw_tpcd", length = 10, nullable = true)
    @Schema(description = "갱신유형코드", nullable = true)
    private String rnwTpcd; // --갱신유형코드

    @Column(name = "chbf_ap_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "변경전적용보험료", nullable = false)
    private BigDecimal chbfApPrm; // --변경전적용보험료

    @Column(name = "chaf_ap_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "변경후적용보험료", nullable = false)
    private BigDecimal chafApPrm; // --변경후적용보험료

    @Column(name = "dscrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "할인율", nullable = true)
    private BigDecimal dscrt; // --할인율

    @Column(name = "dcbf_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "할인전보험료", nullable = true)
    private BigDecimal dcbfPrm; // --할인전보험료

    @Column(name = "nrdps_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "피보험자할인금액", nullable = true)
    private BigDecimal nrdpsDcamt; // --피보험자할인금액

    @Column(name = "scc_kds_spc_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "성공키즈특별할인금액", nullable = true)
    private BigDecimal sccKdsSpcDcamt; // --성공키즈특별할인금액

    @Column(name = "fsti_prm_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "초회보험료할인금액", nullable = true)
    private BigDecimal fstiPrmDcamt; // --초회보험료할인금액

    @Column(name = "pym_cyccd", length = 10, nullable = true)
    @Schema(description = "납입주기코드", nullable = true)
    private String pymCyccd; // --납입주기코드

    @Column(name = "pym_trmcd", length = 10, nullable = true)
    @Schema(description = "납입기간코드", nullable = true)
    private String pymTrmcd; // --납입기간코드

    @Column(name = "cvr_st_st_yymm", length = 6, nullable = true)
    @Schema(description = "담보시기기준년월", nullable = true)
    private String cvrStStYymm; // --담보시기기준년월

    @Column(name = "pym_xmp_yn", length = 1, nullable = true)
    @Schema(description = "납입면제여부", nullable = true)
    private String pymXmpYn; // --납입면제여부

    @Column(name = "pym_xmp_str_yymm", length = 6, nullable = true)
    @Schema(description = "납입면제시작년월", nullable = true)
    private String pymXmpStrYymm; // --납입면제시작년월

    @Column(name = "rfamt_clc_ins_st", nullable = true)
    @Schema(description = "준비금액산정보험시기", nullable = true)
    private LocalDate rfamtClcInsSt; // --준비금액산정보험시기

    @Column(name = "rfamt_clc_ins_clstr", nullable = true)
    @Schema(description = "준비금액산정보험종기", nullable = true)
    private LocalDate rfamtClcInsClstr; // --준비금액산정보험종기

    @Column(name = "auto_rnw_av_yn", length = 1, nullable = true)
    @Schema(description = "자동갱신가능여부", nullable = true)
    private String autoRnwAvYn; // --자동갱신가능여부

    @Column(name = "auto_rnw_cvr_cnldt", nullable = true)
    @Schema(description = "자동갱신담보해지일자", nullable = true)
    private LocalDate autoRnwCvrCnldt; // --자동갱신담보해지일자

    @Column(name = "cvr_fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "담보최종납입년월", nullable = true)
    private String cvrFnlPymYymm; // --담보최종납입년월

    @Column(name = "cvr_fnl_pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "담보최종납입회차", nullable = true)
    private BigDecimal cvrFnlPymSeq; // --담보최종납입회차

    @Column(name = "nd_flgcd", length = 10, nullable = true)
    @Schema(description = "만기구분코드", nullable = true)
    private String ndFlgcd; // --만기구분코드

    @Column(name = "nd", precision = 3, scale = 0, nullable = true)
    @Schema(description = "만기", nullable = true)
    private BigDecimal nd; // --만기

    @Column(name = "ndcd", length = 10, nullable = true)
    @Schema(description = "만기코드", nullable = true)
    private String ndcd; // --만기코드

    @Column(name = "rl_nd_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "실만기기간", nullable = true)
    private BigDecimal rlNdTrm; // --실만기기간

    @Column(name = "pym_trm_flgcd", length = 10, nullable = true)
    @Schema(description = "납입기간구분코드", nullable = true)
    private String pymTrmFlgcd; // --납입기간구분코드

    @Column(name = "pym_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "납입기간", nullable = true)
    private BigDecimal pymTrm; // --납입기간

    @Column(name = "rl_pym_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "실납입기간", nullable = true)
    private BigDecimal rlPymTrm; // --실납입기간

    @Column(name = "nrdps_ap_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "피보험자적용연령", nullable = true)
    private BigDecimal nrdpsApAge; // --피보험자적용연령

    @Column(name = "bfrnw_cvrsn", precision = 5, scale = 0, nullable = true)
    @Schema(description = "갱신전담보순번", nullable = true)
    private BigDecimal bfrnwCvrsn; // --갱신전담보순번

    @Column(name = "bfrnw_cvrcd", length = 10, nullable = true)
    @Schema(description = "갱신전담보코드", nullable = true)
    private String bfrnwCvrcd; // --갱신전담보코드

    @Column(name = "trt_preg_rnd_wkct", precision = 2, scale = 0, nullable = true)
    @Schema(description = "특약임신경과주수", nullable = true)
    private BigDecimal trtPregRndWkct; // --특약임신경과주수

    @Column(name = "db_cvr_flgcd", length = 10, nullable = true)
    @Schema(description = "중복담보구분코드", nullable = true)
    private String dbCvrFlgcd; // --중복담보구분코드

    @Column(name = "cvr_is_tpcd", length = 10, nullable = true)
    @Schema(description = "담보가입유형코드", nullable = true)
    private String cvrIsTpcd; // --담보가입유형코드

    @Column(name = "afgst_prm_ccbj_yn", length = 1, nullable = true)
    @Schema(description = "보장시기이후보험료산출대상여부", nullable = true)
    private String afgstPrmCcbjYn; // --보장시기이후보험료산출대상여부

    @Column(name = "sep_cr_cn_yn", length = 1, nullable = true)
    @Schema(description = "분리계약해약여부", nullable = true)
    private String sepCrCnYn; // --분리계약해약여부

    @Column(name = "flpy_cvrfs_sb_yn", length = 1, nullable = true)
    @Schema(description = "일시납담보초회대체여부", nullable = true)
    private String flpyCvrfsSbYn; // --일시납담보초회대체여부

    @Column(name = "rnw_nddt", nullable = true)
    @Schema(description = "갱신종료일자", nullable = true)
    private LocalDate rnwNddt; // --갱신종료일자

    @Column(name = "rnw_cvr_nclm_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "갱신담보무사고할인금액", nullable = true)
    private BigDecimal rnwCvrNclmDcamt; // --갱신담보무사고할인금액

    @Column(name = "rwcvr_nclm_ad_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "갱신담보무사고추가할인금액", nullable = true)
    private BigDecimal rwcvrNclmAdDcamt; // --갱신담보무사고추가할인금액

    @Column(name = "sustd_xc_rk_ndx", precision = 7, scale = 2, nullable = true)
    @Schema(description = "표준하체할증위험지수", nullable = true)
    private BigDecimal sustdXcRkNdx; // --표준하체할증위험지수

    @Column(name = "stdbd_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준체보험료", nullable = true)
    private BigDecimal stdbdPrm; // --표준체보험료

    @Column(name = "sustd_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준하체보험료", nullable = true)
    private BigDecimal sustdPrm; // --표준하체보험료

    @Column(name = "dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "할인금액", nullable = true)
    private BigDecimal dcamt; // --할인금액

    @Column(name = "sustd_rwcvr_nclm_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준하체갱신담보무사고할인금액", nullable = true)
    private BigDecimal sustdRwcvrNclmDcamt; // --표준하체갱신담보무사고할인금액

    @Column(name = "stdbd_rwcvr_nclm_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준체갱신담보무사고할인금액", nullable = true)
    private BigDecimal stdbdRwcvrNclmDcamt; // --표준체갱신담보무사고할인금액

    @Column(name = "clmrl_nds_apcd", length = 10, nullable = true)
    @Schema(description = "사고결과배서적용코드", nullable = true)
    private String clmrlNdsApcd; // --사고결과배서적용코드

    @Column(name = "rmimc_stbz_dcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "실손의료비안정화할인금액", nullable = true)
    private BigDecimal rmimcStbzDcamt; // --실손의료비안정화할인금액

    @Column(name = "sb_cscd", length = 10, nullable = true)
    @Schema(description = "대체비용코드", nullable = true)
    private String sbCscd; // --대체비용코드

    @Column(name = "isamt_cd", length = 10, nullable = true)
    @Schema(description = "가입금액코드", nullable = true)
    private String isamtCd; // --가입금액코드

    @Column(name = "xp_dmamt", precision = 17, scale = 5, nullable = false)
    @Schema(description = "예상손해액", nullable = false)
    private BigDecimal xpDmamt; // --예상손해액

    @Column(name = "md_dmamt", precision = 17, scale = 5, nullable = false)
    @Schema(description = "조정손해액", nullable = false)
    private BigDecimal mdDmamt; // --조정손해액

    @Column(name = "trt_ap_cvr_prmsm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "특약적용담보보험료합계", nullable = false)
    private BigDecimal trtApCvrPrmsm; // --특약적용담보보험료합계

    @Column(name = "sys_mpv_dt", nullable = true)
    @Schema(description = "제도개선일자", nullable = true)
    private LocalDate sysMpvDt; // --제도개선일자

    @Column(name = "trt_ap_cvrcd", length = 10, nullable = true)
    @Schema(description = "특약적용담보코드", nullable = true)
    private String trtApCvrcd; // --특약적용담보코드

    @Column(name = "mstr_car_plyno", length = 25, nullable = true)
    @Schema(description = "마스터카증권번호", nullable = true)
    private String mstrCarPlyno; // --마스터카증권번호

    @Column(name = "clmp1_is_amtcd", length = 10, nullable = true)
    @Schema(description = "1사고당가입금액코드", nullable = true)
    private String clmp1IsAmtcd; // --1사고당가입금액코드

    @Column(name = "emeg_mvo_ce_stfno", length = 50, nullable = true)
    @Schema(description = "긴급출동모집직원번호", nullable = true)
    private String emegMvoCeStfno; // --긴급출동모집직원번호

    @Column(name = "emeg_mvo_cnrdt", nullable = true)
    @Schema(description = "긴급출동계약일자", nullable = true)
    private LocalDate emegMvoCnrdt; // --긴급출동계약일자

    @Column(name = "cvr_spqu_flgcd", length = 10, nullable = true)
    @Schema(description = "담보특성구분코드", nullable = true)
    private String cvrSpquFlgcd; // --담보특성구분코드

    @Column(name = "nds_prdt", nullable = true)
    @Schema(description = "배서예정일자", nullable = true)
    private LocalDate ndsPrdt; // --배서예정일자

    @Column(name = "prort_shtm_flgcd", length = 10, nullable = true)
    @Schema(description = "일할단기구분코드", nullable = true)
    private String prortShtmFlgcd; // --일할단기구분코드

    @Column(name = "prort_shtrt", precision = 12, scale = 6, nullable = true)
    @Schema(description = "일할단기율", nullable = true)
    private BigDecimal prortShtrt; // --일할단기율

    @Column(name = "xp_sum_amt", precision = 17, scale = 5, nullable = true)
    @Schema(description = "예상합산액", nullable = true)
    private BigDecimal xpSumAmt; // --예상합산액

    @Column(name = "md_sum_amt", precision = 17, scale = 5, nullable = true)
    @Schema(description = "조정합산액", nullable = true)
    private BigDecimal mdSumAmt; // --조정합산액

    @Column(name = "de_sel_obs_flgcd", length = 10, nullable = true)
    @Schema(description = "사망후유장해구분코드", nullable = true)
    private String deSelObsFlgcd; // --사망후유장해구분코드

    @Column(name = "itm_cvr_rk_rnk", length = 10, nullable = true)
    @Schema(description = "품목담보위험급수", nullable = true)
    private String itmCvrRkRnk; // --품목담보위험급수

    @Column(name = "imu_trmcd", length = 10, nullable = true)
    @Schema(description = "면책기간코드", nullable = true)
    private String imuTrmcd; // --면책기간코드

    @Column(name = "agr_rt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "약정비율", nullable = false)
    private BigDecimal agrRt; // --약정비율

    @Column(name = "absc_trm_flgcd", length = 10, nullable = true)
    @Schema(description = "부재기간구분코드", nullable = true)
    private String abscTrmFlgcd; // --부재기간구분코드

    @Column(name = "agr_rest_trmcd", length = 10, nullable = true)
    @Schema(description = "약정복구기간코드", nullable = true)
    private String agrRestTrmcd; // --약정복구기간코드

    @Column(name = "isamt_spc", length = 300, nullable = true)
    @Schema(description = "가입금액내역", nullable = true)
    private String isamtSpc; // --가입금액내역

    @Column(name = "esrct", precision = 2, scale = 0, nullable = true)
    @Schema(description = "호위인수", nullable = true)
    private BigDecimal esrct; // --호위인수

    @Column(name = "bd_dlbr_rpbl_btpcd", length = 10, nullable = true)
    @Schema(description = "신체손해배상책임업종코드", nullable = true)
    private String bdDlbrRpblBtpcd; // --신체손해배상책임업종코드

    @Column(name = "woncr_cv_self_chamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산자기부담금액", nullable = false)
    private BigDecimal woncrCvSelfChamt; // --원화환산자기부담금액

    @Column(name = "dc_rt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "공제비율", nullable = false)
    private BigDecimal dcRt; // --공제비율

    @Column(name = "act_or_actct", precision = 4, scale = 0, nullable = true)
    @Schema(description = "구좌계좌수", nullable = true)
    private BigDecimal actOrActct; // --구좌계좌수

    @Column(name = "frc_rt_ap_yn", length = 1, nullable = true)
    @Schema(description = "강제요율적용여부", nullable = true)
    private String frcRtApYn; // --강제요율적용여부

    @Column(name = "ad_self_chamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "추가자기부담금액", nullable = false)
    private BigDecimal adSelfChamt; // --추가자기부담금액

    @Column(name = "prgcs_prt_yn", length = 1, nullable = true)
    @Schema(description = "문구비인쇄여부", nullable = true)
    private String prgcsPrtYn; // --문구비인쇄여부

    @Column(name = "ltrm_nds_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "장기배서처리구분코드", nullable = true)
    private String ltrmNdsDlFlgcd; // --장기배서처리구분코드

    @Column(name = "mpy_cv_nprm", precision = 17, scale = 2, nullable = true)
    @Schema(description = "월납환산순보험료", nullable = true)
    private BigDecimal mpyCvNprm; // --월납환산순보험료

    @Column(name = "rfd_dscno", length = 14, nullable = true)
    @Schema(description = "준비금식별번호", nullable = true)
    private String rfdDscno; // --준비금식별번호

    @Column(name = "remn_amt", precision = 17, scale = 0, nullable = true)
    @Schema(description = "잔여금액", nullable = true)
    private BigDecimal remnAmt; // --잔여금액

    @Column(name = "rt_key_assmb_cd", length = 100, nullable = true)
    @Schema(description = "요율key조립코드", nullable = true)
    private String rtKeyAssmbCd; // --요율key조립코드

    @Column(name = "bzcs_rt_key_assmb_cd", length = 100, nullable = true)
    @Schema(description = "사업비요율key조립코드", nullable = true)
    private String bzcsRtKeyAssmbCd; // --사업비요율key조립코드

    @Column(name = "prm_ap_strdt", nullable = true)
    @Schema(description = "보험료적용시작일자", nullable = true)
    private LocalDate prmApStrdt; // --보험료적용시작일자

    @Column(name = "prm_ap_nddt", nullable = true)
    @Schema(description = "보험료적용종료일자", nullable = true)
    private LocalDate prmApNddt; // --보험료적용종료일자

    @Column(name = "sl_cvrcd", length = 8, nullable = true)
    @Schema(description = "판매담보코드", nullable = true)
    private String slCvrcd; // --판매담보코드

    @Column(name = "sl_cvrsn", precision = 5, scale = 0, nullable = true)
    @Schema(description = "판매담보순번", nullable = true)
    private BigDecimal slCvrsn; // --판매담보순번

    @Column(name = "cmp_lmcd", length = 10, nullable = true)
    @Schema(description = "보상한도코드", nullable = true)
    private String cmpLmcd; // --보상한도코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; // --입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; // --입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; // --수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; // --수정일시

    @Builder
    public InsPlCvr(String plno, BigDecimal cgafChSeqno, String cvrcd, BigDecimal cvrSeqno, String ikdGrpcd,
            String cvrBjFlgcd, BigDecimal relpcOjSeqno, BigDecimal relpcSeqno, String cvrBaTrtFlgcd,
            String cvrSuboLvlFlgcd, String cvrStcd, LocalDate cvrStChdt, BigDecimal isamt, BigDecimal ndsIsamt,
            BigDecimal baPrm, BigDecimal ndsBaPrm, BigDecimal apPrm, BigDecimal ndsApPrm, BigDecimal scdInsTrmApprm,
            LocalDate insSt, String insStHms, LocalDate insClstr, String insClstrHms, String selfChamtMncd,
            BigDecimal selfChamt, String agmtAqrRtFlgcd, String nrdpsLvlcd, String rkTpcd, String rnwTpcd,
            BigDecimal chbfApPrm, BigDecimal chafApPrm, BigDecimal dscrt, BigDecimal dcbfPrm, BigDecimal nrdpsDcamt,
            BigDecimal sccKdsSpcDcamt, BigDecimal fstiPrmDcamt, String pymCyccd, String pymTrmcd, String cvrStStYymm,
            String pymXmpYn, String pymXmpStrYymm, LocalDate rfamtClcInsSt, LocalDate rfamtClcInsClstr,
            String autoRnwAvYn, LocalDate autoRnwCvrCnldt, String cvrFnlPymYymm, BigDecimal cvrFnlPymSeq,
            String ndFlgcd, BigDecimal nd, String ndcd, BigDecimal rlNdTrm, String pymTrmFlgcd, BigDecimal pymTrm,
            BigDecimal rlPymTrm, BigDecimal nrdpsApAge, BigDecimal bfrnwCvrsn, String bfrnwCvrcd,
            BigDecimal trtPregRndWkct, String dbCvrFlgcd, String cvrIsTpcd, String afgstPrmCcbjYn, String sepCrCnYn,
            String flpyCvrfsSbYn, LocalDate rnwNddt, BigDecimal rnwCvrNclmDcamt, BigDecimal rwcvrNclmAdDcamt,
            BigDecimal sustdXcRkNdx, BigDecimal stdbdPrm, BigDecimal sustdPrm, BigDecimal dcamt,
            BigDecimal sustdRwcvrNclmDcamt, BigDecimal stdbdRwcvrNclmDcamt, String clmrlNdsApcd,
            BigDecimal rmimcStbzDcamt, String sbCscd, String isamtCd, BigDecimal xpDmamt, BigDecimal mdDmamt,
            BigDecimal trtApCvrPrmsm, LocalDate sysMpvDt, String trtApCvrcd, String mstrCarPlyno, String clmp1IsAmtcd,
            String emegMvoCeStfno, LocalDate emegMvoCnrdt, String cvrSpquFlgcd, LocalDate ndsPrdt,
            String prortShtmFlgcd, BigDecimal prortShtrt, BigDecimal xpSumAmt, BigDecimal mdSumAmt,
            String deSelObsFlgcd, String itmCvrRkRnk, String imuTrmcd, BigDecimal agrRt, String abscTrmFlgcd,
            String agrRestTrmcd, String isamtSpc, BigDecimal esrct, String bdDlbrRpblBtpcd, BigDecimal woncrCvSelfChamt,
            BigDecimal dcRt, BigDecimal actOrActct, String frcRtApYn, BigDecimal adSelfChamt, String prgcsPrtYn,
            String ltrmNdsDlFlgcd, BigDecimal mpyCvNprm, String rfdDscno, BigDecimal remnAmt, String rtKeyAssmbCd,
            String bzcsRtKeyAssmbCd, LocalDate prmApStrdt, LocalDate prmApNddt, String slCvrcd, BigDecimal slCvrsn,
            String cmpLmcd, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.cvrcd = cvrcd;
        this.cvrSeqno = cvrSeqno;
        this.ikdGrpcd = ikdGrpcd;
        this.cvrBjFlgcd = cvrBjFlgcd;
        this.relpcOjSeqno = relpcOjSeqno;
        this.relpcSeqno = relpcSeqno;
        this.cvrBaTrtFlgcd = cvrBaTrtFlgcd;
        this.cvrSuboLvlFlgcd = cvrSuboLvlFlgcd;
        this.cvrStcd = cvrStcd;
        this.cvrStChdt = cvrStChdt;
        this.isamt = isamt;
        this.ndsIsamt = ndsIsamt;
        this.baPrm = baPrm;
        this.ndsBaPrm = ndsBaPrm;
        this.apPrm = apPrm;
        this.ndsApPrm = ndsApPrm;
        this.scdInsTrmApprm = scdInsTrmApprm;
        this.insSt = insSt;
        this.insStHms = insStHms;
        this.insClstr = insClstr;
        this.insClstrHms = insClstrHms;
        this.selfChamtMncd = selfChamtMncd;
        this.selfChamt = selfChamt;
        this.agmtAqrRtFlgcd = agmtAqrRtFlgcd;
        this.nrdpsLvlcd = nrdpsLvlcd;
        this.rkTpcd = rkTpcd;
        this.rnwTpcd = rnwTpcd;
        this.chbfApPrm = chbfApPrm;
        this.chafApPrm = chafApPrm;
        this.dscrt = dscrt;
        this.dcbfPrm = dcbfPrm;
        this.nrdpsDcamt = nrdpsDcamt;
        this.sccKdsSpcDcamt = sccKdsSpcDcamt;
        this.fstiPrmDcamt = fstiPrmDcamt;
        this.pymCyccd = pymCyccd;
        this.pymTrmcd = pymTrmcd;
        this.cvrStStYymm = cvrStStYymm;
        this.pymXmpYn = pymXmpYn;
        this.pymXmpStrYymm = pymXmpStrYymm;
        this.rfamtClcInsSt = rfamtClcInsSt;
        this.rfamtClcInsClstr = rfamtClcInsClstr;
        this.autoRnwAvYn = autoRnwAvYn;
        this.autoRnwCvrCnldt = autoRnwCvrCnldt;
        this.cvrFnlPymYymm = cvrFnlPymYymm;
        this.cvrFnlPymSeq = cvrFnlPymSeq;
        this.ndFlgcd = ndFlgcd;
        this.nd = nd;
        this.ndcd = ndcd;
        this.rlNdTrm = rlNdTrm;
        this.pymTrmFlgcd = pymTrmFlgcd;
        this.pymTrm = pymTrm;
        this.rlPymTrm = rlPymTrm;
        this.nrdpsApAge = nrdpsApAge;
        this.bfrnwCvrsn = bfrnwCvrsn;
        this.bfrnwCvrcd = bfrnwCvrcd;
        this.trtPregRndWkct = trtPregRndWkct;
        this.dbCvrFlgcd = dbCvrFlgcd;
        this.cvrIsTpcd = cvrIsTpcd;
        this.afgstPrmCcbjYn = afgstPrmCcbjYn;
        this.sepCrCnYn = sepCrCnYn;
        this.flpyCvrfsSbYn = flpyCvrfsSbYn;
        this.rnwNddt = rnwNddt;
        this.rnwCvrNclmDcamt = rnwCvrNclmDcamt;
        this.rwcvrNclmAdDcamt = rwcvrNclmAdDcamt;
        this.sustdXcRkNdx = sustdXcRkNdx;
        this.stdbdPrm = stdbdPrm;
        this.sustdPrm = sustdPrm;
        this.dcamt = dcamt;
        this.sustdRwcvrNclmDcamt = sustdRwcvrNclmDcamt;
        this.stdbdRwcvrNclmDcamt = stdbdRwcvrNclmDcamt;
        this.clmrlNdsApcd = clmrlNdsApcd;
        this.rmimcStbzDcamt = rmimcStbzDcamt;
        this.sbCscd = sbCscd;
        this.isamtCd = isamtCd;
        this.xpDmamt = xpDmamt;
        this.mdDmamt = mdDmamt;
        this.trtApCvrPrmsm = trtApCvrPrmsm;
        this.sysMpvDt = sysMpvDt;
        this.trtApCvrcd = trtApCvrcd;
        this.mstrCarPlyno = mstrCarPlyno;
        this.clmp1IsAmtcd = clmp1IsAmtcd;
        this.emegMvoCeStfno = emegMvoCeStfno;
        this.emegMvoCnrdt = emegMvoCnrdt;
        this.cvrSpquFlgcd = cvrSpquFlgcd;
        this.ndsPrdt = ndsPrdt;
        this.prortShtmFlgcd = prortShtmFlgcd;
        this.prortShtrt = prortShtrt;
        this.xpSumAmt = xpSumAmt;
        this.mdSumAmt = mdSumAmt;
        this.deSelObsFlgcd = deSelObsFlgcd;
        this.itmCvrRkRnk = itmCvrRkRnk;
        this.imuTrmcd = imuTrmcd;
        this.agrRt = agrRt;
        this.abscTrmFlgcd = abscTrmFlgcd;
        this.agrRestTrmcd = agrRestTrmcd;
        this.isamtSpc = isamtSpc;
        this.esrct = esrct;
        this.bdDlbrRpblBtpcd = bdDlbrRpblBtpcd;
        this.woncrCvSelfChamt = woncrCvSelfChamt;
        this.dcRt = dcRt;
        this.actOrActct = actOrActct;
        this.frcRtApYn = frcRtApYn;
        this.adSelfChamt = adSelfChamt;
        this.prgcsPrtYn = prgcsPrtYn;
        this.ltrmNdsDlFlgcd = ltrmNdsDlFlgcd;
        this.mpyCvNprm = mpyCvNprm;
        this.rfdDscno = rfdDscno;
        this.remnAmt = remnAmt;
        this.rtKeyAssmbCd = rtKeyAssmbCd;
        this.bzcsRtKeyAssmbCd = bzcsRtKeyAssmbCd;
        this.prmApStrdt = prmApStrdt;
        this.prmApNddt = prmApNddt;
        this.slCvrcd = slCvrcd;
        this.slCvrsn = slCvrsn;
        this.cmpLmcd = cmpLmcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
