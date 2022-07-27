/**
 * FinNpAccLdg Entity 클래스
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

import com.skims.domain.listener.FinNpAccLdgListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(FinNpAccLdgListener.class)
@Table(name = "fin_np_acc_ldg") //--미지급계정원장
@Schema(description = "미지급계정원장")
public class FinNpAccLdg implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "np_acc_ldgno", length = 20, nullable = false)
    @Schema(description = "미지급계정원장번호", nullable = false)
    private String npAccLdgno; //--미지급계정원장번호

    @Column(name = "crdt", nullable = false)
    @Schema(description = "발생일자", nullable = false)
    private LocalDate crdt; //--발생일자

    @Column(name = "ntacc_cd", length = 11, nullable = false)
    @Schema(description = "계정과목코드", nullable = false)
    private String ntaccCd; //--계정과목코드

    @Column(name = "cr_syscd", length = 10, nullable = false)
    @Schema(description = "발생시스템코드", nullable = false)
    private String crSyscd; //--발생시스템코드

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "act_orgcd", length = 7, nullable = false)
    @Schema(description = "회계기관코드", nullable = false)
    private String actOrgcd; //--회계기관코드

    @Column(name = "dh_orgcd", length = 7, nullable = false)
    @Schema(description = "취급기관코드", nullable = false)
    private String dhOrgcd; //--취급기관코드

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    private String dhStfno; //--취급직원번호

    @Column(name = "py_dl_o1_flgcd", length = 10, nullable = true)
    @Schema(description = "지급처리1차구분코드", nullable = true)
    private String pyDlO1Flgcd; //--지급처리1차구분코드

    @Column(name = "py_dl_o2_flgcd", length = 10, nullable = true)
    @Schema(description = "지급처리2차구분코드", nullable = true)
    private String pyDlO2Flgcd; //--지급처리2차구분코드

    @Column(name = "mncd", length = 10, nullable = false)
    @Schema(description = "화폐코드", nullable = false)
    private String mncd; //--화폐코드

    @Column(name = "cr_woamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "발생원화금액", nullable = false)
    private BigDecimal crWoamt; //--발생원화금액

    @Column(name = "cr_fcamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "발생외화금액", nullable = false)
    private BigDecimal crFcamt; //--발생외화금액

    @Column(name = "ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "적용환율", nullable = false)
    private BigDecimal apXcrt; //--적용환율

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

    @Column(name = "rvdt", nullable = true)
    @Schema(description = "수납일자", nullable = true)
    private LocalDate rvdt; //--수납일자

    @Column(name = "rv_orgcd", length = 7, nullable = true)
    @Schema(description = "수납기관코드", nullable = true)
    private String rvOrgcd; //--수납기관코드

    @Column(name = "rv_xcno", length = 7, nullable = true)
    @Schema(description = "수납정산번호", nullable = true)
    private String rvXcno; //--수납정산번호

    @Column(name = "py_crno", length = 20, nullable = true)
    @Schema(description = "지급발생번호", nullable = true)
    private String pyCrno; //--지급발생번호

    @Column(name = "py_bjno", length = 10, nullable = true)
    @Schema(description = "지급대상번호", nullable = true)
    private String pyBjno; //--지급대상번호

    @Column(name = "rm_stcd", length = 10, nullable = false)
    @Schema(description = "반제상태코드", nullable = false)
    private String rmStcd; //--반제상태코드

    @Column(name = "fnl_rmdt", nullable = true)
    @Schema(description = "최종반제일자", nullable = true)
    private LocalDate fnlRmdt; //--최종반제일자

    @Column(name = "nots_mtt", length = 2000, nullable = true)
    @Schema(description = "적요사항", nullable = true)
    private String notsMtt; //--적요사항

    @Column(name = "note_mtt", length = 2000, nullable = true)
    @Schema(description = "비고사항", nullable = true)
    private String noteMtt; //--비고사항

    @Column(name = "fina_dat_vrf_flg1_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분1값", nullable = true)
    private String finaDatVrfFlg1Vl; //--재무데이터검증구분1값

    @Column(name = "fina_dat_vrf_flg2_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분2값", nullable = true)
    private String finaDatVrfFlg2Vl; //--재무데이터검증구분2값

    @Column(name = "fina_dat_vrf_flg3_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분3값", nullable = true)
    private String finaDatVrfFlg3Vl; //--재무데이터검증구분3값

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
    public FinNpAccLdg(String npAccLdgno, LocalDate crdt, String ntaccCd, String crSyscd, String dlTpO1Csfcd, String dlTpO2Csfcd, String actOrgcd, String dhOrgcd, String dhStfno, String pyDlO1Flgcd, String pyDlO2Flgcd, String mncd, BigDecimal crWoamt, BigDecimal crFcamt, BigDecimal apXcrt, String ikdGrpcd, String insImcd, String invlnGdcd, String bsnsCnnnoFlgcd, String bsnsCnnno, LocalDate rvdt, String rvOrgcd, String rvXcno, String pyCrno, String pyBjno, String rmStcd, LocalDate fnlRmdt, String notsMtt, String noteMtt, String finaDatVrfFlg1Vl, String finaDatVrfFlg2Vl, String finaDatVrfFlg3Vl, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.npAccLdgno = npAccLdgno;
        this.crdt = crdt;
        this.ntaccCd = ntaccCd;
        this.crSyscd = crSyscd;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.actOrgcd = actOrgcd;
        this.dhOrgcd = dhOrgcd;
        this.dhStfno = dhStfno;
        this.pyDlO1Flgcd = pyDlO1Flgcd;
        this.pyDlO2Flgcd = pyDlO2Flgcd;
        this.mncd = mncd;
        this.crWoamt = crWoamt;
        this.crFcamt = crFcamt;
        this.apXcrt = apXcrt;
        this.ikdGrpcd = ikdGrpcd;
        this.insImcd = insImcd;
        this.invlnGdcd = invlnGdcd;
        this.bsnsCnnnoFlgcd = bsnsCnnnoFlgcd;
        this.bsnsCnnno = bsnsCnnno;
        this.rvdt = rvdt;
        this.rvOrgcd = rvOrgcd;
        this.rvXcno = rvXcno;
        this.pyCrno = pyCrno;
        this.pyBjno = pyBjno;
        this.rmStcd = rmStcd;
        this.fnlRmdt = fnlRmdt;
        this.notsMtt = notsMtt;
        this.noteMtt = noteMtt;
        this.finaDatVrfFlg1Vl = finaDatVrfFlg1Vl;
        this.finaDatVrfFlg2Vl = finaDatVrfFlg2Vl;
        this.finaDatVrfFlg3Vl = finaDatVrfFlg3Vl;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
