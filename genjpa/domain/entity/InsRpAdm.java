/**
 * InsRpAdm Entity 클래스
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
@Table(name = "ins_rp_adm") //--영수관리
@Schema(description = "영수관리")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class InsRpAdm implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "rp_admno", length = 20, nullable = false)
    @Schema(description = "영수관리번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rpAdmno; //--영수관리번호

    @Column(name = "mnt_flgcd", length = 10, nullable = true)
    @Schema(description = "금종구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mntFlgcd; //--금종구분코드

    @Column(name = "rp_dthms", nullable = true)
    @Schema(description = "영수일시", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rpDthms; //--영수일시

    @Column(name = "rtx_csfcd", length = 10, nullable = true)
    @Schema(description = "영수증분류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtxCsfcd; //--영수증분류코드

    @Column(name = "rpamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "영수금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal rpamt; //--영수금액

    @Column(name = "rv_xcno", length = 7, nullable = true)
    @Schema(description = "수납정산번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rvXcno; //--수납정산번호

    @Column(name = "rvdt", nullable = true)
    @Schema(description = "수납일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rvdt; //--수납일자

    @Column(name = "rv_yn", length = 1, nullable = true)
    @Schema(description = "수납여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rvYn; //--수납여부

    @Column(name = "act_sbrcd", length = 7, nullable = true)
    @Schema(description = "회계부점코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actSbrcd; //--회계부점코드

    @Column(name = "crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "카드회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdCmpcd; //--카드회사코드

    @Column(name = "rp_pth_flgcd", length = 10, nullable = true)
    @Schema(description = "영수경로구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rpPthFlgcd; //--영수경로구분코드

    @Column(name = "plno", length = 17, nullable = true)
    @Schema(description = "설계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plno; //--설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "발행후변경순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Column(name = "clsaf_rcpno", length = 12, nullable = true)
    @Schema(description = "마감후접수번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clsafRcpno; //--마감후접수번호

    @Column(name = "clsaf_rcp_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "마감후접수순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clsafRcpSeqno; //--마감후접수순번

    @Column(name = "ctm_slr_auto_tfsno", length = 30, nullable = true)
    @Schema(description = "고객급여자동이체번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmSlrAutoTfsno; //--고객급여자동이체번호

    @Column(name = "ltrm_cr_totno", length = 10, nullable = true)
    @Schema(description = "장기계약집계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltrmCrTotno; //--장기계약집계번호

    @Column(name = "bll_ldgno", length = 20, nullable = true)
    @Schema(description = "어음원장번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bllLdgno; //--어음원장번호

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
    public InsRpAdm(String rpAdmno, String mntFlgcd, Date rpDthms, String rtxCsfcd, BigDecimal rpamt, String rvXcno, Date rvdt, String rvYn, String actSbrcd, String crdCmpcd, String rpPthFlgcd, String plno, BigDecimal cgafChSeqno, String clsafRcpno, BigDecimal clsafRcpSeqno, String ctmSlrAutoTfsno, String ltrmCrTotno, String bllLdgno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rpAdmno = rpAdmno;
        this.mntFlgcd = mntFlgcd;
        this.rpDthms = rpDthms;
        this.rtxCsfcd = rtxCsfcd;
        this.rpamt = rpamt;
        this.rvXcno = rvXcno;
        this.rvdt = rvdt;
        this.rvYn = rvYn;
        this.actSbrcd = actSbrcd;
        this.crdCmpcd = crdCmpcd;
        this.rpPthFlgcd = rpPthFlgcd;
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.clsafRcpno = clsafRcpno;
        this.clsafRcpSeqno = clsafRcpSeqno;
        this.ctmSlrAutoTfsno = ctmSlrAutoTfsno;
        this.ltrmCrTotno = ltrmCrTotno;
        this.bllLdgno = bllLdgno;
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
