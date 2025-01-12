/**
 * InsNrdpsTisrdAtr Entity 클래스
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

import com.skims.domain.listener.InsNrdpsTisrdAtrListener;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsNrdpsTisrdAtrListener.class)
@SuperBuilder(toBuilder = true)
@Table(name = "ins_nrdps_tisrd_atr") //--피보험자부보자속성
@Schema(description = "피보험자부보자속성")
public class InsNrdpsTisrdAtr implements Serializable {
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

    @Column(name = "nrdps_tisrd_flgcd", length = 10, nullable = true)
    @Schema(description = "피보험자부보자구분코드", nullable = true)
    private String nrdpsTisrdFlgcd; //--피보험자부보자구분코드

    @Column(name = "cr_plcd", length = 10, nullable = true)
    @Schema(description = "계약플랜코드", nullable = true)
    private String crPlcd; //--계약플랜코드

    @Column(name = "pl_csfcd", length = 10, nullable = true)
    @Schema(description = "플랜분류코드", nullable = true)
    private String plCsfcd; //--플랜분류코드

    @Column(name = "md_nrdps_flgcd", length = 10, nullable = true)
    @Schema(description = "의료피보험자구분코드", nullable = true)
    private String mdNrdpsFlgcd; //--의료피보험자구분코드

    @Column(name = "gp_is_tp", length = 30, nullable = true)
    @Schema(description = "그룹가입유형", nullable = true)
    private String gpIsTp; //--그룹가입유형

    @Column(name = "nrdps_or_tisct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "피보험자부보자수", nullable = true)
    private BigDecimal nrdpsOrTisct; //--피보험자부보자수

    @Column(name = "fmlct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "가족수", nullable = true)
    private BigDecimal fmlct; //--가족수

    @Column(name = "man_psct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "남자인원수", nullable = true)
    private BigDecimal manPsct; //--남자인원수

    @Column(name = "fml_psct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "여자인원수", nullable = true)
    private BigDecimal fmlPsct; //--여자인원수

    @Column(name = "rxam_bj_yn", length = 1, nullable = true)
    @Schema(description = "재심사대상여부", nullable = true)
    private String rxamBjYn; //--재심사대상여부

    @Column(name = "twhvc_drve_yn", length = 1, nullable = true)
    @Schema(description = "이륜차운전여부", nullable = true)
    private String twhvcDrveYn; //--이륜차운전여부

    @Column(name = "drve_yn", length = 1, nullable = true)
    @Schema(description = "운전여부", nullable = true)
    private String drveYn; //--운전여부

    @Column(name = "ins_st", nullable = true)
    @Schema(description = "보험시기", nullable = true)
    private LocalDate insSt; //--보험시기

    @Column(name = "ins_st_hms", length = 4, nullable = true)
    @Schema(description = "보험시기시각", nullable = true)
    private String insStHms; //--보험시기시각

    @Column(name = "ins_clstr", nullable = true)
    @Schema(description = "보험종기", nullable = true)
    private LocalDate insClstr; //--보험종기

    @Column(name = "ins_clstr_hms", length = 4, nullable = true)
    @Schema(description = "보험종기시각", nullable = true)
    private String insClstrHms; //--보험종기시각

    @Column(name = "rfd_clc_st", nullable = true)
    @Schema(description = "준비금산정시기", nullable = true)
    private LocalDate rfdClcSt; //--준비금산정시기

    @Column(name = "rfd_clc_clstr", nullable = true)
    @Schema(description = "준비금산정종기", nullable = true)
    private LocalDate rfdClcClstr; //--준비금산정종기

    @Column(name = "drve_tycd", length = 10, nullable = true)
    @Schema(description = "운전형태코드", nullable = true)
    private String drveTycd; //--운전형태코드

    @Column(name = "brth", length = 8, nullable = true)
    @Schema(description = "생년월일", nullable = true)
    private String brth; //--생년월일

    @Column(name = "embr_yn", length = 1, nullable = true)
    @Schema(description = "태아여부", nullable = true)
    private String embrYn; //--태아여부

    @Column(name = "sexcd", length = 10, nullable = true)
    @Schema(description = "성별코드", nullable = true)
    private String sexcd; //--성별코드

    @Column(name = "age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연령", nullable = true)
    private BigDecimal age; //--연령

    @Column(name = "jbcd", length = 10, nullable = true)
    @Schema(description = "직업코드", nullable = true)
    private String jbcd; //--직업코드

    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "직업변경순번", nullable = true)
    private BigDecimal jbChSeqno; //--직업변경순번

    @Column(name = "injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "상해급수코드", nullable = true)
    private String injrRnkcd; //--상해급수코드

    @Column(name = "trf_rnkcd", length = 10, nullable = true)
    @Schema(description = "교통급수코드", nullable = true)
    private String trfRnkcd; //--교통급수코드

    @Column(name = "injr_grdcd", length = 10, nullable = true)
    @Schema(description = "상해등급코드", nullable = true)
    private String injrGrdcd; //--상해등급코드

    @Column(name = "ptn", length = 50, nullable = true)
    @Schema(description = "직위", nullable = true)
    private String ptn; //--직위

    @Column(name = "bdt", length = 50, nullable = true)
    @Schema(description = "직무", nullable = true)
    private String bdt; //--직무

    @Column(name = "bthdt", nullable = true)
    @Schema(description = "출산일자", nullable = true)
    private LocalDate bthdt; //--출산일자

    @Column(name = "stbdt", nullable = true)
    @Schema(description = "사산일자", nullable = true)
    private LocalDate stbdt; //--사산일자

    @Column(name = "preg_rndwk", precision = 2, scale = 0, nullable = true)
    @Schema(description = "임신경과주", nullable = true)
    private BigDecimal pregRndwk; //--임신경과주

    @Column(name = "mdcs_rgt_flgcd", length = 10, nullable = true)
    @Schema(description = "의료비등록구분코드", nullable = true)
    private String mdcsRgtFlgcd; //--의료비등록구분코드

    @Column(name = "mdcs_rgt_stcd", length = 10, nullable = true)
    @Schema(description = "의료비등록상태코드", nullable = true)
    private String mdcsRgtStcd; //--의료비등록상태코드

    @Column(name = "stt_pfsst_flgcd", length = 10, nullable = true)
    @Schema(description = "학생교직원구분코드", nullable = true)
    private String sttPfsstFlgcd; //--학생교직원구분코드

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    private String bkcd; //--은행코드

    @Column(name = "tisrd_rcpdt", nullable = true)
    @Schema(description = "부보자접수일자", nullable = true)
    private LocalDate tisrdRcpdt; //--부보자접수일자

    @Column(name = "acdis_rgtdt", nullable = true)
    @Schema(description = "학원등록일자", nullable = true)
    private LocalDate acdisRgtdt; //--학원등록일자

    @Column(name = "drve_lic_specd", length = 10, nullable = true)
    @Schema(description = "운전면허종별코드", nullable = true)
    private String drveLicSpecd; //--운전면허종별코드

    @Column(name = "pa_mncd", length = 10, nullable = true)
    @Schema(description = "임금화폐코드", nullable = true)
    private String paMncd; //--임금화폐코드

    @Column(name = "mnth_avg_pa", precision = 17, scale = 2, nullable = false)
    @Schema(description = "월평균임금", nullable = false)
    private BigDecimal mnthAvgPa; //--월평균임금

    @Column(name = "year_pa_tamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "연임금총액", nullable = false)
    private BigDecimal yearPaTamt; //--연임금총액

    @Column(name = "xc_ap_yn", length = 1, nullable = true)
    @Schema(description = "할증적용여부", nullable = true)
    private String xcApYn; //--할증적용여부

    @Column(name = "brdps_rvps_flgcd", length = 10, nullable = true)
    @Schema(description = "승선원예비원구분코드", nullable = true)
    private String brdpsRvpsFlgcd; //--승선원예비원구분코드

    @Column(name = "dtycd", length = 10, nullable = true)
    @Schema(description = "직책코드", nullable = true)
    private String dtycd; //--직책코드

    @Column(name = "rcn_bjyn", length = 1, nullable = true)
    @Schema(description = "실사대상여부", nullable = true)
    private String rcnBjyn; //--실사대상여부

    @Column(name = "dgn_ud_bj_yn", length = 1, nullable = true)
    @Schema(description = "진단심사대상여부", nullable = true)
    private String dgnUdBjYn; //--진단심사대상여부

    @Column(name = "ad_irt_ap_chdct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "가산금리적용자녀수", nullable = true)
    private BigDecimal adIrtApChdct; //--가산금리적용자녀수

    @Column(name = "embr_is_av_yn", length = 1, nullable = true)
    @Schema(description = "태아가입가능여부", nullable = true)
    private String embrIsAvYn; //--태아가입가능여부

    @Column(name = "bth_prdt", nullable = true)
    @Schema(description = "출산예정일자", nullable = true)
    private LocalDate bthPrdt; //--출산예정일자

    @Column(name = "nwbby_nm", length = 100, nullable = true)
    @Schema(description = "신생아성명", nullable = true)
    private String nwbbyNm; //--신생아성명

    @Column(name = "nwbby_rsno", length = 48, nullable = true)
    @Schema(description = "신생아주민번호", nullable = true)
    private String nwbbyRsno; //--신생아주민번호

    @Column(name = "preg_rndwk_stdt", nullable = true)
    @Schema(description = "임신경과주기준일자", nullable = true)
    private LocalDate pregRndwkStdt; //--임신경과주기준일자

    @Column(name = "mdcs_inq_agre_yn", length = 1, nullable = true)
    @Schema(description = "의료비조회동의여부", nullable = true)
    private String mdcsInqAgreYn; //--의료비조회동의여부

    @Column(name = "smok_yn", length = 1, nullable = true)
    @Schema(description = "흡연여부", nullable = true)
    private String smokYn; //--흡연여부

    @Column(name = "dscrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "할인율", nullable = false)
    private BigDecimal dscrt; //--할인율

    @Column(name = "ssng_cmp_gdnm", length = 100, nullable = true)
    @Schema(description = "여행회사상품명", nullable = true)
    private String ssngCmpGdnm; //--여행회사상품명

    @Column(name = "wpcnm", length = 100, nullable = true)
    @Schema(description = "직장명", nullable = true)
    private String wpcnm; //--직장명

    @Column(name = "bnnm", length = 300, nullable = true)
    @Schema(description = "업종명", nullable = true)
    private String bnnm; //--업종명

    @Column(name = "ce_plcd", length = 10, nullable = true)
    @Schema(description = "모집플랜코드", nullable = true)
    private String cePlcd; //--모집플랜코드

    @Column(name = "xclc_bd_yn", length = 1, nullable = true)
    @Schema(description = "우량신체여부", nullable = true)
    private String xclcBdYn; //--우량신체여부

    @Column(name = "unf_rt_ap_yn", length = 1, nullable = true)
    @Schema(description = "단일요율적용여부", nullable = true)
    private String unfRtApYn; //--단일요율적용여부

    @Column(name = "twhvc_sub_cvrtr_is_flgcd", length = 10, nullable = true)
    @Schema(description = "이륜차부담보특약가입구분코드", nullable = true)
    private String twhvcSubCvrtrIsFlgcd; //--이륜차부담보특약가입구분코드

    @Column(name = "dc_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "할인연령", nullable = true)
    private BigDecimal dcAge; //--할인연령

    @Column(name = "hlt_age_prm_ap_trt_is_flgcd", length = 10, nullable = true)
    @Schema(description = "건강연령보험료적용특약가입구분코드", nullable = true)
    private String hltAgePrmApTrtIsFlgcd; //--건강연령보험료적용특약가입구분코드

    @Column(name = "hlt_age_dc_ap_flgcd", length = 10, nullable = true)
    @Schema(description = "건강연령할인적용구분코드", nullable = true)
    private String hltAgeDcApFlgcd; //--건강연령할인적용구분코드

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
    public InsNrdpsTisrdAtr(String plyno, BigDecimal relpcSeqno, LocalDate apNddt, LocalDate apStrdt, String ndsno, String valdNdsYn, LocalDateTime ndsApStrDthms, LocalDateTime ndsApNdDthms, String ikdGrpcd, String nrdpsTisrdFlgcd, String crPlcd, String plCsfcd, String mdNrdpsFlgcd, String gpIsTp, BigDecimal nrdpsOrTisct, BigDecimal fmlct, BigDecimal manPsct, BigDecimal fmlPsct, String rxamBjYn, String twhvcDrveYn, String drveYn, LocalDate insSt, String insStHms, LocalDate insClstr, String insClstrHms, LocalDate rfdClcSt, LocalDate rfdClcClstr, String drveTycd, String brth, String embrYn, String sexcd, BigDecimal age, String jbcd, BigDecimal jbChSeqno, String injrRnkcd, String trfRnkcd, String injrGrdcd, String ptn, String bdt, LocalDate bthdt, LocalDate stbdt, BigDecimal pregRndwk, String mdcsRgtFlgcd, String mdcsRgtStcd, String sttPfsstFlgcd, String bkcd, LocalDate tisrdRcpdt, LocalDate acdisRgtdt, String drveLicSpecd, String paMncd, BigDecimal mnthAvgPa, BigDecimal yearPaTamt, String xcApYn, String brdpsRvpsFlgcd, String dtycd, String rcnBjyn, String dgnUdBjYn, BigDecimal adIrtApChdct, String embrIsAvYn, LocalDate bthPrdt, String nwbbyNm, String nwbbyRsno, LocalDate pregRndwkStdt, String mdcsInqAgreYn, String smokYn, BigDecimal dscrt, String ssngCmpGdnm, String wpcnm, String bnnm, String cePlcd, String xclcBdYn, String unfRtApYn, String twhvcSubCvrtrIsFlgcd, BigDecimal dcAge, String hltAgePrmApTrtIsFlgcd, String hltAgeDcApFlgcd, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plyno = plyno;
        this.relpcSeqno = relpcSeqno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.ikdGrpcd = ikdGrpcd;
        this.nrdpsTisrdFlgcd = nrdpsTisrdFlgcd;
        this.crPlcd = crPlcd;
        this.plCsfcd = plCsfcd;
        this.mdNrdpsFlgcd = mdNrdpsFlgcd;
        this.gpIsTp = gpIsTp;
        this.nrdpsOrTisct = nrdpsOrTisct;
        this.fmlct = fmlct;
        this.manPsct = manPsct;
        this.fmlPsct = fmlPsct;
        this.rxamBjYn = rxamBjYn;
        this.twhvcDrveYn = twhvcDrveYn;
        this.drveYn = drveYn;
        this.insSt = insSt;
        this.insStHms = insStHms;
        this.insClstr = insClstr;
        this.insClstrHms = insClstrHms;
        this.rfdClcSt = rfdClcSt;
        this.rfdClcClstr = rfdClcClstr;
        this.drveTycd = drveTycd;
        this.brth = brth;
        this.embrYn = embrYn;
        this.sexcd = sexcd;
        this.age = age;
        this.jbcd = jbcd;
        this.jbChSeqno = jbChSeqno;
        this.injrRnkcd = injrRnkcd;
        this.trfRnkcd = trfRnkcd;
        this.injrGrdcd = injrGrdcd;
        this.ptn = ptn;
        this.bdt = bdt;
        this.bthdt = bthdt;
        this.stbdt = stbdt;
        this.pregRndwk = pregRndwk;
        this.mdcsRgtFlgcd = mdcsRgtFlgcd;
        this.mdcsRgtStcd = mdcsRgtStcd;
        this.sttPfsstFlgcd = sttPfsstFlgcd;
        this.bkcd = bkcd;
        this.tisrdRcpdt = tisrdRcpdt;
        this.acdisRgtdt = acdisRgtdt;
        this.drveLicSpecd = drveLicSpecd;
        this.paMncd = paMncd;
        this.mnthAvgPa = mnthAvgPa;
        this.yearPaTamt = yearPaTamt;
        this.xcApYn = xcApYn;
        this.brdpsRvpsFlgcd = brdpsRvpsFlgcd;
        this.dtycd = dtycd;
        this.rcnBjyn = rcnBjyn;
        this.dgnUdBjYn = dgnUdBjYn;
        this.adIrtApChdct = adIrtApChdct;
        this.embrIsAvYn = embrIsAvYn;
        this.bthPrdt = bthPrdt;
        this.nwbbyNm = nwbbyNm;
        this.nwbbyRsno = nwbbyRsno;
        this.pregRndwkStdt = pregRndwkStdt;
        this.mdcsInqAgreYn = mdcsInqAgreYn;
        this.smokYn = smokYn;
        this.dscrt = dscrt;
        this.ssngCmpGdnm = ssngCmpGdnm;
        this.wpcnm = wpcnm;
        this.bnnm = bnnm;
        this.cePlcd = cePlcd;
        this.xclcBdYn = xclcBdYn;
        this.unfRtApYn = unfRtApYn;
        this.twhvcSubCvrtrIsFlgcd = twhvcSubCvrtrIsFlgcd;
        this.dcAge = dcAge;
        this.hltAgePrmApTrtIsFlgcd = hltAgePrmApTrtIsFlgcd;
        this.hltAgeDcApFlgcd = hltAgeDcApFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
