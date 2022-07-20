/**
 * FinLdgAccCrr Entity 클래스
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
import javax.persistence.IdClass;
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
@Table(name = "fin_ldg_acc_crr") //--원장계정이력
@Schema(description = "원장계정이력")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(FinLdgAccCrrPK.class)
public class FinLdgAccCrr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Id //  Date
    @Column(name = "cr_rmdt", nullable = false)
    @Schema(description = "발생반제일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date crRmdt; //--발생반제일자

    @Column(name = "ldgno", length = 20, nullable = false)
    @Schema(description = "원장번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ldgno; //--원장번호

    @Column(name = "ldg_kndcd", length = 10, nullable = false)
    @Schema(description = "원장종류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ldgKndcd; //--원장종류코드

    @Column(name = "crr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "이력순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal crrSeqno; //--이력순번

    @Column(name = "ntacc_cd", length = 11, nullable = false)
    @Schema(description = "계정과목코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntaccCd; //--계정과목코드

    @Column(name = "act_orgcd", length = 7, nullable = false)
    @Schema(description = "회계기관코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actOrgcd; //--회계기관코드

    @Column(name = "dh_orgcd", length = 7, nullable = true)
    @Schema(description = "취급기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhOrgcd; //--취급기관코드

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhStfno; //--취급직원번호

    @Column(name = "cr_rm_flgcd", length = 10, nullable = false)
    @Schema(description = "발생반제구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crRmFlgcd; //--발생반제구분코드

    @Column(name = "mncd", length = 10, nullable = false)
    @Schema(description = "화폐코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "fc_cr_rmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "외화발생반제금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fcCrRmamt; //--외화발생반제금액

    @Column(name = "woamt_cr_rmamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화금액발생반제금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woamtCrRmamt; //--원화금액발생반제금액

    @Column(name = "fc_cr_tblam", precision = 17, scale = 2, nullable = false)
    @Schema(description = "외화발생잔액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fcCrTblam; //--외화발생잔액

    @Column(name = "woncr_cr_tblam", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화발생잔액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCrTblam; //--원화발생잔액

    @Column(name = "ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "적용환율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal apXcrt; //--적용환율

    @Column(name = "dl_tp_o1_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형1차분류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlTpO1Csfcd; //--거래유형1차분류코드

    @Column(name = "dl_tp_o2_csfcd", length = 10, nullable = false)
    @Schema(description = "거래유형2차분류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlTpO2Csfcd; //--거래유형2차분류코드

    @Column(name = "acc_crr_tpcd", length = 10, nullable = true)
    @Schema(description = "계정이력유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String accCrrTpcd; //--계정이력유형코드

    @Column(name = "xcdt", nullable = true)
    @Schema(description = "정산일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date xcdt; //--정산일자

    @Column(name = "xc_orgcd", length = 7, nullable = true)
    @Schema(description = "정산기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcOrgcd; //--정산기관코드

    @Column(name = "xcno", length = 7, nullable = true)
    @Schema(description = "정산번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String xcno; //--정산번호

    @Column(name = "dsodt", nullable = true)
    @Schema(description = "발의일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date dsodt; //--발의일자

    @Column(name = "bdg_dpno", length = 7, nullable = true)
    @Schema(description = "예산발의번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bdgDpno; //--예산발의번호

    @Column(name = "bf_ntacc_cd", length = 11, nullable = true)
    @Schema(description = "전계정과목코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfNtaccCd; //--전계정과목코드

    @Column(name = "bfact_orgcd", length = 7, nullable = true)
    @Schema(description = "전회계기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfactOrgcd; //--전회계기관코드

    @Column(name = "bfdh_orgcd", length = 7, nullable = true)
    @Schema(description = "전취급기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfdhOrgcd; //--전취급기관코드

    @Column(name = "bfdh_stfno", length = 50, nullable = true)
    @Schema(description = "전취급직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bfdhStfno; //--전취급직원번호

    @Column(name = "slpdt", nullable = true)
    @Schema(description = "전표일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date slpdt; //--전표일자

    @Column(name = "slpno", length = 7, nullable = true)
    @Schema(description = "전표번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpno; //--전표번호

    @Column(name = "slp_lnno", length = 6, nullable = true)
    @Schema(description = "전표라인번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpLnno; //--전표라인번호

    @Column(name = "ers_yn", length = 1, nullable = false)
    @Schema(description = "삭제여부", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ersYn; //--삭제여부

    @Column(name = "nots_mtt", length = 2000, nullable = true)
    @Schema(description = "적요사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String notsMtt; //--적요사항

    @Column(name = "erp_ts_yn", length = 1, nullable = true)
    @Schema(description = "erp전송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpTsYn; //--erp전송여부

    @Column(name = "erp_tsdt", length = 8, nullable = true)
    @Schema(description = "erp전송일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpTsdt; //--erp전송일자

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
    public FinLdgAccCrr(Date crRmdt, String ldgno, String ldgKndcd, BigDecimal crrSeqno, String ntaccCd, String actOrgcd, String dhOrgcd, String dhStfno, String crRmFlgcd, String mncd, BigDecimal fcCrRmamt, BigDecimal woamtCrRmamt, BigDecimal fcCrTblam, BigDecimal woncrCrTblam, BigDecimal apXcrt, String dlTpO1Csfcd, String dlTpO2Csfcd, String accCrrTpcd, Date xcdt, String xcOrgcd, String xcno, Date dsodt, String bdgDpno, String bfNtaccCd, String bfactOrgcd, String bfdhOrgcd, String bfdhStfno, Date slpdt, String slpno, String slpLnno, String ersYn, String notsMtt, String erpTsYn, String erpTsdt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.crRmdt = crRmdt;
        this.ldgno = ldgno;
        this.ldgKndcd = ldgKndcd;
        this.crrSeqno = crrSeqno;
        this.ntaccCd = ntaccCd;
        this.actOrgcd = actOrgcd;
        this.dhOrgcd = dhOrgcd;
        this.dhStfno = dhStfno;
        this.crRmFlgcd = crRmFlgcd;
        this.mncd = mncd;
        this.fcCrRmamt = fcCrRmamt;
        this.woamtCrRmamt = woamtCrRmamt;
        this.fcCrTblam = fcCrTblam;
        this.woncrCrTblam = woncrCrTblam;
        this.apXcrt = apXcrt;
        this.dlTpO1Csfcd = dlTpO1Csfcd;
        this.dlTpO2Csfcd = dlTpO2Csfcd;
        this.accCrrTpcd = accCrrTpcd;
        this.xcdt = xcdt;
        this.xcOrgcd = xcOrgcd;
        this.xcno = xcno;
        this.dsodt = dsodt;
        this.bdgDpno = bdgDpno;
        this.bfNtaccCd = bfNtaccCd;
        this.bfactOrgcd = bfactOrgcd;
        this.bfdhOrgcd = bfdhOrgcd;
        this.bfdhStfno = bfdhStfno;
        this.slpdt = slpdt;
        this.slpno = slpno;
        this.slpLnno = slpLnno;
        this.ersYn = ersYn;
        this.notsMtt = notsMtt;
        this.erpTsYn = erpTsYn;
        this.erpTsdt = erpTsdt;
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
