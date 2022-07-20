/**
 * InsPlNrdpsTisrdAtr Entity 클래스
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
@Table(name = "ins_pl_nrdps_tisrd_atr") //--설계피보험자부보자속성
@Schema(description = "설계피보험자부보자속성")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsPlNrdpsTisrdAtr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "plno", length = 17, nullable = false)
    @Schema(description = "설계번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plno; //--설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal relpcSeqno; //--관계자순번

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "nrdps_tisrd_flgcd", length = 10, nullable = true)
    @Schema(description = "피보험자부보자구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsTisrdFlgcd; //--피보험자부보자구분코드

    @Column(name = "pl_plcd", length = 10, nullable = true)
    @Schema(description = "설계플랜코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plPlcd; //--설계플랜코드

    @Column(name = "pl_csfcd", length = 10, nullable = true)
    @Schema(description = "플랜분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plCsfcd; //--플랜분류코드

    @Column(name = "md_nrdps_flgcd", length = 10, nullable = true)
    @Schema(description = "의료피보험자구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdNrdpsFlgcd; //--의료피보험자구분코드

    @Column(name = "gp_is_tp", length = 30, nullable = true)
    @Schema(description = "그룹가입유형", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gpIsTp; //--그룹가입유형

    @Column(name = "nrdps_or_tisct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "피보험자부보자수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nrdpsOrTisct; //--피보험자부보자수

    @Column(name = "fmlct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "가족수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fmlct; //--가족수

    @Column(name = "man_psct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "남자인원수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal manPsct; //--남자인원수

    @Column(name = "fml_psct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "여자인원수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fmlPsct; //--여자인원수

    @Column(name = "rxam_bj_yn", length = 1, nullable = true)
    @Schema(description = "재심사대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rxamBjYn; //--재심사대상여부

    @Column(name = "twhvc_drve_yn", length = 1, nullable = true)
    @Schema(description = "이륜차운전여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String twhvcDrveYn; //--이륜차운전여부

    @Column(name = "drve_yn", length = 1, nullable = true)
    @Schema(description = "운전여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drveYn; //--운전여부

    @Column(name = "ins_st", nullable = true)
    @Schema(description = "보험시기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date insSt; //--보험시기

    @Column(name = "ins_st_hms", length = 4, nullable = true)
    @Schema(description = "보험시기시각", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insStHms; //--보험시기시각

    @Column(name = "ins_clstr", nullable = true)
    @Schema(description = "보험종기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date insClstr; //--보험종기

    @Column(name = "ins_clstr_hms", length = 4, nullable = true)
    @Schema(description = "보험종기시각", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insClstrHms; //--보험종기시각

    @Column(name = "rfd_clc_st", nullable = true)
    @Schema(description = "준비금산정시기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rfdClcSt; //--준비금산정시기

    @Column(name = "rfd_clc_clstr", nullable = true)
    @Schema(description = "준비금산정종기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rfdClcClstr; //--준비금산정종기

    @Column(name = "drve_tycd", length = 10, nullable = true)
    @Schema(description = "운전형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drveTycd; //--운전형태코드

    @Column(name = "brth", length = 8, nullable = true)
    @Schema(description = "생년월일", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String brth; //--생년월일

    @Column(name = "embr_yn", length = 1, nullable = true)
    @Schema(description = "태아여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String embrYn; //--태아여부

    @Column(name = "sexcd", length = 10, nullable = true)
    @Schema(description = "성별코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sexcd; //--성별코드

    @Column(name = "age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연령", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal age; //--연령

    @Column(name = "jbcd", length = 10, nullable = true)
    @Schema(description = "직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbcd; //--직업코드

    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "직업변경순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal jbChSeqno; //--직업변경순번

    @Column(name = "injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "상해급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrRnkcd; //--상해급수코드

    @Column(name = "trf_rnkcd", length = 10, nullable = true)
    @Schema(description = "교통급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trfRnkcd; //--교통급수코드

    @Column(name = "injr_grdcd", length = 10, nullable = true)
    @Schema(description = "상해등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrGrdcd; //--상해등급코드

    @Column(name = "ptn", length = 50, nullable = true)
    @Schema(description = "직위", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ptn; //--직위

    @Column(name = "bdt", length = 50, nullable = true)
    @Schema(description = "직무", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bdt; //--직무

    @Column(name = "bthdt", nullable = true)
    @Schema(description = "출산일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date bthdt; //--출산일자

    @Column(name = "stbdt", nullable = true)
    @Schema(description = "사산일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date stbdt; //--사산일자

    @Column(name = "preg_rndwk", precision = 2, scale = 0, nullable = true)
    @Schema(description = "임신경과주", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pregRndwk; //--임신경과주

    @Column(name = "mdcs_rgt_flgcd", length = 10, nullable = true)
    @Schema(description = "의료비등록구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdcsRgtFlgcd; //--의료비등록구분코드

    @Column(name = "mdcs_rgt_stcd", length = 10, nullable = true)
    @Schema(description = "의료비등록상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdcsRgtStcd; //--의료비등록상태코드

    @Column(name = "stt_pfsst_flgcd", length = 10, nullable = true)
    @Schema(description = "학생교직원구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sttPfsstFlgcd; //--학생교직원구분코드

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkcd; //--은행코드

    @Column(name = "tisrd_rcpdt", nullable = true)
    @Schema(description = "부보자접수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date tisrdRcpdt; //--부보자접수일자

    @Column(name = "acdis_rgtdt", nullable = true)
    @Schema(description = "학원등록일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date acdisRgtdt; //--학원등록일자

    @Column(name = "drve_lic_specd", length = 10, nullable = true)
    @Schema(description = "운전면허종별코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drveLicSpecd; //--운전면허종별코드

    @Column(name = "pa_mncd", length = 10, nullable = true)
    @Schema(description = "임금화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String paMncd; //--임금화폐코드

    @Column(name = "mnth_avg_pa", precision = 17, scale = 2, nullable = false)
    @Schema(description = "월평균임금", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mnthAvgPa; //--월평균임금

    @Column(name = "year_pa_tamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "연임금총액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal yearPaTamt; //--연임금총액

    @Column(name = "xc_ap_yn", length = 1, nullable = true)
    @Schema(description = "할증적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcApYn; //--할증적용여부

    @Column(name = "brdps_rvps_flgcd", length = 10, nullable = true)
    @Schema(description = "승선원예비원구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String brdpsRvpsFlgcd; //--승선원예비원구분코드

    @Column(name = "dtycd", length = 10, nullable = true)
    @Schema(description = "직책코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dtycd; //--직책코드

    @Column(name = "rcn_bjyn", length = 1, nullable = true)
    @Schema(description = "실사대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcnBjyn; //--실사대상여부

    @Column(name = "dgn_ud_bj_yn", length = 1, nullable = true)
    @Schema(description = "진단심사대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dgnUdBjYn; //--진단심사대상여부

    @Column(name = "ad_irt_ap_chdct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "가산금리적용자녀수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal adIrtApChdct; //--가산금리적용자녀수

    @Column(name = "embr_is_av_yn", length = 1, nullable = true)
    @Schema(description = "태아가입가능여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String embrIsAvYn; //--태아가입가능여부

    @Column(name = "bth_prdt", nullable = true)
    @Schema(description = "출산예정일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date bthPrdt; //--출산예정일자

    @Column(name = "nwbby_nm", length = 100, nullable = true)
    @Schema(description = "신생아성명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwbbyNm; //--신생아성명

    @Column(name = "nwbby_rsno", length = 48, nullable = true)
    @Schema(description = "신생아주민번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwbbyRsno; //--신생아주민번호

    @Column(name = "preg_rndwk_stdt", nullable = true)
    @Schema(description = "임신경과주기준일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pregRndwkStdt; //--임신경과주기준일자

    @Column(name = "mdcs_inq_agre_yn", length = 1, nullable = true)
    @Schema(description = "의료비조회동의여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdcsInqAgreYn; //--의료비조회동의여부

    @Column(name = "smok_yn", length = 1, nullable = true)
    @Schema(description = "흡연여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String smokYn; //--흡연여부

    @Column(name = "dscrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "할인율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dscrt; //--할인율

    @Column(name = "rviba_nds_need_yn", length = 1, nullable = true)
    @Schema(description = "부활후배서필요여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rvibaNdsNeedYn; //--부활후배서필요여부

    @Column(name = "ltrm_nds_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "장기배서처리구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltrmNdsDlFlgcd; //--장기배서처리구분코드

    @Column(name = "wpcnm", length = 100, nullable = true)
    @Schema(description = "직장명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wpcnm; //--직장명

    @Column(name = "bnnm", length = 300, nullable = true)
    @Schema(description = "업종명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bnnm; //--업종명

    @Column(name = "ce_plcd", length = 10, nullable = true)
    @Schema(description = "모집플랜코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cePlcd; //--모집플랜코드

    @Column(name = "xclc_bd_yn", length = 1, nullable = true)
    @Schema(description = "우량신체여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xclcBdYn; //--우량신체여부

    @Column(name = "unf_rt_ap_yn", length = 1, nullable = true)
    @Schema(description = "단일요율적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String unfRtApYn; //--단일요율적용여부

    @Column(name = "twhvc_sub_cvrtr_is_flgcd", length = 10, nullable = true)
    @Schema(description = "이륜차부담보특약가입구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String twhvcSubCvrtrIsFlgcd; //--이륜차부담보특약가입구분코드

    @Column(name = "dc_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "할인연령", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dcAge; //--할인연령

    @Column(name = "hlt_age_prm_ap_trt_is_flgcd", length = 10, nullable = true)
    @Schema(description = "건강연령보험료적용특약가입구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hltAgePrmApTrtIsFlgcd; //--건강연령보험료적용특약가입구분코드

    @Column(name = "hlt_age_dc_ap_flgcd", length = 10, nullable = true)
    @Schema(description = "건강연령할인적용구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hltAgeDcApFlgcd; //--건강연령할인적용구분코드

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
    public InsPlNrdpsTisrdAtr(String plno, BigDecimal cgafChSeqno, BigDecimal relpcSeqno, String ikdGrpcd, String nrdpsTisrdFlgcd, String plPlcd, String plCsfcd, String mdNrdpsFlgcd, String gpIsTp, BigDecimal nrdpsOrTisct, BigDecimal fmlct, BigDecimal manPsct, BigDecimal fmlPsct, String rxamBjYn, String twhvcDrveYn, String drveYn, Date insSt, String insStHms, Date insClstr, String insClstrHms, Date rfdClcSt, Date rfdClcClstr, String drveTycd, String brth, String embrYn, String sexcd, BigDecimal age, String jbcd, BigDecimal jbChSeqno, String injrRnkcd, String trfRnkcd, String injrGrdcd, String ptn, String bdt, Date bthdt, Date stbdt, BigDecimal pregRndwk, String mdcsRgtFlgcd, String mdcsRgtStcd, String sttPfsstFlgcd, String bkcd, Date tisrdRcpdt, Date acdisRgtdt, String drveLicSpecd, String paMncd, BigDecimal mnthAvgPa, BigDecimal yearPaTamt, String xcApYn, String brdpsRvpsFlgcd, String dtycd, String rcnBjyn, String dgnUdBjYn, BigDecimal adIrtApChdct, String embrIsAvYn, Date bthPrdt, String nwbbyNm, String nwbbyRsno, Date pregRndwkStdt, String mdcsInqAgreYn, String smokYn, BigDecimal dscrt, String rvibaNdsNeedYn, String ltrmNdsDlFlgcd, String wpcnm, String bnnm, String cePlcd, String xclcBdYn, String unfRtApYn, String twhvcSubCvrtrIsFlgcd, BigDecimal dcAge, String hltAgePrmApTrtIsFlgcd, String hltAgeDcApFlgcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.relpcSeqno = relpcSeqno;
        this.ikdGrpcd = ikdGrpcd;
        this.nrdpsTisrdFlgcd = nrdpsTisrdFlgcd;
        this.plPlcd = plPlcd;
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
        this.rvibaNdsNeedYn = rvibaNdsNeedYn;
        this.ltrmNdsDlFlgcd = ltrmNdsDlFlgcd;
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
