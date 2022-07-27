/**
 * InsCmMtd Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
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

import com.skims.domain.listener.InsCmMtdListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCmMtdListener.class)
@Table(name = "ins_cm_mtd") //--수금방법
@Schema(description = "수금방법")
public class InsCmMtd implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private LocalDate apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private LocalDate apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private LocalDateTime ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private LocalDateTime ndsApNdDthms; //--배서승인종료일시

    @Column(name = "cm_mtdcd", length = 10, nullable = false)
    @Schema(description = "수금방법코드", nullable = false)
    private String cmMtdcd; //--수금방법코드

    @Column(name = "slr_tf_stfno", length = 50, nullable = true)
    @Schema(description = "급여이체직원번호", nullable = true)
    private String slrTfStfno; //--급여이체직원번호

    @Column(name = "crt_slrtf_stf_relcd", length = 10, nullable = true)
    @Schema(description = "계약자급여이체직원관계코드", nullable = true)
    private String crtSlrtfStfRelcd; //--계약자급여이체직원관계코드

    @Column(name = "auto_tf_rqdc_ssno", length = 13, nullable = true)
    @Schema(description = "자동이체신청서발행번호", nullable = true)
    private String autoTfRqdcSsno; //--자동이체신청서발행번호

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public InsCmMtd(String plyno, LocalDate apNddt, LocalDate apStrdt, String ndsno, String valdNdsYn, LocalDateTime ndsApStrDthms, LocalDateTime ndsApNdDthms, String cmMtdcd, String slrTfStfno, String crtSlrtfStfRelcd, String autoTfRqdcSsno, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plyno = plyno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.cmMtdcd = cmMtdcd;
        this.slrTfStfno = slrTfStfno;
        this.crtSlrtfStfRelcd = crtSlrtfStfRelcd;
        this.autoTfRqdcSsno = autoTfRqdcSsno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
