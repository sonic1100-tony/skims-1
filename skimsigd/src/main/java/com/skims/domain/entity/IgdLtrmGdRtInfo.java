/**
 * IgdLtrmGdRtInfo Entity 클래스
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
@Table(name = "igd_ltrm_gd_rt_info") //--장기상품요율정보
@Schema(description = "장기상품요율정보")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(IgdLtrmGdRtInfoPK.class)
public class IgdLtrmGdRtInfo implements Serializable {
    @Id //  String
    @Column(name = "ltrm_rt_tabl_flgcd", length = 10, nullable = false)
    @Schema(description = "장기요율테이블구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드

    @Id //  String
    @Column(name = "gdcd", length = 10, nullable = false)
    @Schema(description = "상품코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String gdcd; //--상품코드

    @Column(name = "ltrm_rt_tabnm", length = 100, nullable = false)
    @Schema(description = "장기요율테이블명", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltrmRtTabnm; //--장기요율테이블명

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "rt_ap_csfcd", length = 10, nullable = false)
    @Schema(description = "요율적용분류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtApCsfcd; //--요율적용분류코드

    @Column(name = "rt_ap_flgcd", length = 1, nullable = false)
    @Schema(description = "요율적용구분코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtApFlgcd; //--요율적용구분코드

    @Column(name = "rt_ap_untcd", length = 7, nullable = false)
    @Schema(description = "요율적용단위코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rtApUntcd; //--요율적용단위코드

    @Column(name = "prm_ap_untcd", length = 7, nullable = true)
    @Schema(description = "보험료적용단위코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prmApUntcd; //--보험료적용단위코드

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdfUsrId; //--수정사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date mdfDthms; //--수정일시

    @Builder
    public IgdLtrmGdRtInfo(String ltrmRtTablFlgcd, String gdcd, String ltrmRtTabnm, String ikdGrpcd, String rtApCsfcd, String rtApFlgcd, String rtApUntcd, String prmApUntcd, String mdfUsrId, Date inpDthms, Date mdfDthms) {
        this.ltrmRtTablFlgcd = ltrmRtTablFlgcd;
        this.gdcd = gdcd;
        this.ltrmRtTabnm = ltrmRtTabnm;
        this.ikdGrpcd = ikdGrpcd;
        this.rtApCsfcd = rtApCsfcd;
        this.rtApFlgcd = rtApFlgcd;
        this.rtApUntcd = rtApUntcd;
        this.prmApUntcd = prmApUntcd;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
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
