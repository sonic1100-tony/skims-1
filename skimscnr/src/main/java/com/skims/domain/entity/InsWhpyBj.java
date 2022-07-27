/**
 * InsWhpyBj Entity 클래스
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

import com.skims.domain.listener.InsWhpyBjListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsWhpyBjListener.class)
@Table(name = "ins_whpy_bj") //--제지급대상
@Schema(description = "제지급대상")
public class InsWhpyBj implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "py_bjno", length = 10, nullable = false)
    @Schema(description = "지급대상번호", nullable = false)
    private String pyBjno; //--지급대상번호

    @Column(name = "ppdt", nullable = true)
    @Schema(description = "계상일자", nullable = true)
    private LocalDate ppdt; //--계상일자

    @Column(name = "py_cr_tpcd", length = 10, nullable = true)
    @Schema(description = "지급발생유형코드", nullable = true)
    private String pyCrTpcd; //--지급발생유형코드

    @Column(name = "cc_stdt", nullable = true)
    @Schema(description = "산출기준일자", nullable = true)
    private LocalDate ccStdt; //--산출기준일자

    @Column(name = "rtamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "환급금액", nullable = false)
    private BigDecimal rtamt; //--환급금액

    @Column(name = "py_av_lmamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "지급가능한도금액", nullable = false)
    private BigDecimal pyAvLmamt; //--지급가능한도금액

    @Column(name = "pmamt_smamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기지급중도금액감액환급금액합계액", nullable = false)
    private BigDecimal pmamtSmamt; //--기지급중도금액감액환급금액합계액

    @Column(name = "py_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "지급이자", nullable = false)
    private BigDecimal pyNt; //--지급이자

    @Column(name = "ccl_wdr_reqdt", nullable = true)
    @Schema(description = "취소철회요청일자", nullable = true)
    private LocalDate cclWdrReqdt; //--취소철회요청일자

    @Column(name = "py_rs_cascd", length = 10, nullable = true)
    @Schema(description = "지급사유원인코드", nullable = true)
    private String pyRsCascd; //--지급사유원인코드

    @Column(name = "py_rs_lclcd", length = 10, nullable = true)
    @Schema(description = "지급사유대분류코드", nullable = true)
    private String pyRsLclcd; //--지급사유대분류코드

    @Column(name = "py_rs_mdccd", length = 10, nullable = true)
    @Schema(description = "지급사유중분류코드", nullable = true)
    private String pyRsMdccd; //--지급사유중분류코드

    @Column(name = "py_rs_smccd", length = 10, nullable = true)
    @Schema(description = "지급사유소분류코드", nullable = true)
    private String pyRsSmccd; //--지급사유소분류코드

    @Column(name = "py_rs", length = 500, nullable = true)
    @Schema(description = "지급사유", nullable = true)
    private String pyRs; //--지급사유

    @Column(name = "ex_rcv_flgcd", length = 10, nullable = true)
    @Schema(description = "환입환수구분코드", nullable = true)
    private String exRcvFlgcd; //--환입환수구분코드

    @Column(name = "ac_dmcy_dl_yn", length = 1, nullable = true)
    @Schema(description = "경리휴면처리여부", nullable = true)
    private String acDmcyDlYn; //--경리휴면처리여부

    @Column(name = "ac_dmcy_dldt", nullable = true)
    @Schema(description = "경리휴면처리일자", nullable = true)
    private LocalDate acDmcyDldt; //--경리휴면처리일자

    @Column(name = "whpy_diss_bj_yn", length = 1, nullable = true)
    @Schema(description = "제지급분해대상여부", nullable = true)
    private String whpyDissBjYn; //--제지급분해대상여부

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    private String ndsno; //--배서번호

    @Column(name = "whpy_diss_yn", length = 1, nullable = true)
    @Schema(description = "제지급분해여부", nullable = true)
    private String whpyDissYn; //--제지급분해여부

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "incm_prm_cr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "수입보험료발생순번", nullable = true)
    private BigDecimal incmPrmCrSeqno; //--수입보험료발생순번

    @Column(name = "ex_orpy_bjno", length = 10, nullable = true)
    @Schema(description = "환입원지급대상번호", nullable = true)
    private String exOrpyBjno; //--환입원지급대상번호

    @Column(name = "pyno", length = 10, nullable = true)
    @Schema(description = "지급번호", nullable = true)
    private String pyno; //--지급번호

    @Column(name = "whpy_rqdt", nullable = true)
    @Schema(description = "제지급신청일자", nullable = true)
    private LocalDate whpyRqdt; //--제지급신청일자

    @Column(name = "ssno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "발행번호", nullable = true)
    private BigDecimal ssno; //--발행번호

    @Column(name = "ss_dtno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "발행세부번호", nullable = true)
    private BigDecimal ssDtno; //--발행세부번호

    @Column(name = "lnno", length = 15, nullable = true)
    @Schema(description = "대출번호", nullable = true)
    private String lnno; //--대출번호

    @Column(name = "samt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "인지대", nullable = false)
    private BigDecimal samt; //--인지대

    @Column(name = "clln_auto_ap_flgcd", length = 10, nullable = true)
    @Schema(description = "약대자동승인구분코드", nullable = true)
    private String cllnAutoApFlgcd; //--약대자동승인구분코드

    @Column(name = "clln_udwr_stfno", length = 50, nullable = true)
    @Schema(description = "약대심사자직원번호", nullable = true)
    private String cllnUdwrStfno; //--약대심사자직원번호

    @Column(name = "clln_ud_rst_stcd", length = 10, nullable = true)
    @Schema(description = "약대심사결과상태코드", nullable = true)
    private String cllnUdRstStcd; //--약대심사결과상태코드

    @Column(name = "clln_udwdt", nullable = true)
    @Schema(description = "약대심사일자", nullable = true)
    private LocalDate cllnUdwdt; //--약대심사일자

    @Column(name = "cr_stdt", nullable = true)
    @Schema(description = "발생기준일자", nullable = true)
    private LocalDate crStdt; //--발생기준일자

    @Column(name = "rtamt_tpcd", length = 10, nullable = true)
    @Schema(description = "환급금유형코드", nullable = true)
    private String rtamtTpcd; //--환급금유형코드

    @Column(name = "rvi_cr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "부활발생순번", nullable = true)
    private BigDecimal rviCrSeqno; //--부활발생순번

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    private String dhStfno; //--취급직원번호

    @Column(name = "orgcd", length = 7, nullable = true)
    @Schema(description = "기관코드", nullable = true)
    private String orgcd; //--기관코드

    @Column(name = "br_orgcd", length = 7, nullable = true)
    @Schema(description = "지점기관코드", nullable = true)
    private String brOrgcd; //--지점기관코드

    @Column(name = "pybf_cr_stcd", length = 10, nullable = true)
    @Schema(description = "지급전계약상태코드", nullable = true)
    private String pybfCrStcd; //--지급전계약상태코드

    @Column(name = "pybf_cr_dt_stcd", length = 10, nullable = true)
    @Schema(description = "지급전계약세부상태코드", nullable = true)
    private String pybfCrDtStcd; //--지급전계약세부상태코드

    @Column(name = "cu_cvr_endt", nullable = true)
    @Schema(description = "적립담보만기일자", nullable = true)
    private LocalDate cuCvrEndt; //--적립담보만기일자

    @Column(name = "cfgcd", length = 10, nullable = true)
    @Schema(description = "해약구분코드", nullable = true)
    private String cfgcd; //--해약구분코드

    @Column(name = "rnd_yyct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "경과년수", nullable = true)
    private BigDecimal rndYyct; //--경과년수

    @Column(name = "rnd_mc", precision = 5, scale = 0, nullable = true)
    @Schema(description = "경과월수", nullable = true)
    private BigDecimal rndMc; //--경과월수

    @Column(name = "nelp_yyct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "미경과년수", nullable = true)
    private BigDecimal nelpYyct; //--미경과년수

    @Column(name = "nelp_mc", precision = 5, scale = 0, nullable = true)
    @Schema(description = "미경과월수", nullable = true)
    private BigDecimal nelpMc; //--미경과월수

    @Column(name = "ap_dhtm_cd", length = 10, nullable = true)
    @Schema(description = "적용분법코드", nullable = true)
    private String apDhtmCd; //--적용분법코드

    @Column(name = "ba_gn_rnd_rfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기본보장경과준비금액", nullable = false)
    private BigDecimal baGnRndRfamt; //--기본보장경과준비금액

    @Column(name = "cu_pcamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "적립원금", nullable = false)
    private BigDecimal cuPcamt; //--적립원금

    @Column(name = "cu_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "적립이자", nullable = false)
    private BigDecimal cuNt; //--적립이자

    @Column(name = "cu_part_nwcrt_dpcs", precision = 15, scale = 0, nullable = false)
    @Schema(description = "적립부분신계약비상각비", nullable = false)
    private BigDecimal cuPartNwcrtDpcs; //--적립부분신계약비상각비

    @Column(name = "ba_rnd_rfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기본경과준비금액", nullable = false)
    private BigDecimal baRndRfamt; //--기본경과준비금액

    @Column(name = "trt_gn_rnd_rfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "특약보장경과준비금액", nullable = false)
    private BigDecimal trtGnRndRfamt; //--특약보장경과준비금액

    @Column(name = "gn_nelp_rfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "보장미경과준비금액", nullable = false)
    private BigDecimal gnNelpRfamt; //--보장미경과준비금액

    @Column(name = "ppy_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "선납보험료", nullable = false)
    private BigDecimal ppyPrm; //--선납보험료

    @Column(name = "ppy_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "선납이자", nullable = false)
    private BigDecimal ppyNt; //--선납이자

    @Column(name = "cv_cn_yn", length = 1, nullable = true)
    @Schema(description = "전환해약여부", nullable = true)
    private String cvCnYn; //--전환해약여부

    @Column(name = "cr_befo_fnorg_bzmno", length = 10, nullable = true)
    @Schema(description = "계약이전금융기관사업자번호", nullable = true)
    private String crBefoFnorgBzmno; //--계약이전금융기관사업자번호

    @Column(name = "cr_befo_fn_orgnm", length = 100, nullable = true)
    @Schema(description = "계약이전금융기관명", nullable = true)
    private String crBefoFnOrgnm; //--계약이전금융기관명

    @Column(name = "cr_dv_flgcd", length = 10, nullable = true)
    @Schema(description = "계약배당구분코드", nullable = true)
    private String crDvFlgcd; //--계약배당구분코드

    @Column(name = "ad_an_ypamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "가산연금연액", nullable = false)
    private BigDecimal adAnYpamt; //--가산연금연액

    @Column(name = "nocr_pyamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "미발생지급금액", nullable = false)
    private BigDecimal nocrPyamt; //--미발생지급금액

    @Column(name = "anrrf_stdt", nullable = true)
    @Schema(description = "연금개시책임준비금액기준일자", nullable = true)
    private LocalDate anrrfStdt; //--연금개시책임준비금액기준일자

    @Column(name = "anrrf_pcamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "연금개시책임준비금액원금", nullable = false)
    private BigDecimal anrrfPcamt; //--연금개시책임준비금액원금

    @Column(name = "anrrf_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "연금개시책임준비금액이자", nullable = false)
    private BigDecimal anrrfNt; //--연금개시책임준비금액이자

    @Column(name = "anrrf_dchg_rato_cfc", precision = 12, scale = 6, nullable = false)
    @Schema(description = "연금개시책임준비금액부리이율계수", nullable = false)
    private BigDecimal anrrfDchgRatoCfc; //--연금개시책임준비금액부리이율계수

    @Column(name = "an_pyaf_rpbl_rfamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "연금지급후책임준비금액", nullable = false)
    private BigDecimal anPyafRpblRfamt; //--연금지급후책임준비금액

    @Column(name = "an_yyodr", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연금년차", nullable = true)
    private BigDecimal anYyodr; //--연금년차

    @Column(name = "an_mgnf_sm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "연금배율합계", nullable = false)
    private BigDecimal anMgnfSm; //--연금배율합계

    @Column(name = "ayamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "연금연액", nullable = false)
    private BigDecimal ayamt; //--연금연액

    @Column(name = "an_sep_pyamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "연금분할지급액", nullable = false)
    private BigDecimal anSepPyamt; //--연금분할지급액

    @Column(name = "an_flgcd", length = 10, nullable = true)
    @Schema(description = "연금구분코드", nullable = true)
    private String anFlgcd; //--연금구분코드

    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    private BigDecimal relpcSeqno; //--관계자순번

    @Column(name = "ystr_rfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "연시준비금액", nullable = false)
    private BigDecimal ystrRfamt; //--연시준비금액

    @Column(name = "clln_ud_bj_flgcd", length = 10, nullable = true)
    @Schema(description = "약대심사대상구분코드", nullable = true)
    private String cllnUdBjFlgcd; //--약대심사대상구분코드

    @Column(name = "cu_cvr_ins_st", nullable = true)
    @Schema(description = "적립담보보험시기", nullable = true)
    private LocalDate cuCvrInsSt; //--적립담보보험시기

    @Column(name = "gn_nelp_mnt_rfamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "보장미경과개월준비금액", nullable = true)
    private BigDecimal gnNelpMntRfamt; //--보장미경과개월준비금액

    @Column(name = "gn_nelp_mitrm_rfamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "보장미경과월기간내준비금액", nullable = true)
    private BigDecimal gnNelpMitrmRfamt; //--보장미경과월기간내준비금액

    @Column(name = "rk_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "위험보험료", nullable = true)
    private BigDecimal rkPrm; //--위험보험료

    @Column(name = "embr_nrdps_sexcd", length = 10, nullable = true)
    @Schema(description = "태아피보험자성별코드", nullable = true)
    private String embrNrdpsSexcd; //--태아피보험자성별코드

    @Column(name = "mw_py_af_rrfnd", precision = 15, scale = 0, nullable = true)
    @Schema(description = "중도지급후책임준비금액", nullable = true)
    private BigDecimal mwPyAfRrfnd; //--중도지급후책임준비금액

    @Column(name = "mw_opn_rrfnd_pcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "중도개시책임준비금원금", nullable = true)
    private BigDecimal mwOpnRrfndPcamt; //--중도개시책임준비금원금

    @Column(name = "rcpdt", nullable = true)
    @Schema(description = "접수일자", nullable = true)
    private LocalDate rcpdt; //--접수일자

    @Column(name = "fire_lbtrs_cn_rscd", length = 10, nullable = true)
    @Schema(description = "화재배상책임해지사유코드", nullable = true)
    private String fireLbtrsCnRscd; //--화재배상책임해지사유코드

    @Column(name = "ex_rcv_rscd", length = 10, nullable = true)
    @Schema(description = "환입환수사유코드", nullable = true)
    private String exRcvRscd; //--환입환수사유코드

    @Column(name = "an_rc_rckdt", nullable = true)
    @Schema(description = "연금수령기산일자", nullable = true)
    private LocalDate anRcRckdt; //--연금수령기산일자

    @Column(name = "an_rc_yyodr", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연금수령년차", nullable = true)
    private BigDecimal anRcYyodr; //--연금수령년차

    @Column(name = "an_rc_lmamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "연금수령한도금액", nullable = true)
    private BigDecimal anRcLmamt; //--연금수령한도금액

    @Column(name = "an_act_vlamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "연금계좌평가금액", nullable = true)
    private BigDecimal anActVlamt; //--연금계좌평가금액

    @Column(name = "remn_tx_xcamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "잔여과세제외금액", nullable = true)
    private BigDecimal remnTxXcamt; //--잔여과세제외금액

    @Column(name = "dedt", nullable = true)
    @Schema(description = "사망일자", nullable = true)
    private LocalDate dedt; //--사망일자

    @Column(name = "ply_rcdt", nullable = true)
    @Schema(description = "증권수령일자", nullable = true)
    private LocalDate plyRcdt; //--증권수령일자

    @Column(name = "ntdtd_icamt_ayamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "이자율차증액연금연액", nullable = true)
    private BigDecimal ntdtdIcamtAyamt; //--이자율차증액연금연액

    @Column(name = "rkrtd_icamt_ayamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "위험율차증액연금연액", nullable = true)
    private BigDecimal rkrtdIcamtAyamt; //--위험율차증액연금연액

    @Column(name = "bzcsd_icamt_ayamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "사업비차증액연금연액", nullable = true)
    private BigDecimal bzcsdIcamtAyamt; //--사업비차증액연금연액

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
    public InsWhpyBj(String pyBjno, LocalDate ppdt, String pyCrTpcd, LocalDate ccStdt, BigDecimal rtamt, BigDecimal pyAvLmamt, BigDecimal pmamtSmamt, BigDecimal pyNt, LocalDate cclWdrReqdt, String pyRsCascd, String pyRsLclcd, String pyRsMdccd, String pyRsSmccd, String pyRs, String exRcvFlgcd, String acDmcyDlYn, LocalDate acDmcyDldt, String whpyDissBjYn, String ndsno, String whpyDissYn, String plyno, BigDecimal incmPrmCrSeqno, String exOrpyBjno, String pyno, LocalDate whpyRqdt, BigDecimal ssno, BigDecimal ssDtno, String lnno, BigDecimal samt, String cllnAutoApFlgcd, String cllnUdwrStfno, String cllnUdRstStcd, LocalDate cllnUdwdt, LocalDate crStdt, String rtamtTpcd, BigDecimal rviCrSeqno, String dhStfno, String orgcd, String brOrgcd, String pybfCrStcd, String pybfCrDtStcd, LocalDate cuCvrEndt, String cfgcd, BigDecimal rndYyct, BigDecimal rndMc, BigDecimal nelpYyct, BigDecimal nelpMc, String apDhtmCd, BigDecimal baGnRndRfamt, BigDecimal cuPcamt, BigDecimal cuNt, BigDecimal cuPartNwcrtDpcs, BigDecimal baRndRfamt, BigDecimal trtGnRndRfamt, BigDecimal gnNelpRfamt, BigDecimal ppyPrm, BigDecimal ppyNt, String cvCnYn, String crBefoFnorgBzmno, String crBefoFnOrgnm, String crDvFlgcd, BigDecimal adAnYpamt, BigDecimal nocrPyamt, LocalDate anrrfStdt, BigDecimal anrrfPcamt, BigDecimal anrrfNt, BigDecimal anrrfDchgRatoCfc, BigDecimal anPyafRpblRfamt, BigDecimal anYyodr, BigDecimal anMgnfSm, BigDecimal ayamt, BigDecimal anSepPyamt, String anFlgcd, BigDecimal relpcSeqno, BigDecimal ystrRfamt, String cllnUdBjFlgcd, LocalDate cuCvrInsSt, BigDecimal gnNelpMntRfamt, BigDecimal gnNelpMitrmRfamt, BigDecimal rkPrm, String embrNrdpsSexcd, BigDecimal mwPyAfRrfnd, BigDecimal mwOpnRrfndPcamt, LocalDate rcpdt, String fireLbtrsCnRscd, String exRcvRscd, LocalDate anRcRckdt, BigDecimal anRcYyodr, BigDecimal anRcLmamt, BigDecimal anActVlamt, BigDecimal remnTxXcamt, LocalDate dedt, LocalDate plyRcdt, BigDecimal ntdtdIcamtAyamt, BigDecimal rkrtdIcamtAyamt, BigDecimal bzcsdIcamtAyamt, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.pyBjno = pyBjno;
        this.ppdt = ppdt;
        this.pyCrTpcd = pyCrTpcd;
        this.ccStdt = ccStdt;
        this.rtamt = rtamt;
        this.pyAvLmamt = pyAvLmamt;
        this.pmamtSmamt = pmamtSmamt;
        this.pyNt = pyNt;
        this.cclWdrReqdt = cclWdrReqdt;
        this.pyRsCascd = pyRsCascd;
        this.pyRsLclcd = pyRsLclcd;
        this.pyRsMdccd = pyRsMdccd;
        this.pyRsSmccd = pyRsSmccd;
        this.pyRs = pyRs;
        this.exRcvFlgcd = exRcvFlgcd;
        this.acDmcyDlYn = acDmcyDlYn;
        this.acDmcyDldt = acDmcyDldt;
        this.whpyDissBjYn = whpyDissBjYn;
        this.ndsno = ndsno;
        this.whpyDissYn = whpyDissYn;
        this.plyno = plyno;
        this.incmPrmCrSeqno = incmPrmCrSeqno;
        this.exOrpyBjno = exOrpyBjno;
        this.pyno = pyno;
        this.whpyRqdt = whpyRqdt;
        this.ssno = ssno;
        this.ssDtno = ssDtno;
        this.lnno = lnno;
        this.samt = samt;
        this.cllnAutoApFlgcd = cllnAutoApFlgcd;
        this.cllnUdwrStfno = cllnUdwrStfno;
        this.cllnUdRstStcd = cllnUdRstStcd;
        this.cllnUdwdt = cllnUdwdt;
        this.crStdt = crStdt;
        this.rtamtTpcd = rtamtTpcd;
        this.rviCrSeqno = rviCrSeqno;
        this.dhStfno = dhStfno;
        this.orgcd = orgcd;
        this.brOrgcd = brOrgcd;
        this.pybfCrStcd = pybfCrStcd;
        this.pybfCrDtStcd = pybfCrDtStcd;
        this.cuCvrEndt = cuCvrEndt;
        this.cfgcd = cfgcd;
        this.rndYyct = rndYyct;
        this.rndMc = rndMc;
        this.nelpYyct = nelpYyct;
        this.nelpMc = nelpMc;
        this.apDhtmCd = apDhtmCd;
        this.baGnRndRfamt = baGnRndRfamt;
        this.cuPcamt = cuPcamt;
        this.cuNt = cuNt;
        this.cuPartNwcrtDpcs = cuPartNwcrtDpcs;
        this.baRndRfamt = baRndRfamt;
        this.trtGnRndRfamt = trtGnRndRfamt;
        this.gnNelpRfamt = gnNelpRfamt;
        this.ppyPrm = ppyPrm;
        this.ppyNt = ppyNt;
        this.cvCnYn = cvCnYn;
        this.crBefoFnorgBzmno = crBefoFnorgBzmno;
        this.crBefoFnOrgnm = crBefoFnOrgnm;
        this.crDvFlgcd = crDvFlgcd;
        this.adAnYpamt = adAnYpamt;
        this.nocrPyamt = nocrPyamt;
        this.anrrfStdt = anrrfStdt;
        this.anrrfPcamt = anrrfPcamt;
        this.anrrfNt = anrrfNt;
        this.anrrfDchgRatoCfc = anrrfDchgRatoCfc;
        this.anPyafRpblRfamt = anPyafRpblRfamt;
        this.anYyodr = anYyodr;
        this.anMgnfSm = anMgnfSm;
        this.ayamt = ayamt;
        this.anSepPyamt = anSepPyamt;
        this.anFlgcd = anFlgcd;
        this.relpcSeqno = relpcSeqno;
        this.ystrRfamt = ystrRfamt;
        this.cllnUdBjFlgcd = cllnUdBjFlgcd;
        this.cuCvrInsSt = cuCvrInsSt;
        this.gnNelpMntRfamt = gnNelpMntRfamt;
        this.gnNelpMitrmRfamt = gnNelpMitrmRfamt;
        this.rkPrm = rkPrm;
        this.embrNrdpsSexcd = embrNrdpsSexcd;
        this.mwPyAfRrfnd = mwPyAfRrfnd;
        this.mwOpnRrfndPcamt = mwOpnRrfndPcamt;
        this.rcpdt = rcpdt;
        this.fireLbtrsCnRscd = fireLbtrsCnRscd;
        this.exRcvRscd = exRcvRscd;
        this.anRcRckdt = anRcRckdt;
        this.anRcYyodr = anRcYyodr;
        this.anRcLmamt = anRcLmamt;
        this.anActVlamt = anActVlamt;
        this.remnTxXcamt = remnTxXcamt;
        this.dedt = dedt;
        this.plyRcdt = plyRcdt;
        this.ntdtdIcamtAyamt = ntdtdIcamtAyamt;
        this.rkrtdIcamtAyamt = rkrtdIcamtAyamt;
        this.bzcsdIcamtAyamt = bzcsdIcamtAyamt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
