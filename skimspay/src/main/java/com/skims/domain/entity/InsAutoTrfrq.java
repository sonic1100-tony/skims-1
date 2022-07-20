/**
 * InsAutoTrfrq Entity 클래스
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
@Table(name = "ins_auto_trfrq") //--자동이체의뢰
@Schema(description = "자동이체의뢰")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsAutoTrfrq implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "prs_plyno_or_lnno", length = 16, nullable = false)
    @Schema(description = "대표증권번호대출번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prsPlynoOrLnno; //--대표증권번호대출번호

    @Column(name = "auto_tf_cg_kndcd", length = 10, nullable = false)
    @Schema(description = "자동이체요금종류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoTfCgKndcd; //--자동이체요금종류코드

    @Column(name = "auto_tfdt", nullable = false)
    @Schema(description = "자동이체일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date autoTfdt; //--자동이체일자

    @Column(name = "prs_ply_rqpym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "대표증권의뢰납입회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal prsPlyRqpymSeq; //--대표증권의뢰납입회차

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndsno; //--배서번호

    @Column(name = "olcrr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구이력순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal olcrrSeqno; //--구이력순번

    @Column(name = "oldbl_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구중복순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal oldblSeqno; //--구중복순번

    @Column(name = "bdl_wdrc_bj_yn", length = 1, nullable = true)
    @Schema(description = "일괄출금대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bdlWdrcBjYn; //--일괄출금대상여부

    @Column(name = "tf_rq_wrk_dthms", nullable = false)
    @Schema(description = "이체요청작업일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date tfRqWrkDthms; //--이체요청작업일시

    @Column(name = "tf_requ_dl_stcd", length = 10, nullable = true)
    @Schema(description = "이체의뢰처리상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRequDlStcd; //--이체의뢰처리상태코드

    @Column(name = "tf_rst_rcpdt", nullable = true)
    @Schema(description = "이체결과접수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date tfRstRcpdt; //--이체결과접수일자

    @Column(name = "tf_dl_metcd", length = 10, nullable = true)
    @Schema(description = "이체처리방식코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfDlMetcd; //--이체처리방식코드

    @Column(name = "tf_bj_yymm", length = 6, nullable = true)
    @Schema(description = "이체대상년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfBjYymm; //--이체대상년월

    @Column(name = "tf_bjdt_cd", length = 10, nullable = true)
    @Schema(description = "이체대상일코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfBjdtCd; //--이체대상일코드

    @Column(name = "wdrc_lm_flgcd", length = 10, nullable = true)
    @Schema(description = "출금한도구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wdrcLmFlgcd; //--출금한도구분코드

    @Column(name = "bdl_wdrc_bj_crct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "일괄출금대상계약건수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal bdlWdrcBjCrct; //--일괄출금대상계약건수

    @Column(name = "rq_tfamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "요청이체금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rqTfamt; //--요청이체금액

    @Column(name = "dm_pcamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "청구원금", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmPcamt; //--청구원금

    @Column(name = "tf_requ_flgcd", length = 10, nullable = true)
    @Schema(description = "이체의뢰구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRequFlgcd; //--이체의뢰구분코드

    @Column(name = "fr_tf_rqudt", nullable = true)
    @Schema(description = "최초이체의뢰일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date frTfRqudt; //--최초이체의뢰일자

    @Column(name = "epay_stm_no", length = 50, nullable = true)
    @Schema(description = "페이결제번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String epayStmNo; //--페이결제번호

    @Column(name = "crd_apno", length = 20, nullable = true)
    @Schema(description = "카드승인번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdApno; //--카드승인번호

    @Column(name = "crd_apdt", nullable = true)
    @Schema(description = "카드승인일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date crdApdt; //--카드승인일자

    @Column(name = "crd_ap_hms", length = 6, nullable = true)
    @Schema(description = "카드승인시간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdApHms; //--카드승인시간

    @Column(name = "jnsno", length = 20, nullable = true)
    @Schema(description = "가맹점번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String jnsno; //--가맹점번호

    @Column(name = "tf_dm_vnc_ercd", length = 10, nullable = true)
    @Schema(description = "이체청구van사오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfDmVncErcd; //--이체청구van사오류코드

    @Column(name = "tf_dm_wdcmp_ercd", length = 10, nullable = true)
    @Schema(description = "이체청구출금사오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfDmWdcmpErcd; //--이체청구출금사오류코드

    @Column(name = "tf_er_flgcd", length = 10, nullable = true)
    @Schema(description = "이체오류구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfErFlgcd; //--이체오류구분코드

    @Column(name = "pvl_prdt", nullable = true)
    @Schema(description = "계상예정일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pvlPrdt; //--계상예정일자

    @Column(name = "acct_wrte_cn", length = 100, nullable = true)
    @Schema(description = "통장기재내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String acctWrteCn; //--통장기재내용

    @Column(name = "dh_cmpcd", length = 10, nullable = true)
    @Schema(description = "취급회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhCmpcd; //--취급회사코드

    @Column(name = "bk_or_crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "은행카드회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkOrCrdCmpcd; //--은행카드회사코드

    @Column(name = "actno_or_crdno", length = 48, nullable = true)
    @Schema(description = "계좌번호카드번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actnoOrCrdno; //--계좌번호카드번호

    @Column(name = "epay_peri_stm_no", length = 20, nullable = true)
    @Schema(description = "페이정기결제번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String epayPeriStmNo; //--페이정기결제번호

    @Column(name = "bk_brcd", length = 10, nullable = true)
    @Schema(description = "은행지점코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkBrcd; //--은행지점코드

    @Column(name = "crd_vald_trm", length = 30, nullable = true)
    @Schema(description = "카드유효기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdValdTrm; //--카드유효기간

    @Column(name = "ctm_dscno", length = 48, nullable = true)
    @Schema(description = "고객식별번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmDscno; //--고객식별번호

    @Column(name = "pyr_no", length = 20, nullable = true)
    @Schema(description = "납부자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pyrNo; //--납부자번호

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
    public InsAutoTrfrq(String prsPlynoOrLnno, String autoTfCgKndcd, Date autoTfdt, BigDecimal prsPlyRqpymSeq, String ndsno, BigDecimal olcrrSeqno, BigDecimal oldblSeqno, String bdlWdrcBjYn, Date tfRqWrkDthms, String tfRequDlStcd, Date tfRstRcpdt, String tfDlMetcd, String tfBjYymm, String tfBjdtCd, String wdrcLmFlgcd, BigDecimal bdlWdrcBjCrct, BigDecimal rqTfamt, BigDecimal dmPcamt, String tfRequFlgcd, Date frTfRqudt, String epayStmNo, String crdApno, Date crdApdt, String crdApHms, String jnsno, String tfDmVncErcd, String tfDmWdcmpErcd, String tfErFlgcd, Date pvlPrdt, String acctWrteCn, String dhCmpcd, String bkOrCrdCmpcd, String actnoOrCrdno, String epayPeriStmNo, String bkBrcd, String crdValdTrm, String ctmDscno, String pyrNo, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.prsPlynoOrLnno = prsPlynoOrLnno;
        this.autoTfCgKndcd = autoTfCgKndcd;
        this.autoTfdt = autoTfdt;
        this.prsPlyRqpymSeq = prsPlyRqpymSeq;
        this.ndsno = ndsno;
        this.olcrrSeqno = olcrrSeqno;
        this.oldblSeqno = oldblSeqno;
        this.bdlWdrcBjYn = bdlWdrcBjYn;
        this.tfRqWrkDthms = tfRqWrkDthms;
        this.tfRequDlStcd = tfRequDlStcd;
        this.tfRstRcpdt = tfRstRcpdt;
        this.tfDlMetcd = tfDlMetcd;
        this.tfBjYymm = tfBjYymm;
        this.tfBjdtCd = tfBjdtCd;
        this.wdrcLmFlgcd = wdrcLmFlgcd;
        this.bdlWdrcBjCrct = bdlWdrcBjCrct;
        this.rqTfamt = rqTfamt;
        this.dmPcamt = dmPcamt;
        this.tfRequFlgcd = tfRequFlgcd;
        this.frTfRqudt = frTfRqudt;
        this.epayStmNo = epayStmNo;
        this.crdApno = crdApno;
        this.crdApdt = crdApdt;
        this.crdApHms = crdApHms;
        this.jnsno = jnsno;
        this.tfDmVncErcd = tfDmVncErcd;
        this.tfDmWdcmpErcd = tfDmWdcmpErcd;
        this.tfErFlgcd = tfErFlgcd;
        this.pvlPrdt = pvlPrdt;
        this.acctWrteCn = acctWrteCn;
        this.dhCmpcd = dhCmpcd;
        this.bkOrCrdCmpcd = bkOrCrdCmpcd;
        this.actnoOrCrdno = actnoOrCrdno;
        this.epayPeriStmNo = epayPeriStmNo;
        this.bkBrcd = bkBrcd;
        this.crdValdTrm = crdValdTrm;
        this.ctmDscno = ctmDscno;
        this.pyrNo = pyrNo;
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
