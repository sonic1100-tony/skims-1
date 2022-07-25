/**
 * FinPyXc Entity 클래스
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

import com.skims.domain.listener.FinPyXcListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(FinPyXcListener.class)
@Table(name = "fin_py_xc") //--지급정산
@Schema(description = "지급정산")
public class FinPyXc implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "pydt", nullable = false)
    @Schema(description = "지급일자", nullable = false)
    private Date pydt; //--지급일자

    @Column(name = "py_orgcd", length = 7, nullable = false)
    @Schema(description = "지급기관코드", nullable = false)
    private String pyOrgcd; //--지급기관코드

    @Column(name = "py_xcno", length = 7, nullable = false)
    @Schema(description = "지급정산번호", nullable = false)
    private String pyXcno; //--지급정산번호

    @Column(name = "py_act_orgcd", length = 7, nullable = false)
    @Schema(description = "지급회계기관코드", nullable = false)
    private String pyActOrgcd; //--지급회계기관코드

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "py_mtdcd", length = 10, nullable = false)
    @Schema(description = "지급방법코드", nullable = false)
    private String pyMtdcd; //--지급방법코드

    @Column(name = "py_dl_o1_flgcd", length = 10, nullable = false)
    @Schema(description = "지급처리1차구분코드", nullable = false)
    private String pyDlO1Flgcd; //--지급처리1차구분코드

    @Column(name = "py_dl_o2_flgcd", length = 10, nullable = false)
    @Schema(description = "지급처리2차구분코드", nullable = false)
    private String pyDlO2Flgcd; //--지급처리2차구분코드

    @Column(name = "self_yn", length = 1, nullable = true)
    @Schema(description = "본인여부", nullable = true)
    private String selfYn; //--본인여부

    @Column(name = "rcr_rsno", length = 48, nullable = true)
    @Schema(description = "수령자주민번호", nullable = true)
    private String rcrRsno; //--수령자주민번호

    @Column(name = "rcr_nm", length = 100, nullable = true)
    @Schema(description = "수령자명", nullable = true)
    private String rcrNm; //--수령자명

    @Column(name = "mncd", length = 10, nullable = false)
    @Schema(description = "화폐코드", nullable = false)
    private String mncd; //--화폐코드

    @Column(name = "py_smct", precision = 7, scale = 0, nullable = false)
    @Schema(description = "지급합계건수", nullable = false)
    private BigDecimal pySmct; //--지급합계건수

    @Column(name = "py_woncr_smamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "지급원화합계금액", nullable = false)
    private BigDecimal pyWoncrSmamt; //--지급원화합계금액

    @Column(name = "py_fc_smamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급외화합계금액", nullable = false)
    private BigDecimal pyFcSmamt; //--지급외화합계금액

    @Column(name = "fx_pldoq_flgcd", length = 10, nullable = true)
    @Schema(description = "외환차손익구분코드", nullable = true)
    private String fxPldoqFlgcd; //--외환차손익구분코드

    @Column(name = "fx_pqamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "외환차손익금액", nullable = false)
    private BigDecimal fxPqamt; //--외환차손익금액

    @Column(name = "ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "적용환율", nullable = false)
    private BigDecimal apXcrt; //--적용환율

    @Column(name = "dfpcd", length = 10, nullable = true)
    @Schema(description = "예금상대처코드", nullable = true)
    private String dfpcd; //--예금상대처코드

    @Column(name = "py_stcd", length = 10, nullable = false)
    @Schema(description = "지급상태코드", nullable = false)
    private String pyStcd; //--지급상태코드

    @Column(name = "py_slpdt", nullable = true)
    @Schema(description = "지급전표일자", nullable = true)
    private Date pySlpdt; //--지급전표일자

    @Column(name = "py_slpno", length = 7, nullable = true)
    @Schema(description = "지급전표번호", nullable = true)
    private String pySlpno; //--지급전표번호

    @Column(name = "inp_scr_id", length = 7, nullable = true)
    @Schema(description = "입력화면id", nullable = true)
    private String inpScrId; //--입력화면id

    @Column(name = "ccldt", nullable = true)
    @Schema(description = "취소일자", nullable = true)
    private Date ccldt; //--취소일자

    @Column(name = "ccl_stfno", length = 50, nullable = true)
    @Schema(description = "취소직원번호", nullable = true)
    private String cclStfno; //--취소직원번호

    @Column(name = "nots_mtt", length = 2000, nullable = true)
    @Schema(description = "적요사항", nullable = true)
    private String notsMtt; //--적요사항

    @Column(name = "vnccd", length = 10, nullable = true)
    @Schema(description = "van사코드", nullable = true)
    private String vnccd; //--van사코드

    @Column(name = "mtact_bkcd", length = 10, nullable = true)
    @Schema(description = "모계좌은행코드", nullable = true)
    private String mtactBkcd; //--모계좌은행코드

    @Column(name = "fina_dat_vrf_flg1_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분1값", nullable = true)
    private String finaDatVrfFlg1Vl; //--재무데이터검증구분1값

    @Column(name = "fina_dat_vrf_flg2_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분2값", nullable = true)
    private String finaDatVrfFlg2Vl; //--재무데이터검증구분2값

    @Column(name = "fina_dat_vrf_flg3_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분3값", nullable = true)
    private String finaDatVrfFlg3Vl; //--재무데이터검증구분3값

    @Column(name = "tlm_pno", length = 7, nullable = true)
    @Schema(description = "전문고유번호", nullable = true)
    private String tlmPno; //--전문고유번호

    @Column(name = "msg_id", length = 10, nullable = true)
    @Schema(description = "메시지id", nullable = true)
    private String msgId; //--메시지id

    @Column(name = "msg_tp_csfcd", length = 10, nullable = true)
    @Schema(description = "메시지유형분류코드", nullable = true)
    private String msgTpCsfcd; //--메시지유형분류코드

    @Column(name = "upls_tlm_tsdt", length = 8, nullable = true)
    @Schema(description = "유플러스전문전송일자", nullable = true)
    private String uplsTlmTsdt; //--유플러스전문전송일자

    @Column(name = "upls_tlm_ts_hms", length = 6, nullable = true)
    @Schema(description = "유플러스전문전송시간", nullable = true)
    private String uplsTlmTsHms; //--유플러스전문전송시간

    @Column(name = "upls_tmmno", length = 6, nullable = true)
    @Schema(description = "유플러스전문번호", nullable = true)
    private String uplsTmmno; //--유플러스전문번호

    @Column(name = "upls_tlmcd", length = 8, nullable = true)
    @Schema(description = "유플러스전문코드", nullable = true)
    private String uplsTlmcd; //--유플러스전문코드

    @Column(name = "upls_bsns_flgcd", length = 4, nullable = true)
    @Schema(description = "유플러스업무구분코드", nullable = true)
    private String uplsBsnsFlgcd; //--유플러스업무구분코드

    @Column(name = "imty_tf_er_flgcd", length = 10, nullable = true)
    @Schema(description = "즉시이체오류구분코드", nullable = true)
    private String imtyTfErFlgcd; //--즉시이체오류구분코드

    @Column(name = "acct_spcft", length = 100, nullable = true)
    @Schema(description = "통장명기", nullable = true)
    private String acctSpcft; //--통장명기

    @Column(name = "pynct_tpcd", length = 10, nullable = true)
    @Schema(description = "지급금권유형코드", nullable = true)
    private String pynctTpcd; //--지급금권유형코드

    @Column(name = "acc_ldgno", length = 20, nullable = true)
    @Schema(description = "계정원장번호", nullable = true)
    private String accLdgno; //--계정원장번호

    @Column(name = "chk_dscno", length = 20, nullable = true)
    @Schema(description = "수표식별번호", nullable = true)
    private String chkDscno; //--수표식별번호

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
    public FinPyXc(Date pydt, String pyOrgcd, String pyXcno, String pyActOrgcd, String dlTpO1Csfcd, String dlTpO2Csfcd, String pyMtdcd, String pyDlO1Flgcd, String pyDlO2Flgcd, String selfYn, String rcrRsno, String rcrNm, String mncd, BigDecimal pySmct, BigDecimal pyWoncrSmamt, BigDecimal pyFcSmamt, String fxPldoqFlgcd, BigDecimal fxPqamt, BigDecimal apXcrt, String dfpcd, String pyStcd, Date pySlpdt, String pySlpno, String inpScrId, Date ccldt, String cclStfno, String notsMtt, String vnccd, String mtactBkcd, String finaDatVrfFlg1Vl, String finaDatVrfFlg2Vl, String finaDatVrfFlg3Vl, String tlmPno, String msgId, String msgTpCsfcd, String uplsTlmTsdt, String uplsTlmTsHms, String uplsTmmno, String uplsTlmcd, String uplsBsnsFlgcd, String imtyTfErFlgcd, String acctSpcft, String pynctTpcd, String accLdgno, String chkDscno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.pydt = pydt;
        this.pyOrgcd = pyOrgcd;
        this.pyXcno = pyXcno;
        this.pyActOrgcd = pyActOrgcd;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.pyMtdcd = pyMtdcd;
        this.pyDlO1Flgcd = pyDlO1Flgcd;
        this.pyDlO2Flgcd = pyDlO2Flgcd;
        this.selfYn = selfYn;
        this.rcrRsno = rcrRsno;
        this.rcrNm = rcrNm;
        this.mncd = mncd;
        this.pySmct = pySmct;
        this.pyWoncrSmamt = pyWoncrSmamt;
        this.pyFcSmamt = pyFcSmamt;
        this.fxPldoqFlgcd = fxPldoqFlgcd;
        this.fxPqamt = fxPqamt;
        this.apXcrt = apXcrt;
        this.dfpcd = dfpcd;
        this.pyStcd = pyStcd;
        this.pySlpdt = pySlpdt;
        this.pySlpno = pySlpno;
        this.inpScrId = inpScrId;
        this.ccldt = ccldt;
        this.cclStfno = cclStfno;
        this.notsMtt = notsMtt;
        this.vnccd = vnccd;
        this.mtactBkcd = mtactBkcd;
        this.finaDatVrfFlg1Vl = finaDatVrfFlg1Vl;
        this.finaDatVrfFlg2Vl = finaDatVrfFlg2Vl;
        this.finaDatVrfFlg3Vl = finaDatVrfFlg3Vl;
        this.tlmPno = tlmPno;
        this.msgId = msgId;
        this.msgTpCsfcd = msgTpCsfcd;
        this.uplsTlmTsdt = uplsTlmTsdt;
        this.uplsTlmTsHms = uplsTlmTsHms;
        this.uplsTmmno = uplsTmmno;
        this.uplsTlmcd = uplsTlmcd;
        this.uplsBsnsFlgcd = uplsBsnsFlgcd;
        this.imtyTfErFlgcd = imtyTfErFlgcd;
        this.acctSpcft = acctSpcft;
        this.pynctTpcd = pynctTpcd;
        this.accLdgno = accLdgno;
        this.chkDscno = chkDscno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
