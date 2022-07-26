/**
 * InsCrStCrr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
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

import com.skims.domain.listener.InsCrStCrrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCrStCrrListener.class)
@Table(name = "ins_cr_st_crr") //--계약상태이력
@Schema(description = "계약상태이력")
public class InsCrStCrr implements Serializable {
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
    private Date apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private Date apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private Timestamp ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private Timestamp ndsApNdDthms; //--배서승인종료일시

    @Column(name = "cr_stcd", length = 10, nullable = false)
    @Schema(description = "계약상태코드", nullable = false)
    private String crStcd; //--계약상태코드

    @Column(name = "cr_dt_stcd", length = 10, nullable = true)
    @Schema(description = "계약세부상태코드", nullable = true)
    private String crDtStcd; //--계약세부상태코드

    @Column(name = "cr_stadt", nullable = true)
    @Schema(description = "계약상태일자", nullable = true)
    private Date crStadt; //--계약상태일자

    @Column(name = "part_cvr_stcd", length = 10, nullable = true)
    @Schema(description = "일부담보상태코드", nullable = true)
    private String partCvrStcd; //--일부담보상태코드

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
    public InsCrStCrr(String plyno, Date apNddt, Date apStrdt, String ndsno, String valdNdsYn, Timestamp ndsApStrDthms, Timestamp ndsApNdDthms, String crStcd, String crDtStcd, Date crStadt, String partCvrStcd, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.plyno = plyno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.crStcd = crStcd;
        this.crDtStcd = crDtStcd;
        this.crStadt = crStadt;
        this.partCvrStcd = partCvrStcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
