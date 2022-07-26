/**
 * FinPyCr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
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

import com.skims.domain.listener.FinPyCrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(FinPyCrListener.class)
@Table(name = "fin_py_cr") //--지급발생
@Schema(description = "지급발생")
public class FinPyCr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "py_crno", length = 20, nullable = false)
    @Schema(description = "지급발생번호", nullable = false)
    private String pyCrno; //--지급발생번호

    @Column(name = "ldg_kndcd", length = 10, nullable = true)
    @Schema(description = "원장종류코드", nullable = true)
    private String ldgKndcd; //--원장종류코드

    @Column(name = "ldgno", length = 20, nullable = true)
    @Schema(description = "원장번호", nullable = true)
    private String ldgno; //--원장번호

    @Column(name = "crdt", nullable = false)
    @Schema(description = "발생일자", nullable = false)
    private Date crdt; //--발생일자

    @Column(name = "act_orgcd", length = 7, nullable = false)
    @Schema(description = "회계기관코드", nullable = false)
    private String actOrgcd; //--회계기관코드

    @Column(name = "rqog_cd", length = 7, nullable = false)
    @Schema(description = "요청기관코드", nullable = false)
    private String rqogCd; //--요청기관코드

    @Column(name = "rqfno", length = 50, nullable = false)
    @Schema(description = "요청직원번호", nullable = false)
    private String rqfno; //--요청직원번호

    @Column(name = "cr_syscd", length = 10, nullable = false)
    @Schema(description = "발생시스템코드", nullable = false)
    private String crSyscd; //--발생시스템코드

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "pylno", length = 64, nullable = false)
    @Schema(description = "지급처번호", nullable = false)
    private String pylno; //--지급처번호

    @Column(name = "pypl_flgcd", length = 10, nullable = false)
    @Schema(description = "지급처구분코드", nullable = false)
    private String pyplFlgcd; //--지급처구분코드

    @Column(name = "pypl_kndcd", length = 10, nullable = true)
    @Schema(description = "지급처종류코드", nullable = true)
    private String pyplKndcd; //--지급처종류코드

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    private String bkcd; //--은행코드

    @Column(name = "pypl_actno", length = 48, nullable = true)
    @Schema(description = "지급처계좌번호", nullable = true)
    private String pyplActno; //--지급처계좌번호

    @Column(name = "dpsr", length = 100, nullable = true)
    @Schema(description = "예금주", nullable = true)
    private String dpsr; //--예금주

    @Column(name = "pylnm", length = 100, nullable = false)
    @Schema(description = "지급처명", nullable = false)
    private String pylnm; //--지급처명

    @Column(name = "pynct_tpcd", length = 10, nullable = true)
    @Schema(description = "지급금권유형코드", nullable = true)
    private String pynctTpcd; //--지급금권유형코드

    @Column(name = "dfpcd", length = 10, nullable = true)
    @Schema(description = "예금상대처코드", nullable = true)
    private String dfpcd; //--예금상대처코드

    @Column(name = "py_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급방법코드", nullable = true)
    private String pyMtdcd; //--지급방법코드

    @Column(name = "mncd", length = 10, nullable = false)
    @Schema(description = "화폐코드", nullable = false)
    private String mncd; //--화폐코드

    @Column(name = "py_prdt", nullable = true)
    @Schema(description = "지급예정일자", nullable = true)
    private Date pyPrdt; //--지급예정일자

    @Column(name = "py_pr_woamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "지급예정원화금액", nullable = false)
    private BigDecimal pyPrWoamt; //--지급예정원화금액

    @Column(name = "py_pr_fcamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급예정외화금액", nullable = false)
    private BigDecimal pyPrFcamt; //--지급예정외화금액

    @Column(name = "py_dcn_woamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "지급확정원화금액", nullable = false)
    private BigDecimal pyDcnWoamt; //--지급확정원화금액

    @Column(name = "py_dcn_fcamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급확정외화금액", nullable = false)
    private BigDecimal pyDcnFcamt; //--지급확정외화금액

    @Column(name = "rl_py_dcn_woamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "실지급확정원화금액", nullable = false)
    private BigDecimal rlPyDcnWoamt; //--실지급확정원화금액

    @Column(name = "rl_py_dcn_fcamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "실지급확정외화금액", nullable = false)
    private BigDecimal rlPyDcnFcamt; //--실지급확정외화금액

    @Column(name = "fx_pldoq_flgcd", length = 10, nullable = true)
    @Schema(description = "외환차손익구분코드", nullable = true)
    private String fxPldoqFlgcd; //--외환차손익구분코드

    @Column(name = "fx_pqamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "외환차손익금액", nullable = false)
    private BigDecimal fxPqamt; //--외환차손익금액

    @Column(name = "ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "적용환율", nullable = false)
    private BigDecimal apXcrt; //--적용환율

    @Column(name = "fc_dcndt", nullable = true)
    @Schema(description = "외화확정일자", nullable = true)
    private Date fcDcndt; //--외화확정일자

    @Column(name = "fc_dcn_stfno", length = 50, nullable = true)
    @Schema(description = "외화확정직원번호", nullable = true)
    private String fcDcnStfno; //--외화확정직원번호

    @Column(name = "fc_dcn_ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "외화확정적용환율", nullable = false)
    private BigDecimal fcDcnApXcrt; //--외화확정적용환율

    @Column(name = "self_yn", length = 1, nullable = true)
    @Schema(description = "본인여부", nullable = true)
    private String selfYn; //--본인여부

    @Column(name = "rcr_rsno", length = 48, nullable = true)
    @Schema(description = "수령자주민번호", nullable = true)
    private String rcrRsno; //--수령자주민번호

    @Column(name = "rcr_nm", length = 100, nullable = true)
    @Schema(description = "수령자명", nullable = true)
    private String rcrNm; //--수령자명

    @Column(name = "ikd_grpcd", length = 10, nullable = true)
    @Schema(description = "보종군코드", nullable = true)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ins_imcd", length = 10, nullable = true)
    @Schema(description = "보험종목코드", nullable = true)
    private String insImcd; //--보험종목코드

    @Column(name = "invln_gdcd", length = 10, nullable = true)
    @Schema(description = "투융자상품코드", nullable = true)
    private String invlnGdcd; //--투융자상품코드

    @Column(name = "bsns_cnnno_flgcd", length = 10, nullable = true)
    @Schema(description = "업무관련번호구분코드", nullable = true)
    private String bsnsCnnnoFlgcd; //--업무관련번호구분코드

    @Column(name = "bsns_cnnno", length = 20, nullable = true)
    @Schema(description = "업무관련번호", nullable = true)
    private String bsnsCnnno; //--업무관련번호

    @Column(name = "crt_dscno", length = 48, nullable = true)
    @Schema(description = "계약자식별번호", nullable = true)
    private String crtDscno; //--계약자식별번호

    @Column(name = "victm_dscno", length = 48, nullable = true)
    @Schema(description = "피해자식별번호", nullable = true)
    private String victmDscno; //--피해자식별번호

    @Column(name = "nrdps_dscno", length = 48, nullable = true)
    @Schema(description = "피보험자식별번호", nullable = true)
    private String nrdpsDscno; //--피보험자식별번호

    @Column(name = "dmgnm", length = 300, nullable = true)
    @Schema(description = "피해물명", nullable = true)
    private String dmgnm; //--피해물명

    @Column(name = "udrtk_tycd", length = 10, nullable = true)
    @Schema(description = "인수형태코드", nullable = true)
    private String udrtkTycd; //--인수형태코드

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    private String ndsno; //--배서번호

    @Column(name = "fndcd", length = 10, nullable = true)
    @Schema(description = "펀드코드", nullable = true)
    private String fndcd; //--펀드코드

    @Column(name = "apdt", nullable = true)
    @Schema(description = "승인일자", nullable = true)
    private Date apdt; //--승인일자

    @Column(name = "ap_orgcd", length = 7, nullable = true)
    @Schema(description = "승인기관코드", nullable = true)
    private String apOrgcd; //--승인기관코드

    @Column(name = "ap_stfno", length = 50, nullable = true)
    @Schema(description = "승인직원번호", nullable = true)
    private String apStfno; //--승인직원번호

    @Column(name = "rp_admcr_no", length = 20, nullable = true)
    @Schema(description = "영수관리증번호", nullable = true)
    private String rpAdmcrNo; //--영수관리증번호

    @Column(name = "rp_admcr_outdt", nullable = true)
    @Schema(description = "영수관리증출력일자", nullable = true)
    private Date rpAdmcrOutdt; //--영수관리증출력일자

    @Column(name = "rp_admcr_outbj_yn", length = 1, nullable = true)
    @Schema(description = "영수관리증출력대상여부", nullable = true)
    private String rpAdmcrOutbjYn; //--영수관리증출력대상여부

    @Column(name = "dsodt", nullable = true)
    @Schema(description = "발의일자", nullable = true)
    private Date dsodt; //--발의일자

    @Column(name = "bdg_dpno", length = 7, nullable = true)
    @Schema(description = "예산발의번호", nullable = true)
    private String bdgDpno; //--예산발의번호

    @Column(name = "pydt", nullable = true)
    @Schema(description = "지급일자", nullable = true)
    private Date pydt; //--지급일자

    @Column(name = "py_orgcd", length = 7, nullable = true)
    @Schema(description = "지급기관코드", nullable = true)
    private String pyOrgcd; //--지급기관코드

    @Column(name = "py_xcno", length = 7, nullable = true)
    @Schema(description = "지급정산번호", nullable = true)
    private String pyXcno; //--지급정산번호

    @Column(name = "chbf_crno", length = 20, nullable = true)
    @Schema(description = "변경전발생번호", nullable = true)
    private String chbfCrno; //--변경전발생번호

    @Column(name = "py_dl_o1_flgcd", length = 10, nullable = true)
    @Schema(description = "지급처리1차구분코드", nullable = true)
    private String pyDlO1Flgcd; //--지급처리1차구분코드

    @Column(name = "py_dl_o2_flgcd", length = 10, nullable = true)
    @Schema(description = "지급처리2차구분코드", nullable = true)
    private String pyDlO2Flgcd; //--지급처리2차구분코드

    @Column(name = "fr_dpdt", nullable = true)
    @Schema(description = "최초입금일자", nullable = true)
    private Date frDpdt; //--최초입금일자

    @Column(name = "fr_dh_orgcd", length = 7, nullable = true)
    @Schema(description = "최초취급기관코드", nullable = true)
    private String frDhOrgcd; //--최초취급기관코드

    @Column(name = "fr_dh_stfno", length = 50, nullable = true)
    @Schema(description = "최초취급직원번호", nullable = true)
    private String frDhStfno; //--최초취급직원번호

    @Column(name = "py_cr_rm_tpcd", length = 10, nullable = true)
    @Schema(description = "지급발생반제유형코드", nullable = true)
    private String pyCrRmTpcd; //--지급발생반제유형코드

    @Column(name = "jonl_yn", length = 1, nullable = true)
    @Schema(description = "분개여부", nullable = true)
    private String jonlYn; //--분개여부

    @Column(name = "py_dl_eryn", length = 1, nullable = true)
    @Schema(description = "지급처리오류여부", nullable = true)
    private String pyDlEryn; //--지급처리오류여부

    @Column(name = "py_er_nt_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급오류통지방법코드", nullable = true)
    private String pyErNtMtdcd; //--지급오류통지방법코드

    @Column(name = "fc_by_iptdt", nullable = true)
    @Schema(description = "외화매입입력일자", nullable = true)
    private Date fcByIptdt; //--외화매입입력일자

    @Column(name = "fc_by_inp_stfno", length = 50, nullable = true)
    @Schema(description = "외화매입입력직원번호", nullable = true)
    private String fcByInpStfno; //--외화매입입력직원번호

    @Column(name = "rm_stcd", length = 10, nullable = false)
    @Schema(description = "반제상태코드", nullable = false)
    private String rmStcd; //--반제상태코드

    @Column(name = "py_cr_stcd", length = 10, nullable = false)
    @Schema(description = "지급발생상태코드", nullable = false)
    private String pyCrStcd; //--지급발생상태코드

    @Column(name = "py_reqdt", nullable = true)
    @Schema(description = "지급요청일자", nullable = true)
    private Date pyReqdt; //--지급요청일자

    @Column(name = "repy_reqdt", nullable = true)
    @Schema(description = "재지급요청일자", nullable = true)
    private Date repyReqdt; //--재지급요청일자

    @Column(name = "repy_rq_stfno", length = 50, nullable = true)
    @Schema(description = "재지급요청직원번호", nullable = true)
    private String repyRqStfno; //--재지급요청직원번호

    @Column(name = "repy_rq_rscd", length = 10, nullable = true)
    @Schema(description = "재지급요청사유코드", nullable = true)
    private String repyRqRscd; //--재지급요청사유코드

    @Column(name = "slpdt", nullable = true)
    @Schema(description = "전표일자", nullable = true)
    private Date slpdt; //--전표일자

    @Column(name = "slpno", length = 7, nullable = true)
    @Schema(description = "전표번호", nullable = true)
    private String slpno; //--전표번호

    @Column(name = "py_st_dv_dldt", nullable = true)
    @Schema(description = "지급정지배분처리일자", nullable = true)
    private Date pyStDvDldt; //--지급정지배분처리일자

    @Column(name = "pyst_dv_dl_stfno", length = 50, nullable = true)
    @Schema(description = "지급정지배분처리직원번호", nullable = true)
    private String pystDvDlStfno; //--지급정지배분처리직원번호

    @Column(name = "pyst_dv_dl_orgcd", length = 7, nullable = true)
    @Schema(description = "지급정지배분처리기관코드", nullable = true)
    private String pystDvDlOrgcd; //--지급정지배분처리기관코드

    @Column(name = "pyno", length = 10, nullable = true)
    @Schema(description = "지급번호", nullable = true)
    private String pyno; //--지급번호

    @Column(name = "ccl_bj_pyno", length = 10, nullable = true)
    @Schema(description = "취소대상지급번호", nullable = true)
    private String cclBjPyno; //--취소대상지급번호

    @Column(name = "py_cstno", length = 15, nullable = true)
    @Schema(description = "지급품의번호", nullable = true)
    private String pyCstno; //--지급품의번호

    @Column(name = "ccl_bj_py_cstno", length = 15, nullable = true)
    @Schema(description = "취소대상지급품의번호", nullable = true)
    private String cclBjPyCstno; //--취소대상지급품의번호

    @Column(name = "py_st_dv_dlno", length = 15, nullable = true)
    @Schema(description = "지급정지배분처리번호", nullable = true)
    private String pyStDvDlno; //--지급정지배분처리번호

    @Column(name = "ccl_bj_ndsno", length = 4, nullable = true)
    @Schema(description = "취소대상배서번호", nullable = true)
    private String cclBjNdsno; //--취소대상배서번호

    @Column(name = "chrps_dsdt", nullable = true)
    @Schema(description = "담당자지정일자", nullable = true)
    private Date chrpsDsdt; //--담당자지정일자

    @Column(name = "chrps_asmt_orgcd", length = 7, nullable = true)
    @Schema(description = "담당자지정기관코드", nullable = true)
    private String chrpsAsmtOrgcd; //--담당자지정기관코드

    @Column(name = "chrps_asmt_stfno", length = 50, nullable = true)
    @Schema(description = "담당자지정직원번호", nullable = true)
    private String chrpsAsmtStfno; //--담당자지정직원번호

    @Column(name = "wdra_bkcd", length = 10, nullable = true)
    @Schema(description = "인출은행코드", nullable = true)
    private String wdraBkcd; //--인출은행코드

    @Column(name = "wdra_actno", length = 48, nullable = true)
    @Schema(description = "인출계좌번호", nullable = true)
    private String wdraActno; //--인출계좌번호

    @Column(name = "st_yymm", length = 6, nullable = true)
    @Schema(description = "기준년월", nullable = true)
    private String stYymm; //--기준년월

    @Column(name = "bdl_tf_bsns_flgcd", length = 10, nullable = true)
    @Schema(description = "일괄이체업무구분코드", nullable = true)
    private String bdlTfBsnsFlgcd; //--일괄이체업무구분코드

    @Column(name = "bdl_tf_dl_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "일괄이체처리순번", nullable = true)
    private BigDecimal bdlTfDlSeqno; //--일괄이체처리순번

    @Column(name = "nots_mtt", length = 2000, nullable = true)
    @Schema(description = "적요사항", nullable = true)
    private String notsMtt; //--적요사항

    @Column(name = "pyst_dv_dl_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "지급정지배분처리순번", nullable = true)
    private BigDecimal pystDvDlSeqno; //--지급정지배분처리순번

    @Column(name = "bdl_rm_yn", length = 1, nullable = false)
    @Schema(description = "일괄송금여부", nullable = false)
    private String bdlRmYn; //--일괄송금여부

    @Column(name = "rcapm_org_dt_flgcd", length = 10, nullable = true)
    @Schema(description = "출납기관상세구분코드", nullable = true)
    private String rcapmOrgDtFlgcd; //--출납기관상세구분코드

    @Column(name = "sms_py_tpcd", length = 10, nullable = true)
    @Schema(description = "sms지급유형코드", nullable = true)
    private String smsPyTpcd; //--sms지급유형코드

    @Column(name = "bsns_adx_file_dscno", length = 20, nullable = true)
    @Schema(description = "업무첨부파일식별번호", nullable = true)
    private String bsnsAdxFileDscno; //--업무첨부파일식별번호

    @Column(name = "elec_evd_img_bsnno", length = 50, nullable = true)
    @Schema(description = "전자증빙이미지업무번호", nullable = true)
    private String elecEvdImgBsnno; //--전자증빙이미지업무번호

    @Column(name = "elec_prv_dcu_id", length = 20, nullable = true)
    @Schema(description = "전자결재문서아이디", nullable = true)
    private String elecPrvDcuId; //--전자결재문서아이디

    @Column(name = "file_evd_gpno", length = 20, nullable = true)
    @Schema(description = "파일증빙그룹번호", nullable = true)
    private String fileEvdGpno; //--파일증빙그룹번호

    @Column(name = "myct_py_bjyn", length = 1, nullable = true)
    @Schema(description = "다건지급대상여부", nullable = true)
    private String myctPyBjyn; //--다건지급대상여부

    @Column(name = "db_acc_sbjcd", length = 11, nullable = true)
    @Schema(description = "차변계정과목코드", nullable = true)
    private String dbAccSbjcd; //--차변계정과목코드

    @Column(name = "crdt_acc_sbjcd", length = 11, nullable = true)
    @Schema(description = "대변계정과목코드", nullable = true)
    private String crdtAccSbjcd; //--대변계정과목코드

    @Column(name = "py_dl_flgcd", length = 10, nullable = false)
    @Schema(description = "지급처리구분코드", nullable = false)
    private String pyDlFlgcd; //--지급처리구분코드

    @Column(name = "inr_edamt_dldt", nullable = true)
    @Schema(description = "통합입출금처리일자", nullable = true)
    private Date inrEdamtDldt; //--통합입출금처리일자

    @Column(name = "inr_rtxno", length = 20, nullable = true)
    @Schema(description = "통합영수증번호", nullable = true)
    private String inrRtxno; //--통합영수증번호

    @Column(name = "sms_bj_yn", length = 1, nullable = true)
    @Schema(description = "sms대상여부", nullable = true)
    private String smsBjYn; //--sms대상여부

    @Column(name = "hpno", length = 50, nullable = true)
    @Schema(description = "휴대폰번호", nullable = true)
    private String hpno; //--휴대폰번호

    @Column(name = "chr_cn", length = 4000, nullable = true)
    @Schema(description = "문자내용", nullable = true)
    private String chrCn; //--문자내용

    @Column(name = "fina_dat_vrf_flg1_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분1값", nullable = true)
    private String finaDatVrfFlg1Vl; //--재무데이터검증구분1값

    @Column(name = "fina_dat_vrf_flg2_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분2값", nullable = true)
    private String finaDatVrfFlg2Vl; //--재무데이터검증구분2값

    @Column(name = "fina_dat_vrf_flg3_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분3값", nullable = true)
    private String finaDatVrfFlg3Vl; //--재무데이터검증구분3값

    @Column(name = "kko_pay_py_yn", length = 1, nullable = true)
    @Schema(description = "카카오pay지급여부", nullable = true)
    private String kkoPayPyYn; //--카카오pay지급여부

    @Column(name = "kko_acc_id", length = 7, nullable = true)
    @Schema(description = "카카오계정id", nullable = true)
    private String kkoAccId; //--카카오계정id

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Timestamp inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Timestamp mdfDthms; //--수정일시

    @Builder
    public FinPyCr(String pyCrno, String ldgKndcd, String ldgno, Date crdt, String actOrgcd, String rqogCd, String rqfno, String crSyscd, String dlTpO1Csfcd, String dlTpO2Csfcd, String pylno, String pyplFlgcd, String pyplKndcd, String bkcd, String pyplActno, String dpsr, String pylnm, String pynctTpcd, String dfpcd, String pyMtdcd, String mncd, Date pyPrdt, BigDecimal pyPrWoamt, BigDecimal pyPrFcamt, BigDecimal pyDcnWoamt, BigDecimal pyDcnFcamt, BigDecimal rlPyDcnWoamt, BigDecimal rlPyDcnFcamt, String fxPldoqFlgcd, BigDecimal fxPqamt, BigDecimal apXcrt, Date fcDcndt, String fcDcnStfno, BigDecimal fcDcnApXcrt, String selfYn, String rcrRsno, String rcrNm, String ikdGrpcd, String insImcd, String invlnGdcd, String bsnsCnnnoFlgcd, String bsnsCnnno, String crtDscno, String victmDscno, String nrdpsDscno, String dmgnm, String udrtkTycd, String ndsno, String fndcd, Date apdt, String apOrgcd, String apStfno, String rpAdmcrNo, Date rpAdmcrOutdt, String rpAdmcrOutbjYn, Date dsodt, String bdgDpno, Date pydt, String pyOrgcd, String pyXcno, String chbfCrno, String pyDlO1Flgcd, String pyDlO2Flgcd, Date frDpdt, String frDhOrgcd, String frDhStfno, String pyCrRmTpcd, String jonlYn, String pyDlEryn, String pyErNtMtdcd, Date fcByIptdt, String fcByInpStfno, String rmStcd, String pyCrStcd, Date pyReqdt, Date repyReqdt, String repyRqStfno, String repyRqRscd, Date slpdt, String slpno, Date pyStDvDldt, String pystDvDlStfno, String pystDvDlOrgcd, String pyno, String cclBjPyno, String pyCstno, String cclBjPyCstno, String pyStDvDlno, String cclBjNdsno, Date chrpsDsdt, String chrpsAsmtOrgcd, String chrpsAsmtStfno, String wdraBkcd, String wdraActno, String stYymm, String bdlTfBsnsFlgcd, BigDecimal bdlTfDlSeqno, String notsMtt, BigDecimal pystDvDlSeqno, String bdlRmYn, String rcapmOrgDtFlgcd, String smsPyTpcd, String bsnsAdxFileDscno, String elecEvdImgBsnno, String elecPrvDcuId, String fileEvdGpno, String myctPyBjyn, String dbAccSbjcd, String crdtAccSbjcd, String pyDlFlgcd, Date inrEdamtDldt, String inrRtxno, String smsBjYn, String hpno, String chrCn, String finaDatVrfFlg1Vl, String finaDatVrfFlg2Vl, String finaDatVrfFlg3Vl, String kkoPayPyYn, String kkoAccId, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.pyCrno = pyCrno;
        this.ldgKndcd = ldgKndcd;
        this.ldgno = ldgno;
        this.crdt = crdt;
        this.actOrgcd = actOrgcd;
        this.rqogCd = rqogCd;
        this.rqfno = rqfno;
        this.crSyscd = crSyscd;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.pylno = pylno;
        this.pyplFlgcd = pyplFlgcd;
        this.pyplKndcd = pyplKndcd;
        this.bkcd = bkcd;
        this.pyplActno = pyplActno;
        this.dpsr = dpsr;
        this.pylnm = pylnm;
        this.pynctTpcd = pynctTpcd;
        this.dfpcd = dfpcd;
        this.pyMtdcd = pyMtdcd;
        this.mncd = mncd;
        this.pyPrdt = pyPrdt;
        this.pyPrWoamt = pyPrWoamt;
        this.pyPrFcamt = pyPrFcamt;
        this.pyDcnWoamt = pyDcnWoamt;
        this.pyDcnFcamt = pyDcnFcamt;
        this.rlPyDcnWoamt = rlPyDcnWoamt;
        this.rlPyDcnFcamt = rlPyDcnFcamt;
        this.fxPldoqFlgcd = fxPldoqFlgcd;
        this.fxPqamt = fxPqamt;
        this.apXcrt = apXcrt;
        this.fcDcndt = fcDcndt;
        this.fcDcnStfno = fcDcnStfno;
        this.fcDcnApXcrt = fcDcnApXcrt;
        this.selfYn = selfYn;
        this.rcrRsno = rcrRsno;
        this.rcrNm = rcrNm;
        this.ikdGrpcd = ikdGrpcd;
        this.insImcd = insImcd;
        this.invlnGdcd = invlnGdcd;
        this.bsnsCnnnoFlgcd = bsnsCnnnoFlgcd;
        this.bsnsCnnno = bsnsCnnno;
        this.crtDscno = crtDscno;
        this.victmDscno = victmDscno;
        this.nrdpsDscno = nrdpsDscno;
        this.dmgnm = dmgnm;
        this.udrtkTycd = udrtkTycd;
        this.ndsno = ndsno;
        this.fndcd = fndcd;
        this.apdt = apdt;
        this.apOrgcd = apOrgcd;
        this.apStfno = apStfno;
        this.rpAdmcrNo = rpAdmcrNo;
        this.rpAdmcrOutdt = rpAdmcrOutdt;
        this.rpAdmcrOutbjYn = rpAdmcrOutbjYn;
        this.dsodt = dsodt;
        this.bdgDpno = bdgDpno;
        this.pydt = pydt;
        this.pyOrgcd = pyOrgcd;
        this.pyXcno = pyXcno;
        this.chbfCrno = chbfCrno;
        this.pyDlO1Flgcd = pyDlO1Flgcd;
        this.pyDlO2Flgcd = pyDlO2Flgcd;
        this.frDpdt = frDpdt;
        this.frDhOrgcd = frDhOrgcd;
        this.frDhStfno = frDhStfno;
        this.pyCrRmTpcd = pyCrRmTpcd;
        this.jonlYn = jonlYn;
        this.pyDlEryn = pyDlEryn;
        this.pyErNtMtdcd = pyErNtMtdcd;
        this.fcByIptdt = fcByIptdt;
        this.fcByInpStfno = fcByInpStfno;
        this.rmStcd = rmStcd;
        this.pyCrStcd = pyCrStcd;
        this.pyReqdt = pyReqdt;
        this.repyReqdt = repyReqdt;
        this.repyRqStfno = repyRqStfno;
        this.repyRqRscd = repyRqRscd;
        this.slpdt = slpdt;
        this.slpno = slpno;
        this.pyStDvDldt = pyStDvDldt;
        this.pystDvDlStfno = pystDvDlStfno;
        this.pystDvDlOrgcd = pystDvDlOrgcd;
        this.pyno = pyno;
        this.cclBjPyno = cclBjPyno;
        this.pyCstno = pyCstno;
        this.cclBjPyCstno = cclBjPyCstno;
        this.pyStDvDlno = pyStDvDlno;
        this.cclBjNdsno = cclBjNdsno;
        this.chrpsDsdt = chrpsDsdt;
        this.chrpsAsmtOrgcd = chrpsAsmtOrgcd;
        this.chrpsAsmtStfno = chrpsAsmtStfno;
        this.wdraBkcd = wdraBkcd;
        this.wdraActno = wdraActno;
        this.stYymm = stYymm;
        this.bdlTfBsnsFlgcd = bdlTfBsnsFlgcd;
        this.bdlTfDlSeqno = bdlTfDlSeqno;
        this.notsMtt = notsMtt;
        this.pystDvDlSeqno = pystDvDlSeqno;
        this.bdlRmYn = bdlRmYn;
        this.rcapmOrgDtFlgcd = rcapmOrgDtFlgcd;
        this.smsPyTpcd = smsPyTpcd;
        this.bsnsAdxFileDscno = bsnsAdxFileDscno;
        this.elecEvdImgBsnno = elecEvdImgBsnno;
        this.elecPrvDcuId = elecPrvDcuId;
        this.fileEvdGpno = fileEvdGpno;
        this.myctPyBjyn = myctPyBjyn;
        this.dbAccSbjcd = dbAccSbjcd;
        this.crdtAccSbjcd = crdtAccSbjcd;
        this.pyDlFlgcd = pyDlFlgcd;
        this.inrEdamtDldt = inrEdamtDldt;
        this.inrRtxno = inrRtxno;
        this.smsBjYn = smsBjYn;
        this.hpno = hpno;
        this.chrCn = chrCn;
        this.finaDatVrfFlg1Vl = finaDatVrfFlg1Vl;
        this.finaDatVrfFlg2Vl = finaDatVrfFlg2Vl;
        this.finaDatVrfFlg3Vl = finaDatVrfFlg3Vl;
        this.kkoPayPyYn = kkoPayPyYn;
        this.kkoAccId = kkoAccId;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
