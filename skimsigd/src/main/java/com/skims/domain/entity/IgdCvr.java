/**
 * IgdCvr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.IgdCvrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(IgdCvrListener.class)
@Table(name = "igd_cvr") //--담보
@Schema(description = "담보")
public class IgdCvr implements Serializable {
    @Id //  String
    @Column(name = "cvrcd", length = 8, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "담보코드", nullable = false)
    private String cvrcd; //--담보코드

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

    @Column(name = "indpd_trt_cvr_yn", length = 1, nullable = false)
    @Schema(description = "독립특약담보여부", nullable = false)
    private String indpdTrtCvrYn; //--독립특약담보여부

    @Column(name = "cvr_perdt", nullable = true)
    @Schema(description = "담보인가일자", nullable = true)
    private Date cvrPerdt; //--담보인가일자

    @Column(name = "cvr_xpnm", length = 1000, nullable = true)
    @Schema(description = "담보설명", nullable = true)
    private String cvrXpnm; //--담보설명

    @Column(name = "fr_gdcd", length = 10, nullable = true)
    @Schema(description = "최초상품코드", nullable = true)
    private String frGdcd; //--최초상품코드

    @Column(name = "vald_strdt", nullable = false)
    @Schema(description = "유효시작일자", nullable = false)
    private Date valdStrdt; //--유효시작일자

    @Column(name = "vald_nddt", nullable = false)
    @Schema(description = "유효종료일자", nullable = false)
    private Date valdNddt; //--유효종료일자

    @Column(name = "prst_lclcd", length = 7, nullable = true)
    @Schema(description = "급부대분류코드", nullable = true)
    private String prstLclcd; //--급부대분류코드

    @Column(name = "prst_mdccd", length = 7, nullable = true)
    @Schema(description = "급부중분류코드", nullable = true)
    private String prstMdccd; //--급부중분류코드

    @Column(name = "prst_smccd", length = 7, nullable = true)
    @Schema(description = "급부소분류코드", nullable = true)
    private String prstSmccd; //--급부소분류코드

    @Column(name = "rlpmi_fxamt_flgcd", length = 10, nullable = true)
    @Schema(description = "실손정액구분코드", nullable = true)
    private String rlpmiFxamtFlgcd; //--실손정액구분코드

    @Column(name = "gn_cncd", length = 10, nullable = true)
    @Schema(description = "보장내용코드", nullable = true)
    private String gnCncd; //--보장내용코드

    @Column(name = "cvr_spcd", length = 10, nullable = true)
    @Schema(description = "담보특성코드", nullable = true)
    private String cvrSpcd; //--담보특성코드

    @Column(name = "cpyt_flgcd", length = 10, nullable = true)
    @Schema(description = "copayment구분코드", nullable = true)
    private String cpytFlgcd; //--copayment구분코드

    @Column(name = "uiamt_stncd", length = 10, nullable = true)
    @Schema(description = "공제금액기준코드", nullable = true)
    private String uiamtStncd; //--공제금액기준코드

    @Column(name = "cmp_trmcd", length = 10, nullable = true)
    @Schema(description = "보상기간코드", nullable = true)
    private String cmpTrmcd; //--보상기간코드

    @Column(name = "ward_diamt_flgcd", length = 10, nullable = true)
    @Schema(description = "병실차액구분코드", nullable = true)
    private String wardDiamtFlgcd; //--병실차액구분코드

    @Column(name = "npp_hlprm_napc_flgcd", length = 10, nullable = true)
    @Schema(description = "국민건강보험미적용구분코드", nullable = true)
    private String nppHlprmNapcFlgcd; //--국민건강보험미적용구분코드

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
    public IgdCvr(String cvrcd, String cvrPrsnm, String cvrKornm, String cvrHnglShtnm, String cvrEnnm, String cvrEngShtnm, String indpdTrtCvrYn, Date cvrPerdt, String cvrXpnm, String frGdcd, Date valdStrdt, Date valdNddt, String prstLclcd, String prstMdccd, String prstSmccd, String rlpmiFxamtFlgcd, String gnCncd, String cvrSpcd, String cpytFlgcd, String uiamtStncd, String cmpTrmcd, String wardDiamtFlgcd, String nppHlprmNapcFlgcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.cvrcd = cvrcd;
        this.cvrPrsnm = cvrPrsnm;
        this.cvrKornm = cvrKornm;
        this.cvrHnglShtnm = cvrHnglShtnm;
        this.cvrEnnm = cvrEnnm;
        this.cvrEngShtnm = cvrEngShtnm;
        this.indpdTrtCvrYn = indpdTrtCvrYn;
        this.cvrPerdt = cvrPerdt;
        this.cvrXpnm = cvrXpnm;
        this.frGdcd = frGdcd;
        this.valdStrdt = valdStrdt;
        this.valdNddt = valdNddt;
        this.prstLclcd = prstLclcd;
        this.prstMdccd = prstMdccd;
        this.prstSmccd = prstSmccd;
        this.rlpmiFxamtFlgcd = rlpmiFxamtFlgcd;
        this.gnCncd = gnCncd;
        this.cvrSpcd = cvrSpcd;
        this.cpytFlgcd = cpytFlgcd;
        this.uiamtStncd = uiamtStncd;
        this.cmpTrmcd = cmpTrmcd;
        this.wardDiamtFlgcd = wardDiamtFlgcd;
        this.nppHlprmNapcFlgcd = nppHlprmNapcFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
