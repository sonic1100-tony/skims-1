/**
 * FinSlp Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.FinSlpListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(FinSlpListener.class)
@Table(name = "fin_slp") //--전표
@Schema(description = "전표")
@IdClass(FinSlpPK.class)
public class FinSlp implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Id //  String
    @Column(name = "st_yymm", length = 6, nullable = false)
    @Schema(description = "기준년월", nullable = false)
    private String stYymm; //--기준년월

    @Column(name = "slpdt", nullable = false)
    @Schema(description = "전표일자", nullable = false)
    private LocalDate slpdt; //--전표일자

    @Column(name = "slpno", length = 7, nullable = false)
    @Schema(description = "전표번호", nullable = false)
    private String slpno; //--전표번호

    @Column(name = "gn_spc_flgcd", length = 10, nullable = false)
    @Schema(description = "일반특별구분코드", nullable = false)
    private String gnSpcFlgcd; //--일반특별구분코드

    @Column(name = "cr_syscd", length = 10, nullable = false)
    @Schema(description = "발생시스템코드", nullable = false)
    private String crSyscd; //--발생시스템코드

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "slp_prv_stcd", length = 10, nullable = true)
    @Schema(description = "전표결재상태코드", nullable = true)
    private String slpPrvStcd; //--전표결재상태코드

    @Column(name = "slp_prv_dthms", nullable = true)
    @Schema(description = "전표결재일시", nullable = true)
    private LocalDateTime slpPrvDthms; //--전표결재일시

    @Column(name = "slp_prv_stfno", length = 50, nullable = true)
    @Schema(description = "전표결재직원번호", nullable = true)
    private String slpPrvStfno; //--전표결재직원번호

    @Column(name = "cr_dl_orgcd", length = 7, nullable = true)
    @Schema(description = "발생거래기관코드", nullable = true)
    private String crDlOrgcd; //--발생거래기관코드

    @Column(name = "cr_deldt", nullable = true)
    @Schema(description = "발생거래일자", nullable = true)
    private LocalDate crDeldt; //--발생거래일자

    @Column(name = "cr_dlno", length = 20, nullable = true)
    @Schema(description = "발생거래번호", nullable = true)
    private String crDlno; //--발생거래번호

    @Column(name = "slp_stcd", length = 10, nullable = false)
    @Schema(description = "전표상태코드", nullable = false)
    private String slpStcd; //--전표상태코드

    @Column(name = "ers_dthms", nullable = true)
    @Schema(description = "삭제일시", nullable = true)
    private LocalDateTime ersDthms; //--삭제일시

    @Column(name = "act_atrcd", length = 10, nullable = true)
    @Schema(description = "회계속성코드", nullable = true)
    private String actAtrcd; //--회계속성코드

    @Column(name = "hdcft_slp_prv_stcd", length = 10, nullable = true)
    @Schema(description = "수기전표결재상태코드", nullable = true)
    private String hdcftSlpPrvStcd; //--수기전표결재상태코드

    @Column(name = "elec_evd_img_bsnno", length = 50, nullable = true)
    @Schema(description = "전자증빙이미지업무번호", nullable = true)
    private String elecEvdImgBsnno; //--전자증빙이미지업무번호

    @Column(name = "elec_prv_dcu_id", length = 20, nullable = true)
    @Schema(description = "전자결재문서아이디", nullable = true)
    private String elecPrvDcuId; //--전자결재문서아이디

    @Column(name = "tacc_ldg_crt_flgcd", length = 10, nullable = true)
    @Schema(description = "총계정원장생성구분코드", nullable = true)
    private String taccLdgCrtFlgcd; //--총계정원장생성구분코드

    @Column(name = "ifrs_slpdt", nullable = true)
    @Schema(description = "ifrs전표일자", nullable = true)
    private LocalDate ifrsSlpdt; //--ifrs전표일자

    @Column(name = "ifrs_slpno", length = 7, nullable = true)
    @Schema(description = "ifrs전표번호", nullable = true)
    private String ifrsSlpno; //--ifrs전표번호

    @Column(name = "act_ldg_flgcd", length = 10, nullable = false)
    @Schema(description = "회계원장구분코드", nullable = false)
    private String actLdgFlgcd; //--회계원장구분코드

    @Column(name = "erp_ts_yn", length = 1, nullable = true)
    @Schema(description = "erp전송여부", nullable = true)
    private String erpTsYn; //--erp전송여부

    @Column(name = "erp_tsdt", length = 8, nullable = true)
    @Schema(description = "erp전송일자", nullable = true)
    private String erpTsdt; //--erp전송일자

    @Column(name = "erp_sync_ta_yn", length = 1, nullable = true)
    @Schema(description = "erp동시이관여부", nullable = true)
    private String erpSyncTaYn; //--erp동시이관여부

    @Column(name = "erp_slpno", length = 10, nullable = true)
    @Schema(description = "erp전표번호", nullable = true)
    private String erpSlpno; //--erp전표번호

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
    public FinSlp(String stYymm, LocalDate slpdt, String slpno, String gnSpcFlgcd, String crSyscd, String dlTpO1Csfcd, String dlTpO2Csfcd, String slpPrvStcd, LocalDateTime slpPrvDthms, String slpPrvStfno, String crDlOrgcd, LocalDate crDeldt, String crDlno, String slpStcd, LocalDateTime ersDthms, String actAtrcd, String hdcftSlpPrvStcd, String elecEvdImgBsnno, String elecPrvDcuId, String taccLdgCrtFlgcd, LocalDate ifrsSlpdt, String ifrsSlpno, String actLdgFlgcd, String erpTsYn, String erpTsdt, String erpSyncTaYn, String erpSlpno, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.stYymm = stYymm;
        this.slpdt = slpdt;
        this.slpno = slpno;
        this.gnSpcFlgcd = gnSpcFlgcd;
        this.crSyscd = crSyscd;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.slpPrvStcd = slpPrvStcd;
        this.slpPrvDthms = slpPrvDthms;
        this.slpPrvStfno = slpPrvStfno;
        this.crDlOrgcd = crDlOrgcd;
        this.crDeldt = crDeldt;
        this.crDlno = crDlno;
        this.slpStcd = slpStcd;
        this.ersDthms = ersDthms;
        this.actAtrcd = actAtrcd;
        this.hdcftSlpPrvStcd = hdcftSlpPrvStcd;
        this.elecEvdImgBsnno = elecEvdImgBsnno;
        this.elecPrvDcuId = elecPrvDcuId;
        this.taccLdgCrtFlgcd = taccLdgCrtFlgcd;
        this.ifrsSlpdt = ifrsSlpdt;
        this.ifrsSlpno = ifrsSlpno;
        this.actLdgFlgcd = actLdgFlgcd;
        this.erpTsYn = erpTsYn;
        this.erpTsdt = erpTsdt;
        this.erpSyncTaYn = erpSyncTaYn;
        this.erpSlpno = erpSlpno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
