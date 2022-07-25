/**
 * IgdGdCvr Entity 클래스
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

import com.skims.domain.listener.IgdGdCvrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(IgdGdCvrListener.class)
@Table(name = "igd_gd_cvr") //--상품담보
@Schema(description = "상품담보")
public class IgdGdCvr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "gdcd", length = 10, nullable = false)
    @Schema(description = "상품코드", nullable = false)
    private String gdcd; //--상품코드

    @Column(name = "cvrcd", length = 8, nullable = false)
    @Schema(description = "담보코드", nullable = false)
    private String cvrcd; //--담보코드

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private Date apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private Date apStrdt; //--적용시작일자

    @Column(name = "cvr_prsnm", length = 500, nullable = false)
    @Schema(description = "담보대표명", nullable = false)
    private String cvrPrsnm; //--담보대표명

    @Column(name = "cvr_kornm", length = 1000, nullable = true)
    @Schema(description = "담보한글명", nullable = true)
    private String cvrKornm; //--담보한글명

    @Column(name = "cvr_hngl_shtnm", length = 150, nullable = true)
    @Schema(description = "담보한글단축명", nullable = true)
    private String cvrHnglShtnm; //--담보한글단축명

    @Column(name = "cvr_ennm", length = 500, nullable = true)
    @Schema(description = "담보영문명", nullable = true)
    private String cvrEnnm; //--담보영문명

    @Column(name = "cvr_eng_shtnm", length = 50, nullable = true)
    @Schema(description = "담보영문단축명", nullable = true)
    private String cvrEngShtnm; //--담보영문단축명

    @Column(name = "cvr_perdt", nullable = true)
    @Schema(description = "담보인가일자", nullable = true)
    private Date cvrPerdt; //--담보인가일자

    @Column(name = "cvr_cla_cn", length = 4000, nullable = true)
    @Schema(description = "담보약관내용", nullable = true)
    private String cvrClaCn; //--담보약관내용

    @Column(name = "cvr_ba_trt_flgcd", length = 10, nullable = false)
    @Schema(description = "담보기본특약구분코드", nullable = false)
    private String cvrBaTrtFlgcd; //--담보기본특약구분코드

    @Column(name = "is_bj_yn", length = 1, nullable = false)
    @Schema(description = "가입대상여부", nullable = false)
    private String isBjYn; //--가입대상여부

    @Column(name = "isamt_need_yn", length = 1, nullable = false)
    @Schema(description = "가입금액필요여부", nullable = false)
    private String isamtNeedYn; //--가입금액필요여부

    @Column(name = "prm_adm_yn", length = 1, nullable = false)
    @Schema(description = "보험료관리여부", nullable = false)
    private String prmAdmYn; //--보험료관리여부

    @Column(name = "prm_sum_bj_yn", length = 1, nullable = true)
    @Schema(description = "보험료합산대상여부", nullable = true)
    private String prmSumBjYn; //--보험료합산대상여부

    @Column(name = "cr_lvl_cvr_yn", length = 1, nullable = false)
    @Schema(description = "계약레벨담보여부", nullable = false)
    private String crLvlCvrYn; //--계약레벨담보여부

    @Column(name = "pblct_out_yn", length = 1, nullable = true)
    @Schema(description = "발행물출력여부", nullable = true)
    private String pblctOutYn; //--발행물출력여부

    @Column(name = "scr_idc_cvr_gpcd", length = 10, nullable = true)
    @Schema(description = "화면표시담보그룹코드", nullable = true)
    private String scrIdcCvrGpcd; //--화면표시담보그룹코드

    @Column(name = "pym_xmp_av_yn", length = 1, nullable = true)
    @Schema(description = "납입면제가능여부", nullable = true)
    private String pymXmpAvYn; //--납입면제가능여부

    @Column(name = "xtn_av_yn", length = 1, nullable = true)
    @Schema(description = "소멸가능여부", nullable = true)
    private String xtnAvYn; //--소멸가능여부

    @Column(name = "dt_inpsc_xstn_yn", length = 1, nullable = true)
    @Schema(description = "상세입력화면존재여부", nullable = true)
    private String dtInpscXstnYn; //--상세입력화면존재여부

    @Column(name = "age_wkct_flgcd", length = 10, nullable = true)
    @Schema(description = "연령주수구분코드", nullable = true)
    private String ageWkctFlgcd; //--연령주수구분코드

    @Column(name = "mn_is_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "최소가입연령", nullable = true)
    private BigDecimal mnIsAge; //--최소가입연령

    @Column(name = "mx_is_age", precision = 3, scale = 0, nullable = true)
    @Schema(description = "최대가입연령", nullable = true)
    private BigDecimal mxIsAge; //--최대가입연령

    @Column(name = "is_av_sexcd", length = 10, nullable = true)
    @Schema(description = "가입가능성별코드", nullable = true)
    private String isAvSexcd; //--가입가능성별코드

    @Column(name = "mrrd_bj_cvr_yn", length = 1, nullable = true)
    @Schema(description = "기혼대상담보여부", nullable = true)
    private String mrrdBjCvrYn; //--기혼대상담보여부

    @Column(name = "onw_cla_flgcd", length = 10, nullable = true)
    @Schema(description = "신구약관구분코드", nullable = true)
    private String onwClaFlgcd; //--신구약관구분코드

    @Column(name = "invc_out_prg", length = 500, nullable = true)
    @Schema(description = "송장출력문구", nullable = true)
    private String invcOutPrg; //--송장출력문구

    @Column(name = "ply_out_prg_1", length = 500, nullable = true)
    @Schema(description = "증권출력문구1", nullable = true)
    private String plyOutPrg1; //--증권출력문구1

    @Column(name = "ply_out_prg_2", length = 500, nullable = true)
    @Schema(description = "증권출력문구2", nullable = true)
    private String plyOutPrg2; //--증권출력문구2

    @Column(name = "inp_rt_yn", length = 1, nullable = true)
    @Schema(description = "입력요율여부", nullable = true)
    private String inpRtYn; //--입력요율여부

    @Column(name = "lowt_inp_rt", precision = 15, scale = 7, nullable = false)
    @Schema(description = "최저입력요율", nullable = false)
    private BigDecimal lowtInpRt; //--최저입력요율

    @Column(name = "mx_inp_rt", precision = 15, scale = 7, nullable = false)
    @Schema(description = "최대입력요율", nullable = false)
    private BigDecimal mxInpRt; //--최대입력요율

    @Column(name = "mdcs_rgt_bj_yn", length = 1, nullable = true)
    @Schema(description = "의료비등록대상여부", nullable = true)
    private String mdcsRgtBjYn; //--의료비등록대상여부

    @Column(name = "auto_rnw_av_yn", length = 1, nullable = true)
    @Schema(description = "자동갱신가능여부", nullable = true)
    private String autoRnwAvYn; //--자동갱신가능여부

    @Column(name = "cvr_dbis_flgcd", length = 10, nullable = true)
    @Schema(description = "담보중복가입구분코드", nullable = true)
    private String cvrDbisFlgcd; //--담보중복가입구분코드

    @Column(name = "rnw_af_cvrcd", length = 8, nullable = true)
    @Schema(description = "갱신후담보코드", nullable = true)
    private String rnwAfCvrcd; //--갱신후담보코드

    @Column(name = "is_av_drve_tycd", length = 10, nullable = true)
    @Schema(description = "가입가능운전형태코드", nullable = true)
    private String isAvDrveTycd; //--가입가능운전형태코드

    @Column(name = "is_av_rel_flgcd", length = 10, nullable = true)
    @Schema(description = "가입가능관계구분코드", nullable = true)
    private String isAvRelFlgcd; //--가입가능관계구분코드

    @Column(name = "pym_cyccd", length = 10, nullable = true)
    @Schema(description = "납입주기코드", nullable = true)
    private String pymCyccd; //--납입주기코드

    @Column(name = "sl_strdt", nullable = false)
    @Schema(description = "판매시작일자", nullable = false)
    private Date slStrdt; //--판매시작일자

    @Column(name = "sl_nddt", nullable = false)
    @Schema(description = "판매종료일자", nullable = false)
    private Date slNddt; //--판매종료일자

    @Column(name = "dt_scr_id", length = 10, nullable = true)
    @Schema(description = "세부화면id", nullable = true)
    private String dtScrId; //--세부화면id

    @Column(name = "rnw_xc_cvr_yn", length = 1, nullable = false)
    @Schema(description = "갱신전용담보여부", nullable = false)
    private String rnwXcCvrYn; //--갱신전용담보여부

    @Column(name = "rl_sl_opndt", nullable = true)
    @Schema(description = "실제판매개시일자", nullable = true)
    private Date rlSlOpndt; //--실제판매개시일자

    @Column(name = "rl_sl_nddt", nullable = true)
    @Schema(description = "실제판매종료일자", nullable = true)
    private Date rlSlNddt; //--실제판매종료일자

    @Column(name = "coobj_is_av_yn", length = 1, nullable = true)
    @Schema(description = "공동물건가입가능여부", nullable = true)
    private String coobjIsAvYn; //--공동물건가입가능여부

    @Column(name = "pymtm_atnd_mtt", length = 1000, nullable = true)
    @Schema(description = "지급시유의사항", nullable = true)
    private String pymtmAtndMtt; //--지급시유의사항

    @Column(name = "nrdps_sl_strdt", nullable = true)
    @Schema(description = "피보험자판매시작일자", nullable = true)
    private Date nrdpsSlStrdt; //--피보험자판매시작일자

    @Column(name = "nrdps_sl_nddt", nullable = true)
    @Schema(description = "피보험자판매종료일자", nullable = true)
    private Date nrdpsSlNddt; //--피보험자판매종료일자

    @Column(name = "rlpmi_cvr_yn", length = 1, nullable = true)
    @Schema(description = "실손담보여부", nullable = true)
    private String rlpmiCvrYn; //--실손담보여부

    @Column(name = "cvr_trt_gp_flgcd", length = 10, nullable = true)
    @Schema(description = "담보특약그룹구분코드", nullable = true)
    private String cvrTrtGpFlgcd; //--담보특약그룹구분코드

    @Column(name = "rnw_cvr_nclm_dscrt", precision = 5, scale = 2, nullable = true)
    @Schema(description = "갱신담보무사고할인율", nullable = true)
    private BigDecimal rnwCvrNclmDscrt; //--갱신담보무사고할인율

    @Column(name = "rwcvr_nclm_ad_dscrt", precision = 5, scale = 2, nullable = true)
    @Schema(description = "갱신담보무사고추가할인율", nullable = true)
    private BigDecimal rwcvrNclmAdDscrt; //--갱신담보무사고추가할인율

    @Column(name = "rwcvr_nclm_ad_dctrm", precision = 4, scale = 0, nullable = true)
    @Schema(description = "갱신담보무사고추가할인기간", nullable = true)
    private BigDecimal rwcvrNclmAdDctrm; //--갱신담보무사고추가할인기간

    @Column(name = "rmimc_xcpt_prmex_bjyn", length = 1, nullable = true)
    @Schema(description = "실손의료비제외보험료예시대상여부", nullable = true)
    private String rmimcXcptPrmexBjyn; //--실손의료비제외보험료예시대상여부

    @Column(name = "prs_clm_cvrcd", length = 10, nullable = true)
    @Schema(description = "대표사고담보코드", nullable = true)
    private String prsClmCvrcd; //--대표사고담보코드

    @Column(name = "cvr_xcpt_dlcd", length = 10, nullable = true)
    @Schema(description = "담보예외처리코드", nullable = true)
    private String cvrXcptDlcd; //--담보예외처리코드

    @Column(name = "nds_xc_flgcd", length = 10, nullable = true)
    @Schema(description = "배서전용구분코드", nullable = true)
    private String ndsXcFlgcd; //--배서전용구분코드

    @Column(name = "clm_nds_xc_cvrcd", length = 8, nullable = true)
    @Schema(description = "사고배서전용담보코드", nullable = true)
    private String clmNdsXcCvrcd; //--사고배서전용담보코드

    @Column(name = "cvr_dc_flgcd", length = 10, nullable = true)
    @Schema(description = "담보할인구분코드", nullable = true)
    private String cvrDcFlgcd; //--담보할인구분코드

    @Column(name = "indpd_trt_yn", length = 1, nullable = true)
    @Schema(description = "독립특약여부", nullable = true)
    private String indpdTrtYn; //--독립특약여부

    @Column(name = "indpd_trt_gdcd", length = 10, nullable = true)
    @Schema(description = "독립특약상품코드", nullable = true)
    private String indpdTrtGdcd; //--독립특약상품코드

    @Column(name = "gd_cvr_dscrt", precision = 5, scale = 2, nullable = true)
    @Schema(description = "상품담보할인율", nullable = true)
    private BigDecimal gdCvrDscrt; //--상품담보할인율

    @Column(name = "sb_pym_tpcd", length = 10, nullable = true)
    @Schema(description = "대체납입유형코드", nullable = true)
    private String sbPymTpcd; //--대체납입유형코드

    @Column(name = "cvr_xtn_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "담보소멸처리구분코드", nullable = true)
    private String cvrXtnDlFlgcd; //--담보소멸처리구분코드

    @Column(name = "cla_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "약관순번", nullable = false)
    private BigDecimal claSeqno; //--약관순번

    @Column(name = "ibnr_flgcd", length = 10, nullable = true)
    @Schema(description = "ibnr구분코드", nullable = true)
    private String ibnrFlgcd; //--ibnr구분코드

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
    public IgdGdCvr(String gdcd, String cvrcd, Date apNddt, Date apStrdt, String cvrPrsnm, String cvrKornm, String cvrHnglShtnm, String cvrEnnm, String cvrEngShtnm, Date cvrPerdt, String cvrClaCn, String cvrBaTrtFlgcd, String isBjYn, String isamtNeedYn, String prmAdmYn, String prmSumBjYn, String crLvlCvrYn, String pblctOutYn, String scrIdcCvrGpcd, String pymXmpAvYn, String xtnAvYn, String dtInpscXstnYn, String ageWkctFlgcd, BigDecimal mnIsAge, BigDecimal mxIsAge, String isAvSexcd, String mrrdBjCvrYn, String onwClaFlgcd, String invcOutPrg, String plyOutPrg1, String plyOutPrg2, String inpRtYn, BigDecimal lowtInpRt, BigDecimal mxInpRt, String mdcsRgtBjYn, String autoRnwAvYn, String cvrDbisFlgcd, String rnwAfCvrcd, String isAvDrveTycd, String isAvRelFlgcd, String pymCyccd, Date slStrdt, Date slNddt, String dtScrId, String rnwXcCvrYn, Date rlSlOpndt, Date rlSlNddt, String coobjIsAvYn, String pymtmAtndMtt, Date nrdpsSlStrdt, Date nrdpsSlNddt, String rlpmiCvrYn, String cvrTrtGpFlgcd, BigDecimal rnwCvrNclmDscrt, BigDecimal rwcvrNclmAdDscrt, BigDecimal rwcvrNclmAdDctrm, String rmimcXcptPrmexBjyn, String prsClmCvrcd, String cvrXcptDlcd, String ndsXcFlgcd, String clmNdsXcCvrcd, String cvrDcFlgcd, String indpdTrtYn, String indpdTrtGdcd, BigDecimal gdCvrDscrt, String sbPymTpcd, String cvrXtnDlFlgcd, BigDecimal claSeqno, String ibnrFlgcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.gdcd = gdcd;
        this.cvrcd = cvrcd;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.cvrPrsnm = cvrPrsnm;
        this.cvrKornm = cvrKornm;
        this.cvrHnglShtnm = cvrHnglShtnm;
        this.cvrEnnm = cvrEnnm;
        this.cvrEngShtnm = cvrEngShtnm;
        this.cvrPerdt = cvrPerdt;
        this.cvrClaCn = cvrClaCn;
        this.cvrBaTrtFlgcd = cvrBaTrtFlgcd;
        this.isBjYn = isBjYn;
        this.isamtNeedYn = isamtNeedYn;
        this.prmAdmYn = prmAdmYn;
        this.prmSumBjYn = prmSumBjYn;
        this.crLvlCvrYn = crLvlCvrYn;
        this.pblctOutYn = pblctOutYn;
        this.scrIdcCvrGpcd = scrIdcCvrGpcd;
        this.pymXmpAvYn = pymXmpAvYn;
        this.xtnAvYn = xtnAvYn;
        this.dtInpscXstnYn = dtInpscXstnYn;
        this.ageWkctFlgcd = ageWkctFlgcd;
        this.mnIsAge = mnIsAge;
        this.mxIsAge = mxIsAge;
        this.isAvSexcd = isAvSexcd;
        this.mrrdBjCvrYn = mrrdBjCvrYn;
        this.onwClaFlgcd = onwClaFlgcd;
        this.invcOutPrg = invcOutPrg;
        this.plyOutPrg1 = plyOutPrg1;
        this.plyOutPrg2 = plyOutPrg2;
        this.inpRtYn = inpRtYn;
        this.lowtInpRt = lowtInpRt;
        this.mxInpRt = mxInpRt;
        this.mdcsRgtBjYn = mdcsRgtBjYn;
        this.autoRnwAvYn = autoRnwAvYn;
        this.cvrDbisFlgcd = cvrDbisFlgcd;
        this.rnwAfCvrcd = rnwAfCvrcd;
        this.isAvDrveTycd = isAvDrveTycd;
        this.isAvRelFlgcd = isAvRelFlgcd;
        this.pymCyccd = pymCyccd;
        this.slStrdt = slStrdt;
        this.slNddt = slNddt;
        this.dtScrId = dtScrId;
        this.rnwXcCvrYn = rnwXcCvrYn;
        this.rlSlOpndt = rlSlOpndt;
        this.rlSlNddt = rlSlNddt;
        this.coobjIsAvYn = coobjIsAvYn;
        this.pymtmAtndMtt = pymtmAtndMtt;
        this.nrdpsSlStrdt = nrdpsSlStrdt;
        this.nrdpsSlNddt = nrdpsSlNddt;
        this.rlpmiCvrYn = rlpmiCvrYn;
        this.cvrTrtGpFlgcd = cvrTrtGpFlgcd;
        this.rnwCvrNclmDscrt = rnwCvrNclmDscrt;
        this.rwcvrNclmAdDscrt = rwcvrNclmAdDscrt;
        this.rwcvrNclmAdDctrm = rwcvrNclmAdDctrm;
        this.rmimcXcptPrmexBjyn = rmimcXcptPrmexBjyn;
        this.prsClmCvrcd = prsClmCvrcd;
        this.cvrXcptDlcd = cvrXcptDlcd;
        this.ndsXcFlgcd = ndsXcFlgcd;
        this.clmNdsXcCvrcd = clmNdsXcCvrcd;
        this.cvrDcFlgcd = cvrDcFlgcd;
        this.indpdTrtYn = indpdTrtYn;
        this.indpdTrtGdcd = indpdTrtGdcd;
        this.gdCvrDscrt = gdCvrDscrt;
        this.sbPymTpcd = sbPymTpcd;
        this.cvrXtnDlFlgcd = cvrXtnDlFlgcd;
        this.claSeqno = claSeqno;
        this.ibnrFlgcd = ibnrFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
