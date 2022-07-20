/**
 * InsCvrIncmPrm Entity 클래스
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
@Table(name = "ins_cvr_incm_prm") //--담보수입보험료
@Schema(description = "담보수입보험료")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsCvrIncmPrm implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "incm_prm_cr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "수입보험료발생순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal incmPrmCrSeqno; //--수입보험료발생순번

    @Column(name = "cvrcd", length = 8, nullable = false)
    @Schema(description = "담보코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrcd; //--담보코드

    @Column(name = "cvr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "담보순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cvrSeqno; //--담보순번

    @Column(name = "cvr_pym_seq", precision = 5, scale = 0, nullable = false)
    @Schema(description = "담보납입회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cvrPymSeq; //--담보납입회차

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "cr_cvr_ndsno", length = 4, nullable = true)
    @Schema(description = "계약담보배서번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crCvrNdsno; //--계약담보배서번호

    @Column(name = "cvr_pym_yymm", length = 6, nullable = true)
    @Schema(description = "담보납입년월", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrPymYymm; //--담보납입년월

    @Column(name = "ba_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "기본보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal baPrm; //--기본보험료

    @Column(name = "ap_prm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "적용보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal apPrm; //--적용보험료

    @Column(name = "rp_prm", precision = 15, scale = 0, nullable = false)
    @Schema(description = "영수보험료", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rpPrm; //--영수보험료

    @Column(name = "nwfsq_flgcd", length = 10, nullable = true)
    @Schema(description = "신초차구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String nwfsqFlgcd; //--신초차구분코드

    @Column(name = "cvr_st_st_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "담보시기기준회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cvrStStSeq; //--담보시기기준회차

    @Column(name = "cvr_st_nwfsq_flgcd", length = 10, nullable = true)
    @Schema(description = "담보시기신초차구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrStNwfsqFlgcd; //--담보시기신초차구분코드

    @Column(name = "ppy_yn", length = 1, nullable = true)
    @Schema(description = "선납여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ppyYn; //--선납여부

    @Column(name = "ppy_dc_yn", length = 1, nullable = true)
    @Schema(description = "선납할인여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ppyDcYn; //--선납할인여부

    @Column(name = "pym_dudt", nullable = true)
    @Schema(description = "납입응당일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date pymDudt; //--납입응당일자

    @Column(name = "vald_stdt", nullable = true)
    @Schema(description = "유효시기일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date valdStdt; //--유효시기일자

    @Column(name = "vald_clsdt", nullable = true)
    @Schema(description = "유효종기일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date valdClsdt; //--유효종기일자

    @Column(name = "trt_ap_cvr_prmsm", precision = 17, scale = 2, nullable = false)
    @Schema(description = "특약적용담보보험료합계", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal trtApCvrPrmsm; //--특약적용담보보험료합계

    @Column(name = "ps_ndstn_shamt", precision = 17, scale = 5, nullable = false)
    @Schema(description = "보유불분명분담금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal psNdstnShamt; //--보유불분명분담금액

    @Column(name = "xwpy_prm_nt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "과오납보험료이자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xwpyPrmNt; //--과오납보험료이자

    @Column(name = "cvr_ba_trt_flgcd", length = 10, nullable = true)
    @Schema(description = "담보기본특약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrBaTrtFlgcd; //--담보기본특약구분코드

    @Column(name = "trt_ap_cvrcd", length = 10, nullable = true)
    @Schema(description = "특약적용담보코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String trtApCvrcd; //--특약적용담보코드

    @Column(name = "cvr_spqu_flgcd", length = 10, nullable = true)
    @Schema(description = "담보특성구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrSpquFlgcd; //--담보특성구분코드

    @Column(name = "stdbd_ba_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준체기본보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal stdbdBaPrm; //--표준체기본보험료

    @Column(name = "stdbd_ap_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준체적용보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal stdbdApPrm; //--표준체적용보험료

    @Column(name = "stdbd_rp_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준체영수보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal stdbdRpPrm; //--표준체영수보험료

    @Column(name = "sustd_ba_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준하체기본보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sustdBaPrm; //--표준하체기본보험료

    @Column(name = "sustd_ap_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준하체적용보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sustdApPrm; //--표준하체적용보험료

    @Column(name = "sustd_rp_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "표준하체영수보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sustdRpPrm; //--표준하체영수보험료

    @Column(name = "sb_prm", precision = 15, scale = 0, nullable = true)
    @Schema(description = "대체보험료", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sbPrm; //--대체보험료

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
    public InsCvrIncmPrm(String plyno, BigDecimal incmPrmCrSeqno, String cvrcd, BigDecimal cvrSeqno, BigDecimal cvrPymSeq, String ikdGrpcd, String crCvrNdsno, String cvrPymYymm, BigDecimal baPrm, BigDecimal apPrm, BigDecimal rpPrm, String nwfsqFlgcd, BigDecimal cvrStStSeq, String cvrStNwfsqFlgcd, String ppyYn, String ppyDcYn, Date pymDudt, Date valdStdt, Date valdClsdt, BigDecimal trtApCvrPrmsm, BigDecimal psNdstnShamt, BigDecimal xwpyPrmNt, String cvrBaTrtFlgcd, String trtApCvrcd, String cvrSpquFlgcd, BigDecimal stdbdBaPrm, BigDecimal stdbdApPrm, BigDecimal stdbdRpPrm, BigDecimal sustdBaPrm, BigDecimal sustdApPrm, BigDecimal sustdRpPrm, BigDecimal sbPrm, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plyno = plyno;
        this.incmPrmCrSeqno = incmPrmCrSeqno;
        this.cvrcd = cvrcd;
        this.cvrSeqno = cvrSeqno;
        this.cvrPymSeq = cvrPymSeq;
        this.ikdGrpcd = ikdGrpcd;
        this.crCvrNdsno = crCvrNdsno;
        this.cvrPymYymm = cvrPymYymm;
        this.baPrm = baPrm;
        this.apPrm = apPrm;
        this.rpPrm = rpPrm;
        this.nwfsqFlgcd = nwfsqFlgcd;
        this.cvrStStSeq = cvrStStSeq;
        this.cvrStNwfsqFlgcd = cvrStNwfsqFlgcd;
        this.ppyYn = ppyYn;
        this.ppyDcYn = ppyDcYn;
        this.pymDudt = pymDudt;
        this.valdStdt = valdStdt;
        this.valdClsdt = valdClsdt;
        this.trtApCvrPrmsm = trtApCvrPrmsm;
        this.psNdstnShamt = psNdstnShamt;
        this.xwpyPrmNt = xwpyPrmNt;
        this.cvrBaTrtFlgcd = cvrBaTrtFlgcd;
        this.trtApCvrcd = trtApCvrcd;
        this.cvrSpquFlgcd = cvrSpquFlgcd;
        this.stdbdBaPrm = stdbdBaPrm;
        this.stdbdApPrm = stdbdApPrm;
        this.stdbdRpPrm = stdbdRpPrm;
        this.sustdBaPrm = sustdBaPrm;
        this.sustdApPrm = sustdApPrm;
        this.sustdRpPrm = sustdRpPrm;
        this.sbPrm = sbPrm;
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
