/**
 * InsCrRelpc Entity 클래스
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

import com.skims.domain.listener.InsCrRelpcListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCrRelpcListener.class)
@Table(name = "ins_cr_relpc") //--계약관계자
@Schema(description = "계약관계자")
public class InsCrRelpc implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    private BigDecimal relpcSeqno; //--관계자순번

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private LocalDate apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private LocalDate apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private LocalDateTime ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private LocalDateTime ndsApNdDthms; //--배서승인종료일시

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "relpc_tpcd", length = 10, nullable = false)
    @Schema(description = "관계자유형코드", nullable = false)
    private String relpcTpcd; //--관계자유형코드

    @Column(name = "relpc_stcd", length = 10, nullable = false)
    @Schema(description = "관계자상태코드", nullable = false)
    private String relpcStcd; //--관계자상태코드

    @Column(name = "st_chdt", nullable = true)
    @Schema(description = "상태변경일자", nullable = true)
    private LocalDate stChdt; //--상태변경일자

    @Column(name = "hngl_relnm", length = 100, nullable = true)
    @Schema(description = "한글관계자명", nullable = true)
    private String hnglRelnm; //--한글관계자명

    @Column(name = "eng_relnm", length = 200, nullable = true)
    @Schema(description = "영문관계자명", nullable = true)
    private String engRelnm; //--영문관계자명

    @Column(name = "ctm_dscno", length = 48, nullable = true)
    @Schema(description = "고객식별번호", nullable = true)
    private String ctmDscno; //--고객식별번호

    @Column(name = "relpc_dscno_flgcd", length = 10, nullable = true)
    @Schema(description = "관계자식별번호구분코드", nullable = true)
    private String relpcDscnoFlgcd; //--관계자식별번호구분코드

    @Column(name = "dlncd", length = 10, nullable = true)
    @Schema(description = "거래선코드", nullable = true)
    private String dlncd; //--거래선코드

    @Column(name = "prs_relpc_yn", length = 1, nullable = true)
    @Schema(description = "대표관계자여부", nullable = true)
    private String prsRelpcYn; //--대표관계자여부

    @Column(name = "cntad_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "연락처순번", nullable = true)
    private BigDecimal cntadSeqno; //--연락처순번

    @Column(name = "cntad_flgcd", length = 10, nullable = true)
    @Schema(description = "연락처구분코드", nullable = true)
    private String cntadFlgcd; //--연락처구분코드

    @Column(name = "relpc_name", length = 100, nullable = true)
    @Schema(description = "관계자호칭", nullable = true)
    private String relpcName; //--관계자호칭

    @Column(name = "relpc_name_pstcd", length = 10, nullable = true)
    @Schema(description = "관계자호칭위치코드", nullable = true)
    private String relpcNamePstcd; //--관계자호칭위치코드

    @Column(name = "relpc_rlecd", length = 10, nullable = true)
    @Schema(description = "관계자역할코드", nullable = true)
    private String relpcRlecd; //--관계자역할코드

    @Column(name = "isrdt", nullable = true)
    @Schema(description = "가입일자", nullable = true)
    private LocalDate isrdt; //--가입일자

    @Column(name = "ppr_relpc_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "상위관계자순번", nullable = true)
    private BigDecimal pprRelpcSeqno; //--상위관계자순번

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    private String ctmno; //--고객번호

    @Column(name = "sbd_gr_ctmno", length = 13, nullable = true)
    @Schema(description = "하위단체고객번호", nullable = true)
    private String sbdGrCtmno; //--하위단체고객번호

    @Column(name = "gu_plyno", length = 16, nullable = true)
    @Schema(description = "구증권번호", nullable = true)
    private String guPlyno; //--구증권번호

    @Column(name = "gu_fire_lgin_id", length = 20, nullable = true)
    @Schema(description = "구화재로그인아이디", nullable = true)
    private String guFireLginId; //--구화재로그인아이디

    @Column(name = "orel_cd", length = 10, nullable = true)
    @Schema(description = "구관계코드", nullable = true)
    private String orelCd; //--구관계코드

    @Column(name = "sub_ctm_dscno", length = 48, nullable = true)
    @Schema(description = "부고객식별번호", nullable = true)
    private String subCtmDscno; //--부고객식별번호

    @Column(name = "fire_mn_nrdps_yn", length = 1, nullable = true)
    @Schema(description = "화특주피보험자여부", nullable = true)
    private String fireMnNrdpsYn; //--화특주피보험자여부

    @Column(name = "injr_hsp_cvr_yn", length = 1, nullable = true)
    @Schema(description = "상해입원담보여부", nullable = true)
    private String injrHspCvrYn; //--상해입원담보여부

    @Column(name = "injr_otp_cvr_yn", length = 1, nullable = true)
    @Schema(description = "상해통원담보여부", nullable = true)
    private String injrOtpCvrYn; //--상해통원담보여부

    @Column(name = "dsas_hsp_cvr_yn", length = 1, nullable = true)
    @Schema(description = "질병입원담보여부", nullable = true)
    private String dsasHspCvrYn; //--질병입원담보여부

    @Column(name = "dsas_otp_cvr_yn", length = 1, nullable = true)
    @Schema(description = "질병통원담보여부", nullable = true)
    private String dsasOtpCvrYn; //--질병통원담보여부

    @Column(name = "gnrz_hsp_cvr_yn", length = 1, nullable = true)
    @Schema(description = "종합입원담보여부", nullable = true)
    private String gnrzHspCvrYn; //--종합입원담보여부

    @Column(name = "gnrz_otp_cvr_yn", length = 1, nullable = true)
    @Schema(description = "종합통원담보여부", nullable = true)
    private String gnrzOtpCvrYn; //--종합통원담보여부

    @Column(name = "sep_cr_cn_yn", length = 1, nullable = true)
    @Schema(description = "분리계약해약여부", nullable = true)
    private String sepCrCnYn; //--분리계약해약여부

    @Column(name = "rntcr_yn", length = 1, nullable = true)
    @Schema(description = "렌트카여부", nullable = true)
    private String rntcrYn; //--렌트카여부

    @Column(name = "fn_orgcd", length = 7, nullable = true)
    @Schema(description = "금융기관코드", nullable = true)
    private String fnOrgcd; //--금융기관코드

    @Column(name = "prps_flgcd", length = 10, nullable = true)
    @Schema(description = "질권자구분코드", nullable = true)
    private String prpsFlgcd; //--질권자구분코드

    @Column(name = "prm_pym_rt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "보험료납부비율", nullable = false)
    private BigDecimal prmPymRt; //--보험료납부비율

    @Column(name = "hndps_yn", length = 1, nullable = true)
    @Schema(description = "장애인여부", nullable = true)
    private String hndpsYn; //--장애인여부

    @Column(name = "ntn_mrtmn_yn", length = 1, nullable = true)
    @Schema(description = "국가유공자여부", nullable = true)
    private String ntnMrtmnYn; //--국가유공자여부

    @Column(name = "ba_sadps_yn", length = 1, nullable = true)
    @Schema(description = "기초수급자여부", nullable = true)
    private String baSadpsYn; //--기초수급자여부

    @Column(name = "crt_flgcd", length = 10, nullable = true)
    @Schema(description = "계약자구분코드", nullable = true)
    private String crtFlgcd; //--계약자구분코드

    @Column(name = "dmos_flgcd", length = 10, nullable = true)
    @Schema(description = "국내외구분코드", nullable = true)
    private String dmosFlgcd; //--국내외구분코드

    @Column(name = "indpd_mrtmn_yn", length = 1, nullable = true)
    @Schema(description = "독립유공자여부", nullable = true)
    private String indpdMrtmnYn; //--독립유공자여부

    @Column(name = "dflt_pt_yn", length = 1, nullable = true)
    @Schema(description = "고엽제환자여부", nullable = true)
    private String dfltPtYn; //--고엽제환자여부

    @Column(name = "dmrcy_518_injd_yn", length = 1, nullable = true)
    @Schema(description = "민주518부상자여부", nullable = true)
    private String dmrcy518InjdYn; //--민주518부상자여부

    @Column(name = "ndtm_ris_agre_yn", length = 1, nullable = true)
    @Schema(description = "만기시재가입동의여부", nullable = true)
    private String ndtmRisAgreYn; //--만기시재가입동의여부

    @Column(name = "pfb_flgcd", length = 10, nullable = true)
    @Schema(description = "수익자구분코드", nullable = true)
    private String pfbFlgcd; //--수익자구분코드

    @Column(name = "nrdps_agre_yn", length = 1, nullable = true)
    @Schema(description = "피보험자동의여부", nullable = true)
    private String nrdpsAgreYn; //--피보험자동의여부

    @Column(name = "ut_rt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "도급비율", nullable = false)
    private BigDecimal utRt; //--도급비율

    @Column(name = "md_cfcap_entp_yn", length = 1, nullable = true)
    @Schema(description = "조정계수적용업체여부", nullable = true)
    private String mdCfcapEntpYn; //--조정계수적용업체여부

    @Column(name = "sexcd", length = 10, nullable = true)
    @Schema(description = "성별코드", nullable = true)
    private String sexcd; //--성별코드

    @Column(name = "jbcd", length = 10, nullable = true)
    @Schema(description = "직업코드", nullable = true)
    private String jbcd; //--직업코드

    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "직업변경순번", nullable = true)
    private BigDecimal jbChSeqno; //--직업변경순번

    @Column(name = "age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연령", nullable = true)
    private BigDecimal age; //--연령

    @Column(name = "wdg_yn", length = 1, nullable = true)
    @Schema(description = "결혼여부", nullable = true)
    private String wdgYn; //--결혼여부

    @Column(name = "lic_specd", length = 10, nullable = true)
    @Schema(description = "면허종별코드", nullable = true)
    private String licSpecd; //--면허종별코드

    @Column(name = "licno", length = 48, nullable = true)
    @Schema(description = "면허번호", nullable = true)
    private String licno; //--면허번호

    @Column(name = "lic_cqdt", nullable = true)
    @Schema(description = "면허취득일자", nullable = true)
    private LocalDate licCqdt; //--면허취득일자

    @Column(name = "clm_crr_yn", length = 1, nullable = true)
    @Schema(description = "사고경력여부", nullable = true)
    private String clmCrrYn; //--사고경력여부

    @Column(name = "drve_crr_yyct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "운전경력년수", nullable = true)
    private BigDecimal drveCrrYyct; //--운전경력년수

    @Column(name = "drve_crr_mntct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "운전경력개월수", nullable = true)
    private BigDecimal drveCrrMntct; //--운전경력개월수

    @Column(name = "drv_flgcd", length = 10, nullable = true)
    @Schema(description = "운전자구분코드", nullable = true)
    private String drvFlgcd; //--운전자구분코드

    @Column(name = "hot_stdt", nullable = true)
    @Schema(description = "임대차시기일자", nullable = true)
    private LocalDate hotStdt; //--임대차시기일자

    @Column(name = "hot_clsdt", nullable = true)
    @Schema(description = "임대차종기일자", nullable = true)
    private LocalDate hotClsdt; //--임대차종기일자

    @Column(name = "hot_oj", length = 300, nullable = true)
    @Schema(description = "임대차목적", nullable = true)
    private String hotOj; //--임대차목적

    @Column(name = "relpc_scr_inp_yn", length = 1, nullable = true)
    @Schema(description = "관계자화면입력여부", nullable = true)
    private String relpcScrInpYn; //--관계자화면입력여부

    @Column(name = "idnty_cnfc_kndcd", length = 10, nullable = true)
    @Schema(description = "신원확인증종류코드", nullable = true)
    private String idntyCnfcKndcd; //--신원확인증종류코드

    @Column(name = "idnty_cnfc_et_info", length = 100, nullable = true)
    @Schema(description = "신원확인증기타정보", nullable = true)
    private String idntyCnfcEtInfo; //--신원확인증기타정보

    @Column(name = "idnty_cnfc_no", length = 48, nullable = true)
    @Schema(description = "신원확인증번호", nullable = true)
    private String idntyCnfcNo; //--신원확인증번호

    @Column(name = "idnty_cnfc_isdt", nullable = true)
    @Schema(description = "신원확인증발급일자", nullable = true)
    private LocalDate idntyCnfcIsdt; //--신원확인증발급일자

    @Column(name = "idnty_cnfc_is_orgnm", length = 100, nullable = true)
    @Schema(description = "신원확인증발급기관명", nullable = true)
    private String idntyCnfcIsOrgnm; //--신원확인증발급기관명

    @Column(name = "idnty_cnf_pdtnm", length = 100, nullable = true)
    @Schema(description = "신원확인대표자명", nullable = true)
    private String idntyCnfPdtnm; //--신원확인대표자명

    @Column(name = "idnty_cnf_bnnm", length = 200, nullable = true)
    @Schema(description = "신원확인업종명", nullable = true)
    private String idntyCnfBnnm; //--신원확인업종명

    @Column(name = "rdch_cr_tpcd", length = 10, nullable = true)
    @Schema(description = "승환계약유형코드", nullable = true)
    private String rdchCrTpcd; //--승환계약유형코드

    @Column(name = "cr_udrtk_arecd", length = 10, nullable = true)
    @Schema(description = "자동차인수지역코드", nullable = true)
    private String crUdrtkArecd; //--자동차인수지역코드

    @Column(name = "pect_sl_mntr_chncd", length = 10, nullable = true)
    @Schema(description = "완전판매모니터링채널코드", nullable = true)
    private String pectSlMntrChncd; //--완전판매모니터링채널코드

    @Column(name = "cm_mn_us_cn_agryn", length = 1, nullable = true)
    @Schema(description = "통신수단이용해지동의여부", nullable = true)
    private String cmMnUsCnAgryn; //--통신수단이용해지동의여부

    @Column(name = "pfb_astch_agr_yn", length = 1, nullable = true)
    @Schema(description = "수익자지정변경약정여부", nullable = true)
    private String pfbAstchAgrYn; //--수익자지정변경약정여부

    @Column(name = "pfb_astch_rscd", length = 10, nullable = true)
    @Schema(description = "수익자지정변경사유코드", nullable = true)
    private String pfbAstchRscd; //--수익자지정변경사유코드

    @Column(name = "is_crr_appr_strdt", nullable = true)
    @Schema(description = "가입경력인정시작일자", nullable = true)
    private LocalDate isCrrApprStrdt; //--가입경력인정시작일자

    @Column(name = "is_crr_appr_nddt", nullable = true)
    @Schema(description = "가입경력인정종료일자", nullable = true)
    private LocalDate isCrrApprNddt; //--가입경력인정종료일자

    @Column(name = "md_slr_sadps_yn", length = 1, nullable = true)
    @Schema(description = "의료급여수급자여부", nullable = true)
    private String mdSlrSadpsYn; //--의료급여수급자여부

    @Column(name = "fd_wsh_bj_grdcd", length = 10, nullable = true)
    @Schema(description = "자금세탁대상등급코드", nullable = true)
    private String fdWshBjGrdcd; //--자금세탁대상등급코드

    @Column(name = "ovse_pytx_dty_tpcd", length = 10, nullable = true)
    @Schema(description = "해외납세의무유형코드", nullable = true)
    private String ovsePytxDtyTpcd; //--해외납세의무유형코드

    @Column(name = "mail_rcv_yn", length = 1, nullable = true)
    @Schema(description = "이메일수신여부", nullable = true)
    private String mailRcvYn; //--이메일수신여부

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
    public InsCrRelpc(String plyno, BigDecimal relpcSeqno, LocalDate apNddt, LocalDate apStrdt, String ndsno, String valdNdsYn, LocalDateTime ndsApStrDthms, LocalDateTime ndsApNdDthms, String ikdGrpcd, String relpcTpcd, String relpcStcd, LocalDate stChdt, String hnglRelnm, String engRelnm, String ctmDscno, String relpcDscnoFlgcd, String dlncd, String prsRelpcYn, BigDecimal cntadSeqno, String cntadFlgcd, String relpcName, String relpcNamePstcd, String relpcRlecd, LocalDate isrdt, BigDecimal pprRelpcSeqno, String ctmno, String sbdGrCtmno, String guPlyno, String guFireLginId, String orelCd, String subCtmDscno, String fireMnNrdpsYn, String injrHspCvrYn, String injrOtpCvrYn, String dsasHspCvrYn, String dsasOtpCvrYn, String gnrzHspCvrYn, String gnrzOtpCvrYn, String sepCrCnYn, String rntcrYn, String fnOrgcd, String prpsFlgcd, BigDecimal prmPymRt, String hndpsYn, String ntnMrtmnYn, String baSadpsYn, String crtFlgcd, String dmosFlgcd, String indpdMrtmnYn, String dfltPtYn, String dmrcy518InjdYn, String ndtmRisAgreYn, String pfbFlgcd, String nrdpsAgreYn, BigDecimal utRt, String mdCfcapEntpYn, String sexcd, String jbcd, BigDecimal jbChSeqno, BigDecimal age, String wdgYn, String licSpecd, String licno, LocalDate licCqdt, String clmCrrYn, BigDecimal drveCrrYyct, BigDecimal drveCrrMntct, String drvFlgcd, LocalDate hotStdt, LocalDate hotClsdt, String hotOj, String relpcScrInpYn, String idntyCnfcKndcd, String idntyCnfcEtInfo, String idntyCnfcNo, LocalDate idntyCnfcIsdt, String idntyCnfcIsOrgnm, String idntyCnfPdtnm, String idntyCnfBnnm, String rdchCrTpcd, String crUdrtkArecd, String pectSlMntrChncd, String cmMnUsCnAgryn, String pfbAstchAgrYn, String pfbAstchRscd, LocalDate isCrrApprStrdt, LocalDate isCrrApprNddt, String mdSlrSadpsYn, String fdWshBjGrdcd, String ovsePytxDtyTpcd, String mailRcvYn, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plyno = plyno;
        this.relpcSeqno = relpcSeqno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.ikdGrpcd = ikdGrpcd;
        this.relpcTpcd = relpcTpcd;
        this.relpcStcd = relpcStcd;
        this.stChdt = stChdt;
        this.hnglRelnm = hnglRelnm;
        this.engRelnm = engRelnm;
        this.ctmDscno = ctmDscno;
        this.relpcDscnoFlgcd = relpcDscnoFlgcd;
        this.dlncd = dlncd;
        this.prsRelpcYn = prsRelpcYn;
        this.cntadSeqno = cntadSeqno;
        this.cntadFlgcd = cntadFlgcd;
        this.relpcName = relpcName;
        this.relpcNamePstcd = relpcNamePstcd;
        this.relpcRlecd = relpcRlecd;
        this.isrdt = isrdt;
        this.pprRelpcSeqno = pprRelpcSeqno;
        this.ctmno = ctmno;
        this.sbdGrCtmno = sbdGrCtmno;
        this.guPlyno = guPlyno;
        this.guFireLginId = guFireLginId;
        this.orelCd = orelCd;
        this.subCtmDscno = subCtmDscno;
        this.fireMnNrdpsYn = fireMnNrdpsYn;
        this.injrHspCvrYn = injrHspCvrYn;
        this.injrOtpCvrYn = injrOtpCvrYn;
        this.dsasHspCvrYn = dsasHspCvrYn;
        this.dsasOtpCvrYn = dsasOtpCvrYn;
        this.gnrzHspCvrYn = gnrzHspCvrYn;
        this.gnrzOtpCvrYn = gnrzOtpCvrYn;
        this.sepCrCnYn = sepCrCnYn;
        this.rntcrYn = rntcrYn;
        this.fnOrgcd = fnOrgcd;
        this.prpsFlgcd = prpsFlgcd;
        this.prmPymRt = prmPymRt;
        this.hndpsYn = hndpsYn;
        this.ntnMrtmnYn = ntnMrtmnYn;
        this.baSadpsYn = baSadpsYn;
        this.crtFlgcd = crtFlgcd;
        this.dmosFlgcd = dmosFlgcd;
        this.indpdMrtmnYn = indpdMrtmnYn;
        this.dfltPtYn = dfltPtYn;
        this.dmrcy518InjdYn = dmrcy518InjdYn;
        this.ndtmRisAgreYn = ndtmRisAgreYn;
        this.pfbFlgcd = pfbFlgcd;
        this.nrdpsAgreYn = nrdpsAgreYn;
        this.utRt = utRt;
        this.mdCfcapEntpYn = mdCfcapEntpYn;
        this.sexcd = sexcd;
        this.jbcd = jbcd;
        this.jbChSeqno = jbChSeqno;
        this.age = age;
        this.wdgYn = wdgYn;
        this.licSpecd = licSpecd;
        this.licno = licno;
        this.licCqdt = licCqdt;
        this.clmCrrYn = clmCrrYn;
        this.drveCrrYyct = drveCrrYyct;
        this.drveCrrMntct = drveCrrMntct;
        this.drvFlgcd = drvFlgcd;
        this.hotStdt = hotStdt;
        this.hotClsdt = hotClsdt;
        this.hotOj = hotOj;
        this.relpcScrInpYn = relpcScrInpYn;
        this.idntyCnfcKndcd = idntyCnfcKndcd;
        this.idntyCnfcEtInfo = idntyCnfcEtInfo;
        this.idntyCnfcNo = idntyCnfcNo;
        this.idntyCnfcIsdt = idntyCnfcIsdt;
        this.idntyCnfcIsOrgnm = idntyCnfcIsOrgnm;
        this.idntyCnfPdtnm = idntyCnfPdtnm;
        this.idntyCnfBnnm = idntyCnfBnnm;
        this.rdchCrTpcd = rdchCrTpcd;
        this.crUdrtkArecd = crUdrtkArecd;
        this.pectSlMntrChncd = pectSlMntrChncd;
        this.cmMnUsCnAgryn = cmMnUsCnAgryn;
        this.pfbAstchAgrYn = pfbAstchAgrYn;
        this.pfbAstchRscd = pfbAstchRscd;
        this.isCrrApprStrdt = isCrrApprStrdt;
        this.isCrrApprNddt = isCrrApprNddt;
        this.mdSlrSadpsYn = mdSlrSadpsYn;
        this.fdWshBjGrdcd = fdWshBjGrdcd;
        this.ovsePytxDtyTpcd = ovsePytxDtyTpcd;
        this.mailRcvYn = mailRcvYn;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
