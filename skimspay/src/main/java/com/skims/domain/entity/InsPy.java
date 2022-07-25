/**
 * InsPy Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
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

import com.skims.domain.listener.InsPyListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPyListener.class)
@Table(name = "ins_py") //--지급
@Schema(description = "지급")
public class InsPy implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "pyno", length = 10, nullable = false)
    @Schema(description = "지급번호", nullable = false)
    private String pyno; //--지급번호

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "py_cr_brcd", length = 7, nullable = true)
    @Schema(description = "지급발생지점코드", nullable = true)
    private String pyCrBrcd; //--지급발생지점코드

    @Column(name = "py_crdt", nullable = true)
    @Schema(description = "지급발생일자", nullable = true)
    private Date pyCrdt; //--지급발생일자

    @Column(name = "opyno", length = 21, nullable = true)
    @Schema(description = "구지급번호", nullable = true)
    private String opyno; //--구지급번호

    @Column(name = "ac_py_yn", length = 1, nullable = true)
    @Schema(description = "경리지급여부", nullable = true)
    private String acPyYn; //--경리지급여부

    @Column(name = "ac_pydt", nullable = true)
    @Schema(description = "경리지급일자", nullable = true)
    private Date acPydt; //--경리지급일자

    @Column(name = "py_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급방법코드", nullable = true)
    private String pyMtdcd; //--지급방법코드

    @Column(name = "ex_rcv_flgcd", length = 10, nullable = false)
    @Schema(description = "환입환수구분코드", nullable = false)
    private String exRcvFlgcd; //--환입환수구분코드

    @Column(name = "py_uramt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급발생금액", nullable = false)
    private BigDecimal pyUramt; //--지급발생금액

    @Column(name = "uiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공제금액", nullable = false)
    private BigDecimal uiamt; //--공제금액

    @Column(name = "py_rsamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급보류금액", nullable = false)
    private BigDecimal pyRsamt; //--지급보류금액

    @Column(name = "sb_pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "차감지급금액", nullable = false)
    private BigDecimal sbPyamt; //--차감지급금액

    @Column(name = "woncv_py_uramt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산지급발생금액", nullable = false)
    private BigDecimal woncvPyUramt; //--원화환산지급발생금액

    @Column(name = "woncv_uiamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산공제금액", nullable = false)
    private BigDecimal woncvUiamt; //--원화환산공제금액

    @Column(name = "woncv_sb_pyamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산차감지급금액", nullable = false)
    private BigDecimal woncvSbPyamt; //--원화환산차감지급금액

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    private String mncd; //--화폐코드

    @Column(name = "xcrt_apdt", nullable = true)
    @Schema(description = "환율적용일자", nullable = true)
    private Date xcrtApdt; //--환율적용일자

    @Column(name = "xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "환율", nullable = false)
    private BigDecimal xcrt; //--환율

    @Column(name = "self_chamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "자기부담금액", nullable = false)
    private BigDecimal selfChamt; //--자기부담금액

    @Column(name = "baamt_flgcd", length = 10, nullable = true)
    @Schema(description = "기본금액구분코드", nullable = true)
    private String baamtFlgcd; //--기본금액구분코드

    @Column(name = "pfb_rcps_relcd", length = 10, nullable = true)
    @Schema(description = "수익자수령인관계코드", nullable = true)
    private String pfbRcpsRelcd; //--수익자수령인관계코드

    @Column(name = "py_bjnm", length = 100, nullable = true)
    @Schema(description = "지급대상명", nullable = true)
    private String pyBjnm; //--지급대상명

    @Column(name = "py_bj_rs_bzmno", length = 48, nullable = true)
    @Schema(description = "지급대상주민사업자번호", nullable = true)
    private String pyBjRsBzmno; //--지급대상주민사업자번호

    @Column(name = "rqaps_nm", length = 100, nullable = true)
    @Schema(description = "신청자명", nullable = true)
    private String rqapsNm; //--신청자명

    @Column(name = "rqaps_rsno", length = 48, nullable = true)
    @Schema(description = "신청자주민번호", nullable = true)
    private String rqapsRsno; //--신청자주민번호

    @Column(name = "dlg_py_rscd", length = 10, nullable = true)
    @Schema(description = "위임지급사유코드", nullable = true)
    private String dlgPyRscd; //--위임지급사유코드

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    private String bkcd; //--은행코드

    @Column(name = "actno", length = 48, nullable = true)
    @Schema(description = "계좌번호", nullable = true)
    private String actno; //--계좌번호

    @Column(name = "dpsnm", length = 100, nullable = true)
    @Schema(description = "예금주명", nullable = true)
    private String dpsnm; //--예금주명

    @Column(name = "dpsr_rs_bzmno", length = 48, nullable = true)
    @Schema(description = "예금주주민사업자번호", nullable = true)
    private String dpsrRsBzmno; //--예금주주민사업자번호

    @Column(name = "py_bj_dpsr_relcd", length = 10, nullable = true)
    @Schema(description = "지급대상예금주관계코드", nullable = true)
    private String pyBjDpsrRelcd; //--지급대상예금주관계코드

    @Column(name = "acct_bdlrm_inp_yn", length = 1, nullable = true)
    @Schema(description = "통장일괄송금입력여부", nullable = true)
    private String acctBdlrmInpYn; //--통장일괄송금입력여부

    @Column(name = "ap_tx_pf_flgcd", length = 10, nullable = true)
    @Schema(description = "적용세금우대구분코드", nullable = true)
    private String apTxPfFlgcd; //--적용세금우대구분코드

    @Column(name = "cr_dh_stfno", length = 50, nullable = true)
    @Schema(description = "계약취급직원번호", nullable = true)
    private String crDhStfno; //--계약취급직원번호

    @Column(name = "py_cr_ptncd", length = 10, nullable = true)
    @Schema(description = "지급발생경로코드", nullable = true)
    private String pyCrPtncd; //--지급발생경로코드

    @Column(name = "bdl_rm_plyno", length = 16, nullable = true)
    @Schema(description = "일괄송금증권번호", nullable = true)
    private String bdlRmPlyno; //--일괄송금증권번호

    @Column(name = "rcp_yymm", length = 6, nullable = true)
    @Schema(description = "접수년월", nullable = true)
    private String rcpYymm; //--접수년월

    @Column(name = "rcp_nv_seqno", length = 9, nullable = true)
    @Schema(description = "접수조사순번", nullable = true)
    private String rcpNvSeqno; //--접수조사순번

    @Column(name = "bdlrm_relpc_clmps_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "일괄송금관계자사고자순번", nullable = true)
    private BigDecimal bdlrmRelpcClmpsSeqno; //--일괄송금관계자사고자순번

    @Column(name = "py_act_flgcd", length = 10, nullable = true)
    @Schema(description = "지급계좌구분코드", nullable = true)
    private String pyActFlgcd; //--지급계좌구분코드

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    private String ctmno; //--고객번호

    @Column(name = "cprt_entp_seqno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "협력업체순번", nullable = true)
    private BigDecimal cprtEntpSeqno; //--협력업체순번

    @Column(name = "adtx_yn", length = 1, nullable = true)
    @Schema(description = "부가세여부", nullable = true)
    private String adtxYn; //--부가세여부

    @Column(name = "cmp_py_rltno", length = 50, nullable = true)
    @Schema(description = "보상지급연계번호", nullable = true)
    private String cmpPyRltno; //--보상지급연계번호

    @Column(name = "py_stcd", length = 10, nullable = true)
    @Schema(description = "지급상태코드", nullable = true)
    private String pyStcd; //--지급상태코드

    @Column(name = "py_crno", length = 20, nullable = true)
    @Schema(description = "지급발생번호", nullable = true)
    private String pyCrno; //--지급발생번호

    @Column(name = "tab_py_yn", length = 1, nullable = true)
    @Schema(description = "추심지급여부", nullable = true)
    private String tabPyYn; //--추심지급여부

    @Column(name = "olcrr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "구이력순번", nullable = true)
    private BigDecimal olcrrSeqno; //--구이력순번

    @Column(name = "sms_bj_yn", length = 1, nullable = true)
    @Schema(description = "sms대상여부", nullable = true)
    private String smsBjYn; //--sms대상여부

    @Column(name = "rtamt_tpcd", length = 10, nullable = true)
    @Schema(description = "환급금유형코드", nullable = true)
    private String rtamtTpcd; //--환급금유형코드

    @Column(name = "py_cstno", length = 15, nullable = true)
    @Schema(description = "지급품의번호", nullable = true)
    private String pyCstno; //--지급품의번호

    @Column(name = "ln_py_dt_flgcd", length = 10, nullable = true)
    @Schema(description = "대출지급상세구분코드", nullable = true)
    private String lnPyDtFlgcd; //--대출지급상세구분코드

    @Column(name = "py_bj_kndcd", length = 10, nullable = true)
    @Schema(description = "지급대상종류코드", nullable = true)
    private String pyBjKndcd; //--지급대상종류코드

    @Column(name = "py_bj_victm_relcd", length = 10, nullable = true)
    @Schema(description = "지급대상피해자관계코드", nullable = true)
    private String pyBjVictmRelcd; //--지급대상피해자관계코드

    @Column(name = "evdno", length = 20, nullable = true)
    @Schema(description = "증빙번호", nullable = true)
    private String evdno; //--증빙번호

    @Column(name = "rm_mtdcd", length = 10, nullable = true)
    @Schema(description = "송금방법코드", nullable = true)
    private String rmMtdcd; //--송금방법코드

    @Column(name = "ovse_tf_yn", length = 1, nullable = true)
    @Schema(description = "해외이체여부", nullable = true)
    private String ovseTfYn; //--해외이체여부

    @Column(name = "pypl_flgcd", length = 10, nullable = true)
    @Schema(description = "지급처구분코드", nullable = true)
    private String pyplFlgcd; //--지급처구분코드

    @Column(name = "ibnf_cs_flgcd", length = 10, nullable = true)
    @Schema(description = "보험금비용구분코드", nullable = true)
    private String ibnfCsFlgcd; //--보험금비용구분코드

    @Column(name = "ovse_py_bjnm", length = 100, nullable = true)
    @Schema(description = "해외지급대상명", nullable = true)
    private String ovsePyBjnm; //--해외지급대상명

    @Column(name = "ovse_py_bj_adr", length = 100, nullable = true)
    @Schema(description = "해외지급대상주소", nullable = true)
    private String ovsePyBjAdr; //--해외지급대상주소

    @Column(name = "ovse_py_bknm", length = 100, nullable = true)
    @Schema(description = "해외지급은행명", nullable = true)
    private String ovsePyBknm; //--해외지급은행명

    @Column(name = "ovse_py_bk_adr", length = 100, nullable = true)
    @Schema(description = "해외지급은행주소", nullable = true)
    private String ovsePyBkAdr; //--해외지급은행주소

    @Column(name = "ntn_bkcd", length = 10, nullable = true)
    @Schema(description = "국가별은행코드", nullable = true)
    private String ntnBkcd; //--국가별은행코드

    @Column(name = "swf", length = 30, nullable = true)
    @Schema(description = "swift", nullable = true)
    private String swf; //--swift

    @Column(name = "py_bk_ctynm", length = 100, nullable = true)
    @Schema(description = "지급은행도시명", nullable = true)
    private String pyBkCtynm; //--지급은행도시명

    @Column(name = "py_bk_ntnnm", length = 100, nullable = true)
    @Schema(description = "지급은행국가명", nullable = true)
    private String pyBkNtnnm; //--지급은행국가명

    @Column(name = "ovse_rm_bk_tpcd", length = 10, nullable = true)
    @Schema(description = "해외송금은행유형코드", nullable = true)
    private String ovseRmBkTpcd; //--해외송금은행유형코드

    @Column(name = "osea_cm_chrg_flgcd", length = 10, nullable = true)
    @Schema(description = "국외수수료부담구분코드", nullable = true)
    private String oseaCmChrgFlgcd; //--국외수수료부담구분코드

    @Column(name = "ovse_rqapl_rel", length = 10, nullable = true)
    @Schema(description = "해외신청인관계", nullable = true)
    private String ovseRqaplRel; //--해외신청인관계

    @Column(name = "ovse_py_rs", length = 100, nullable = true)
    @Schema(description = "해외지급사유", nullable = true)
    private String ovsePyRs; //--해외지급사유

    @Column(name = "ovse_rcpnt_ref_rs", length = 1000, nullable = true)
    @Schema(description = "해외수취인참고사유", nullable = true)
    private String ovseRcpntRefRs; //--해외수취인참고사유

    @Column(name = "ovse_rqapl_rel_cn", length = 1000, nullable = true)
    @Schema(description = "해외신청인관계내용", nullable = true)
    private String ovseRqaplRelCn; //--해외신청인관계내용

    @Column(name = "ovse_py_rs_cn", length = 1000, nullable = true)
    @Schema(description = "해외지급사유내용", nullable = true)
    private String ovsePyRsCn; //--해외지급사유내용

    @Column(name = "ovse_actno", length = 48, nullable = true)
    @Schema(description = "해외계좌번호", nullable = true)
    private String ovseActno; //--해외계좌번호

    @Column(name = "py_dlay_nt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "지급지연이자", nullable = true)
    private BigDecimal pyDlayNt; //--지급지연이자

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Date mdfDthms; //--수정일시

    @Builder
    public InsPy(String pyno, String plyno, String pyCrBrcd, Date pyCrdt, String opyno, String acPyYn, Date acPydt, String pyMtdcd, String exRcvFlgcd, BigDecimal pyUramt, BigDecimal uiamt, BigDecimal pyRsamt, BigDecimal sbPyamt, BigDecimal woncvPyUramt, BigDecimal woncvUiamt, BigDecimal woncvSbPyamt, String mncd, Date xcrtApdt, BigDecimal xcrt, BigDecimal selfChamt, String baamtFlgcd, String pfbRcpsRelcd, String pyBjnm, String pyBjRsBzmno, String rqapsNm, String rqapsRsno, String dlgPyRscd, String bkcd, String actno, String dpsnm, String dpsrRsBzmno, String pyBjDpsrRelcd, String acctBdlrmInpYn, String apTxPfFlgcd, String crDhStfno, String pyCrPtncd, String bdlRmPlyno, String rcpYymm, String rcpNvSeqno, BigDecimal bdlrmRelpcClmpsSeqno, String pyActFlgcd, String ctmno, BigDecimal cprtEntpSeqno, String adtxYn, String cmpPyRltno, String pyStcd, String pyCrno, String tabPyYn, BigDecimal olcrrSeqno, String smsBjYn, String rtamtTpcd, String pyCstno, String lnPyDtFlgcd, String pyBjKndcd, String pyBjVictmRelcd, String evdno, String rmMtdcd, String ovseTfYn, String pyplFlgcd, String ibnfCsFlgcd, String ovsePyBjnm, String ovsePyBjAdr, String ovsePyBknm, String ovsePyBkAdr, String ntnBkcd, String swf, String pyBkCtynm, String pyBkNtnnm, String ovseRmBkTpcd, String oseaCmChrgFlgcd, String ovseRqaplRel, String ovsePyRs, String ovseRcpntRefRs, String ovseRqaplRelCn, String ovsePyRsCn, String ovseActno, BigDecimal pyDlayNt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.pyno = pyno;
        this.plyno = plyno;
        this.pyCrBrcd = pyCrBrcd;
        this.pyCrdt = pyCrdt;
        this.opyno = opyno;
        this.acPyYn = acPyYn;
        this.acPydt = acPydt;
        this.pyMtdcd = pyMtdcd;
        this.exRcvFlgcd = exRcvFlgcd;
        this.pyUramt = pyUramt;
        this.uiamt = uiamt;
        this.pyRsamt = pyRsamt;
        this.sbPyamt = sbPyamt;
        this.woncvPyUramt = woncvPyUramt;
        this.woncvUiamt = woncvUiamt;
        this.woncvSbPyamt = woncvSbPyamt;
        this.mncd = mncd;
        this.xcrtApdt = xcrtApdt;
        this.xcrt = xcrt;
        this.selfChamt = selfChamt;
        this.baamtFlgcd = baamtFlgcd;
        this.pfbRcpsRelcd = pfbRcpsRelcd;
        this.pyBjnm = pyBjnm;
        this.pyBjRsBzmno = pyBjRsBzmno;
        this.rqapsNm = rqapsNm;
        this.rqapsRsno = rqapsRsno;
        this.dlgPyRscd = dlgPyRscd;
        this.bkcd = bkcd;
        this.actno = actno;
        this.dpsnm = dpsnm;
        this.dpsrRsBzmno = dpsrRsBzmno;
        this.pyBjDpsrRelcd = pyBjDpsrRelcd;
        this.acctBdlrmInpYn = acctBdlrmInpYn;
        this.apTxPfFlgcd = apTxPfFlgcd;
        this.crDhStfno = crDhStfno;
        this.pyCrPtncd = pyCrPtncd;
        this.bdlRmPlyno = bdlRmPlyno;
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.bdlrmRelpcClmpsSeqno = bdlrmRelpcClmpsSeqno;
        this.pyActFlgcd = pyActFlgcd;
        this.ctmno = ctmno;
        this.cprtEntpSeqno = cprtEntpSeqno;
        this.adtxYn = adtxYn;
        this.cmpPyRltno = cmpPyRltno;
        this.pyStcd = pyStcd;
        this.pyCrno = pyCrno;
        this.tabPyYn = tabPyYn;
        this.olcrrSeqno = olcrrSeqno;
        this.smsBjYn = smsBjYn;
        this.rtamtTpcd = rtamtTpcd;
        this.pyCstno = pyCstno;
        this.lnPyDtFlgcd = lnPyDtFlgcd;
        this.pyBjKndcd = pyBjKndcd;
        this.pyBjVictmRelcd = pyBjVictmRelcd;
        this.evdno = evdno;
        this.rmMtdcd = rmMtdcd;
        this.ovseTfYn = ovseTfYn;
        this.pyplFlgcd = pyplFlgcd;
        this.ibnfCsFlgcd = ibnfCsFlgcd;
        this.ovsePyBjnm = ovsePyBjnm;
        this.ovsePyBjAdr = ovsePyBjAdr;
        this.ovsePyBknm = ovsePyBknm;
        this.ovsePyBkAdr = ovsePyBkAdr;
        this.ntnBkcd = ntnBkcd;
        this.swf = swf;
        this.pyBkCtynm = pyBkCtynm;
        this.pyBkNtnnm = pyBkNtnnm;
        this.ovseRmBkTpcd = ovseRmBkTpcd;
        this.oseaCmChrgFlgcd = oseaCmChrgFlgcd;
        this.ovseRqaplRel = ovseRqaplRel;
        this.ovsePyRs = ovsePyRs;
        this.ovseRcpntRefRs = ovseRcpntRefRs;
        this.ovseRqaplRelCn = ovseRqaplRelCn;
        this.ovsePyRsCn = ovsePyRsCn;
        this.ovseActno = ovseActno;
        this.pyDlayNt = pyDlayNt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
