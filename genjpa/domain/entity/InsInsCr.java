/**
 * InsInsCr Entity 클래스
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
@Table(name = "ins_ins_cr") //--보험계약
@Schema(description = "보험계약")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsInsCr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndsno; //--배서번호

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ndsApNdDthms; //--배서승인종료일시

    @Column(name = "fnl_cr_stcd", length = 10, nullable = true)
    @Schema(description = "최종계약상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnlCrStcd; //--최종계약상태코드

    @Column(name = "fnl_cr_dt_stcd", length = 10, nullable = true)
    @Schema(description = "최종계약세부상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnlCrDtStcd; //--최종계약세부상태코드

    @Column(name = "fnl_part_cvr_stcd", length = 10, nullable = true)
    @Schema(description = "최종일부담보상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnlPartCvrStcd; //--최종일부담보상태코드

    @Column(name = "fnl_cr_st_chdt", nullable = true)
    @Schema(description = "최종계약상태변경일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date fnlCrStChdt; //--최종계약상태변경일자

    @Column(name = "cnrdt", nullable = true)
    @Schema(description = "계약일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cnrdt; //--계약일자

    @Column(name = "plno", length = 17, nullable = true)
    @Schema(description = "설계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plno; //--설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "발행후변경순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Column(name = "fnl_pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "최종납입회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fnlPymSeq; //--최종납입회차

    @Column(name = "fnl_pym_yymm", length = 6, nullable = true)
    @Schema(description = "최종납입년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnlPymYymm; //--최종납입년월

    @Column(name = "ply_lvl_flgcd", length = 10, nullable = false)
    @Schema(description = "증권레벨구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyLvlFlgcd; //--증권레벨구분코드

    @Column(name = "gdcd", length = 10, nullable = false)
    @Schema(description = "상품코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gdcd; //--상품코드

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ins_imcd", length = 10, nullable = true)
    @Schema(description = "보험종목코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insImcd; //--보험종목코드

    @Column(name = "nw_rnw_flgcd", length = 10, nullable = true)
    @Schema(description = "신규갱신구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwRnwFlgcd; //--신규갱신구분코드

    @Column(name = "apldt", nullable = true)
    @Schema(description = "청약일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apldt; //--청약일자

    @Column(name = "trm_sct_flgcd", length = 10, nullable = true)
    @Schema(description = "기간구간구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trmSctFlgcd; //--기간구간구분코드

    @Column(name = "ins_st", nullable = false)
    @Schema(description = "보험시기", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date insSt; //--보험시기

    @Column(name = "ins_st_hms", length = 4, nullable = true)
    @Schema(description = "보험시기시각", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insStHms; //--보험시기시각

    @Column(name = "ins_clstr", nullable = false)
    @Schema(description = "보험종기", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date insClstr; //--보험종기

    @Column(name = "ins_clstr_hms", length = 4, nullable = true)
    @Schema(description = "보험종기시각", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insClstrHms; //--보험종기시각

    @Column(name = "ins_days", precision = 5, scale = 0, nullable = true)
    @Schema(description = "보험일수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal insDays; //--보험일수

    @Column(name = "instr_mc", precision = 3, scale = 0, nullable = true)
    @Schema(description = "보험기간월수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal instrMc; //--보험기간월수

    @Column(name = "instr_yyct", precision = 1, scale = 0, nullable = true)
    @Schema(description = "보험기간년수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal instrYyct; //--보험기간년수

    @Column(name = "condt_t_ap_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "공동인수총적용보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal condtTApPrm; //--공동인수총적용보험료

    @Column(name = "pym_mtdcd", length = 10, nullable = true)
    @Schema(description = "납입방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymMtdcd; //--납입방법코드

    @Column(name = "ce_rowcd", length = 10, nullable = true)
    @Schema(description = "모집경위코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ceRowcd; //--모집경위코드

    @Column(name = "ply_rc_mtdcd", length = 10, nullable = true)
    @Schema(description = "증권수령방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyRcMtdcd; //--증권수령방법코드

    @Column(name = "holo_sign_yn", length = 1, nullable = true)
    @Schema(description = "자필서명여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String holoSignYn; //--자필서명여부

    @Column(name = "gr_cr_yn", length = 1, nullable = true)
    @Schema(description = "단체계약여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String grCrYn; //--단체계약여부

    @Column(name = "cr_chncd", length = 10, nullable = true)
    @Schema(description = "계약채널코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crChncd; //--계약채널코드

    @Column(name = "cprtb_admno", length = 10, nullable = true)
    @Schema(description = "협력점관리번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cprtbAdmno; //--협력점관리번호

    @Column(name = "cmpg_bj_yn", length = 1, nullable = true)
    @Schema(description = "캠페인대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpgBjYn; //--캠페인대상여부

    @Column(name = "nrdct", precision = 9, scale = 0, nullable = true)
    @Schema(description = "피보험자수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nrdct; //--피보험자수

    @Column(name = "udrtk_tycd", length = 10, nullable = true)
    @Schema(description = "인수형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udrtkTycd; //--인수형태코드

    @Column(name = "crycd", length = 10, nullable = true)
    @Schema(description = "계약형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crycd; //--계약형태코드

    @Column(name = "otcm_mg_cmpcd", length = 10, nullable = true)
    @Schema(description = "타사간사회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String otcmMgCmpcd; //--타사간사회사코드

    @Column(name = "otcm_plyno", length = 25, nullable = true)
    @Schema(description = "타사증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String otcmPlyno; //--타사증권번호

    @Column(name = "otcm_ply_ssdt", nullable = true)
    @Schema(description = "타사증권발행일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date otcmPlySsdt; //--타사증권발행일자

    @Column(name = "agmt_aqr_rt_flgcd", length = 10, nullable = true)
    @Schema(description = "협정구득요율구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String agmtAqrRtFlgcd; //--협정구득요율구분코드

    @Column(name = "nsc_yn", length = 1, nullable = true)
    @Schema(description = "계열사여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nscYn; //--계열사여부

    @Column(name = "bk_admno", length = 20, nullable = true)
    @Schema(description = "은행관리번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkAdmno; //--은행관리번호

    @Column(name = "bk_brcd", length = 10, nullable = true)
    @Schema(description = "은행지점코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkBrcd; //--은행지점코드

    @Column(name = "bk_extn_qfp", length = 50, nullable = true)
    @Schema(description = "은행유자격자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkExtnQfp; //--은행유자격자

    @Column(name = "bk_ipps", length = 10, nullable = true)
    @Schema(description = "은행입력자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkIpps; //--은행입력자

    @Column(name = "hscs_hs_flgcd", length = 10, nullable = true)
    @Schema(description = "가계비가계구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hscsHsFlgcd; //--가계비가계구분코드

    @Column(name = "ps_cst_yn", length = 1, nullable = true)
    @Schema(description = "보유품의여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String psCstYn; //--보유품의여부

    @Column(name = "rt_aqr_rqno", length = 50, nullable = true)
    @Schema(description = "요율구득신청번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtAqrRqno; //--요율구득신청번호

    @Column(name = "onw_cr_flgcd", length = 10, nullable = true)
    @Schema(description = "신구계약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String onwCrFlgcd; //--신구계약구분코드

    @Column(name = "rv_ccldt", nullable = true)
    @Schema(description = "수납취소일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rvCcldt; //--수납취소일자

    @Column(name = "fmlct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "가족수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fmlct; //--가족수

    @Column(name = "bzcs_qtrt_ap_yn", length = 1, nullable = true)
    @Schema(description = "사업비지분율적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bzcsQtrtApYn; //--사업비지분율적용여부

    @Column(name = "prort_shtm_flgcd", length = 10, nullable = true)
    @Schema(description = "일할단기구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prortShtmFlgcd; //--일할단기구분코드

    @Column(name = "same_ply_flgcd", length = 10, nullable = true)
    @Schema(description = "동일증권구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String samePlyFlgcd; //--동일증권구분코드

    @Column(name = "dc_xc_ap_flgcd", length = 10, nullable = true)
    @Schema(description = "할인할증적용구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcXcApFlgcd; //--할인할증적용구분코드

    @Column(name = "pypof_symb", length = 10, nullable = true)
    @Schema(description = "납입국기호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pypofSymb; //--납입국기호

    @Column(name = "rglt_vltct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "법규위반건수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rgltVltct; //--법규위반건수

    @Column(name = "rglt_vlt_poct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "법규위반점수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rgltVltPoct; //--법규위반점수

    @Column(name = "rglt_vltcd", length = 10, nullable = true)
    @Schema(description = "법규위반코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rgltVltcd; //--법규위반코드

    @Column(name = "is_crrcd", length = 10, nullable = true)
    @Schema(description = "가입경력코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String isCrrcd; //--가입경력코드

    @Column(name = "spc_xccd", length = 10, nullable = true)
    @Schema(description = "특별할증코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String spcXccd; //--특별할증코드

    @Column(name = "dty_pym_mtdcd", length = 10, nullable = true)
    @Schema(description = "의무납입방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dtyPymMtdcd; //--의무납입방법코드

    @Column(name = "pst_rpbl_is_yn", length = 1, nullable = true)
    @Schema(description = "과거책임가입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pstRpblIsYn; //--과거책임가입여부

    @Column(name = "gn_co_obj_flgcd", length = 10, nullable = true)
    @Schema(description = "일반공동물건구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gnCoObjFlgcd; //--일반공동물건구분코드

    @Column(name = "co_obj_asno", length = 14, nullable = true)
    @Schema(description = "공동물건배정번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String coObjAsno; //--공동물건배정번호

    @Column(name = "bfcr_iscmp", length = 2, nullable = true)
    @Schema(description = "전계약가입회사", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfcrIscmp; //--전계약가입회사

    @Column(name = "bfcr_ikdcd", length = 2, nullable = true)
    @Schema(description = "전계약보종코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfcrIkdcd; //--전계약보종코드

    @Column(name = "bfcr_year", length = 2, nullable = true)
    @Schema(description = "전계약연도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfcrYear; //--전계약연도

    @Column(name = "bfcr_no", length = 10, nullable = true)
    @Schema(description = "전계약번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfcrNo; //--전계약번호

    @Column(name = "bfcr_ins_st", nullable = true)
    @Schema(description = "전계약보험시기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date bfcrInsSt; //--전계약보험시기

    @Column(name = "bfcr_ins_clstr", nullable = true)
    @Schema(description = "전계약보험종기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date bfcrInsClstr; //--전계약보험종기

    @Column(name = "bfcr_aprt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "전계약적용율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal bfcrAprt; //--전계약적용율

    @Column(name = "dvpns_plyno", length = 16, nullable = true)
    @Schema(description = "개발원증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dvpnsPlyno; //--개발원증권번호

    @Column(name = "dvpns_jbcd", length = 10, nullable = true)
    @Schema(description = "개발원직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dvpnsJbcd; //--개발원직업코드

    @Column(name = "udrtk_gu_arecd", length = 10, nullable = true)
    @Schema(description = "인수지침지역코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udrtkGuArecd; //--인수지침지역코드

    @Column(name = "udrtk_grdcd", length = 10, nullable = true)
    @Schema(description = "인수등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udrtkGrdcd; //--인수등급코드

    @Column(name = "sng_cr_flgcd", length = 10, nullable = true)
    @Schema(description = "단독계약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sngCrFlgcd; //--단독계약구분코드

    @Column(name = "ins_itm_smccd", length = 10, nullable = true)
    @Schema(description = "보험종목소분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insItmSmccd; //--보험종목소분류코드

    @Column(name = "fsti_rp_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "초회영수보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fstiRpPrm; //--초회영수보험료

    @Column(name = "dc_xc_grdcd", length = 10, nullable = true)
    @Schema(description = "할인할증등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcXcGrdcd; //--할인할증등급코드

    @Column(name = "a_sct_ct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "a구간대수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal aSctCt; //--a구간대수

    @Column(name = "b_sct_ct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "b구간대수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal bSctCt; //--b구간대수

    @Column(name = "bfcr_dc_xc_grdcd", length = 10, nullable = true)
    @Schema(description = "전계약할인할증등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfcrDcXcGrdcd; //--전계약할인할증등급코드

    @Column(name = "dc_xc_same_grdyn", length = 1, nullable = true)
    @Schema(description = "할인할증동일등급여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcXcSameGrdyn; //--할인할증동일등급여부

    @Column(name = "rpbl_ins_plyno", length = 16, nullable = true)
    @Schema(description = "책임보험증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rpblInsPlyno; //--책임보험증권번호

    @Column(name = "repy_nt_rcpdt", nullable = true)
    @Schema(description = "수불통지접수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date repyNtRcpdt; //--수불통지접수일자

    @Column(name = "repy_nt_rcp_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "수불통지접수순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal repyNtRcpSeqno; //--수불통지접수순번

    @Column(name = "xwpy_rtntm_ntpy_yn", length = 1, nullable = true)
    @Schema(description = "과오납환급시이자지급여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xwpyRtntmNtpyYn; //--과오납환급시이자지급여부

    @Column(name = "y1_clm_ct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "1년사고횟수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal y1ClmCt; //--1년사고횟수

    @Column(name = "y1_clm_yn", length = 1, nullable = true)
    @Schema(description = "1년사고유무", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String y1ClmYn; //--1년사고유무

    @Column(name = "y3_clm_ct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "3년사고횟수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal y3ClmCt; //--3년사고횟수

    @Column(name = "vlt_spc_xccd", length = 10, nullable = true)
    @Schema(description = "위반특별할증코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String vltSpcXccd; //--위반특별할증코드

    @Column(name = "xacd", length = 10, nullable = true)
    @Schema(description = "정산형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xacd; //--정산형태코드

    @Column(name = "xc_cyccd", length = 10, nullable = true)
    @Schema(description = "정산주기코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcCyccd; //--정산주기코드

    @Column(name = "cr_tpcd", length = 10, nullable = true)
    @Schema(description = "계약유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crTpcd; //--계약유형코드

    @Column(name = "hlt_ins_is_yn", length = 1, nullable = true)
    @Schema(description = "건강보험가입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hltInsIsYn; //--건강보험가입여부

    @Column(name = "unf_rt_ap_yn", length = 1, nullable = true)
    @Schema(description = "단일요율적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String unfRtApYn; //--단일요율적용여부

    @Column(name = "avg_age_flgcd", length = 10, nullable = true)
    @Schema(description = "평균연령구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String avgAgeFlgcd; //--평균연령구분코드

    @Column(name = "dpsrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "예치율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dpsrt; //--예치율

    @Column(name = "dpst_prm_cc_flgcd", length = 10, nullable = true)
    @Schema(description = "예치보험료산출구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpstPrmCcFlgcd; //--예치보험료산출구분코드

    @Column(name = "xc_prdy", length = 2, nullable = true)
    @Schema(description = "정산예정일", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcPrdy; //--정산예정일

    @Column(name = "is_tpcd", length = 10, nullable = true)
    @Schema(description = "가입유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String isTpcd; //--가입유형코드

    @Column(name = "ssng_arecd", length = 10, nullable = true)
    @Schema(description = "여행지역코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ssngArecd; //--여행지역코드

    @Column(name = "ssst", length = 100, nullable = true)
    @Schema(description = "여행지", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ssst; //--여행지

    @Column(name = "ssng_ojccd", length = 10, nullable = true)
    @Schema(description = "여행목적코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ssngOjccd; //--여행목적코드

    @Column(name = "trf_ridcd", length = 10, nullable = true)
    @Schema(description = "교통승용구코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trfRidcd; //--교통승용구코드

    @Column(name = "ssng_cmpnm", length = 100, nullable = true)
    @Schema(description = "여행회사명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ssngCmpnm; //--여행회사명

    @Column(name = "nrdps_adm_mtdcd", length = 10, nullable = true)
    @Schema(description = "피보험자관리방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsAdmMtdcd; //--피보험자관리방법코드

    @Column(name = "stdsb_rk_grdcd", length = 10, nullable = true)
    @Schema(description = "학과위험등급코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String stdsbRkGrdcd; //--학과위험등급코드

    @Column(name = "stdsb_flgcd", length = 10, nullable = true)
    @Schema(description = "학과구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String stdsbFlgcd; //--학과구분코드

    @Column(name = "rl_stdsb", length = 100, nullable = true)
    @Schema(description = "실제학과", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rlStdsb; //--실제학과

    @Column(name = "prctc_pln", length = 100, nullable = true)
    @Schema(description = "실습현장", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prctcPln; //--실습현장

    @Column(name = "prctc_nm", length = 100, nullable = true)
    @Schema(description = "실습명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prctcNm; //--실습명

    @Column(name = "prctc_mntct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "실습개월수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal prctcMntct; //--실습개월수

    @Column(name = "dmgrt_md_cfcap_bzmno", length = 10, nullable = true)
    @Schema(description = "손해율조정계수적용사업자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmgrtMdCfcapBzmno; //--손해율조정계수적용사업자번호

    @Column(name = "dmgrt_md_cfc_crpno", length = 13, nullable = true)
    @Schema(description = "손해율조정계수법인번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmgrtMdCfcCrpno; //--손해율조정계수법인번호

    @Column(name = "dmgrt_md_cfcap_yn", length = 1, nullable = true)
    @Schema(description = "손해율조정계수적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmgrtMdCfcapYn; //--손해율조정계수적용여부

    @Column(name = "fcntr_dmgrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "원청자손해율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fcntrDmgrt; //--원청자손해율

    @Column(name = "dmgrt_md_cfc", precision = 12, scale = 6, nullable = false)
    @Schema(description = "손해율조정계수", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmgrtMdCfc; //--손해율조정계수

    @Column(name = "fcntr_sclcd", length = 10, nullable = true)
    @Schema(description = "원청자범위코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fcntrSclcd; //--원청자범위코드

    @Column(name = "cc_prm", precision = 17, scale = 2, nullable = true)
    @Schema(description = "산출보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ccPrm; //--산출보험료

    @Column(name = "nkor_rs_yn", length = 1, nullable = true)
    @Schema(description = "북한주민여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nkorRsYn; //--북한주민여부

    @Column(name = "ins_rt_flgcd", length = 10, nullable = true)
    @Schema(description = "보험요율구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insRtFlgcd; //--보험요율구분코드

    @Column(name = "ap_cvr_flgcd", length = 10, nullable = true)
    @Schema(description = "적용담보구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String apCvrFlgcd; //--적용담보구분코드

    @Column(name = "chaf_annu_apprm", precision = 17, scale = 2, nullable = true)
    @Schema(description = "변경후년간적용보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal chafAnnuApprm; //--변경후년간적용보험료

    @Column(name = "rt_aqr_unt_flgcd", length = 10, nullable = true)
    @Schema(description = "요율구득단위구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtAqrUntFlgcd; //--요율구득단위구분코드

    @Column(name = "rt_aqr_stncd", length = 10, nullable = true)
    @Schema(description = "요율구득기준코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtAqrStncd; //--요율구득기준코드

    @Column(name = "bsns_chrps_stfno", length = 50, nullable = true)
    @Schema(description = "업무담당자직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bsnsChrpsStfno; //--업무담당자직원번호

    @Column(name = "intn_rltno", length = 30, nullable = true)
    @Schema(description = "대외연계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String intnRltno; //--대외연계번호

    @Column(name = "cstcp_flgcd", length = 10, nullable = true)
    @Schema(description = "건설사구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cstcpFlgcd; //--건설사구분코드

    @Column(name = "chr_admr_stfno", length = 50, nullable = true)
    @Schema(description = "담당관리자직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrAdmrStfno; //--담당관리자직원번호

    @Column(name = "nvgtn_arecd", length = 10, nullable = true)
    @Schema(description = "항해구역코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvgtnArecd; //--항해구역코드

    @Column(name = "et_nvgtn_arenm", length = 200, nullable = true)
    @Schema(description = "기타항해구역명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String etNvgtnArenm; //--기타항해구역명

    @Column(name = "condt_qtrt_frcap_yn", length = 1, nullable = true)
    @Schema(description = "공동인수지분율강제적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String condtQtrtFrcapYn; //--공동인수지분율강제적용여부

    @Column(name = "ss_plyct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "발행증권수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ssPlyct; //--발행증권수

    @Column(name = "trspr_cmpnm", length = 100, nullable = true)
    @Schema(description = "운송인회사명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trsprCmpnm; //--운송인회사명

    @Column(name = "dstcd", length = 10, nullable = true)
    @Schema(description = "거리코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dstcd; //--거리코드

    @Column(name = "spcl_tr_dst", precision = 7, scale = 2, nullable = true)
    @Schema(description = "특수운송거리", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal spclTrDst; //--특수운송거리

    @Column(name = "tr_days", precision = 5, scale = 0, nullable = true)
    @Schema(description = "운송일수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal trDays; //--운송일수

    @Column(name = "snddt", nullable = true)
    @Schema(description = "발송일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date snddt; //--발송일자

    @Column(name = "arvdt", nullable = true)
    @Schema(description = "도착일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date arvdt; //--도착일자

    @Column(name = "lowt_prm_ap_yn", length = 1, nullable = true)
    @Schema(description = "최저보험료적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lowtPrmApYn; //--최저보험료적용여부

    @Column(name = "slfdt", nullable = true)
    @Schema(description = "출항일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date slfdt; //--출항일자

    @Column(name = "outus_mncd", length = 10, nullable = true)
    @Schema(description = "출력용화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String outusMncd; //--출력용화폐코드

    @Column(name = "ivamt_prt_yn", length = 1, nullable = true)
    @Schema(description = "보험가액인쇄여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ivamtPrtYn; //--보험가액인쇄여부

    @Column(name = "bl_yn", length = 1, nullable = true)
    @Schema(description = "bl여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String blYn; //--bl여부

    @Column(name = "vp_clm", length = 10, nullable = true)
    @Schema(description = "vp컬럼", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String vpClm; //--vp컬럼

    @Column(name = "dc_mtdcd", length = 10, nullable = true)
    @Schema(description = "공제방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcMtdcd; //--공제방법코드

    @Column(name = "dvdld_ct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "분적횟수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dvdldCt; //--분적횟수

    @Column(name = "xpipt_op_flgcd", length = 10, nullable = true)
    @Schema(description = "수출입op구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xpiptOpFlgcd; //--수출입op구분코드

    @Column(name = "carg_dt_flgcd", length = 10, nullable = true)
    @Schema(description = "적하세부구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cargDtFlgcd; //--적하세부구분코드

    @Column(name = "trt_yymm", length = 6, nullable = true)
    @Schema(description = "특약년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trtYymm; //--특약년월

    @Column(name = "fltno", length = 8, nullable = true)
    @Schema(description = "선단번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fltno; //--선단번호

    @Column(name = "flt_dc_yn", length = 1, nullable = true)
    @Schema(description = "선단할인여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fltDcYn; //--선단할인여부

    @Column(name = "shtm_xc_yn", length = 1, nullable = true)
    @Schema(description = "단기할증여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String shtmXcYn; //--단기할증여부

    @Column(name = "annu_shtm_flgcd", length = 10, nullable = true)
    @Schema(description = "연간단기구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String annuShtmFlgcd; //--연간단기구분코드

    @Column(name = "op_crano", length = 8, nullable = true)
    @Schema(description = "op계약번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opCrano; //--op계약번호

    @Column(name = "op_cr_ch_seq", precision = 3, scale = 0, nullable = true)
    @Schema(description = "op계약변경회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal opCrChSeq; //--op계약변경회차

    @Column(name = "op_cr_napc_yn", length = 1, nullable = true)
    @Schema(description = "op계약미적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opCrNapcYn; //--op계약미적용여부

    @Column(name = "nv_ctmno", length = 13, nullable = true)
    @Schema(description = "조사고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvCtmno; //--조사고객번호

    @Column(name = "nv_cprt_entp_seqno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "조사협력업체순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nvCprtEntpSeqno; //--조사협력업체순번

    @Column(name = "xc_ctmno", length = 13, nullable = true)
    @Schema(description = "정산고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcCtmno; //--정산고객번호

    @Column(name = "xc_cprt_entp_seqno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "정산협력업체순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xcCprtEntpSeqno; //--정산협력업체순번

    @Column(name = "marne_onds_no", length = 9, nullable = true)
    @Schema(description = "해상구배서번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String marneOndsNo; //--해상구배서번호

    @Column(name = "nvgtn_sct_dstcd", length = 10, nullable = true)
    @Schema(description = "항해구간거리코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvgtnSctDstcd; //--항해구간거리코드

    @Column(name = "inlwt_slng_yn", length = 1, nullable = true)
    @Schema(description = "내수면운항여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inlwtSlngYn; //--내수면운항여부

    @Column(name = "cmpx_tr_yn", length = 1, nullable = true)
    @Schema(description = "복합운송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpxTrYn; //--복합운송여부

    @Column(name = "prvsn_dcn_flgcd", length = 10, nullable = true)
    @Schema(description = "잠정확정구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prvsnDcnFlgcd; //--잠정확정구분코드

    @Column(name = "cr_objnm", length = 100, nullable = true)
    @Schema(description = "계약물건명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crObjnm; //--계약물건명

    @Column(name = "pym_trm_flgcd", length = 10, nullable = true)
    @Schema(description = "납입기간구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymTrmFlgcd; //--납입기간구분코드

    @Column(name = "pym_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "납입기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pymTrm; //--납입기간

    @Column(name = "pym_trmcd", length = 10, nullable = true)
    @Schema(description = "납입기간코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymTrmcd; //--납입기간코드

    @Column(name = "rl_pym_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "실납입기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rlPymTrm; //--실납입기간

    @Column(name = "nd_flgcd", length = 10, nullable = true)
    @Schema(description = "만기구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndFlgcd; //--만기구분코드

    @Column(name = "nd", precision = 3, scale = 0, nullable = true)
    @Schema(description = "만기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nd; //--만기

    @Column(name = "ndcd", length = 10, nullable = true)
    @Schema(description = "만기코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndcd; //--만기코드

    @Column(name = "rl_nd_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "실만기기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rlNdTrm; //--실만기기간

    @Column(name = "nd_rtamt_py_tpcd", length = 10, nullable = true)
    @Schema(description = "만기환급금지급유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndRtamtPyTpcd; //--만기환급금지급유형코드

    @Column(name = "inr_ins_cr_strdt", nullable = true)
    @Schema(description = "통합보험계약시작일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inrInsCrStrdt; //--통합보험계약시작일자

    @Column(name = "inr_ins_cr_nddt", nullable = true)
    @Schema(description = "통합보험계약종료일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inrInsCrNddt; //--통합보험계약종료일자

    @Column(name = "pym_cyccd", length = 10, nullable = true)
    @Schema(description = "납입주기코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pymCyccd; //--납입주기코드

    @Column(name = "type_flgcd", length = 10, nullable = true)
    @Schema(description = "종구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String typeFlgcd; //--종구분코드

    @Column(name = "dfr_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "거치기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dfrTrm; //--거치기간

    @Column(name = "mw_py_mtdcd", length = 10, nullable = true)
    @Schema(description = "중도지급방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mwPyMtdcd; //--중도지급방법코드

    @Column(name = "rvi_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "부활이자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rviNt; //--부활이자

    @Column(name = "rvi_nt_crdt", nullable = true)
    @Schema(description = "부활이자발생일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rviNtCrdt; //--부활이자발생일자

    @Column(name = "an_py_stdt", nullable = true)
    @Schema(description = "연금지급시기일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date anPyStdt; //--연금지급시기일자

    @Column(name = "an_py_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연금지급연령", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal anPyAge; //--연금지급연령

    @Column(name = "an_py_trm", precision = 3, scale = 0, nullable = true)
    @Schema(description = "연금지급기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal anPyTrm; //--연금지급기간

    @Column(name = "annu_an_py_ct", precision = 5, scale = 0, nullable = true)
    @Schema(description = "연간연금지급횟수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal annuAnPyCt; //--연간연금지급횟수

    @Column(name = "an_pytcd", length = 10, nullable = true)
    @Schema(description = "연금지급형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String anPytcd; //--연금지급형코드

    @Column(name = "an_py_girt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "연금지급체증율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal anPyGirt; //--연금지급체증율

    @Column(name = "tx_pf_flgcd", length = 10, nullable = true)
    @Schema(description = "세금우대구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String txPfFlgcd; //--세금우대구분코드

    @Column(name = "iht_yn", length = 1, nullable = true)
    @Schema(description = "상속여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ihtYn; //--상속여부

    @Column(name = "tx_pfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "세금우대금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal txPfamt; //--세금우대금액

    @Column(name = "tx_pf_rgt_flgcd", length = 10, nullable = true)
    @Schema(description = "세금우대등록구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String txPfRgtFlgcd; //--세금우대등록구분코드

    @Column(name = "tx_pf_cncd", length = 10, nullable = true)
    @Schema(description = "세금우대해지코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String txPfCncd; //--세금우대해지코드

    @Column(name = "tx_pf_cnldt", nullable = true)
    @Schema(description = "세금우대해지일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date txPfCnldt; //--세금우대해지일자

    @Column(name = "tx_pf_gd_csfcd", length = 10, nullable = true)
    @Schema(description = "세금우대상품분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String txPfGdCsfcd; //--세금우대상품분류코드

    @Column(name = "cr_cvr_is_yn", length = 1, nullable = true)
    @Schema(description = "차량담보가입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crCvrIsYn; //--차량담보가입여부

    @Column(name = "cv_yn", length = 1, nullable = true)
    @Schema(description = "전환여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvYn; //--전환여부

    @Column(name = "gr_cr_flgcd", length = 10, nullable = true)
    @Schema(description = "단체계약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String grCrFlgcd; //--단체계약구분코드

    @Column(name = "gr_dscrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "단체할인율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal grDscrt; //--단체할인율

    @Column(name = "pym_xmp_stdt", nullable = true)
    @Schema(description = "납입면제시기일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pymXmpStdt; //--납입면제시기일자

    @Column(name = "avg_rt_ap_yn", length = 1, nullable = true)
    @Schema(description = "평균요율적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String avgRtApYn; //--평균요율적용여부

    @Column(name = "man_avg_ap_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "남자평균적용연령", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal manAvgApAge; //--남자평균적용연령

    @Column(name = "fml_avg_ap_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "여자평균적용연령", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fmlAvgApAge; //--여자평균적용연령

    @Column(name = "man_avg_injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "남자평균상해급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String manAvgInjrRnkcd; //--남자평균상해급수코드

    @Column(name = "fml_avg_injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "여자평균상해급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fmlAvgInjrRnkcd; //--여자평균상해급수코드

    @Column(name = "man_avg_drve_tycd", length = 10, nullable = true)
    @Schema(description = "남자평균운전형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String manAvgDrveTycd; //--남자평균운전형태코드

    @Column(name = "fml_avg_drve_tycd", length = 10, nullable = true)
    @Schema(description = "여자평균운전형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fmlAvgDrveTycd; //--여자평균운전형태코드

    @Column(name = "plcd", length = 10, nullable = true)
    @Schema(description = "플랜코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plcd; //--플랜코드

    @Column(name = "ibnf_py_tpcd", length = 10, nullable = true)
    @Schema(description = "보험금지급유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ibnfPyTpcd; //--보험금지급유형코드

    @Column(name = "drve_tycd", length = 10, nullable = true)
    @Schema(description = "운전형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drveTycd; //--운전형태코드

    @Column(name = "drve_cr_usecd", length = 10, nullable = true)
    @Schema(description = "운전차량용도코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drveCrUsecd; //--운전차량용도코드

    @Column(name = "embr_minsr_yn", length = 1, nullable = true)
    @Schema(description = "태아주피여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String embrMinsrYn; //--태아주피여부

    @Column(name = "sb_pym_rq_yn", length = 1, nullable = true)
    @Schema(description = "대체납입신청여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sbPymRqYn; //--대체납입신청여부

    @Column(name = "dc_st_flgcd", length = 10, nullable = true)
    @Schema(description = "할인기준구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcStFlgcd; //--할인기준구분코드

    @Column(name = "apl_tycd", length = 10, nullable = true)
    @Schema(description = "청약형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String aplTycd; //--청약형태코드

    @Column(name = "sep_cr_flgcd", length = 10, nullable = true)
    @Schema(description = "분리계약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sepCrFlgcd; //--분리계약구분코드

    @Column(name = "ibnf_sb_pym_yn", length = 1, nullable = true)
    @Schema(description = "보험금대체납입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ibnfSbPymYn; //--보험금대체납입여부

    @Column(name = "ibnf_sb_pym_st", nullable = true)
    @Schema(description = "보험금대체납입시기", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ibnfSbPymSt; //--보험금대체납입시기

    @Column(name = "rnw_nddt", nullable = true)
    @Schema(description = "갱신종료일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rnwNddt; //--갱신종료일자

    @Column(name = "sign_mtdcd", length = 10, nullable = true)
    @Schema(description = "서명방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String signMtdcd; //--서명방법코드

    @Column(name = "nd_sep_rtn_tycd", length = 10, nullable = true)
    @Schema(description = "만기분할환급형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndSepRtnTycd; //--만기분할환급형태코드

    @Column(name = "nd_sep_py_mtdcd", length = 10, nullable = true)
    @Schema(description = "만기분할지급방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndSepPyMtdcd; //--만기분할지급방법코드

    @Column(name = "ba_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "기본보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal baPrm; //--기본보험료

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = true)
    @Schema(description = "적용보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal apPrm; //--적용보험료

    @Column(name = "stdbd_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준체보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal stdbdPrm; //--표준체보험료

    @Column(name = "sustd_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준하체보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sustdPrm; //--표준하체보험료

    @Column(name = "befo_plyno", length = 16, nullable = true)
    @Schema(description = "이전증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String befoPlyno; //--이전증권번호

    @Column(name = "fnl_dh_stfno", length = 50, nullable = false)
    @Schema(description = "최종취급직원번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnlDhStfno; //--최종취급직원번호

    @Column(name = "gdxpn_ss_bj_yn", length = 1, nullable = true)
    @Schema(description = "상품설명서발행대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gdxpnSsBjYn; //--상품설명서발행대상여부

    @Column(name = "self_cr_yn", length = 1, nullable = true)
    @Schema(description = "자기계약여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String selfCrYn; //--자기계약여부

    @Column(name = "rdch_cr_yn", length = 1, nullable = true)
    @Schema(description = "승환계약여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rdchCrYn; //--승환계약여부

    @Column(name = "cr_info_cvap_yn", length = 1, nullable = true)
    @Schema(description = "계약정보민원여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crInfoCvapYn; //--계약정보민원여부

    @Column(name = "gdxpn_trnm_yn", length = 1, nullable = true)
    @Schema(description = "상품설명서전달여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gdxpnTrnmYn; //--상품설명서전달여부

    @Column(name = "nwcr_scan_bj_yn", length = 1, nullable = true)
    @Schema(description = "신계약스캔대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwcrScanBjYn; //--신계약스캔대상여부

    @Column(name = "nwcr_scan_cplt_yn", length = 1, nullable = true)
    @Schema(description = "신계약스캔완료여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwcrScanCpltYn; //--신계약스캔완료여부

    @Column(name = "nwcr_scan_cplt_dthms", nullable = true)
    @Schema(description = "신계약스캔완료일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date nwcrScanCpltDthms; //--신계약스캔완료일시

    @Column(name = "gu_plyno", length = 16, nullable = true)
    @Schema(description = "구증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String guPlyno; //--구증권번호

    @Column(name = "gu_fire_gdcd", length = 10, nullable = true)
    @Schema(description = "구화재상품코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String guFireGdcd; //--구화재상품코드

    @Column(name = "gu_fire_gdnm", length = 100, nullable = true)
    @Schema(description = "구화재상품명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String guFireGdnm; //--구화재상품명

    @Column(name = "dc_plyno", length = 20, nullable = true)
    @Schema(description = "공제증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dcPlyno; //--공제증권번호

    @Column(name = "ppr_plyno", length = 16, nullable = true)
    @Schema(description = "상위증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pprPlyno; //--상위증권번호

    @Column(name = "gr_ctmno", length = 13, nullable = true)
    @Schema(description = "단체고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String grCtmno; //--단체고객번호

    @Column(name = "bdl_pym_yn", length = 1, nullable = true)
    @Schema(description = "일괄납입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bdlPymYn; //--일괄납입여부

    @Column(name = "rltn_plyno", length = 16, nullable = true)
    @Schema(description = "연계증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rltnPlyno; //--연계증권번호

    @Column(name = "fn_dl_rl_ownr_flgcd", length = 10, nullable = true)
    @Schema(description = "금융거래실제소유자구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fnDlRlOwnrFlgcd; //--금융거래실제소유자구분코드

    @Column(name = "mg_cmpcd", length = 10, nullable = true)
    @Schema(description = "간사회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mgCmpcd; //--간사회사코드

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
    public InsInsCr(String plyno, Date apNddt, Date apStrdt, String ndsno, String valdNdsYn, Date ndsApStrDthms, Date ndsApNdDthms, String fnlCrStcd, String fnlCrDtStcd, String fnlPartCvrStcd, Date fnlCrStChdt, Date cnrdt, String plno, BigDecimal cgafChSeqno, BigDecimal fnlPymSeq, String fnlPymYymm, String plyLvlFlgcd, String gdcd, String ikdGrpcd, String insImcd, String nwRnwFlgcd, Date apldt, String trmSctFlgcd, Date insSt, String insStHms, Date insClstr, String insClstrHms, BigDecimal insDays, BigDecimal instrMc, BigDecimal instrYyct, BigDecimal condtTApPrm, String pymMtdcd, String ceRowcd, String plyRcMtdcd, String holoSignYn, String grCrYn, String crChncd, String cprtbAdmno, String cmpgBjYn, BigDecimal nrdct, String udrtkTycd, String crycd, String otcmMgCmpcd, String otcmPlyno, Date otcmPlySsdt, String agmtAqrRtFlgcd, String nscYn, String bkAdmno, String bkBrcd, String bkExtnQfp, String bkIpps, String hscsHsFlgcd, String psCstYn, String rtAqrRqno, String onwCrFlgcd, Date rvCcldt, BigDecimal fmlct, String bzcsQtrtApYn, String prortShtmFlgcd, String samePlyFlgcd, String dcXcApFlgcd, String pypofSymb, BigDecimal rgltVltct, BigDecimal rgltVltPoct, String rgltVltcd, String isCrrcd, String spcXccd, String dtyPymMtdcd, String pstRpblIsYn, String gnCoObjFlgcd, String coObjAsno, String bfcrIscmp, String bfcrIkdcd, String bfcrYear, String bfcrNo, Date bfcrInsSt, Date bfcrInsClstr, BigDecimal bfcrAprt, String dvpnsPlyno, String dvpnsJbcd, String udrtkGuArecd, String udrtkGrdcd, String sngCrFlgcd, String insItmSmccd, BigDecimal fstiRpPrm, String dcXcGrdcd, BigDecimal aSctCt, BigDecimal bSctCt, String bfcrDcXcGrdcd, String dcXcSameGrdyn, String rpblInsPlyno, Date repyNtRcpdt, BigDecimal repyNtRcpSeqno, String xwpyRtntmNtpyYn, BigDecimal y1ClmCt, String y1ClmYn, BigDecimal y3ClmCt, String vltSpcXccd, String xacd, String xcCyccd, String crTpcd, String hltInsIsYn, String unfRtApYn, String avgAgeFlgcd, BigDecimal dpsrt, String dpstPrmCcFlgcd, String xcPrdy, String isTpcd, String ssngArecd, String ssst, String ssngOjccd, String trfRidcd, String ssngCmpnm, String nrdpsAdmMtdcd, String stdsbRkGrdcd, String stdsbFlgcd, String rlStdsb, String prctcPln, String prctcNm, BigDecimal prctcMntct, String dmgrtMdCfcapBzmno, String dmgrtMdCfcCrpno, String dmgrtMdCfcapYn, BigDecimal fcntrDmgrt, BigDecimal dmgrtMdCfc, String fcntrSclcd, BigDecimal ccPrm, String nkorRsYn, String insRtFlgcd, String apCvrFlgcd, BigDecimal chafAnnuApprm, String rtAqrUntFlgcd, String rtAqrStncd, String bsnsChrpsStfno, String intnRltno, String cstcpFlgcd, String chrAdmrStfno, String nvgtnArecd, String etNvgtnArenm, String condtQtrtFrcapYn, BigDecimal ssPlyct, String trsprCmpnm, String dstcd, BigDecimal spclTrDst, BigDecimal trDays, Date snddt, Date arvdt, String lowtPrmApYn, Date slfdt, String outusMncd, String ivamtPrtYn, String blYn, String vpClm, String dcMtdcd, BigDecimal dvdldCt, String xpiptOpFlgcd, String cargDtFlgcd, String trtYymm, String fltno, String fltDcYn, String shtmXcYn, String annuShtmFlgcd, String opCrano, BigDecimal opCrChSeq, String opCrNapcYn, String nvCtmno, BigDecimal nvCprtEntpSeqno, String xcCtmno, BigDecimal xcCprtEntpSeqno, String marneOndsNo, String nvgtnSctDstcd, String inlwtSlngYn, String cmpxTrYn, String prvsnDcnFlgcd, String crObjnm, String pymTrmFlgcd, BigDecimal pymTrm, String pymTrmcd, BigDecimal rlPymTrm, String ndFlgcd, BigDecimal nd, String ndcd, BigDecimal rlNdTrm, String ndRtamtPyTpcd, Date inrInsCrStrdt, Date inrInsCrNddt, String pymCyccd, String typeFlgcd, BigDecimal dfrTrm, String mwPyMtdcd, BigDecimal rviNt, Date rviNtCrdt, Date anPyStdt, BigDecimal anPyAge, BigDecimal anPyTrm, BigDecimal annuAnPyCt, String anPytcd, BigDecimal anPyGirt, String txPfFlgcd, String ihtYn, BigDecimal txPfamt, String txPfRgtFlgcd, String txPfCncd, Date txPfCnldt, String txPfGdCsfcd, String crCvrIsYn, String cvYn, String grCrFlgcd, BigDecimal grDscrt, Date pymXmpStdt, String avgRtApYn, BigDecimal manAvgApAge, BigDecimal fmlAvgApAge, String manAvgInjrRnkcd, String fmlAvgInjrRnkcd, String manAvgDrveTycd, String fmlAvgDrveTycd, String plcd, String ibnfPyTpcd, String drveTycd, String drveCrUsecd, String embrMinsrYn, String sbPymRqYn, String dcStFlgcd, String aplTycd, String sepCrFlgcd, String ibnfSbPymYn, Date ibnfSbPymSt, Date rnwNddt, String signMtdcd, String ndSepRtnTycd, String ndSepPyMtdcd, BigDecimal baPrm, BigDecimal apPrm, BigDecimal stdbdPrm, BigDecimal sustdPrm, String befoPlyno, String fnlDhStfno, String gdxpnSsBjYn, String selfCrYn, String rdchCrYn, String crInfoCvapYn, String gdxpnTrnmYn, String nwcrScanBjYn, String nwcrScanCpltYn, Date nwcrScanCpltDthms, String guPlyno, String guFireGdcd, String guFireGdnm, String dcPlyno, String pprPlyno, String grCtmno, String bdlPymYn, String rltnPlyno, String fnDlRlOwnrFlgcd, String mgCmpcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plyno = plyno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.fnlCrStcd = fnlCrStcd;
        this.fnlCrDtStcd = fnlCrDtStcd;
        this.fnlPartCvrStcd = fnlPartCvrStcd;
        this.fnlCrStChdt = fnlCrStChdt;
        this.cnrdt = cnrdt;
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.fnlPymSeq = fnlPymSeq;
        this.fnlPymYymm = fnlPymYymm;
        this.plyLvlFlgcd = plyLvlFlgcd;
        this.gdcd = gdcd;
        this.ikdGrpcd = ikdGrpcd;
        this.insImcd = insImcd;
        this.nwRnwFlgcd = nwRnwFlgcd;
        this.apldt = apldt;
        this.trmSctFlgcd = trmSctFlgcd;
        this.insSt = insSt;
        this.insStHms = insStHms;
        this.insClstr = insClstr;
        this.insClstrHms = insClstrHms;
        this.insDays = insDays;
        this.instrMc = instrMc;
        this.instrYyct = instrYyct;
        this.condtTApPrm = condtTApPrm;
        this.pymMtdcd = pymMtdcd;
        this.ceRowcd = ceRowcd;
        this.plyRcMtdcd = plyRcMtdcd;
        this.holoSignYn = holoSignYn;
        this.grCrYn = grCrYn;
        this.crChncd = crChncd;
        this.cprtbAdmno = cprtbAdmno;
        this.cmpgBjYn = cmpgBjYn;
        this.nrdct = nrdct;
        this.udrtkTycd = udrtkTycd;
        this.crycd = crycd;
        this.otcmMgCmpcd = otcmMgCmpcd;
        this.otcmPlyno = otcmPlyno;
        this.otcmPlySsdt = otcmPlySsdt;
        this.agmtAqrRtFlgcd = agmtAqrRtFlgcd;
        this.nscYn = nscYn;
        this.bkAdmno = bkAdmno;
        this.bkBrcd = bkBrcd;
        this.bkExtnQfp = bkExtnQfp;
        this.bkIpps = bkIpps;
        this.hscsHsFlgcd = hscsHsFlgcd;
        this.psCstYn = psCstYn;
        this.rtAqrRqno = rtAqrRqno;
        this.onwCrFlgcd = onwCrFlgcd;
        this.rvCcldt = rvCcldt;
        this.fmlct = fmlct;
        this.bzcsQtrtApYn = bzcsQtrtApYn;
        this.prortShtmFlgcd = prortShtmFlgcd;
        this.samePlyFlgcd = samePlyFlgcd;
        this.dcXcApFlgcd = dcXcApFlgcd;
        this.pypofSymb = pypofSymb;
        this.rgltVltct = rgltVltct;
        this.rgltVltPoct = rgltVltPoct;
        this.rgltVltcd = rgltVltcd;
        this.isCrrcd = isCrrcd;
        this.spcXccd = spcXccd;
        this.dtyPymMtdcd = dtyPymMtdcd;
        this.pstRpblIsYn = pstRpblIsYn;
        this.gnCoObjFlgcd = gnCoObjFlgcd;
        this.coObjAsno = coObjAsno;
        this.bfcrIscmp = bfcrIscmp;
        this.bfcrIkdcd = bfcrIkdcd;
        this.bfcrYear = bfcrYear;
        this.bfcrNo = bfcrNo;
        this.bfcrInsSt = bfcrInsSt;
        this.bfcrInsClstr = bfcrInsClstr;
        this.bfcrAprt = bfcrAprt;
        this.dvpnsPlyno = dvpnsPlyno;
        this.dvpnsJbcd = dvpnsJbcd;
        this.udrtkGuArecd = udrtkGuArecd;
        this.udrtkGrdcd = udrtkGrdcd;
        this.sngCrFlgcd = sngCrFlgcd;
        this.insItmSmccd = insItmSmccd;
        this.fstiRpPrm = fstiRpPrm;
        this.dcXcGrdcd = dcXcGrdcd;
        this.aSctCt = aSctCt;
        this.bSctCt = bSctCt;
        this.bfcrDcXcGrdcd = bfcrDcXcGrdcd;
        this.dcXcSameGrdyn = dcXcSameGrdyn;
        this.rpblInsPlyno = rpblInsPlyno;
        this.repyNtRcpdt = repyNtRcpdt;
        this.repyNtRcpSeqno = repyNtRcpSeqno;
        this.xwpyRtntmNtpyYn = xwpyRtntmNtpyYn;
        this.y1ClmCt = y1ClmCt;
        this.y1ClmYn = y1ClmYn;
        this.y3ClmCt = y3ClmCt;
        this.vltSpcXccd = vltSpcXccd;
        this.xacd = xacd;
        this.xcCyccd = xcCyccd;
        this.crTpcd = crTpcd;
        this.hltInsIsYn = hltInsIsYn;
        this.unfRtApYn = unfRtApYn;
        this.avgAgeFlgcd = avgAgeFlgcd;
        this.dpsrt = dpsrt;
        this.dpstPrmCcFlgcd = dpstPrmCcFlgcd;
        this.xcPrdy = xcPrdy;
        this.isTpcd = isTpcd;
        this.ssngArecd = ssngArecd;
        this.ssst = ssst;
        this.ssngOjccd = ssngOjccd;
        this.trfRidcd = trfRidcd;
        this.ssngCmpnm = ssngCmpnm;
        this.nrdpsAdmMtdcd = nrdpsAdmMtdcd;
        this.stdsbRkGrdcd = stdsbRkGrdcd;
        this.stdsbFlgcd = stdsbFlgcd;
        this.rlStdsb = rlStdsb;
        this.prctcPln = prctcPln;
        this.prctcNm = prctcNm;
        this.prctcMntct = prctcMntct;
        this.dmgrtMdCfcapBzmno = dmgrtMdCfcapBzmno;
        this.dmgrtMdCfcCrpno = dmgrtMdCfcCrpno;
        this.dmgrtMdCfcapYn = dmgrtMdCfcapYn;
        this.fcntrDmgrt = fcntrDmgrt;
        this.dmgrtMdCfc = dmgrtMdCfc;
        this.fcntrSclcd = fcntrSclcd;
        this.ccPrm = ccPrm;
        this.nkorRsYn = nkorRsYn;
        this.insRtFlgcd = insRtFlgcd;
        this.apCvrFlgcd = apCvrFlgcd;
        this.chafAnnuApprm = chafAnnuApprm;
        this.rtAqrUntFlgcd = rtAqrUntFlgcd;
        this.rtAqrStncd = rtAqrStncd;
        this.bsnsChrpsStfno = bsnsChrpsStfno;
        this.intnRltno = intnRltno;
        this.cstcpFlgcd = cstcpFlgcd;
        this.chrAdmrStfno = chrAdmrStfno;
        this.nvgtnArecd = nvgtnArecd;
        this.etNvgtnArenm = etNvgtnArenm;
        this.condtQtrtFrcapYn = condtQtrtFrcapYn;
        this.ssPlyct = ssPlyct;
        this.trsprCmpnm = trsprCmpnm;
        this.dstcd = dstcd;
        this.spclTrDst = spclTrDst;
        this.trDays = trDays;
        this.snddt = snddt;
        this.arvdt = arvdt;
        this.lowtPrmApYn = lowtPrmApYn;
        this.slfdt = slfdt;
        this.outusMncd = outusMncd;
        this.ivamtPrtYn = ivamtPrtYn;
        this.blYn = blYn;
        this.vpClm = vpClm;
        this.dcMtdcd = dcMtdcd;
        this.dvdldCt = dvdldCt;
        this.xpiptOpFlgcd = xpiptOpFlgcd;
        this.cargDtFlgcd = cargDtFlgcd;
        this.trtYymm = trtYymm;
        this.fltno = fltno;
        this.fltDcYn = fltDcYn;
        this.shtmXcYn = shtmXcYn;
        this.annuShtmFlgcd = annuShtmFlgcd;
        this.opCrano = opCrano;
        this.opCrChSeq = opCrChSeq;
        this.opCrNapcYn = opCrNapcYn;
        this.nvCtmno = nvCtmno;
        this.nvCprtEntpSeqno = nvCprtEntpSeqno;
        this.xcCtmno = xcCtmno;
        this.xcCprtEntpSeqno = xcCprtEntpSeqno;
        this.marneOndsNo = marneOndsNo;
        this.nvgtnSctDstcd = nvgtnSctDstcd;
        this.inlwtSlngYn = inlwtSlngYn;
        this.cmpxTrYn = cmpxTrYn;
        this.prvsnDcnFlgcd = prvsnDcnFlgcd;
        this.crObjnm = crObjnm;
        this.pymTrmFlgcd = pymTrmFlgcd;
        this.pymTrm = pymTrm;
        this.pymTrmcd = pymTrmcd;
        this.rlPymTrm = rlPymTrm;
        this.ndFlgcd = ndFlgcd;
        this.nd = nd;
        this.ndcd = ndcd;
        this.rlNdTrm = rlNdTrm;
        this.ndRtamtPyTpcd = ndRtamtPyTpcd;
        this.inrInsCrStrdt = inrInsCrStrdt;
        this.inrInsCrNddt = inrInsCrNddt;
        this.pymCyccd = pymCyccd;
        this.typeFlgcd = typeFlgcd;
        this.dfrTrm = dfrTrm;
        this.mwPyMtdcd = mwPyMtdcd;
        this.rviNt = rviNt;
        this.rviNtCrdt = rviNtCrdt;
        this.anPyStdt = anPyStdt;
        this.anPyAge = anPyAge;
        this.anPyTrm = anPyTrm;
        this.annuAnPyCt = annuAnPyCt;
        this.anPytcd = anPytcd;
        this.anPyGirt = anPyGirt;
        this.txPfFlgcd = txPfFlgcd;
        this.ihtYn = ihtYn;
        this.txPfamt = txPfamt;
        this.txPfRgtFlgcd = txPfRgtFlgcd;
        this.txPfCncd = txPfCncd;
        this.txPfCnldt = txPfCnldt;
        this.txPfGdCsfcd = txPfGdCsfcd;
        this.crCvrIsYn = crCvrIsYn;
        this.cvYn = cvYn;
        this.grCrFlgcd = grCrFlgcd;
        this.grDscrt = grDscrt;
        this.pymXmpStdt = pymXmpStdt;
        this.avgRtApYn = avgRtApYn;
        this.manAvgApAge = manAvgApAge;
        this.fmlAvgApAge = fmlAvgApAge;
        this.manAvgInjrRnkcd = manAvgInjrRnkcd;
        this.fmlAvgInjrRnkcd = fmlAvgInjrRnkcd;
        this.manAvgDrveTycd = manAvgDrveTycd;
        this.fmlAvgDrveTycd = fmlAvgDrveTycd;
        this.plcd = plcd;
        this.ibnfPyTpcd = ibnfPyTpcd;
        this.drveTycd = drveTycd;
        this.drveCrUsecd = drveCrUsecd;
        this.embrMinsrYn = embrMinsrYn;
        this.sbPymRqYn = sbPymRqYn;
        this.dcStFlgcd = dcStFlgcd;
        this.aplTycd = aplTycd;
        this.sepCrFlgcd = sepCrFlgcd;
        this.ibnfSbPymYn = ibnfSbPymYn;
        this.ibnfSbPymSt = ibnfSbPymSt;
        this.rnwNddt = rnwNddt;
        this.signMtdcd = signMtdcd;
        this.ndSepRtnTycd = ndSepRtnTycd;
        this.ndSepPyMtdcd = ndSepPyMtdcd;
        this.baPrm = baPrm;
        this.apPrm = apPrm;
        this.stdbdPrm = stdbdPrm;
        this.sustdPrm = sustdPrm;
        this.befoPlyno = befoPlyno;
        this.fnlDhStfno = fnlDhStfno;
        this.gdxpnSsBjYn = gdxpnSsBjYn;
        this.selfCrYn = selfCrYn;
        this.rdchCrYn = rdchCrYn;
        this.crInfoCvapYn = crInfoCvapYn;
        this.gdxpnTrnmYn = gdxpnTrnmYn;
        this.nwcrScanBjYn = nwcrScanBjYn;
        this.nwcrScanCpltYn = nwcrScanCpltYn;
        this.nwcrScanCpltDthms = nwcrScanCpltDthms;
        this.guPlyno = guPlyno;
        this.guFireGdcd = guFireGdcd;
        this.guFireGdnm = guFireGdnm;
        this.dcPlyno = dcPlyno;
        this.pprPlyno = pprPlyno;
        this.grCtmno = grCtmno;
        this.bdlPymYn = bdlPymYn;
        this.rltnPlyno = rltnPlyno;
        this.fnDlRlOwnrFlgcd = fnDlRlOwnrFlgcd;
        this.mgCmpcd = mgCmpcd;
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
