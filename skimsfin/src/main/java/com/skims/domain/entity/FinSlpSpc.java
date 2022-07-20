/**
 * FinSlpSpc Entity 클래스
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
@Table(name = "fin_slp_spc") //--전표내역
@Schema(description = "전표내역")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(FinSlpSpcPK.class)
public class FinSlpSpc implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Id //  Date
    @Column(name = "slpdt", nullable = false)
    @Schema(description = "전표일자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date slpdt; //--전표일자

    @Column(name = "slpno", length = 7, nullable = false)
    @Schema(description = "전표번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpno; //--전표번호

    @Column(name = "slp_lnno", length = 6, nullable = false)
    @Schema(description = "전표라인번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String slpLnno; //--전표라인번호

    @Column(name = "dbcr_flgcd", length = 10, nullable = false)
    @Schema(description = "차대구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dbcrFlgcd; //--차대구분코드

    @Column(name = "ntacc_cd", length = 11, nullable = false)
    @Schema(description = "계정과목코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntaccCd; //--계정과목코드

    @Column(name = "mnbrn_bj_ntacc_cd", length = 11, nullable = true)
    @Schema(description = "본지점대상계정과목코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mnbrnBjNtaccCd; //--본지점대상계정과목코드

    @Column(name = "act_orgcd", length = 7, nullable = false)
    @Schema(description = "회계기관코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actOrgcd; //--회계기관코드

    @Column(name = "mncd", length = 10, nullable = false)
    @Schema(description = "화폐코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "woncr_poamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화계상금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrPoamt; //--원화계상금액

    @Column(name = "fc_poamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "외화계상금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal fcPoamt; //--외화계상금액

    @Column(name = "ap_xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "적용환율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal apXcrt; //--적용환율

    @Column(name = "dltfp_flgcd", length = 10, nullable = true)
    @Schema(description = "상대처구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dltfpFlgcd; //--상대처구분코드

    @Column(name = "dltcd", length = 10, nullable = true)
    @Schema(description = "상대처코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dltcd; //--상대처코드

    @Column(name = "ikd_grpcd", length = 10, nullable = true)
    @Schema(description = "보종군코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "ins_imcd", length = 10, nullable = true)
    @Schema(description = "보험종목코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String insImcd; //--보험종목코드

    @Column(name = "invln_gdcd", length = 10, nullable = true)
    @Schema(description = "투융자상품코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String invlnGdcd; //--투융자상품코드

    @Column(name = "ldgno", length = 20, nullable = true)
    @Schema(description = "원장번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ldgno; //--원장번호

    @Column(name = "ldg_kndcd", length = 10, nullable = true)
    @Schema(description = "원장종류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ldgKndcd; //--원장종류코드

    @Column(name = "bsns_cnnno_flgcd", length = 10, nullable = true)
    @Schema(description = "업무관련번호구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bsnsCnnnoFlgcd; //--업무관련번호구분코드

    @Column(name = "bsns_cnnno", length = 20, nullable = true)
    @Schema(description = "업무관련번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bsnsCnnno; //--업무관련번호

    @Column(name = "bsns_cnndt", nullable = true)
    @Schema(description = "업무관련일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date bsnsCnndt; //--업무관련일자

    @Column(name = "dh_orgcd", length = 7, nullable = true)
    @Schema(description = "취급기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhOrgcd; //--취급기관코드

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhStfno; //--취급직원번호

    @Column(name = "bzcs_o1_dvcd", length = 10, nullable = true)
    @Schema(description = "사업비1차배분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bzcsO1Dvcd; //--사업비1차배분코드

    @Column(name = "bzcs_o2_dvcd", length = 10, nullable = true)
    @Schema(description = "사업비2차배분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bzcsO2Dvcd; //--사업비2차배분코드

    @Column(name = "rr_orgcd", length = 7, nullable = true)
    @Schema(description = "귀속기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rrOrgcd; //--귀속기관코드

    @Column(name = "bdg_orgcd", length = 7, nullable = true)
    @Schema(description = "예산기관코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bdgOrgcd; //--예산기관코드

    @Column(name = "dlplc_flgcd", length = 10, nullable = true)
    @Schema(description = "거래처구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlplcFlgcd; //--거래처구분코드

    @Column(name = "dlpno", length = 64, nullable = true)
    @Schema(description = "거래처번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dlpno; //--거래처번호

    @Column(name = "crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "카드회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdCmpcd; //--카드회사코드

    @Column(name = "fndcd", length = 10, nullable = true)
    @Schema(description = "펀드코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String fndcd; //--펀드코드

    @Column(name = "nots_mtt", length = 2000, nullable = false)
    @Schema(description = "적요사항", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String notsMtt; //--적요사항

    @Column(name = "note_mtt", length = 2000, nullable = true)
    @Schema(description = "비고사항", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String noteMtt; //--비고사항

    @Column(name = "bzcs_dv_exec_yn", length = 1, nullable = true)
    @Schema(description = "사업비배분수행여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bzcsDvExecYn; //--사업비배분수행여부

    @Column(name = "act_unt_flgcd", length = 10, nullable = false)
    @Schema(description = "회계단위구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actUntFlgcd; //--회계단위구분코드

    @Column(name = "erp_ts_yn", length = 1, nullable = true)
    @Schema(description = "erp전송여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpTsYn; //--erp전송여부

    @Column(name = "erp_tsdt", length = 8, nullable = true)
    @Schema(description = "erp전송일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erpTsdt; //--erp전송일자

    @Column(name = "cu_sb_wrk_yn", length = 1, nullable = true)
    @Schema(description = "적립대체작업여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cuSbWrkYn; //--적립대체작업여부

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
    public FinSlpSpc(Date slpdt, String slpno, String slpLnno, String dbcrFlgcd, String ntaccCd, String mnbrnBjNtaccCd, String actOrgcd, String mncd, BigDecimal woncrPoamt, BigDecimal fcPoamt, BigDecimal apXcrt, String dltfpFlgcd, String dltcd, String ikdGrpcd, String insImcd, String invlnGdcd, String ldgno, String ldgKndcd, String bsnsCnnnoFlgcd, String bsnsCnnno, Date bsnsCnndt, String dhOrgcd, String dhStfno, String bzcsO1Dvcd, String bzcsO2Dvcd, String rrOrgcd, String bdgOrgcd, String dlplcFlgcd, String dlpno, String crdCmpcd, String fndcd, String notsMtt, String noteMtt, String bzcsDvExecYn, String actUntFlgcd, String erpTsYn, String erpTsdt, String cuSbWrkYn, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.slpdt = slpdt;
        this.slpno = slpno;
        this.slpLnno = slpLnno;
        this.dbcrFlgcd = dbcrFlgcd;
        this.ntaccCd = ntaccCd;
        this.mnbrnBjNtaccCd = mnbrnBjNtaccCd;
        this.actOrgcd = actOrgcd;
        this.mncd = mncd;
        this.woncrPoamt = woncrPoamt;
        this.fcPoamt = fcPoamt;
        this.apXcrt = apXcrt;
        this.dltfpFlgcd = dltfpFlgcd;
        this.dltcd = dltcd;
        this.ikdGrpcd = ikdGrpcd;
        this.insImcd = insImcd;
        this.invlnGdcd = invlnGdcd;
        this.ldgno = ldgno;
        this.ldgKndcd = ldgKndcd;
        this.bsnsCnnnoFlgcd = bsnsCnnnoFlgcd;
        this.bsnsCnnno = bsnsCnnno;
        this.bsnsCnndt = bsnsCnndt;
        this.dhOrgcd = dhOrgcd;
        this.dhStfno = dhStfno;
        this.bzcsO1Dvcd = bzcsO1Dvcd;
        this.bzcsO2Dvcd = bzcsO2Dvcd;
        this.rrOrgcd = rrOrgcd;
        this.bdgOrgcd = bdgOrgcd;
        this.dlplcFlgcd = dlplcFlgcd;
        this.dlpno = dlpno;
        this.crdCmpcd = crdCmpcd;
        this.fndcd = fndcd;
        this.notsMtt = notsMtt;
        this.noteMtt = noteMtt;
        this.bzcsDvExecYn = bzcsDvExecYn;
        this.actUntFlgcd = actUntFlgcd;
        this.erpTsYn = erpTsYn;
        this.erpTsdt = erpTsdt;
        this.cuSbWrkYn = cuSbWrkYn;
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
