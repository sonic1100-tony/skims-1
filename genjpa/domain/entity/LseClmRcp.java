/**
 * LseClmRcp Entity 클래스
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
@Table(name = "lse_clm_rcp") //--사고접수
@Schema(description = "사고접수")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseClmRcp implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "rcp_yymm", length = 6, nullable = false)
    @Schema(description = "접수년월", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpYymm; //--접수년월

    @Column(name = "rcp_nv_seqno", length = 9, nullable = false)
    @Schema(description = "접수조사순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpNvSeqno; //--접수조사순번

    @Column(name = "rcp_crr_seqno", length = 3, nullable = false)
    @Schema(description = "접수이력순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpCrrSeqno; //--접수이력순번

    @Column(name = "dm_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "청구순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmSeqno; //--청구순번

    @Column(name = "ap_str_dthms", nullable = false)
    @Schema(description = "적용시작일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apStrDthms; //--적용시작일시

    @Column(name = "ap_nd_dthms", nullable = false)
    @Schema(description = "적용종료일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date apNdDthms; //--적용종료일시

    @Column(name = "rcpdt", nullable = false)
    @Schema(description = "접수일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rcpdt; //--접수일자

    @Column(name = "rcp_hhmm", length = 4, nullable = false)
    @Schema(description = "접수시분", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpHhmm; //--접수시분

    @Column(name = "xp_dmamt", precision = 17, scale = 5, nullable = false)
    @Schema(description = "예상손해액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xpDmamt; //--예상손해액

    @Column(name = "clm_rcp_stcd", length = 10, nullable = false)
    @Schema(description = "사고접수상태코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmRcpStcd; //--사고접수상태코드

    @Column(name = "clmdt", nullable = false)
    @Schema(description = "사고일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date clmdt; //--사고일자

    @Column(name = "clm_hhmm", length = 4, nullable = false)
    @Schema(description = "사고시분", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmHhmm; //--사고시분

    @Column(name = "dmos_flgcd", length = 10, nullable = false)
    @Schema(description = "국내외구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmosFlgcd; //--국내외구분코드

    @Column(name = "pout_mtt", length = 2000, nullable = true)
    @Schema(description = "특이사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String poutMtt; //--특이사항

    @Column(name = "clm_cn", length = 1000, nullable = false)
    @Schema(description = "사고내용", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmCn; //--사고내용

    @Column(name = "rcp_pth_flgcd", length = 10, nullable = false)
    @Schema(description = "접수경로구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpPthFlgcd; //--접수경로구분코드

    @Column(name = "clm_rcp_tpcd", length = 2, nullable = true)
    @Schema(description = "사고접수유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmRcpTpcd; //--사고접수유형코드

    @Column(name = "agnt_ctmno", length = 13, nullable = true)
    @Schema(description = "대리인고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String agntCtmno; //--대리인고객번호

    @Column(name = "rprnm", length = 100, nullable = false)
    @Schema(description = "통보자명", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprnm; //--통보자명

    @Column(name = "rprtr_cmpnm", length = 100, nullable = true)
    @Schema(description = "통보자회사명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrCmpnm; //--통보자회사명

    @Column(name = "rprtr_tl_ntncd", length = 10, nullable = true)
    @Schema(description = "통보자전화국가코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTlNtncd; //--통보자전화국가코드

    @Column(name = "rprtr_tlano_1", length = 4, nullable = true)
    @Schema(description = "통보자전화지역번호1", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTlano1; //--통보자전화지역번호1

    @Column(name = "rprtr_tltno_1", length = 4, nullable = true)
    @Schema(description = "통보자전화국번1", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTltno1; //--통보자전화국번1

    @Column(name = "rprtr_tlsno_1", length = 50, nullable = true)
    @Schema(description = "통보자전화일련번호1", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTlsno1; //--통보자전화일련번호1

    @Column(name = "rprtr_tlano_2", length = 4, nullable = true)
    @Schema(description = "통보자전화지역번호2", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTlano2; //--통보자전화지역번호2

    @Column(name = "rprtr_tltno_2", length = 4, nullable = true)
    @Schema(description = "통보자전화국번2", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTltno2; //--통보자전화국번2

    @Column(name = "rprtr_tlsno_2", length = 50, nullable = true)
    @Schema(description = "통보자전화일련번호2", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrTlsno2; //--통보자전화일련번호2

    @Column(name = "rcpr_stfno", length = 50, nullable = false)
    @Schema(description = "접수자직원번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcprStfno; //--접수자직원번호

    @Column(name = "ad_dmcd", length = 10, nullable = true)
    @Schema(description = "추가청구코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String adDmcd; //--추가청구코드

    @Column(name = "rcp_ccldt", nullable = true)
    @Schema(description = "접수취소일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rcpCcldt; //--접수취소일자

    @Column(name = "rcp_ccl_rscd", length = 10, nullable = true)
    @Schema(description = "접수취소사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpCclRscd; //--접수취소사유코드

    @Column(name = "clmps_relcd", length = 10, nullable = true)
    @Schema(description = "사고자관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmpsRelcd; //--사고자관계코드

    @Column(name = "rcp_ccl_note", length = 200, nullable = true)
    @Schema(description = "접수취소비고", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpCclNote; //--접수취소비고

    @Column(name = "rcp_ccl_stfno", length = 50, nullable = true)
    @Schema(description = "접수취소직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpCclStfno; //--접수취소직원번호

    @Column(name = "olclm_rcpno", length = 30, nullable = true)
    @Schema(description = "구사고접수번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String olclmRcpno; //--구사고접수번호

    @Column(name = "inr_clm_yn", length = 1, nullable = false)
    @Schema(description = "통합사고여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inrClmYn; //--통합사고여부

    @Column(name = "cr_clm_rcp_yymm", length = 6, nullable = true)
    @Schema(description = "자동차사고접수년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crClmRcpYymm; //--자동차사고접수년월

    @Column(name = "cr_rcp_nv_seqno", length = 5, nullable = true)
    @Schema(description = "자동차접수조사순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crRcpNvSeqno; //--자동차접수조사순번

    @Column(name = "otcm_mg_yn", length = 1, nullable = false)
    @Schema(description = "타사간사여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String otcmMgYn; //--타사간사여부

    @Column(name = "marne_yn", length = 1, nullable = false)
    @Schema(description = "해상여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String marneYn; //--해상여부

    @Column(name = "end_yn", length = 1, nullable = false)
    @Schema(description = "종결여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String endYn; //--종결여부

    @Column(name = "enddt", nullable = true)
    @Schema(description = "종결일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date enddt; //--종결일자

    @Column(name = "prv_flgcd", length = 10, nullable = true)
    @Schema(description = "결재구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prvFlgcd; //--결재구분코드

    @Column(name = "prvdt", nullable = true)
    @Schema(description = "결재일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date prvdt; //--결재일자

    @Column(name = "cmp_ky_yr", length = 4, nullable = true)
    @Schema(description = "보상키년도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpKyYr; //--보상키년도

    @Column(name = "cmp_ky_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "보상키순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cmpKySeqno; //--보상키순번

    @Column(name = "dlg_yn", length = 1, nullable = true)
    @Schema(description = "위임여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlgYn; //--위임여부

    @Column(name = "mail_id", length = 50, nullable = true)
    @Schema(description = "이메일아이디", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mailId; //--이메일아이디

    @Column(name = "mail_domn", length = 50, nullable = true)
    @Schema(description = "이메일도메인", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mailDomn; //--이메일도메인

    @Column(name = "py_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyMtdcd; //--지급방법코드

    @Column(name = "py_bkcd", length = 10, nullable = true)
    @Schema(description = "지급은행코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyBkcd; //--지급은행코드

    @Column(name = "py_dpsnm", length = 100, nullable = true)
    @Schema(description = "지급예금주명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyDpsnm; //--지급예금주명

    @Column(name = "py_actno", length = 48, nullable = true)
    @Schema(description = "지급계좌번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyActno; //--지급계좌번호

    @Column(name = "dpsr_dscno", length = 48, nullable = true)
    @Schema(description = "예금주식별번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrDscno; //--예금주식별번호

    @Column(name = "dpsr_ctmno", length = 13, nullable = true)
    @Schema(description = "예금주고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrCtmno; //--예금주고객번호

    @Column(name = "xp_dmamt_flgcd", length = 10, nullable = true)
    @Schema(description = "예상손해액구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xpDmamtFlgcd; //--예상손해액구분코드

    @Column(name = "ntc_mtt_of_mtdcd", length = 10, nullable = true)
    @Schema(description = "안내사항제공방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntcMttOfMtdcd; //--안내사항제공방법코드

    @Column(name = "crdif_utl_agre_yn", length = 1, nullable = true)
    @Schema(description = "신용정보활용동의여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdifUtlAgreYn; //--신용정보활용동의여부

    @Column(name = "clm_rcp_ccl_no", length = 13, nullable = true)
    @Schema(description = "사고접수취소번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmRcpCclNo; //--사고접수취소번호

    @Column(name = "trpa_dtspc_clrq_yn", length = 1, nullable = true)
    @Schema(description = "진료비세부내역징구여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trpaDtspcClrqYn; //--진료비세부내역징구여부

    @Column(name = "ogcy_clrq_yn", length = 1, nullable = true)
    @Schema(description = "원본징구여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ogcyClrqYn; //--원본징구여부

    @Column(name = "rcp_vcr_agre_yn", length = 1, nullable = true)
    @Schema(description = "접수대행동의여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpVcrAgreYn; //--접수대행동의여부

    @Column(name = "agre_inscp_cd", length = 10, nullable = true)
    @Schema(description = "동의보험사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String agreInscpCd; //--동의보험사코드

    @Column(name = "agre_inscp_nm", length = 100, nullable = true)
    @Schema(description = "동의보험사명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String agreInscpNm; //--동의보험사명

    @Column(name = "chrps_rq_dt_mtt", length = 1000, nullable = true)
    @Schema(description = "담당자요청세부사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsRqDtMtt; //--담당자요청세부사항

    @Column(name = "ibnf_rigt_dlg_yn", length = 1, nullable = true)
    @Schema(description = "보험금권리위임여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ibnfRigtDlgYn; //--보험금권리위임여부

    @Column(name = "dm_dcu_dlg_yn", length = 1, nullable = true)
    @Schema(description = "청구서류위임여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmDcuDlgYn; //--청구서류위임여부

    @Column(name = "clm_nv_pass_yn", length = 1, nullable = false)
    @Schema(description = "사고조사pass여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmNvPassYn; //--사고조사pass여부

    @Column(name = "pstno", length = 6, nullable = true)
    @Schema(description = "우편번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pstno; //--우편번호

    @Column(name = "sd", length = 30, nullable = true)
    @Schema(description = "시도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sd; //--시도

    @Column(name = "sgng", length = 30, nullable = true)
    @Schema(description = "시군구", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sgng; //--시군구

    @Column(name = "twmd", length = 30, nullable = true)
    @Schema(description = "읍면동", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String twmd; //--읍면동

    @Column(name = "ri_or_lrdlp", length = 200, nullable = true)
    @Schema(description = "리대량배달처", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String riOrLrdlp; //--리대량배달처

    @Column(name = "dtadr", length = 100, nullable = true)
    @Schema(description = "상세주소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dtadr; //--상세주소

    @Column(name = "ref_it", length = 100, nullable = true)
    @Schema(description = "참고항목", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String refIt; //--참고항목

    @Column(name = "road_nm", length = 100, nullable = true)
    @Schema(description = "도로명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String roadNm; //--도로명

    @Column(name = "undg_flgcd", length = 10, nullable = true)
    @Schema(description = "지하구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String undgFlgcd; //--지하구분코드

    @Column(name = "mn_bldno", length = 50, nullable = true)
    @Schema(description = "주건물번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mnBldno; //--주건물번호

    @Column(name = "sub_bldno", length = 5, nullable = true)
    @Schema(description = "부건물번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String subBldno; //--부건물번호

    @Column(name = "nw_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "신규주소구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwAdrFlgcd; //--신규주소구분코드

    @Column(name = "ntncd", length = 10, nullable = true)
    @Schema(description = "국가코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntncd; //--국가코드

    @Column(name = "ctycd", length = 10, nullable = true)
    @Schema(description = "도시코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctycd; //--도시코드

    @Column(name = "clm_plc", length = 200, nullable = true)
    @Schema(description = "사고장소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmPlc; //--사고장소

    @Column(name = "mg_clmno", length = 30, nullable = true)
    @Schema(description = "간사사고번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mgClmno; //--간사사고번호

    @Column(name = "ctm_cnr_rcp_stcd", length = 10, nullable = true)
    @Schema(description = "고객센터접수상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmCnrRcpStcd; //--고객센터접수상태코드

    @Column(name = "sh_prnt_flgcd", length = 10, nullable = true)
    @Schema(description = "위장제보구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String shPrntFlgcd; //--위장제보구분코드

    @Column(name = "py_mtt_of_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급사항제공방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyMttOfMtdcd; //--지급사항제공방법코드

    @Column(name = "befo_ntclt_snd_yn", length = 1, nullable = true)
    @Schema(description = "사전안내장발송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String befoNtcltSndYn; //--사전안내장발송여부

    @Column(name = "hsp_dm_yn", length = 1, nullable = true)
    @Schema(description = "입원청구여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hspDmYn; //--입원청구여부

    @Column(name = "otp_dm_yn", length = 1, nullable = true)
    @Schema(description = "통원청구여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String otpDmYn; //--통원청구여부

    @Column(name = "rlpmi_joint_rpbl_yn", length = 1, nullable = true)
    @Schema(description = "실손연대책임여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rlpmiJointRpblYn; //--실손연대책임여부

    @Column(name = "rlpmi_joint_dcn_yn", length = 1, nullable = true)
    @Schema(description = "실손연대확정여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rlpmiJointDcnYn; //--실손연대확정여부

    @Column(name = "md_slr_sadrp_yn", length = 1, nullable = true)
    @Schema(description = "의료급여수급권자여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdSlrSadrpYn; //--의료급여수급권자여부

    @Column(name = "ins_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "보험처리구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insDlFlgcd; //--보험처리구분코드

    @Column(name = "rcp_ins_cmpcd", length = 10, nullable = true)
    @Schema(description = "접수보험회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpInsCmpcd; //--접수보험회사코드

    @Column(name = "nv_org_kndcd", length = 10, nullable = true)
    @Schema(description = "조사기관종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvOrgKndcd; //--조사기관종류코드

    @Column(name = "hwrk_dv_yn", length = 1, nullable = true)
    @Schema(description = "수작업배당여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hwrkDvYn; //--수작업배당여부

    @Column(name = "jbcd", length = 10, nullable = true)
    @Schema(description = "직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbcd; //--직업코드

    @Column(name = "jbnm", length = 100, nullable = true)
    @Schema(description = "직업명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jbnm; //--직업명

    @Column(name = "injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "상해급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String injrRnkcd; //--상해급수코드

    @Column(name = "nrdps_adr_apyn", length = 1, nullable = true)
    @Schema(description = "피보험자주소적용여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsAdrApyn; //--피보험자주소적용여부

    @Column(name = "self_dv_yn", length = 1, nullable = true)
    @Schema(description = "본인배당여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String selfDvYn; //--본인배당여부

    @Column(name = "rprtr_relcd", length = 10, nullable = true)
    @Schema(description = "통보자관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rprtrRelcd; //--통보자관계코드

    @Column(name = "dcu_rcpdt", nullable = true)
    @Schema(description = "서류접수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dcuRcpdt; //--서류접수일자

    @Column(name = "rcp_tl_mail_cntad", length = 50, nullable = true)
    @Schema(description = "접수전화메일연락처", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpTlMailCntad; //--접수전화메일연락처

    @Column(name = "carno", length = 50, nullable = true)
    @Schema(description = "차량번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String carno; //--차량번호

    @Column(name = "org_rcp_dv_chrps_id", length = 50, nullable = true)
    @Schema(description = "본접수배당담당자id", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String orgRcpDvChrpsId; //--본접수배당담당자id

    @Column(name = "dv_dthms", nullable = true)
    @Schema(description = "배당일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dvDthms; //--배당일시

    @Column(name = "acci_ps_flgcd", length = 10, nullable = true)
    @Schema(description = "재해자구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String acciPsFlgcd; //--재해자구분코드

    @Column(name = "acci_ps_nm", length = 100, nullable = true)
    @Schema(description = "재해자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String acciPsNm; //--재해자명

    @Column(name = "act_cnf_yn", length = 1, nullable = true)
    @Schema(description = "계좌확인여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actCnfYn; //--계좌확인여부

    @Column(name = "tmp_rcp_dv_stfno", length = 50, nullable = true)
    @Schema(description = "가접수배당직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tmpRcpDvStfno; //--가접수배당직원번호

    @Column(name = "dlay_mtt_of_mtdcd", length = 10, nullable = true)
    @Schema(description = "지연사항제공방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlayMttOfMtdcd; //--지연사항제공방법코드

    @Column(name = "chrps_mtt_of_mtdcd", length = 10, nullable = true)
    @Schema(description = "담당자사항제공방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsMttOfMtdcd; //--담당자사항제공방법코드

    @Column(name = "rcp_ccl_mtt_of_mtdcd", length = 10, nullable = true)
    @Schema(description = "접수취소사항제공방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpCclMttOfMtdcd; //--접수취소사항제공방법코드

    @Column(name = "rcp_ccl_reln_clm_rcpno", length = 13, nullable = true)
    @Schema(description = "접수취소연관사고접수번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpCclRelnClmRcpno; //--접수취소연관사고접수번호

    @Column(name = "rcp_mdf_usr_id", length = 50, nullable = true)
    @Schema(description = "접수수정사용자id", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpMdfUsrId; //--접수수정사용자id

    @Column(name = "rcp_mdf_dthms", nullable = true)
    @Schema(description = "접수수정일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rcpMdfDthms; //--접수수정일시

    @Column(name = "nrdps_jb_ch_yn", length = 1, nullable = true)
    @Schema(description = "피보험자직업변경여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsJbChYn; //--피보험자직업변경여부

    @Column(name = "nrdps_jbcd", length = 10, nullable = true)
    @Schema(description = "피보험자직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsJbcd; //--피보험자직업코드

    @Column(name = "nrdps_injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "피보험자상해급수코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsInjrRnkcd; //--피보험자상해급수코드

    @Column(name = "nrdps_jbnm", length = 100, nullable = true)
    @Schema(description = "피보험자직업명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nrdpsJbnm; //--피보험자직업명

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
    public LseClmRcp(String rcpYymm, String rcpNvSeqno, String rcpCrrSeqno, BigDecimal dmSeqno, Date apStrDthms, Date apNdDthms, Date rcpdt, String rcpHhmm, BigDecimal xpDmamt, String clmRcpStcd, Date clmdt, String clmHhmm, String dmosFlgcd, String poutMtt, String clmCn, String rcpPthFlgcd, String clmRcpTpcd, String agntCtmno, String rprnm, String rprtrCmpnm, String rprtrTlNtncd, String rprtrTlano1, String rprtrTltno1, String rprtrTlsno1, String rprtrTlano2, String rprtrTltno2, String rprtrTlsno2, String rcprStfno, String adDmcd, Date rcpCcldt, String rcpCclRscd, String clmpsRelcd, String rcpCclNote, String rcpCclStfno, String olclmRcpno, String inrClmYn, String crClmRcpYymm, String crRcpNvSeqno, String otcmMgYn, String marneYn, String endYn, Date enddt, String prvFlgcd, Date prvdt, String cmpKyYr, BigDecimal cmpKySeqno, String dlgYn, String mailId, String mailDomn, String pyMtdcd, String pyBkcd, String pyDpsnm, String pyActno, String dpsrDscno, String dpsrCtmno, String xpDmamtFlgcd, String ntcMttOfMtdcd, String crdifUtlAgreYn, String clmRcpCclNo, String trpaDtspcClrqYn, String ogcyClrqYn, String rcpVcrAgreYn, String agreInscpCd, String agreInscpNm, String chrpsRqDtMtt, String ibnfRigtDlgYn, String dmDcuDlgYn, String clmNvPassYn, String pstno, String sd, String sgng, String twmd, String riOrLrdlp, String dtadr, String refIt, String roadNm, String undgFlgcd, String mnBldno, String subBldno, String nwAdrFlgcd, String ntncd, String ctycd, String clmPlc, String mgClmno, String ctmCnrRcpStcd, String shPrntFlgcd, String pyMttOfMtdcd, String befoNtcltSndYn, String hspDmYn, String otpDmYn, String rlpmiJointRpblYn, String rlpmiJointDcnYn, String mdSlrSadrpYn, String insDlFlgcd, String rcpInsCmpcd, String nvOrgKndcd, String hwrkDvYn, String jbcd, String jbnm, String injrRnkcd, String nrdpsAdrApyn, String selfDvYn, String rprtrRelcd, Date dcuRcpdt, String rcpTlMailCntad, String carno, String orgRcpDvChrpsId, Date dvDthms, String acciPsFlgcd, String acciPsNm, String actCnfYn, String tmpRcpDvStfno, String dlayMttOfMtdcd, String chrpsMttOfMtdcd, String rcpCclMttOfMtdcd, String rcpCclRelnClmRcpno, String rcpMdfUsrId, Date rcpMdfDthms, String nrdpsJbChYn, String nrdpsJbcd, String nrdpsInjrRnkcd, String nrdpsJbnm, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.rcpCrrSeqno = rcpCrrSeqno;
        this.dmSeqno = dmSeqno;
        this.apStrDthms = apStrDthms;
        this.apNdDthms = apNdDthms;
        this.rcpdt = rcpdt;
        this.rcpHhmm = rcpHhmm;
        this.xpDmamt = xpDmamt;
        this.clmRcpStcd = clmRcpStcd;
        this.clmdt = clmdt;
        this.clmHhmm = clmHhmm;
        this.dmosFlgcd = dmosFlgcd;
        this.poutMtt = poutMtt;
        this.clmCn = clmCn;
        this.rcpPthFlgcd = rcpPthFlgcd;
        this.clmRcpTpcd = clmRcpTpcd;
        this.agntCtmno = agntCtmno;
        this.rprnm = rprnm;
        this.rprtrCmpnm = rprtrCmpnm;
        this.rprtrTlNtncd = rprtrTlNtncd;
        this.rprtrTlano1 = rprtrTlano1;
        this.rprtrTltno1 = rprtrTltno1;
        this.rprtrTlsno1 = rprtrTlsno1;
        this.rprtrTlano2 = rprtrTlano2;
        this.rprtrTltno2 = rprtrTltno2;
        this.rprtrTlsno2 = rprtrTlsno2;
        this.rcprStfno = rcprStfno;
        this.adDmcd = adDmcd;
        this.rcpCcldt = rcpCcldt;
        this.rcpCclRscd = rcpCclRscd;
        this.clmpsRelcd = clmpsRelcd;
        this.rcpCclNote = rcpCclNote;
        this.rcpCclStfno = rcpCclStfno;
        this.olclmRcpno = olclmRcpno;
        this.inrClmYn = inrClmYn;
        this.crClmRcpYymm = crClmRcpYymm;
        this.crRcpNvSeqno = crRcpNvSeqno;
        this.otcmMgYn = otcmMgYn;
        this.marneYn = marneYn;
        this.endYn = endYn;
        this.enddt = enddt;
        this.prvFlgcd = prvFlgcd;
        this.prvdt = prvdt;
        this.cmpKyYr = cmpKyYr;
        this.cmpKySeqno = cmpKySeqno;
        this.dlgYn = dlgYn;
        this.mailId = mailId;
        this.mailDomn = mailDomn;
        this.pyMtdcd = pyMtdcd;
        this.pyBkcd = pyBkcd;
        this.pyDpsnm = pyDpsnm;
        this.pyActno = pyActno;
        this.dpsrDscno = dpsrDscno;
        this.dpsrCtmno = dpsrCtmno;
        this.xpDmamtFlgcd = xpDmamtFlgcd;
        this.ntcMttOfMtdcd = ntcMttOfMtdcd;
        this.crdifUtlAgreYn = crdifUtlAgreYn;
        this.clmRcpCclNo = clmRcpCclNo;
        this.trpaDtspcClrqYn = trpaDtspcClrqYn;
        this.ogcyClrqYn = ogcyClrqYn;
        this.rcpVcrAgreYn = rcpVcrAgreYn;
        this.agreInscpCd = agreInscpCd;
        this.agreInscpNm = agreInscpNm;
        this.chrpsRqDtMtt = chrpsRqDtMtt;
        this.ibnfRigtDlgYn = ibnfRigtDlgYn;
        this.dmDcuDlgYn = dmDcuDlgYn;
        this.clmNvPassYn = clmNvPassYn;
        this.pstno = pstno;
        this.sd = sd;
        this.sgng = sgng;
        this.twmd = twmd;
        this.riOrLrdlp = riOrLrdlp;
        this.dtadr = dtadr;
        this.refIt = refIt;
        this.roadNm = roadNm;
        this.undgFlgcd = undgFlgcd;
        this.mnBldno = mnBldno;
        this.subBldno = subBldno;
        this.nwAdrFlgcd = nwAdrFlgcd;
        this.ntncd = ntncd;
        this.ctycd = ctycd;
        this.clmPlc = clmPlc;
        this.mgClmno = mgClmno;
        this.ctmCnrRcpStcd = ctmCnrRcpStcd;
        this.shPrntFlgcd = shPrntFlgcd;
        this.pyMttOfMtdcd = pyMttOfMtdcd;
        this.befoNtcltSndYn = befoNtcltSndYn;
        this.hspDmYn = hspDmYn;
        this.otpDmYn = otpDmYn;
        this.rlpmiJointRpblYn = rlpmiJointRpblYn;
        this.rlpmiJointDcnYn = rlpmiJointDcnYn;
        this.mdSlrSadrpYn = mdSlrSadrpYn;
        this.insDlFlgcd = insDlFlgcd;
        this.rcpInsCmpcd = rcpInsCmpcd;
        this.nvOrgKndcd = nvOrgKndcd;
        this.hwrkDvYn = hwrkDvYn;
        this.jbcd = jbcd;
        this.jbnm = jbnm;
        this.injrRnkcd = injrRnkcd;
        this.nrdpsAdrApyn = nrdpsAdrApyn;
        this.selfDvYn = selfDvYn;
        this.rprtrRelcd = rprtrRelcd;
        this.dcuRcpdt = dcuRcpdt;
        this.rcpTlMailCntad = rcpTlMailCntad;
        this.carno = carno;
        this.orgRcpDvChrpsId = orgRcpDvChrpsId;
        this.dvDthms = dvDthms;
        this.acciPsFlgcd = acciPsFlgcd;
        this.acciPsNm = acciPsNm;
        this.actCnfYn = actCnfYn;
        this.tmpRcpDvStfno = tmpRcpDvStfno;
        this.dlayMttOfMtdcd = dlayMttOfMtdcd;
        this.chrpsMttOfMtdcd = chrpsMttOfMtdcd;
        this.rcpCclMttOfMtdcd = rcpCclMttOfMtdcd;
        this.rcpCclRelnClmRcpno = rcpCclRelnClmRcpno;
        this.rcpMdfUsrId = rcpMdfUsrId;
        this.rcpMdfDthms = rcpMdfDthms;
        this.nrdpsJbChYn = nrdpsJbChYn;
        this.nrdpsJbcd = nrdpsJbcd;
        this.nrdpsInjrRnkcd = nrdpsInjrRnkcd;
        this.nrdpsJbnm = nrdpsJbnm;
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
