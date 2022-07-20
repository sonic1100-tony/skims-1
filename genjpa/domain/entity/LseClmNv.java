/**
 * LseClmNv Entity 클래스
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
@Table(name = "lse_clm_nv") //--사고조사
@Schema(description = "사고조사")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseClmNv implements Serializable {
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

    @Column(name = "clmps_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "사고자순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmpsSeqno; //--사고자순번

    @Column(name = "clm_nv_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "사고조사순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmNvSeqno; //--사고조사순번

    @Column(name = "dm_str_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "청구시작순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmStrSeqno; //--청구시작순번

    @Column(name = "dm_nd_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "청구종료순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmNdSeqno; //--청구종료순번

    @Column(name = "clm_nvdt", nullable = false)
    @Schema(description = "사고조사일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date clmNvdt; //--사고조사일자

    @Column(name = "clm_nv_hhmm", length = 4, nullable = false)
    @Schema(description = "사고조사시분", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmNvHhmm; //--사고조사시분

    @Column(name = "clm_tpcd", length = 10, nullable = true)
    @Schema(description = "사고유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmTpcd; //--사고유형코드

    @Column(name = "clm_cascd", length = 10, nullable = true)
    @Schema(description = "사고원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmCascd; //--사고원인코드

    @Column(name = "clm_2_cascd", length = 10, nullable = true)
    @Schema(description = "사고2원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clm2Cascd; //--사고2원인코드

    @Column(name = "clm_3_cascd", length = 10, nullable = true)
    @Schema(description = "사고3원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clm3Cascd; //--사고3원인코드

    @Column(name = "clmdt", nullable = true)
    @Schema(description = "사고일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date clmdt; //--사고일자

    @Column(name = "clm_hhmm", length = 4, nullable = true)
    @Schema(description = "사고시분", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmHhmm; //--사고시분

    @Column(name = "nv_cn", length = 1000, nullable = true)
    @Schema(description = "조사내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvCn; //--조사내용

    @Column(name = "pout_mtt", length = 2000, nullable = true)
    @Schema(description = "특이사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String poutMtt; //--특이사항

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "xcrt_apdt", nullable = true)
    @Schema(description = "환율적용일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date xcrtApdt; //--환율적용일자

    @Column(name = "xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "환율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xcrt; //--환율

    @Column(name = "clm_nv_kndcd", length = 10, nullable = false)
    @Schema(description = "사고조사종류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmNvKndcd; //--사고조사종류코드

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

    @Column(name = "lctn_flgcd", length = 10, nullable = true)
    @Schema(description = "소재지구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lctnFlgcd; //--소재지구분코드

    @Column(name = "dtadr", length = 100, nullable = true)
    @Schema(description = "상세주소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dtadr; //--상세주소

    @Column(name = "idm_xp_yn", length = 1, nullable = true)
    @Schema(description = "구상예상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String idmXpYn; //--구상예상여부

    @Column(name = "lw_xp_yn", length = 1, nullable = true)
    @Schema(description = "소송예상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lwXpYn; //--소송예상여부

    @Column(name = "siu_xp_yn", length = 1, nullable = true)
    @Schema(description = "siu예상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String siuXpYn; //--siu예상여부

    @Column(name = "cvap_xp_yn", length = 1, nullable = true)
    @Schema(description = "민원예상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvapXpYn; //--민원예상여부

    @Column(name = "udrtk_atps_yn", length = 1, nullable = true)
    @Schema(description = "인수유의자여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String udrtkAtpsYn; //--인수유의자여부

    @Column(name = "obs_yn", length = 1, nullable = true)
    @Schema(description = "장해여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String obsYn; //--장해여부

    @Column(name = "dm_sy_ctn", length = 500, nullable = true)
    @Schema(description = "손해사정인의견", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmSyCtn; //--손해사정인의견

    @Column(name = "de_yn", length = 1, nullable = true)
    @Schema(description = "사망여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deYn; //--사망여부

    @Column(name = "drct_ders_de_cas", length = 100, nullable = true)
    @Schema(description = "직접사인사망원인", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drctDersDeCas; //--직접사인사망원인

    @Column(name = "mid_prcg_de_cas", length = 100, nullable = true)
    @Schema(description = "중간선행사망원인", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String midPrcgDeCas; //--중간선행사망원인

    @Column(name = "prcg_ders_de_cas", length = 100, nullable = true)
    @Schema(description = "선행사인사망원인", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prcgDersDeCas; //--선행사인사망원인

    @Column(name = "et_de_cas", length = 100, nullable = true)
    @Schema(description = "기타사망원인", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String etDeCas; //--기타사망원인

    @Column(name = "de_plc_pstno", length = 6, nullable = true)
    @Schema(description = "사망장소우편번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dePlcPstno; //--사망장소우편번호

    @Column(name = "de_plc_sd", length = 30, nullable = true)
    @Schema(description = "사망장소시도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dePlcSd; //--사망장소시도

    @Column(name = "de_plc_sgng", length = 30, nullable = true)
    @Schema(description = "사망장소시군구", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dePlcSgng; //--사망장소시군구

    @Column(name = "de_plc_twmd", length = 30, nullable = true)
    @Schema(description = "사망장소읍면동", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dePlcTwmd; //--사망장소읍면동

    @Column(name = "deplc_ri_or_lrdlp", length = 200, nullable = true)
    @Schema(description = "사망장소리대량배달처", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcRiOrLrdlp; //--사망장소리대량배달처

    @Column(name = "de_plc_dtadr", length = 100, nullable = true)
    @Schema(description = "사망장소상세주소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dePlcDtadr; //--사망장소상세주소

    @Column(name = "deplc_ref_it", length = 100, nullable = true)
    @Schema(description = "사망장소참고항목", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcRefIt; //--사망장소참고항목

    @Column(name = "deplc_road_nm", length = 100, nullable = true)
    @Schema(description = "사망장소도로명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcRoadNm; //--사망장소도로명

    @Column(name = "deplc_undg_flgcd", length = 10, nullable = true)
    @Schema(description = "사망장소지하구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcUndgFlgcd; //--사망장소지하구분코드

    @Column(name = "deplc_mn_bldno", length = 5, nullable = true)
    @Schema(description = "사망장소주건물번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcMnBldno; //--사망장소주건물번호

    @Column(name = "deplc_sub_bldno", length = 5, nullable = true)
    @Schema(description = "사망장소부건물번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcSubBldno; //--사망장소부건물번호

    @Column(name = "deplc_nw_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "사망장소신규주소구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deplcNwAdrFlgcd; //--사망장소신규주소구분코드

    @Column(name = "de_kndcd", length = 10, nullable = true)
    @Schema(description = "사망종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deKndcd; //--사망종류코드

    @Column(name = "de_dt_kndcd", length = 10, nullable = true)
    @Schema(description = "사망세부종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDtKndcd; //--사망세부종류코드

    @Column(name = "de_flgcd", length = 10, nullable = true)
    @Schema(description = "사망구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deFlgcd; //--사망구분코드

    @Column(name = "dedt", nullable = true)
    @Schema(description = "사망일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dedt; //--사망일자

    @Column(name = "de_hhmm", length = 4, nullable = true)
    @Schema(description = "사망시분", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deHhmm; //--사망시분

    @Column(name = "de_dgn_hspcd", length = 10, nullable = true)
    @Schema(description = "사망진단병원코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDgnHspcd; //--사망진단병원코드

    @Column(name = "de_dgn_hsp_bzmno", length = 10, nullable = true)
    @Schema(description = "사망진단병원사업자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDgnHspBzmno; //--사망진단병원사업자번호

    @Column(name = "de_dgn_hspnm", length = 100, nullable = true)
    @Schema(description = "사망진단병원명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDgnHspnm; //--사망진단병원명

    @Column(name = "de_dgn_hsp_flgcd", length = 10, nullable = true)
    @Schema(description = "사망진단병원구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDgnHspFlgcd; //--사망진단병원구분코드

    @Column(name = "de_dgn_drnm", length = 100, nullable = true)
    @Schema(description = "사망진단의사명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDgnDrnm; //--사망진단의사명

    @Column(name = "de_dgn_intns_licno", length = 48, nullable = true)
    @Schema(description = "사망진단의사면허번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String deDgnIntnsLicno; //--사망진단의사면허번호

    @Column(name = "pvsp_cnbrt", precision = 5, scale = 2, nullable = false)
    @Schema(description = "기왕증기여율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pvspCnbrt; //--기왕증기여율

    @Column(name = "pvsp_yn", length = 1, nullable = true)
    @Schema(description = "기왕증여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pvspYn; //--기왕증여부

    @Column(name = "hsp_tdy", precision = 5, scale = 0, nullable = true)
    @Schema(description = "입원총일수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal hspTdy; //--입원총일수

    @Column(name = "hsp_tsm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "입원총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal hspTsm; //--입원총합계

    @Column(name = "woncv_hsp_tsm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산입원총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvHspTsm; //--원화환산입원총합계

    @Column(name = "hsp_slfch_tsm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "입원자기부담금총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal hspSlfchTsm; //--입원자기부담금총합계

    @Column(name = "woncv_hsp_slfch_tsm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산입원자기부담금총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvHspSlfchTsm; //--원화환산입원자기부담금총합계

    @Column(name = "otp_tdy", precision = 5, scale = 0, nullable = true)
    @Schema(description = "통원총일수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal otpTdy; //--통원총일수

    @Column(name = "otp_tsm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "통원총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal otpTsm; //--통원총합계

    @Column(name = "woncv_otp_tsm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산통원총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvOtpTsm; //--원화환산통원총합계

    @Column(name = "otp_slfch_tsm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "통원자기부담금총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal otpSlfchTsm; //--통원자기부담금총합계

    @Column(name = "woncv_otp_slfch_tsm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산통원자기부담금총합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvOtpSlfchTsm; //--원화환산통원자기부담금총합계

    @Column(name = "hsp_appr_dmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "입원인정손해액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal hspApprDmamt; //--입원인정손해액

    @Column(name = "otp_appr_dmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "통원인정손해액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal otpApprDmamt; //--통원인정손해액

    @Column(name = "hagth_yn", length = 1, nullable = true)
    @Schema(description = "입통원여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hagthYn; //--입통원여부

    @Column(name = "op_yn", length = 1, nullable = true)
    @Schema(description = "수술여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opYn; //--수술여부

    @Column(name = "otcm_cr_is_yn", length = 1, nullable = true)
    @Schema(description = "타사계약가입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String otcmCrIsYn; //--타사계약가입여부

    @Column(name = "dlalz_cnf_cn", length = 1000, nullable = true)
    @Schema(description = "근태확인내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlalzCnfCn; //--근태확인내용

    @Column(name = "dlalz_cnf_flgcd", length = 10, nullable = true)
    @Schema(description = "근태확인구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlalzCnfFlgcd; //--근태확인구분코드

    @Column(name = "clm_cr_usecd", length = 10, nullable = true)
    @Schema(description = "사고차량용도코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmCrUsecd; //--사고차량용도코드

    @Column(name = "clm_oper_crcd", length = 10, nullable = true)
    @Schema(description = "사고운행차량코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmOperCrcd; //--사고운행차량코드

    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "직업변경순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal jbChSeqno; //--직업변경순번

    @Column(name = "nv_jbcd", length = 10, nullable = true)
    @Schema(description = "조사직업코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvJbcd; //--조사직업코드

    @Column(name = "dgndt", nullable = true)
    @Schema(description = "진단일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dgndt; //--진단일자

    @Column(name = "dgn_hhmm", length = 4, nullable = true)
    @Schema(description = "진단시분", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dgnHhmm; //--진단시분

    @Column(name = "atkdt", nullable = true)
    @Schema(description = "발병일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date atkdt; //--발병일자

    @Column(name = "atk_hhmm", length = 4, nullable = true)
    @Schema(description = "발병시분", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String atkHhmm; //--발병시분

    @Column(name = "ns_dgndt", nullable = true)
    @Schema(description = "개호진단일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date nsDgndt; //--개호진단일자

    @Column(name = "cancr_dcn_dgndt", nullable = true)
    @Schema(description = "암확정진단일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cancrDcnDgndt; //--암확정진단일자

    @Column(name = "nv_orgcd", length = 7, nullable = true)
    @Schema(description = "조사기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvOrgcd; //--조사기관코드

    @Column(name = "nw_tth_supm_ct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "신규치아보철갯수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nwTthSupmCt; //--신규치아보철갯수

    @Column(name = "prev_tth_supm_ct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "기존치아보철개수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal prevTthSupmCt; //--기존치아보철개수

    @Column(name = "mnth_icamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "월소득금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mnthIcamt; //--월소득금액

    @Column(name = "mnth_ic_evdcd", length = 10, nullable = true)
    @Schema(description = "월소득증빙코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mnthIcEvdcd; //--월소득증빙코드

    @Column(name = "fltrt", precision = 3, scale = 0, nullable = false)
    @Schema(description = "과실율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fltrt; //--과실율

    @Column(name = "nsamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "개호비", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nsamt; //--개호비

    @Column(name = "next_mdcf", precision = 17, scale = 2, nullable = false)
    @Schema(description = "향후치료비", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal nextMdcf; //--향후치료비

    @Column(name = "cslmn_tamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "위자료총금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cslmnTamt; //--위자료총금액

    @Column(name = "idac_dl_yn", length = 1, nullable = true)
    @Schema(description = "산재처리여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String idacDlYn; //--산재처리여부

    @Column(name = "idark", length = 10, nullable = true)
    @Schema(description = "산재급", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String idark; //--산재급

    @Column(name = "idacl", length = 10, nullable = true)
    @Schema(description = "산재호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String idacl; //--산재호

    @Column(name = "obsdt", nullable = true)
    @Schema(description = "장해일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date obsdt; //--장해일자

    @Column(name = "psbsn_slamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "휴업급여금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal psbsnSlamt; //--휴업급여금액

    @Column(name = "obs_slamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장해급여금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal obsSlamt; //--장해급여금액

    @Column(name = "rcpr_slamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "요양급여금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rcprSlamt; //--요양급여금액

    @Column(name = "srvfm_slamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "유족급여금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal srvfmSlamt; //--유족급여금액

    @Column(name = "fnrcs", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장제비", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fnrcs; //--장제비

    @Column(name = "et_slamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "기타급여금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal etSlamt; //--기타급여금액

    @Column(name = "idac_dl_pout_mtt", length = 1000, nullable = true)
    @Schema(description = "산재처리특이사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String idacDlPoutMtt; //--산재처리특이사항

    @Column(name = "dl_org", length = 50, nullable = true)
    @Schema(description = "처리기관", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlOrg; //--처리기관

    @Column(name = "chrps_nm", length = 100, nullable = true)
    @Schema(description = "담당자성명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsNm; //--담당자성명

    @Column(name = "chrps_tlano", length = 4, nullable = true)
    @Schema(description = "담당자전화지역번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsTlano; //--담당자전화지역번호

    @Column(name = "chrps_tltno", length = 4, nullable = true)
    @Schema(description = "담당자전화국번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsTltno; //--담당자전화국번

    @Column(name = "chrps_tlsno", length = 50, nullable = true)
    @Schema(description = "담당자전화일련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsTlsno; //--담당자전화일련번호

    @Column(name = "md_cnst_yn", length = 1, nullable = true)
    @Schema(description = "의료자문여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdCnstYn; //--의료자문여부

    @Column(name = "law_cnst_yn", length = 1, nullable = true)
    @Schema(description = "법률자문여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lawCnstYn; //--법률자문여부

    @Column(name = "ic_st_flgcd", length = 10, nullable = true)
    @Schema(description = "소득기준구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String icStFlgcd; //--소득기준구분코드

    @Column(name = "ccpcd", length = 10, nullable = true)
    @Schema(description = "직종코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ccpcd; //--직종코드

    @Column(name = "st_ic_seqno", precision = 3, scale = 0, nullable = true)
    @Schema(description = "기준소득순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal stIcSeqno; //--기준소득순번

    @Column(name = "st_ic_ap_strdt", nullable = true)
    @Schema(description = "기준소득적용시작일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date stIcApStrdt; //--기준소득적용시작일자

    @Column(name = "actvt_nddt", nullable = true)
    @Schema(description = "가동종료일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date actvtNddt; //--가동종료일자

    @Column(name = "merg_obsrt", precision = 5, scale = 2, nullable = false)
    @Schema(description = "병합장해율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mergObsrt; //--병합장해율

    @Column(name = "ag_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "합의금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal agAmt; //--합의금액

    @Column(name = "owrnm", length = 100, nullable = true)
    @Schema(description = "소유자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String owrnm; //--소유자명

    @Column(name = "ownr_cmp_bjps_relcd", length = 10, nullable = true)
    @Schema(description = "소유자보상대상자관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ownrCmpBjpsRelcd; //--소유자보상대상자관계코드

    @Column(name = "rpair_days", precision = 5, scale = 0, nullable = true)
    @Schema(description = "수리일수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rpairDays; //--수리일수

    @Column(name = "dm_crccd", length = 10, nullable = true)
    @Schema(description = "손해정도코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dmCrccd; //--손해정도코드

    @Column(name = "prg_moral_ndx", precision = 5, scale = 0, nullable = true)
    @Schema(description = "진행모랄지수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal prgMoralNdx; //--진행모랄지수

    @Column(name = "wrk_tycd", length = 10, nullable = true)
    @Schema(description = "작업형태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wrkTycd; //--작업형태코드

    @Column(name = "btpcd", length = 10, nullable = true)
    @Schema(description = "업종코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String btpcd; //--업종코드

    @Column(name = "rt_ap_mngm_ccpcd", length = 10, nullable = true)
    @Schema(description = "요율적용영위직종코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtApMngmCcpcd; //--요율적용영위직종코드

    @Column(name = "bnnm", length = 300, nullable = true)
    @Schema(description = "업종명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bnnm; //--업종명

    @Column(name = "bn_csfcd", length = 10, nullable = true)
    @Schema(description = "업종분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bnCsfcd; //--업종분류코드

    @Column(name = "nv_org_kndcd", length = 10, nullable = true)
    @Schema(description = "조사기관종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nvOrgKndcd; //--조사기관종류코드

    @Column(name = "tnd_plc", length = 500, nullable = true)
    @Schema(description = "입찰장소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tndPlc; //--입찰장소

    @Column(name = "tnd_cnt_tlano", length = 4, nullable = true)
    @Schema(description = "입찰연락전화지역번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tndCntTlano; //--입찰연락전화지역번호

    @Column(name = "tnd_cnt_tltno", length = 4, nullable = true)
    @Schema(description = "입찰연락전화국번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tndCntTltno; //--입찰연락전화국번

    @Column(name = "tnd_cnt_tlsno", length = 50, nullable = true)
    @Schema(description = "입찰연락전화일련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tndCntTlsno; //--입찰연락전화일련번호

    @Column(name = "tnd_tpcd", length = 10, nullable = true)
    @Schema(description = "입찰유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tndTpcd; //--입찰유형코드

    @Column(name = "psbsn_days", precision = 5, scale = 0, nullable = true)
    @Schema(description = "휴업일수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal psbsnDays; //--휴업일수

    @Column(name = "victm_fltrt", precision = 3, scale = 0, nullable = false)
    @Schema(description = "피해자과실율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal victmFltrt; //--피해자과실율

    @Column(name = "drct_dmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "직접손해금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal drctDmamt; //--직접손해금액

    @Column(name = "drt_dmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "간접손해금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal drtDmamt; //--간접손해금액

    @Column(name = "et_dmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "기타손해금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal etDmamt; //--기타손해금액

    @Column(name = "tr_flgcd", length = 10, nullable = true)
    @Schema(description = "운송구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trFlgcd; //--운송구분코드

    @Column(name = "clm_plc", length = 200, nullable = true)
    @Schema(description = "사고장소", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmPlc; //--사고장소

    @Column(name = "sng_co_seadm_flgcd", length = 10, nullable = true)
    @Schema(description = "단독공동해손구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String sngCoSeadmFlgcd; //--단독공동해손구분코드

    @Column(name = "co_seadm_nm", length = 100, nullable = true)
    @Schema(description = "공동해손명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String coSeadmNm; //--공동해손명

    @Column(name = "lttd_flgcd", length = 10, nullable = true)
    @Schema(description = "위도구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lttdFlgcd; //--위도구분코드

    @Column(name = "lttd_dgr", length = 48, nullable = true)
    @Schema(description = "위도도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lttdDgr; //--위도도

    @Column(name = "lttd_min", length = 48, nullable = true)
    @Schema(description = "위도분", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lttdMin; //--위도분

    @Column(name = "lttd_sec", length = 48, nullable = true)
    @Schema(description = "위도초", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lttdSec; //--위도초

    @Column(name = "hdn_flgcd", length = 10, nullable = true)
    @Schema(description = "경도구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hdnFlgcd; //--경도구분코드

    @Column(name = "hdn_dgr", length = 48, nullable = true)
    @Schema(description = "경도도", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hdnDgr; //--경도도

    @Column(name = "hdn_min", length = 48, nullable = true)
    @Schema(description = "경도분", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hdnMin; //--경도분

    @Column(name = "hdn_sec", length = 48, nullable = true)
    @Schema(description = "경도초", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String hdnSec; //--경도초

    @Column(name = "loss_cas", length = 100, nullable = true)
    @Schema(description = "loss원인", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lossCas; //--loss원인

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

    @Column(name = "ntncd", length = 10, nullable = true)
    @Schema(description = "국가코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntncd; //--국가코드

    @Column(name = "ctycd", length = 10, nullable = true)
    @Schema(description = "도시코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctycd; //--도시코드

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

    @Column(name = "temp_save_yn", length = 1, nullable = true)
    @Schema(description = "임시저장여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tempSaveYn; //--임시저장여부

    @Column(name = "clm_info_inp_cd", length = 10, nullable = true)
    @Schema(description = "사고정보입력코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmInfoInpCd; //--사고정보입력코드

    @Column(name = "nml_inp_impr_rscd", length = 10, nullable = true)
    @Schema(description = "정상입력불가사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nmlInpImprRscd; //--정상입력불가사유코드

    @Column(name = "nml_inp_impr_rs", length = 1000, nullable = true)
    @Schema(description = "정상입력불가사유", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nmlInpImprRs; //--정상입력불가사유

    @Column(name = "chrps_rq_dt_mtt", length = 1000, nullable = true)
    @Schema(description = "담당자요청세부사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsRqDtMtt; //--담당자요청세부사항

    @Column(name = "chrps_inp_cnf_flgcd", length = 10, nullable = true)
    @Schema(description = "담당자입력확인구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chrpsInpCnfFlgcd; //--담당자입력확인구분코드

    @Column(name = "inp_er_chek_rscd", length = 10, nullable = true)
    @Schema(description = "입력오류체크사유코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inpErChekRscd; //--입력오류체크사유코드

    @Column(name = "inp_er_chek_rs", length = 1000, nullable = true)
    @Schema(description = "입력오류체크사유", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inpErChekRs; //--입력오류체크사유

    @Column(name = "inp_er_cnfm_stfno", length = 50, nullable = true)
    @Schema(description = "입력오류확인자직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inpErCnfmStfno; //--입력오류확인자직원번호

    @Column(name = "xp_dmamt", precision = 17, scale = 5, nullable = true)
    @Schema(description = "예상손해액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xpDmamt; //--예상손해액

    @Column(name = "self_chamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "자기부담금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal selfChamt; //--자기부담금액

    @Column(name = "re_requ_flgcd", length = 10, nullable = true)
    @Schema(description = "재의뢰구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String reRequFlgcd; //--재의뢰구분코드

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

    @Column(name = "py_act_cnfyn", length = 1, nullable = true)
    @Schema(description = "지급계좌확인여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyActCnfyn; //--지급계좌확인여부

    @Column(name = "drct_ders_de_cascd", length = 10, nullable = true)
    @Schema(description = "직접사인사망원인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String drctDersDeCascd; //--직접사인사망원인코드

    @Column(name = "py_mtdcd", length = 10, nullable = true)
    @Schema(description = "지급방법코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyMtdcd; //--지급방법코드

    @Column(name = "dpsr_ctmno", length = 13, nullable = true)
    @Schema(description = "예금주고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrCtmno; //--예금주고객번호

    @Column(name = "lsetm_rtx_db_dm_yn", length = 1, nullable = true)
    @Schema(description = "손사영수증중복청구여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lsetmRtxDbDmYn; //--손사영수증중복청구여부

    @Column(name = "lsetm_rtx_ninpt_yn", length = 1, nullable = true)
    @Schema(description = "손사영수증미입력여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lsetmRtxNinptYn; //--손사영수증미입력여부

    @Column(name = "clm_rcp_inp_cnf_cd", length = 10, nullable = true)
    @Schema(description = "사고접수입력확인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmRcpInpCnfCd; //--사고접수입력확인코드

    @Column(name = "clm_rcp_inp_ercd", length = 10, nullable = true)
    @Schema(description = "사고접수입력오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmRcpInpErcd; //--사고접수입력오류코드

    @Column(name = "clm_rcp_inp_er_rs", length = 800, nullable = true)
    @Schema(description = "사고접수입력오류사유", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmRcpInpErRs; //--사고접수입력오류사유

    @Column(name = "clm_rcp_inp_retn_dt", nullable = true)
    @Schema(description = "사고접수입력반려일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date clmRcpInpRetnDt; //--사고접수입력반려일자

    @Column(name = "clm_rcp_inp_cpmt_dt", nullable = true)
    @Schema(description = "사고접수입력보완일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date clmRcpInpCpmtDt; //--사고접수입력보완일자

    @Column(name = "thrps_invtn_yn", length = 1, nullable = true)
    @Schema(description = "제3자개입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String thrpsInvtnYn; //--제3자개입여부

    @Column(name = "carno", length = 50, nullable = true)
    @Schema(description = "차량번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String carno; //--차량번호

    @Column(name = "info_inp_rstcd", length = 10, nullable = true)
    @Schema(description = "정보입력결과코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String infoInpRstcd; //--정보입력결과코드

    @Column(name = "info_inp_rst_ercd", length = 10, nullable = true)
    @Schema(description = "정보입력결과오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String infoInpRstErcd; //--정보입력결과오류코드

    @Column(name = "info_inp_rst_er_rs", length = 500, nullable = true)
    @Schema(description = "정보입력결과오류사유", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String infoInpRstErRs; //--정보입력결과오류사유

    @Column(name = "info_inp_cnf_cd", length = 10, nullable = true)
    @Schema(description = "정보입력확인코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String infoInpCnfCd; //--정보입력확인코드

    @Column(name = "info_inp_cnf_ercd", length = 10, nullable = true)
    @Schema(description = "정보입력확인오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String infoInpCnfErcd; //--정보입력확인오류코드

    @Column(name = "info_inp_cnf_er_rs", length = 500, nullable = true)
    @Schema(description = "정보입력확인오류사유", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String infoInpCnfErRs; //--정보입력확인오류사유

    @Column(name = "cnf_stfno", length = 50, nullable = true)
    @Schema(description = "확인직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cnfStfno; //--확인직원번호

    @Column(name = "clm_flgcd", length = 10, nullable = true)
    @Schema(description = "사고구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmFlgcd; //--사고구분코드

    @Column(name = "slfch_dc_flgcd", length = 10, nullable = true)
    @Schema(description = "자기부담금공제구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slfchDcFlgcd; //--자기부담금공제구분코드

    @Column(name = "temp_save_dthms", nullable = true)
    @Schema(description = "임시저장일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date tempSaveDthms; //--임시저장일시

    @Column(name = "temp_save_stfno", length = 50, nullable = true)
    @Schema(description = "임시저장직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tempSaveStfno; //--임시저장직원번호

    @Column(name = "rcp_retn_stcd", length = 10, nullable = true)
    @Schema(description = "접수반려상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpRetnStcd; //--접수반려상태코드

    @Column(name = "mn_dgncd", length = 10, nullable = true)
    @Schema(description = "주진단코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mnDgncd; //--주진단코드

    @Column(name = "rtx_ch_yncd", length = 10, nullable = true)
    @Schema(description = "영수증변경여부코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtxChYncd; //--영수증변경여부코드

    @Column(name = "nt_prpn_cr_yncd", length = 10, nullable = true)
    @Schema(description = "통지비례발생여부코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntPrpnCrYncd; //--통지비례발생여부코드

    @Column(name = "dtspc_inp_cnfdt", nullable = true)
    @Schema(description = "세부내역입력확인일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dtspcInpCnfdt; //--세부내역입력확인일자

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
    public LseClmNv(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, BigDecimal clmNvSeqno, BigDecimal dmStrSeqno, BigDecimal dmNdSeqno, Date clmNvdt, String clmNvHhmm, String clmTpcd, String clmCascd, String clm2Cascd, String clm3Cascd, Date clmdt, String clmHhmm, String nvCn, String poutMtt, String mncd, Date xcrtApdt, BigDecimal xcrt, String clmNvKndcd, String prvFlgcd, Date prvdt, String cmpKyYr, BigDecimal cmpKySeqno, String lctnFlgcd, String dtadr, String idmXpYn, String lwXpYn, String siuXpYn, String cvapXpYn, String udrtkAtpsYn, String obsYn, String dmSyCtn, String deYn, String drctDersDeCas, String midPrcgDeCas, String prcgDersDeCas, String etDeCas, String dePlcPstno, String dePlcSd, String dePlcSgng, String dePlcTwmd, String deplcRiOrLrdlp, String dePlcDtadr, String deplcRefIt, String deplcRoadNm, String deplcUndgFlgcd, String deplcMnBldno, String deplcSubBldno, String deplcNwAdrFlgcd, String deKndcd, String deDtKndcd, String deFlgcd, Date dedt, String deHhmm, String deDgnHspcd, String deDgnHspBzmno, String deDgnHspnm, String deDgnHspFlgcd, String deDgnDrnm, String deDgnIntnsLicno, BigDecimal pvspCnbrt, String pvspYn, BigDecimal hspTdy, BigDecimal hspTsm, BigDecimal woncvHspTsm, BigDecimal hspSlfchTsm, BigDecimal woncvHspSlfchTsm, BigDecimal otpTdy, BigDecimal otpTsm, BigDecimal woncvOtpTsm, BigDecimal otpSlfchTsm, BigDecimal woncvOtpSlfchTsm, BigDecimal hspApprDmamt, BigDecimal otpApprDmamt, String hagthYn, String opYn, String otcmCrIsYn, String dlalzCnfCn, String dlalzCnfFlgcd, String clmCrUsecd, String clmOperCrcd, BigDecimal jbChSeqno, String nvJbcd, Date dgndt, String dgnHhmm, Date atkdt, String atkHhmm, Date nsDgndt, Date cancrDcnDgndt, String nvOrgcd, BigDecimal nwTthSupmCt, BigDecimal prevTthSupmCt, BigDecimal mnthIcamt, String mnthIcEvdcd, BigDecimal fltrt, BigDecimal nsamt, BigDecimal nextMdcf, BigDecimal cslmnTamt, String idacDlYn, String idark, String idacl, Date obsdt, BigDecimal psbsnSlamt, BigDecimal obsSlamt, BigDecimal rcprSlamt, BigDecimal srvfmSlamt, BigDecimal fnrcs, BigDecimal etSlamt, String idacDlPoutMtt, String dlOrg, String chrpsNm, String chrpsTlano, String chrpsTltno, String chrpsTlsno, String mdCnstYn, String lawCnstYn, String icStFlgcd, String ccpcd, BigDecimal stIcSeqno, Date stIcApStrdt, Date actvtNddt, BigDecimal mergObsrt, BigDecimal agAmt, String owrnm, String ownrCmpBjpsRelcd, BigDecimal rpairDays, String dmCrccd, BigDecimal prgMoralNdx, String wrkTycd, String btpcd, String rtApMngmCcpcd, String bnnm, String bnCsfcd, String nvOrgKndcd, String tndPlc, String tndCntTlano, String tndCntTltno, String tndCntTlsno, String tndTpcd, BigDecimal psbsnDays, BigDecimal victmFltrt, BigDecimal drctDmamt, BigDecimal drtDmamt, BigDecimal etDmamt, String trFlgcd, String clmPlc, String sngCoSeadmFlgcd, String coSeadmNm, String lttdFlgcd, String lttdDgr, String lttdMin, String lttdSec, String hdnFlgcd, String hdnDgr, String hdnMin, String hdnSec, String lossCas, String pstno, String sd, String sgng, String twmd, String riOrLrdlp, String ntncd, String ctycd, String refIt, String roadNm, String undgFlgcd, String mnBldno, String subBldno, String nwAdrFlgcd, String tempSaveYn, String clmInfoInpCd, String nmlInpImprRscd, String nmlInpImprRs, String chrpsRqDtMtt, String chrpsInpCnfFlgcd, String inpErChekRscd, String inpErChekRs, String inpErCnfmStfno, BigDecimal xpDmamt, BigDecimal selfChamt, String reRequFlgcd, String pyBkcd, String pyDpsnm, String pyActno, String dpsrDscno, String pyActCnfyn, String drctDersDeCascd, String pyMtdcd, String dpsrCtmno, String lsetmRtxDbDmYn, String lsetmRtxNinptYn, String clmRcpInpCnfCd, String clmRcpInpErcd, String clmRcpInpErRs, Date clmRcpInpRetnDt, Date clmRcpInpCpmtDt, String thrpsInvtnYn, String carno, String infoInpRstcd, String infoInpRstErcd, String infoInpRstErRs, String infoInpCnfCd, String infoInpCnfErcd, String infoInpCnfErRs, String cnfStfno, String clmFlgcd, String slfchDcFlgcd, Date tempSaveDthms, String tempSaveStfno, String rcpRetnStcd, String mnDgncd, String rtxChYncd, String ntPrpnCrYncd, Date dtspcInpCnfdt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.clmNvSeqno = clmNvSeqno;
        this.dmStrSeqno = dmStrSeqno;
        this.dmNdSeqno = dmNdSeqno;
        this.clmNvdt = clmNvdt;
        this.clmNvHhmm = clmNvHhmm;
        this.clmTpcd = clmTpcd;
        this.clmCascd = clmCascd;
        this.clm2Cascd = clm2Cascd;
        this.clm3Cascd = clm3Cascd;
        this.clmdt = clmdt;
        this.clmHhmm = clmHhmm;
        this.nvCn = nvCn;
        this.poutMtt = poutMtt;
        this.mncd = mncd;
        this.xcrtApdt = xcrtApdt;
        this.xcrt = xcrt;
        this.clmNvKndcd = clmNvKndcd;
        this.prvFlgcd = prvFlgcd;
        this.prvdt = prvdt;
        this.cmpKyYr = cmpKyYr;
        this.cmpKySeqno = cmpKySeqno;
        this.lctnFlgcd = lctnFlgcd;
        this.dtadr = dtadr;
        this.idmXpYn = idmXpYn;
        this.lwXpYn = lwXpYn;
        this.siuXpYn = siuXpYn;
        this.cvapXpYn = cvapXpYn;
        this.udrtkAtpsYn = udrtkAtpsYn;
        this.obsYn = obsYn;
        this.dmSyCtn = dmSyCtn;
        this.deYn = deYn;
        this.drctDersDeCas = drctDersDeCas;
        this.midPrcgDeCas = midPrcgDeCas;
        this.prcgDersDeCas = prcgDersDeCas;
        this.etDeCas = etDeCas;
        this.dePlcPstno = dePlcPstno;
        this.dePlcSd = dePlcSd;
        this.dePlcSgng = dePlcSgng;
        this.dePlcTwmd = dePlcTwmd;
        this.deplcRiOrLrdlp = deplcRiOrLrdlp;
        this.dePlcDtadr = dePlcDtadr;
        this.deplcRefIt = deplcRefIt;
        this.deplcRoadNm = deplcRoadNm;
        this.deplcUndgFlgcd = deplcUndgFlgcd;
        this.deplcMnBldno = deplcMnBldno;
        this.deplcSubBldno = deplcSubBldno;
        this.deplcNwAdrFlgcd = deplcNwAdrFlgcd;
        this.deKndcd = deKndcd;
        this.deDtKndcd = deDtKndcd;
        this.deFlgcd = deFlgcd;
        this.dedt = dedt;
        this.deHhmm = deHhmm;
        this.deDgnHspcd = deDgnHspcd;
        this.deDgnHspBzmno = deDgnHspBzmno;
        this.deDgnHspnm = deDgnHspnm;
        this.deDgnHspFlgcd = deDgnHspFlgcd;
        this.deDgnDrnm = deDgnDrnm;
        this.deDgnIntnsLicno = deDgnIntnsLicno;
        this.pvspCnbrt = pvspCnbrt;
        this.pvspYn = pvspYn;
        this.hspTdy = hspTdy;
        this.hspTsm = hspTsm;
        this.woncvHspTsm = woncvHspTsm;
        this.hspSlfchTsm = hspSlfchTsm;
        this.woncvHspSlfchTsm = woncvHspSlfchTsm;
        this.otpTdy = otpTdy;
        this.otpTsm = otpTsm;
        this.woncvOtpTsm = woncvOtpTsm;
        this.otpSlfchTsm = otpSlfchTsm;
        this.woncvOtpSlfchTsm = woncvOtpSlfchTsm;
        this.hspApprDmamt = hspApprDmamt;
        this.otpApprDmamt = otpApprDmamt;
        this.hagthYn = hagthYn;
        this.opYn = opYn;
        this.otcmCrIsYn = otcmCrIsYn;
        this.dlalzCnfCn = dlalzCnfCn;
        this.dlalzCnfFlgcd = dlalzCnfFlgcd;
        this.clmCrUsecd = clmCrUsecd;
        this.clmOperCrcd = clmOperCrcd;
        this.jbChSeqno = jbChSeqno;
        this.nvJbcd = nvJbcd;
        this.dgndt = dgndt;
        this.dgnHhmm = dgnHhmm;
        this.atkdt = atkdt;
        this.atkHhmm = atkHhmm;
        this.nsDgndt = nsDgndt;
        this.cancrDcnDgndt = cancrDcnDgndt;
        this.nvOrgcd = nvOrgcd;
        this.nwTthSupmCt = nwTthSupmCt;
        this.prevTthSupmCt = prevTthSupmCt;
        this.mnthIcamt = mnthIcamt;
        this.mnthIcEvdcd = mnthIcEvdcd;
        this.fltrt = fltrt;
        this.nsamt = nsamt;
        this.nextMdcf = nextMdcf;
        this.cslmnTamt = cslmnTamt;
        this.idacDlYn = idacDlYn;
        this.idark = idark;
        this.idacl = idacl;
        this.obsdt = obsdt;
        this.psbsnSlamt = psbsnSlamt;
        this.obsSlamt = obsSlamt;
        this.rcprSlamt = rcprSlamt;
        this.srvfmSlamt = srvfmSlamt;
        this.fnrcs = fnrcs;
        this.etSlamt = etSlamt;
        this.idacDlPoutMtt = idacDlPoutMtt;
        this.dlOrg = dlOrg;
        this.chrpsNm = chrpsNm;
        this.chrpsTlano = chrpsTlano;
        this.chrpsTltno = chrpsTltno;
        this.chrpsTlsno = chrpsTlsno;
        this.mdCnstYn = mdCnstYn;
        this.lawCnstYn = lawCnstYn;
        this.icStFlgcd = icStFlgcd;
        this.ccpcd = ccpcd;
        this.stIcSeqno = stIcSeqno;
        this.stIcApStrdt = stIcApStrdt;
        this.actvtNddt = actvtNddt;
        this.mergObsrt = mergObsrt;
        this.agAmt = agAmt;
        this.owrnm = owrnm;
        this.ownrCmpBjpsRelcd = ownrCmpBjpsRelcd;
        this.rpairDays = rpairDays;
        this.dmCrccd = dmCrccd;
        this.prgMoralNdx = prgMoralNdx;
        this.wrkTycd = wrkTycd;
        this.btpcd = btpcd;
        this.rtApMngmCcpcd = rtApMngmCcpcd;
        this.bnnm = bnnm;
        this.bnCsfcd = bnCsfcd;
        this.nvOrgKndcd = nvOrgKndcd;
        this.tndPlc = tndPlc;
        this.tndCntTlano = tndCntTlano;
        this.tndCntTltno = tndCntTltno;
        this.tndCntTlsno = tndCntTlsno;
        this.tndTpcd = tndTpcd;
        this.psbsnDays = psbsnDays;
        this.victmFltrt = victmFltrt;
        this.drctDmamt = drctDmamt;
        this.drtDmamt = drtDmamt;
        this.etDmamt = etDmamt;
        this.trFlgcd = trFlgcd;
        this.clmPlc = clmPlc;
        this.sngCoSeadmFlgcd = sngCoSeadmFlgcd;
        this.coSeadmNm = coSeadmNm;
        this.lttdFlgcd = lttdFlgcd;
        this.lttdDgr = lttdDgr;
        this.lttdMin = lttdMin;
        this.lttdSec = lttdSec;
        this.hdnFlgcd = hdnFlgcd;
        this.hdnDgr = hdnDgr;
        this.hdnMin = hdnMin;
        this.hdnSec = hdnSec;
        this.lossCas = lossCas;
        this.pstno = pstno;
        this.sd = sd;
        this.sgng = sgng;
        this.twmd = twmd;
        this.riOrLrdlp = riOrLrdlp;
        this.ntncd = ntncd;
        this.ctycd = ctycd;
        this.refIt = refIt;
        this.roadNm = roadNm;
        this.undgFlgcd = undgFlgcd;
        this.mnBldno = mnBldno;
        this.subBldno = subBldno;
        this.nwAdrFlgcd = nwAdrFlgcd;
        this.tempSaveYn = tempSaveYn;
        this.clmInfoInpCd = clmInfoInpCd;
        this.nmlInpImprRscd = nmlInpImprRscd;
        this.nmlInpImprRs = nmlInpImprRs;
        this.chrpsRqDtMtt = chrpsRqDtMtt;
        this.chrpsInpCnfFlgcd = chrpsInpCnfFlgcd;
        this.inpErChekRscd = inpErChekRscd;
        this.inpErChekRs = inpErChekRs;
        this.inpErCnfmStfno = inpErCnfmStfno;
        this.xpDmamt = xpDmamt;
        this.selfChamt = selfChamt;
        this.reRequFlgcd = reRequFlgcd;
        this.pyBkcd = pyBkcd;
        this.pyDpsnm = pyDpsnm;
        this.pyActno = pyActno;
        this.dpsrDscno = dpsrDscno;
        this.pyActCnfyn = pyActCnfyn;
        this.drctDersDeCascd = drctDersDeCascd;
        this.pyMtdcd = pyMtdcd;
        this.dpsrCtmno = dpsrCtmno;
        this.lsetmRtxDbDmYn = lsetmRtxDbDmYn;
        this.lsetmRtxNinptYn = lsetmRtxNinptYn;
        this.clmRcpInpCnfCd = clmRcpInpCnfCd;
        this.clmRcpInpErcd = clmRcpInpErcd;
        this.clmRcpInpErRs = clmRcpInpErRs;
        this.clmRcpInpRetnDt = clmRcpInpRetnDt;
        this.clmRcpInpCpmtDt = clmRcpInpCpmtDt;
        this.thrpsInvtnYn = thrpsInvtnYn;
        this.carno = carno;
        this.infoInpRstcd = infoInpRstcd;
        this.infoInpRstErcd = infoInpRstErcd;
        this.infoInpRstErRs = infoInpRstErRs;
        this.infoInpCnfCd = infoInpCnfCd;
        this.infoInpCnfErcd = infoInpCnfErcd;
        this.infoInpCnfErRs = infoInpCnfErRs;
        this.cnfStfno = cnfStfno;
        this.clmFlgcd = clmFlgcd;
        this.slfchDcFlgcd = slfchDcFlgcd;
        this.tempSaveDthms = tempSaveDthms;
        this.tempSaveStfno = tempSaveStfno;
        this.rcpRetnStcd = rcpRetnStcd;
        this.mnDgncd = mnDgncd;
        this.rtxChYncd = rtxChYncd;
        this.ntPrpnCrYncd = ntPrpnCrYncd;
        this.dtspcInpCnfdt = dtspcInpCnfdt;
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
