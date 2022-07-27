/**
 * InsIncmPrm Entity 클래스
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

import com.skims.domain.listener.InsIncmPrmListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsIncmPrmListener.class)
@Table(name = "ins_incm_prm") //--수입보험료
@Schema(description = "수입보험료")
public class InsIncmPrm implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Column(name = "incm_prm_cr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "수입보험료발생순번", nullable = false)
    private BigDecimal incmPrmCrSeqno; //--수입보험료발생순번

    @Column(name = "pym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "납입회차", nullable = false)
    private BigDecimal pymSeq; //--납입회차

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    private String ndsno; //--배서번호

    @Column(name = "fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "최종납입년월", nullable = true)
    private String fnlPymYymm; //--최종납입년월

    @Column(name = "pyp_t_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "분납총회차", nullable = true)
    private BigDecimal pypTSeq; //--분납총회차

    @Column(name = "rp_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "영수보험료", nullable = false)
    private BigDecimal rpPrm; //--영수보험료

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    private BigDecimal apPrm; //--적용보험료

    @Column(name = "dp_cascd", length = 10, nullable = false)
    @Schema(description = "입금원인코드", nullable = false)
    private String dpCascd; //--입금원인코드

    @Column(name = "dp_dt_cascd", length = 10, nullable = false)
    @Schema(description = "입금세부원인코드", nullable = false)
    private String dpDtCascd; //--입금세부원인코드

    @Column(name = "rv_sbno", length = 20, nullable = true)
    @Schema(description = "수납대기번호", nullable = true)
    private String rvSbno; //--수납대기번호

    @Column(name = "ccldt", nullable = true)
    @Schema(description = "취소일자", nullable = true)
    private LocalDate ccldt; //--취소일자

    @Column(name = "ccl_flgcd", length = 10, nullable = true)
    @Schema(description = "취소구분코드", nullable = true)
    private String cclFlgcd; //--취소구분코드

    @Column(name = "ppdt", nullable = true)
    @Schema(description = "계상일자", nullable = true)
    private LocalDate ppdt; //--계상일자

    @Column(name = "pym_cyccd", length = 10, nullable = true)
    @Schema(description = "납입주기코드", nullable = true)
    private String pymCyccd; //--납입주기코드

    @Column(name = "dh_stfno", length = 50, nullable = false)
    @Schema(description = "취급직원번호", nullable = false)
    private String dhStfno; //--취급직원번호

    @Column(name = "usrno", length = 10, nullable = true)
    @Schema(description = "사용인번호", nullable = true)
    private String usrno; //--사용인번호

    @Column(name = "rp_admno", length = 20, nullable = true)
    @Schema(description = "영수관리번호", nullable = true)
    private String rpAdmno; //--영수관리번호

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    private String mncd; //--화폐코드

    @Column(name = "fc_ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "외화적용보험료", nullable = false)
    private BigDecimal fcApPrm; //--외화적용보험료

    @Column(name = "usd_cv_ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "미화환산적용보험료", nullable = false)
    private BigDecimal usdCvApPrm; //--미화환산적용보험료

    @Column(name = "xcrt_flgcd", length = 10, nullable = true)
    @Schema(description = "환율구분코드", nullable = true)
    private String xcrtFlgcd; //--환율구분코드

    @Column(name = "fc_ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "외화적용환율", nullable = false)
    private BigDecimal fcApXcrt; //--외화적용환율

    @Column(name = "usd_ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "미화적용환율", nullable = false)
    private BigDecimal usdApXcrt; //--미화적용환율

    @Column(name = "fc_condt_t_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "외화공동인수총보험료", nullable = false)
    private BigDecimal fcCondtTPrm; //--외화공동인수총보험료

    @Column(name = "condt_t_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "공동인수총보험료", nullable = false)
    private BigDecimal condtTPrm; //--공동인수총보험료

    @Column(name = "udrtk_tycd", length = 10, nullable = true)
    @Schema(description = "인수형태코드", nullable = true)
    private String udrtkTycd; //--인수형태코드

    @Column(name = "otcm_mg_cmpcd", length = 10, nullable = true)
    @Schema(description = "타사간사회사코드", nullable = true)
    private String otcmMgCmpcd; //--타사간사회사코드

    @Column(name = "cnn_incm_prmcr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "관련수입보험료발생순번", nullable = true)
    private BigDecimal cnnIncmPrmcrSeqno; //--관련수입보험료발생순번

    @Column(name = "hscs_hs_flgcd", length = 10, nullable = true)
    @Schema(description = "가계비가계구분코드", nullable = true)
    private String hscsHsFlgcd; //--가계비가계구분코드

    @Column(name = "pyp_ad_cs", precision = 17, scale = 2, nullable = false)
    @Schema(description = "분납추가비용", nullable = false)
    private BigDecimal pypAdCs; //--분납추가비용

    @Column(name = "ba_cvr_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기본담보보험료", nullable = false)
    private BigDecimal baCvrPrm; //--기본담보보험료

    @Column(name = "trt_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "특약보험료", nullable = false)
    private BigDecimal trtPrm; //--특약보험료

    @Column(name = "cu_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "적립보험료", nullable = false)
    private BigDecimal cuPrm; //--적립보험료

    @Column(name = "flpy_cvr_trt_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "일시납담보특약보험료", nullable = false)
    private BigDecimal flpyCvrTrtPrm; //--일시납담보특약보험료

    @Column(name = "dcbf_cu_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "할인전적립보험료", nullable = false)
    private BigDecimal dcbfCuPrm; //--할인전적립보험료

    @Column(name = "cu_nprm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "적립순보험료", nullable = false)
    private BigDecimal cuNprm; //--적립순보험료

    @Column(name = "ppy_yn", length = 1, nullable = true)
    @Schema(description = "선납여부", nullable = true)
    private String ppyYn; //--선납여부

    @Column(name = "ppy_dc_yn", length = 1, nullable = true)
    @Schema(description = "선납할인여부", nullable = true)
    private String ppyDcYn; //--선납할인여부

    @Column(name = "nwfsq_flgcd", length = 10, nullable = true)
    @Schema(description = "신초차구분코드", nullable = true)
    private String nwfsqFlgcd; //--신초차구분코드

    @Column(name = "auto_tf_dc_yn", length = 1, nullable = true)
    @Schema(description = "자동이체할인여부", nullable = true)
    private String autoTfDcYn; //--자동이체할인여부

    @Column(name = "rvi_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "부활이자", nullable = false)
    private BigDecimal rviNt; //--부활이자

    @Column(name = "du_ar_flgcd", length = 10, nullable = true)
    @Schema(description = "응당연체구분코드", nullable = true)
    private String duArFlgcd; //--응당연체구분코드

    @Column(name = "prm_diss_yn", length = 1, nullable = true)
    @Schema(description = "보험료분해여부", nullable = true)
    private String prmDissYn; //--보험료분해여부

    @Column(name = "cvr_prm_disbj_yn", length = 1, nullable = true)
    @Schema(description = "담보보험료분해대상여부", nullable = true)
    private String cvrPrmDisbjYn; //--담보보험료분해대상여부

    @Column(name = "dcbf_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "할인전보험료", nullable = false)
    private BigDecimal dcbfPrm; //--할인전보험료

    @Column(name = "sb_flgcd", length = 10, nullable = true)
    @Schema(description = "대체구분코드", nullable = true)
    private String sbFlgcd; //--대체구분코드

    @Column(name = "onds_dp_tpcd", length = 10, nullable = true)
    @Schema(description = "구배서입금유형코드", nullable = true)
    private String ondsDpTpcd; //--구배서입금유형코드

    @Column(name = "rtn_flgcd", length = 10, nullable = true)
    @Schema(description = "환급구분코드", nullable = true)
    private String rtnFlgcd; //--환급구분코드

    @Column(name = "prm_flgcd", length = 10, nullable = true)
    @Schema(description = "보험료구분코드", nullable = true)
    private String prmFlgcd; //--보험료구분코드

    @Column(name = "prm_efct_nddt", nullable = true)
    @Schema(description = "보험료효력종료일자", nullable = true)
    private LocalDate prmEfctNddt; //--보험료효력종료일자

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    private String bkcd; //--은행코드

    @Column(name = "bk_brcd", length = 10, nullable = true)
    @Schema(description = "은행지점코드", nullable = true)
    private String bkBrcd; //--은행지점코드

    @Column(name = "bk_extn_qfp", length = 50, nullable = true)
    @Schema(description = "은행유자격자", nullable = true)
    private String bkExtnQfp; //--은행유자격자

    @Column(name = "bk_ipps", length = 10, nullable = true)
    @Schema(description = "은행입력자", nullable = true)
    private String bkIpps; //--은행입력자

    @Column(name = "bnc_admr", length = 7, nullable = true)
    @Schema(description = "방카관리자", nullable = true)
    private String bncAdmr; //--방카관리자

    @Column(name = "pym_dudt", nullable = true)
    @Schema(description = "납입응당일자", nullable = true)
    private LocalDate pymDudt; //--납입응당일자

    @Column(name = "dbl_paym_yn", length = 1, nullable = true)
    @Schema(description = "이중불입여부", nullable = true)
    private String dblPaymYn; //--이중불입여부

    @Column(name = "ac_tf_yn", length = 1, nullable = true)
    @Schema(description = "경리이체여부", nullable = true)
    private String acTfYn; //--경리이체여부

    @Column(name = "uc_prm_yn", length = 1, nullable = true)
    @Schema(description = "미수보험료여부", nullable = true)
    private String ucPrmYn; //--미수보험료여부

    @Column(name = "co_crt_rv_flgcd", length = 10, nullable = true)
    @Schema(description = "공동계약자수납구분코드", nullable = true)
    private String coCrtRvFlgcd; //--공동계약자수납구분코드

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ccl_wdr_rtn_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "취소철회환급이자", nullable = false)
    private BigDecimal cclWdrRtnNt; //--취소철회환급이자

    @Column(name = "payao_yn", length = 1, nullable = true)
    @Schema(description = "즉시불여부", nullable = true)
    private String payaoYn; //--즉시불여부

    @Column(name = "amt_ndscd", length = 10, nullable = true)
    @Schema(description = "금액배서코드", nullable = true)
    private String amtNdscd; //--금액배서코드

    @Column(name = "crt_relpc_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "계약자관계자순번", nullable = true)
    private BigDecimal crtRelpcSeqno; //--계약자관계자순번

    @Column(name = "tincm_prm_cr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "집계수입보험료발생순번", nullable = true)
    private BigDecimal tincmPrmCrSeqno; //--집계수입보험료발생순번

    @Column(name = "pyno_whpy_bjno", length = 10, nullable = true)
    @Schema(description = "지급번호제지급대상번호", nullable = true)
    private String pynoWhpyBjno; //--지급번호제지급대상번호

    @Column(name = "co_crt_yn", length = 1, nullable = true)
    @Schema(description = "공동계약자여부", nullable = true)
    private String coCrtYn; //--공동계약자여부

    @Column(name = "cu_st_rpdt", nullable = true)
    @Schema(description = "적립기준영수일자", nullable = true)
    private LocalDate cuStRpdt; //--적립기준영수일자

    @Column(name = "self_cr_yn", length = 1, nullable = true)
    @Schema(description = "자기계약여부", nullable = true)
    private String selfCrYn; //--자기계약여부

    @Column(name = "rdch_cr_yn", length = 1, nullable = true)
    @Schema(description = "승환계약여부", nullable = true)
    private String rdchCrYn; //--승환계약여부

    @Column(name = "rv_dldt", nullable = true)
    @Schema(description = "수납처리일자", nullable = true)
    private LocalDate rvDldt; //--수납처리일자

    @Column(name = "logor_tpcd", length = 10, nullable = true)
    @Schema(description = "지자체유형코드", nullable = true)
    private String logorTpcd; //--지자체유형코드

    @Column(name = "adpym_belo_mw_wlamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "추가납입이하중도인출금액", nullable = true)
    private BigDecimal adpymBeloMwWlamt; //--추가납입이하중도인출금액

    @Column(name = "pf_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "우대보험료", nullable = true)
    private BigDecimal pfPrm; //--우대보험료

    @Column(name = "np_acc_ldgno", length = 20, nullable = true)
    @Schema(description = "미지급계정원장번호", nullable = true)
    private String npAccLdgno; //--미지급계정원장번호

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
    public InsIncmPrm(String plyno, BigDecimal incmPrmCrSeqno, BigDecimal pymSeq, String ndsno, String fnlPymYymm, BigDecimal pypTSeq, BigDecimal rpPrm, BigDecimal apPrm, String dpCascd, String dpDtCascd, String rvSbno, LocalDate ccldt, String cclFlgcd, LocalDate ppdt, String pymCyccd, String dhStfno, String usrno, String rpAdmno, String mncd, BigDecimal fcApPrm, BigDecimal usdCvApPrm, String xcrtFlgcd, BigDecimal fcApXcrt, BigDecimal usdApXcrt, BigDecimal fcCondtTPrm, BigDecimal condtTPrm, String udrtkTycd, String otcmMgCmpcd, BigDecimal cnnIncmPrmcrSeqno, String hscsHsFlgcd, BigDecimal pypAdCs, BigDecimal baCvrPrm, BigDecimal trtPrm, BigDecimal cuPrm, BigDecimal flpyCvrTrtPrm, BigDecimal dcbfCuPrm, BigDecimal cuNprm, String ppyYn, String ppyDcYn, String nwfsqFlgcd, String autoTfDcYn, BigDecimal rviNt, String duArFlgcd, String prmDissYn, String cvrPrmDisbjYn, BigDecimal dcbfPrm, String sbFlgcd, String ondsDpTpcd, String rtnFlgcd, String prmFlgcd, LocalDate prmEfctNddt, String bkcd, String bkBrcd, String bkExtnQfp, String bkIpps, String bncAdmr, LocalDate pymDudt, String dblPaymYn, String acTfYn, String ucPrmYn, String coCrtRvFlgcd, String ikdGrpcd, BigDecimal cclWdrRtnNt, String payaoYn, String amtNdscd, BigDecimal crtRelpcSeqno, BigDecimal tincmPrmCrSeqno, String pynoWhpyBjno, String coCrtYn, LocalDate cuStRpdt, String selfCrYn, String rdchCrYn, LocalDate rvDldt, String logorTpcd, BigDecimal adpymBeloMwWlamt, BigDecimal pfPrm, String npAccLdgno, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plyno = plyno;
        this.incmPrmCrSeqno = incmPrmCrSeqno;
        this.pymSeq = pymSeq;
        this.ndsno = ndsno;
        this.fnlPymYymm = fnlPymYymm;
        this.pypTSeq = pypTSeq;
        this.rpPrm = rpPrm;
        this.apPrm = apPrm;
        this.dpCascd = dpCascd;
        this.dpDtCascd = dpDtCascd;
        this.rvSbno = rvSbno;
        this.ccldt = ccldt;
        this.cclFlgcd = cclFlgcd;
        this.ppdt = ppdt;
        this.pymCyccd = pymCyccd;
        this.dhStfno = dhStfno;
        this.usrno = usrno;
        this.rpAdmno = rpAdmno;
        this.mncd = mncd;
        this.fcApPrm = fcApPrm;
        this.usdCvApPrm = usdCvApPrm;
        this.xcrtFlgcd = xcrtFlgcd;
        this.fcApXcrt = fcApXcrt;
        this.usdApXcrt = usdApXcrt;
        this.fcCondtTPrm = fcCondtTPrm;
        this.condtTPrm = condtTPrm;
        this.udrtkTycd = udrtkTycd;
        this.otcmMgCmpcd = otcmMgCmpcd;
        this.cnnIncmPrmcrSeqno = cnnIncmPrmcrSeqno;
        this.hscsHsFlgcd = hscsHsFlgcd;
        this.pypAdCs = pypAdCs;
        this.baCvrPrm = baCvrPrm;
        this.trtPrm = trtPrm;
        this.cuPrm = cuPrm;
        this.flpyCvrTrtPrm = flpyCvrTrtPrm;
        this.dcbfCuPrm = dcbfCuPrm;
        this.cuNprm = cuNprm;
        this.ppyYn = ppyYn;
        this.ppyDcYn = ppyDcYn;
        this.nwfsqFlgcd = nwfsqFlgcd;
        this.autoTfDcYn = autoTfDcYn;
        this.rviNt = rviNt;
        this.duArFlgcd = duArFlgcd;
        this.prmDissYn = prmDissYn;
        this.cvrPrmDisbjYn = cvrPrmDisbjYn;
        this.dcbfPrm = dcbfPrm;
        this.sbFlgcd = sbFlgcd;
        this.ondsDpTpcd = ondsDpTpcd;
        this.rtnFlgcd = rtnFlgcd;
        this.prmFlgcd = prmFlgcd;
        this.prmEfctNddt = prmEfctNddt;
        this.bkcd = bkcd;
        this.bkBrcd = bkBrcd;
        this.bkExtnQfp = bkExtnQfp;
        this.bkIpps = bkIpps;
        this.bncAdmr = bncAdmr;
        this.pymDudt = pymDudt;
        this.dblPaymYn = dblPaymYn;
        this.acTfYn = acTfYn;
        this.ucPrmYn = ucPrmYn;
        this.coCrtRvFlgcd = coCrtRvFlgcd;
        this.ikdGrpcd = ikdGrpcd;
        this.cclWdrRtnNt = cclWdrRtnNt;
        this.payaoYn = payaoYn;
        this.amtNdscd = amtNdscd;
        this.crtRelpcSeqno = crtRelpcSeqno;
        this.tincmPrmCrSeqno = tincmPrmCrSeqno;
        this.pynoWhpyBjno = pynoWhpyBjno;
        this.coCrtYn = coCrtYn;
        this.cuStRpdt = cuStRpdt;
        this.selfCrYn = selfCrYn;
        this.rdchCrYn = rdchCrYn;
        this.rvDldt = rvDldt;
        this.logorTpcd = logorTpcd;
        this.adpymBeloMwWlamt = adpymBeloMwWlamt;
        this.pfPrm = pfPrm;
        this.npAccLdgno = npAccLdgno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
