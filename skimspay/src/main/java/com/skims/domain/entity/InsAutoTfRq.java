/**
 * InsAutoTfRq Entity 클래스
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

import com.skims.domain.listener.InsAutoTfRqListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsAutoTfRqListener.class)
@Table(name = "ins_auto_tf_rq") //--자동이체신청
@Schema(description = "자동이체신청")
public class InsAutoTfRq implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno_or_lnno", length = 16, nullable = false)
    @Schema(description = "증권번호대출번호", nullable = false)
    private String plynoOrLnno; //--증권번호대출번호

    @Column(name = "auto_tf_cg_kndcd", length = 10, nullable = false)
    @Schema(description = "자동이체요금종류코드", nullable = false)
    private String autoTfCgKndcd; //--자동이체요금종류코드

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private Date apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private Date apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "olcrr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구이력순번", nullable = false)
    private BigDecimal olcrrSeqno; //--구이력순번

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private Date ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private Date ndsApNdDthms; //--배서승인종료일시

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    private String ctmno; //--고객번호

    @Column(name = "bk_or_crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "은행카드회사코드", nullable = true)
    private String bkOrCrdCmpcd; //--은행카드회사코드

    @Column(name = "actno_or_crdno", length = 48, nullable = true)
    @Schema(description = "계좌번호카드번호", nullable = true)
    private String actnoOrCrdno; //--계좌번호카드번호

    @Column(name = "epay_peri_stm_no", length = 20, nullable = true)
    @Schema(description = "페이정기결제번호", nullable = true)
    private String epayPeriStmNo; //--페이정기결제번호

    @Column(name = "tf_tpcd", length = 10, nullable = true)
    @Schema(description = "이체유형코드", nullable = true)
    private String tfTpcd; //--이체유형코드

    @Column(name = "bk_brcd", length = 10, nullable = true)
    @Schema(description = "은행지점코드", nullable = true)
    private String bkBrcd; //--은행지점코드

    @Column(name = "bk_brnm", length = 100, nullable = true)
    @Schema(description = "은행지점명", nullable = true)
    private String bkBrnm; //--은행지점명

    @Column(name = "crd_vald_trm", length = 30, nullable = true)
    @Schema(description = "카드유효기간", nullable = true)
    private String crdValdTrm; //--카드유효기간

    @Column(name = "tf_rq_flgcd", length = 10, nullable = true)
    @Schema(description = "이체신청구분코드", nullable = true)
    private String tfRqFlgcd; //--이체신청구분코드

    @Column(name = "dpsr_or_crd_owrnm", length = 100, nullable = true)
    @Schema(description = "예금주카드소유자명", nullable = true)
    private String dpsrOrCrdOwrnm; //--예금주카드소유자명

    @Column(name = "ctm_dscno", length = 48, nullable = true)
    @Schema(description = "고객식별번호", nullable = true)
    private String ctmDscno; //--고객식별번호

    @Column(name = "crt_relcd", length = 10, nullable = true)
    @Schema(description = "계약자관계코드", nullable = true)
    private String crtRelcd; //--계약자관계코드

    @Column(name = "nt_tf_hpdy_cd", length = 10, nullable = true)
    @Schema(description = "이자이체희망일코드", nullable = true)
    private String ntTfHpdyCd; //--이자이체희망일코드

    @Column(name = "tf_dl_metcd", length = 10, nullable = true)
    @Schema(description = "이체처리방식코드", nullable = true)
    private String tfDlMetcd; //--이체처리방식코드

    @Column(name = "auto_tf_rq_ptncd", length = 10, nullable = true)
    @Schema(description = "자동이체신청경로코드", nullable = true)
    private String autoTfRqPtncd; //--자동이체신청경로코드

    @Column(name = "ptcrd_ss_yn", length = 1, nullable = true)
    @Schema(description = "엽서발행여부", nullable = true)
    private String ptcrdSsYn; //--엽서발행여부

    @Column(name = "rq_rqudt", nullable = true)
    @Schema(description = "신청의뢰일자", nullable = true)
    private Date rqRqudt; //--신청의뢰일자

    @Column(name = "tf_rq_dl_stcd", length = 10, nullable = true)
    @Schema(description = "이체신청처리상태코드", nullable = true)
    private String tfRqDlStcd; //--이체신청처리상태코드

    @Column(name = "rq_rst_rcpdt", nullable = true)
    @Schema(description = "신청결과접수일자", nullable = true)
    private Date rqRstRcpdt; //--신청결과접수일자

    @Column(name = "bdl_tf_yn", length = 1, nullable = true)
    @Schema(description = "일괄이체여부", nullable = true)
    private String bdlTfYn; //--일괄이체여부

    @Column(name = "bnc_rmact_synch_yn", length = 1, nullable = true)
    @Schema(description = "방카송금계좌동시변경여부", nullable = true)
    private String bncRmactSynchYn; //--방카송금계좌동시변경여부

    @Column(name = "ch_crdno", length = 48, nullable = true)
    @Schema(description = "변경카드번호", nullable = true)
    private String chCrdno; //--변경카드번호

    @Column(name = "ch_crd_vald_trm", length = 30, nullable = true)
    @Schema(description = "변경카드유효기간", nullable = true)
    private String chCrdValdTrm; //--변경카드유효기간

    @Column(name = "tf_rq_vnc_ercd", length = 10, nullable = true)
    @Schema(description = "이체신청van사오류코드", nullable = true)
    private String tfRqVncErcd; //--이체신청van사오류코드

    @Column(name = "tf_rq_wdcmp_ercd", length = 10, nullable = true)
    @Schema(description = "이체신청출금사오류코드", nullable = true)
    private String tfRqWdcmpErcd; //--이체신청출금사오류코드

    @Column(name = "at_mntct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "할부개월수", nullable = true)
    private BigDecimal atMntct; //--할부개월수

    @Column(name = "tf_er_flgcd", length = 10, nullable = true)
    @Schema(description = "이체오류구분코드", nullable = true)
    private String tfErFlgcd; //--이체오류구분코드

    @Column(name = "rqdt", nullable = true)
    @Schema(description = "신청일자", nullable = true)
    private Date rqdt; //--신청일자

    @Column(name = "cnldt", nullable = true)
    @Schema(description = "해지일자", nullable = true)
    private Date cnldt; //--해지일자

    @Column(name = "cn_rqudt", nullable = true)
    @Schema(description = "해지의뢰일자", nullable = true)
    private Date cnRqudt; //--해지의뢰일자

    @Column(name = "tf_cn_dl_stcd", length = 10, nullable = true)
    @Schema(description = "이체해지처리상태코드", nullable = true)
    private String tfCnDlStcd; //--이체해지처리상태코드

    @Column(name = "ln_plyno", length = 16, nullable = true)
    @Schema(description = "대출증권번호", nullable = true)
    private String lnPlyno; //--대출증권번호

    @Column(name = "frc_crt_yn", length = 1, nullable = true)
    @Schema(description = "강제생성여부", nullable = true)
    private String frcCrtYn; //--강제생성여부

    @Column(name = "auto_tf_rqdc_ssno", length = 13, nullable = true)
    @Schema(description = "자동이체신청서발행번호", nullable = true)
    private String autoTfRqdcSsno; //--자동이체신청서발행번호

    @Column(name = "dpsr_tlno", length = 50, nullable = true)
    @Schema(description = "예금주전화번호", nullable = true)
    private String dpsrTlno; //--예금주전화번호

    @Column(name = "dh_cmpcd", length = 10, nullable = true)
    @Schema(description = "취급회사코드", nullable = true)
    private String dhCmpcd; //--취급회사코드

    @Column(name = "fbs_cv_yn", length = 1, nullable = true)
    @Schema(description = "fbs전환여부", nullable = true)
    private String fbsCvYn; //--fbs전환여부

    @Column(name = "ctm_rqdt", nullable = true)
    @Schema(description = "고객신청일자", nullable = true)
    private Date ctmRqdt; //--고객신청일자

    @Column(name = "evd_da_flgcd", length = 10, nullable = true)
    @Schema(description = "증빙자료구분코드", nullable = true)
    private String evdDaFlgcd; //--증빙자료구분코드

    @Column(name = "evd_da_dsc_vl", length = 100, nullable = true)
    @Schema(description = "증빙자료식별값", nullable = true)
    private String evdDaDscVl; //--증빙자료식별값

    @Column(name = "evd_da_save_ptncd", length = 10, nullable = true)
    @Schema(description = "증빙자료저장경로코드", nullable = true)
    private String evdDaSavePtncd; //--증빙자료저장경로코드

    @Column(name = "rl_pyr_no", length = 20, nullable = true)
    @Schema(description = "실제납부자번호", nullable = true)
    private String rlPyrNo; //--실제납부자번호

    @Column(name = "voc_no", length = 30, nullable = true)
    @Schema(description = "voc번호", nullable = true)
    private String vocNo; //--voc번호

    @Column(name = "voc_hdcft_rgt_yn", length = 1, nullable = true)
    @Schema(description = "voc수기등록여부", nullable = true)
    private String vocHdcftRgtYn; //--voc수기등록여부

    @Column(name = "epay_flgcd", length = 10, nullable = true)
    @Schema(description = "페이구분코드", nullable = true)
    private String epayFlgcd; //--페이구분코드

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
    public InsAutoTfRq(String plynoOrLnno, String autoTfCgKndcd, Date apNddt, Date apStrdt, String ndsno, BigDecimal olcrrSeqno, String valdNdsYn, Date ndsApStrDthms, Date ndsApNdDthms, String ctmno, String bkOrCrdCmpcd, String actnoOrCrdno, String epayPeriStmNo, String tfTpcd, String bkBrcd, String bkBrnm, String crdValdTrm, String tfRqFlgcd, String dpsrOrCrdOwrnm, String ctmDscno, String crtRelcd, String ntTfHpdyCd, String tfDlMetcd, String autoTfRqPtncd, String ptcrdSsYn, Date rqRqudt, String tfRqDlStcd, Date rqRstRcpdt, String bdlTfYn, String bncRmactSynchYn, String chCrdno, String chCrdValdTrm, String tfRqVncErcd, String tfRqWdcmpErcd, BigDecimal atMntct, String tfErFlgcd, Date rqdt, Date cnldt, Date cnRqudt, String tfCnDlStcd, String lnPlyno, String frcCrtYn, String autoTfRqdcSsno, String dpsrTlno, String dhCmpcd, String fbsCvYn, Date ctmRqdt, String evdDaFlgcd, String evdDaDscVl, String evdDaSavePtncd, String rlPyrNo, String vocNo, String vocHdcftRgtYn, String epayFlgcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plynoOrLnno = plynoOrLnno;
        this.autoTfCgKndcd = autoTfCgKndcd;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.olcrrSeqno = olcrrSeqno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.ctmno = ctmno;
        this.bkOrCrdCmpcd = bkOrCrdCmpcd;
        this.actnoOrCrdno = actnoOrCrdno;
        this.epayPeriStmNo = epayPeriStmNo;
        this.tfTpcd = tfTpcd;
        this.bkBrcd = bkBrcd;
        this.bkBrnm = bkBrnm;
        this.crdValdTrm = crdValdTrm;
        this.tfRqFlgcd = tfRqFlgcd;
        this.dpsrOrCrdOwrnm = dpsrOrCrdOwrnm;
        this.ctmDscno = ctmDscno;
        this.crtRelcd = crtRelcd;
        this.ntTfHpdyCd = ntTfHpdyCd;
        this.tfDlMetcd = tfDlMetcd;
        this.autoTfRqPtncd = autoTfRqPtncd;
        this.ptcrdSsYn = ptcrdSsYn;
        this.rqRqudt = rqRqudt;
        this.tfRqDlStcd = tfRqDlStcd;
        this.rqRstRcpdt = rqRstRcpdt;
        this.bdlTfYn = bdlTfYn;
        this.bncRmactSynchYn = bncRmactSynchYn;
        this.chCrdno = chCrdno;
        this.chCrdValdTrm = chCrdValdTrm;
        this.tfRqVncErcd = tfRqVncErcd;
        this.tfRqWdcmpErcd = tfRqWdcmpErcd;
        this.atMntct = atMntct;
        this.tfErFlgcd = tfErFlgcd;
        this.rqdt = rqdt;
        this.cnldt = cnldt;
        this.cnRqudt = cnRqudt;
        this.tfCnDlStcd = tfCnDlStcd;
        this.lnPlyno = lnPlyno;
        this.frcCrtYn = frcCrtYn;
        this.autoTfRqdcSsno = autoTfRqdcSsno;
        this.dpsrTlno = dpsrTlno;
        this.dhCmpcd = dhCmpcd;
        this.fbsCvYn = fbsCvYn;
        this.ctmRqdt = ctmRqdt;
        this.evdDaFlgcd = evdDaFlgcd;
        this.evdDaDscVl = evdDaDscVl;
        this.evdDaSavePtncd = evdDaSavePtncd;
        this.rlPyrNo = rlPyrNo;
        this.vocNo = vocNo;
        this.vocHdcftRgtYn = vocHdcftRgtYn;
        this.epayFlgcd = epayFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
