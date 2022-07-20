/**
 * InsTfErcd Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "ins_tf_ercd") //--이체오류코드
@Schema(description = "이체오류코드")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(InsTfErcdPK.class)
public class InsTfErcd implements Serializable {
    @Id //  String
    @Column(name = "tf_dl_metcd", length = 10, nullable = false)
    @Schema(description = "이체처리방식코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfDlMetcd; //--이체처리방식코드

    @Id //  String
    @Column(name = "wdcmp_or_vnccd", length = 10, nullable = false)
    @Schema(description = "출금사van사코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String wdcmpOrVnccd; //--출금사van사코드

    @Id //  String
    @Column(name = "tf_rq_dm_flgcd", length = 10, nullable = false)
    @Schema(description = "이체신청청구구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRqDmFlgcd; //--이체신청청구구분코드

    @Id //  String
    @Column(name = "tf_rq_ercd", length = 10, nullable = false)
    @Schema(description = "이체신청오류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRqErcd; //--이체신청오류코드

    @Column(name = "er_cn", length = 500, nullable = true)
    @Schema(description = "오류내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erCn; //--오류내용

    @Column(name = "act_er_dlbj_yn", length = 1, nullable = true)
    @Schema(description = "계좌오류처리대상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actErDlbjYn; //--계좌오류처리대상여부

    @Column(name = "er_dt_cn", length = 500, nullable = true)
    @Schema(description = "오류상세내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String erDtCn; //--오류상세내용

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
    public InsTfErcd(String tfDlMetcd, String wdcmpOrVnccd, String tfRqDmFlgcd, String tfRqErcd, String erCn, String actErDlbjYn, String erDtCn, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.tfDlMetcd = tfDlMetcd;
        this.wdcmpOrVnccd = wdcmpOrVnccd;
        this.tfRqDmFlgcd = tfRqDmFlgcd;
        this.tfRqErcd = tfRqErcd;
        this.erCn = erCn;
        this.actErDlbjYn = actErDlbjYn;
        this.erDtCn = erDtCn;
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
