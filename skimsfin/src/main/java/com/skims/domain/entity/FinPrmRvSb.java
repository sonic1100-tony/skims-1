/**
 * FinPrmRvSb Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
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

import com.skims.domain.listener.FinPrmRvSbListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(FinPrmRvSbListener.class)
@Table(name = "fin_prm_rv_sb") //--보험료수납대기
@Schema(description = "보험료수납대기")
public class FinPrmRvSb implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "rv_sbno", length = 20, nullable = false)
    @Schema(description = "수납대기번호", nullable = false)
    private String rvSbno; //--수납대기번호

    @Column(name = "cr_syscd", length = 10, nullable = false)
    @Schema(description = "발생시스템코드", nullable = false)
    private String crSyscd; //--발생시스템코드

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "rpdt", nullable = true)
    @Schema(description = "영수일자", nullable = true)
    private Date rpdt; //--영수일자

    @Column(name = "dh_orgcd", length = 7, nullable = true)
    @Schema(description = "취급기관코드", nullable = true)
    private String dhOrgcd; //--취급기관코드

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    private String dhStfno; //--취급직원번호

    @Column(name = "ikd_grpcd", length = 10, nullable = true)
    @Schema(description = "보종군코드", nullable = true)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ins_imcd", length = 10, nullable = true)
    @Schema(description = "보험종목코드", nullable = true)
    private String insImcd; //--보험종목코드

    @Column(name = "invln_gdcd", length = 10, nullable = true)
    @Schema(description = "투융자상품코드", nullable = true)
    private String invlnGdcd; //--투융자상품코드

    @Column(name = "ntacc_cd", length = 11, nullable = true)
    @Schema(description = "계정과목코드", nullable = true)
    private String ntaccCd; //--계정과목코드

    @Column(name = "cnrdt", nullable = true)
    @Schema(description = "계약일자", nullable = true)
    private Date cnrdt; //--계약일자

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "incm_prm_cr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "수입보험료발생순번", nullable = true)
    private BigDecimal incmPrmCrSeqno; //--수입보험료발생순번

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    private String ndsno; //--배서번호

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    private String ctmno; //--고객번호

    @Column(name = "crt_rsno", length = 48, nullable = true)
    @Schema(description = "계약자주민번호", nullable = true)
    private String crtRsno; //--계약자주민번호

    @Column(name = "rpbl_opndt", nullable = true)
    @Schema(description = "책임개시일자", nullable = true)
    private Date rpblOpndt; //--책임개시일자

    @Column(name = "ltrm_cr_totno", length = 10, nullable = true)
    @Schema(description = "장기계약집계번호", nullable = true)
    private String ltrmCrTotno; //--장기계약집계번호

    @Column(name = "udrtk_tycd", length = 10, nullable = true)
    @Schema(description = "인수형태코드", nullable = true)
    private String udrtkTycd; //--인수형태코드

    @Column(name = "dp_cascd", length = 10, nullable = true)
    @Schema(description = "입금원인코드", nullable = true)
    private String dpCascd; //--입금원인코드

    @Column(name = "mnt_flgcd", length = 10, nullable = true)
    @Schema(description = "금종구분코드", nullable = true)
    private String mntFlgcd; //--금종구분코드

    @Column(name = "dpdt", nullable = true)
    @Schema(description = "입금일자", nullable = true)
    private Date dpdt; //--입금일자

    @Column(name = "rp_admno", length = 20, nullable = true)
    @Schema(description = "영수관리번호", nullable = true)
    private String rpAdmno; //--영수관리번호

    @Column(name = "plno", length = 17, nullable = true)
    @Schema(description = "설계번호", nullable = true)
    private String plno; //--설계번호

    @Column(name = "bsns_nds_flgcd", length = 10, nullable = true)
    @Schema(description = "업무배서구분코드", nullable = true)
    private String bsnsNdsFlgcd; //--업무배서구분코드

    @Column(name = "clsaf_yn", length = 1, nullable = true)
    @Schema(description = "마감후여부", nullable = true)
    private String clsafYn; //--마감후여부

    @Column(name = "tot_flgcd", length = 10, nullable = true)
    @Schema(description = "집계구분코드", nullable = true)
    private String totFlgcd; //--집계구분코드

    @Column(name = "totct", precision = 7, scale = 0, nullable = false)
    @Schema(description = "집계건수", nullable = false)
    private BigDecimal totct; //--집계건수

    @Column(name = "tot_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "전체보험료", nullable = false)
    private BigDecimal totPrm; //--전체보험료

    @Column(name = "woncr_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화보험료", nullable = false)
    private BigDecimal woncrPrm; //--원화보험료

    @Column(name = "cr_rn_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "자동차원수보험료", nullable = false)
    private BigDecimal crRnPrm; //--자동차원수보험료

    @Column(name = "cr_dtamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "자동차예수금액", nullable = false)
    private BigDecimal crDtamt; //--자동차예수금액

    @Column(name = "mncd", length = 10, nullable = false)
    @Schema(description = "화폐코드", nullable = false)
    private String mncd; //--화폐코드

    @Column(name = "fc_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "외화보험료", nullable = false)
    private BigDecimal fcPrm; //--외화보험료

    @Column(name = "ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "적용환율", nullable = false)
    private BigDecimal apXcrt; //--적용환율

    @Column(name = "tf_cm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "이체수수료", nullable = false)
    private BigDecimal tfCm; //--이체수수료

    @Column(name = "etamt_flgcd", length = 10, nullable = true)
    @Schema(description = "기타금액구분코드", nullable = true)
    private String etamtFlgcd; //--기타금액구분코드

    @Column(name = "etamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기타금액", nullable = false)
    private BigDecimal etamt; //--기타금액

    @Column(name = "rvdt", nullable = true)
    @Schema(description = "수납일자", nullable = true)
    private Date rvdt; //--수납일자

    @Column(name = "rv_orgcd", length = 7, nullable = true)
    @Schema(description = "수납기관코드", nullable = true)
    private String rvOrgcd; //--수납기관코드

    @Column(name = "rv_xcno", length = 7, nullable = true)
    @Schema(description = "수납정산번호", nullable = true)
    private String rvXcno; //--수납정산번호

    @Column(name = "da_cr_tpcd", length = 10, nullable = true)
    @Schema(description = "자료발생유형코드", nullable = true)
    private String daCrTpcd; //--자료발생유형코드

    @Column(name = "gir_attf_er_yn", length = 1, nullable = false)
    @Schema(description = "지로자동이체오류여부", nullable = false)
    private String girAttfErYn; //--지로자동이체오류여부

    @Column(name = "gir_dp_stcd", length = 10, nullable = true)
    @Schema(description = "지로입금상태코드", nullable = true)
    private String girDpStcd; //--지로입금상태코드

    @Column(name = "prm_pvl_slpdt", nullable = true)
    @Schema(description = "보험료계상전표일자", nullable = true)
    private Date prmPvlSlpdt; //--보험료계상전표일자

    @Column(name = "prm_pvl_slpno", length = 7, nullable = true)
    @Schema(description = "보험료계상전표번호", nullable = true)
    private String prmPvlSlpno; //--보험료계상전표번호

    @Column(name = "prm_pvl_slp_lnno", length = 6, nullable = true)
    @Schema(description = "보험료계상전표라인번호", nullable = true)
    private String prmPvlSlpLnno; //--보험료계상전표라인번호

    @Column(name = "ppdt", nullable = true)
    @Schema(description = "계상일자", nullable = true)
    private Date ppdt; //--계상일자

    @Column(name = "uc_prm_yn", length = 1, nullable = true)
    @Schema(description = "미수보험료여부", nullable = true)
    private String ucPrmYn; //--미수보험료여부

    @Column(name = "msg_id", length = 10, nullable = true)
    @Schema(description = "메시지id", nullable = true)
    private String msgId; //--메시지id

    @Column(name = "msg_tp_csfcd", length = 10, nullable = true)
    @Schema(description = "메시지유형분류코드", nullable = true)
    private String msgTpCsfcd; //--메시지유형분류코드

    @Column(name = "tlm_tsdt", nullable = true)
    @Schema(description = "전문전송일자", nullable = true)
    private Date tlmTsdt; //--전문전송일자

    @Column(name = "tlm_pno", length = 7, nullable = true)
    @Schema(description = "전문고유번호", nullable = true)
    private String tlmPno; //--전문고유번호

    @Column(name = "tlm_specd", length = 10, nullable = true)
    @Schema(description = "전문종별코드", nullable = true)
    private String tlmSpecd; //--전문종별코드

    @Column(name = "spbz_flgcd", length = 10, nullable = true)
    @Schema(description = "전문업무구분코드", nullable = true)
    private String spbzFlgcd; //--전문업무구분코드

    @Column(name = "actno", length = 48, nullable = true)
    @Schema(description = "계좌번호", nullable = true)
    private String actno; //--계좌번호

    @Column(name = "dpsnm", length = 100, nullable = true)
    @Schema(description = "예금주명", nullable = true)
    private String dpsnm; //--예금주명

    @Column(name = "crrnm", length = 100, nullable = true)
    @Schema(description = "계약자명", nullable = true)
    private String crrnm; //--계약자명

    @Column(name = "inr_ikd_grpcd", length = 10, nullable = true)
    @Schema(description = "통합보종군코드", nullable = true)
    private String inrIkdGrpcd; //--통합보종군코드

    @Column(name = "inr_plyno", length = 16, nullable = true)
    @Schema(description = "통합증권번호", nullable = true)
    private String inrPlyno; //--통합증권번호

    @Column(name = "inr_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "통합보험료", nullable = false)
    private BigDecimal inrPrm; //--통합보험료

    @Column(name = "bkcd", length = 10, nullable = true)
    @Schema(description = "은행코드", nullable = true)
    private String bkcd; //--은행코드

    @Column(name = "crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "카드회사코드", nullable = true)
    private String crdCmpcd; //--카드회사코드

    @Column(name = "ccl_yn", length = 1, nullable = true)
    @Schema(description = "취소여부", nullable = true)
    private String cclYn; //--취소여부

    @Column(name = "dh_cmpcd", length = 10, nullable = true)
    @Schema(description = "취급회사코드", nullable = true)
    private String dhCmpcd; //--취급회사코드

    @Column(name = "crd_smamt_aryn", length = 1, nullable = true)
    @Schema(description = "카드합계금액승인여부", nullable = true)
    private String crdSmamtAryn; //--카드합계금액승인여부

    @Column(name = "rv_dl_flgcd", length = 10, nullable = false)
    @Schema(description = "수납처리구분코드", nullable = false)
    private String rvDlFlgcd; //--수납처리구분코드

    @Column(name = "inr_edamt_dldt", nullable = true)
    @Schema(description = "통합입출금처리일자", nullable = true)
    private Date inrEdamtDldt; //--통합입출금처리일자

    @Column(name = "inr_rtxno", length = 20, nullable = true)
    @Schema(description = "통합영수증번호", nullable = true)
    private String inrRtxno; //--통합영수증번호

    @Column(name = "fina_dat_vrf_flg1_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분1값", nullable = true)
    private String finaDatVrfFlg1Vl; //--재무데이터검증구분1값

    @Column(name = "fina_dat_vrf_flg2_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분2값", nullable = true)
    private String finaDatVrfFlg2Vl; //--재무데이터검증구분2값

    @Column(name = "fina_dat_vrf_flg3_vl", length = 100, nullable = true)
    @Schema(description = "재무데이터검증구분3값", nullable = true)
    private String finaDatVrfFlg3Vl; //--재무데이터검증구분3값

    @Column(name = "agr_entp_yn", length = 1, nullable = true)
    @Schema(description = "약정업체여부", nullable = true)
    private String agrEntpYn; //--약정업체여부

    @Column(name = "cr_rpbl_prm", precision = 17, scale = 2, nullable = true)
    @Schema(description = "자동차책임보험료", nullable = true)
    private BigDecimal crRpblPrm; //--자동차책임보험료

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Timestamp inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Timestamp mdfDthms; //--수정일시

    @Builder
    public FinPrmRvSb(String rvSbno, String crSyscd, String dlTpO1Csfcd, String dlTpO2Csfcd, Date rpdt, String dhOrgcd, String dhStfno, String ikdGrpcd, String insImcd, String invlnGdcd, String ntaccCd, Date cnrdt, String plyno, BigDecimal incmPrmCrSeqno, String ndsno, String ctmno, String crtRsno, Date rpblOpndt, String ltrmCrTotno, String udrtkTycd, String dpCascd, String mntFlgcd, Date dpdt, String rpAdmno, String plno, String bsnsNdsFlgcd, String clsafYn, String totFlgcd, BigDecimal totct, BigDecimal totPrm, BigDecimal woncrPrm, BigDecimal crRnPrm, BigDecimal crDtamt, String mncd, BigDecimal fcPrm, BigDecimal apXcrt, BigDecimal tfCm, String etamtFlgcd, BigDecimal etamt, Date rvdt, String rvOrgcd, String rvXcno, String daCrTpcd, String girAttfErYn, String girDpStcd, Date prmPvlSlpdt, String prmPvlSlpno, String prmPvlSlpLnno, Date ppdt, String ucPrmYn, String msgId, String msgTpCsfcd, Date tlmTsdt, String tlmPno, String tlmSpecd, String spbzFlgcd, String actno, String dpsnm, String crrnm, String inrIkdGrpcd, String inrPlyno, BigDecimal inrPrm, String bkcd, String crdCmpcd, String cclYn, String dhCmpcd, String crdSmamtAryn, String rvDlFlgcd, Date inrEdamtDldt, String inrRtxno, String finaDatVrfFlg1Vl, String finaDatVrfFlg2Vl, String finaDatVrfFlg3Vl, String agrEntpYn, BigDecimal crRpblPrm, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.rvSbno = rvSbno;
        this.crSyscd = crSyscd;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.rpdt = rpdt;
        this.dhOrgcd = dhOrgcd;
        this.dhStfno = dhStfno;
        this.ikdGrpcd = ikdGrpcd;
        this.insImcd = insImcd;
        this.invlnGdcd = invlnGdcd;
        this.ntaccCd = ntaccCd;
        this.cnrdt = cnrdt;
        this.plyno = plyno;
        this.incmPrmCrSeqno = incmPrmCrSeqno;
        this.ndsno = ndsno;
        this.ctmno = ctmno;
        this.crtRsno = crtRsno;
        this.rpblOpndt = rpblOpndt;
        this.ltrmCrTotno = ltrmCrTotno;
        this.udrtkTycd = udrtkTycd;
        this.dpCascd = dpCascd;
        this.mntFlgcd = mntFlgcd;
        this.dpdt = dpdt;
        this.rpAdmno = rpAdmno;
        this.plno = plno;
        this.bsnsNdsFlgcd = bsnsNdsFlgcd;
        this.clsafYn = clsafYn;
        this.totFlgcd = totFlgcd;
        this.totct = totct;
        this.totPrm = totPrm;
        this.woncrPrm = woncrPrm;
        this.crRnPrm = crRnPrm;
        this.crDtamt = crDtamt;
        this.mncd = mncd;
        this.fcPrm = fcPrm;
        this.apXcrt = apXcrt;
        this.tfCm = tfCm;
        this.etamtFlgcd = etamtFlgcd;
        this.etamt = etamt;
        this.rvdt = rvdt;
        this.rvOrgcd = rvOrgcd;
        this.rvXcno = rvXcno;
        this.daCrTpcd = daCrTpcd;
        this.girAttfErYn = girAttfErYn;
        this.girDpStcd = girDpStcd;
        this.prmPvlSlpdt = prmPvlSlpdt;
        this.prmPvlSlpno = prmPvlSlpno;
        this.prmPvlSlpLnno = prmPvlSlpLnno;
        this.ppdt = ppdt;
        this.ucPrmYn = ucPrmYn;
        this.msgId = msgId;
        this.msgTpCsfcd = msgTpCsfcd;
        this.tlmTsdt = tlmTsdt;
        this.tlmPno = tlmPno;
        this.tlmSpecd = tlmSpecd;
        this.spbzFlgcd = spbzFlgcd;
        this.actno = actno;
        this.dpsnm = dpsnm;
        this.crrnm = crrnm;
        this.inrIkdGrpcd = inrIkdGrpcd;
        this.inrPlyno = inrPlyno;
        this.inrPrm = inrPrm;
        this.bkcd = bkcd;
        this.crdCmpcd = crdCmpcd;
        this.cclYn = cclYn;
        this.dhCmpcd = dhCmpcd;
        this.crdSmamtAryn = crdSmamtAryn;
        this.rvDlFlgcd = rvDlFlgcd;
        this.inrEdamtDldt = inrEdamtDldt;
        this.inrRtxno = inrRtxno;
        this.finaDatVrfFlg1Vl = finaDatVrfFlg1Vl;
        this.finaDatVrfFlg2Vl = finaDatVrfFlg2Vl;
        this.finaDatVrfFlg3Vl = finaDatVrfFlg3Vl;
        this.agrEntpYn = agrEntpYn;
        this.crRpblPrm = crRpblPrm;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
