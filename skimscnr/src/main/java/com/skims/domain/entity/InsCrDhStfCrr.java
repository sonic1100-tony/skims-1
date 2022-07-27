/**
 * InsCrDhStfCrr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
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

import com.skims.domain.listener.InsCrDhStfCrrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCrDhStfCrrListener.class)
@Table(name = "ins_cr_dh_stf_crr") //--계약취급직원이력
@Schema(description = "계약취급직원이력")
public class InsCrDhStfCrr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Column(name = "dh_stf_tpcd", length = 10, nullable = false)
    @Schema(description = "취급직원유형코드", nullable = false)
    private String dhStfTpcd; //--취급직원유형코드

    @Column(name = "dh_stfno", length = 50, nullable = false)
    @Schema(description = "취급직원번호", nullable = false)
    private String dhStfno; //--취급직원번호

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

    @Column(name = "ikd_grpcd", length = 10, nullable = true)
    @Schema(description = "보종군코드", nullable = true)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "tabf_dh_stfno", length = 50, nullable = true)
    @Schema(description = "이관전취급직원번호", nullable = true)
    private String tabfDhStfno; //--이관전취급직원번호

    @Column(name = "usrno", length = 10, nullable = true)
    @Schema(description = "사용인번호", nullable = true)
    private String usrno; //--사용인번호

    @Column(name = "prs_dh_stf_yn", length = 1, nullable = true)
    @Schema(description = "대표취급직원여부", nullable = true)
    private String prsDhStfYn; //--대표취급직원여부

    @Column(name = "qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "지분율", nullable = false)
    private BigDecimal qtrt; //--지분율

    @Column(name = "ta_crno", length = 12, nullable = true)
    @Schema(description = "이관발생번호", nullable = true)
    private String taCrno; //--이관발생번호

    @Column(name = "pym_seq", precision = 5, scale = 0, nullable = true)
    @Schema(description = "납입회차", nullable = true)
    private BigDecimal pymSeq; //--납입회차

    @Column(name = "bzcs_qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "사업비지분율", nullable = false)
    private BigDecimal bzcsQtrt; //--사업비지분율

    @Column(name = "cnrdt", nullable = true)
    @Schema(description = "계약일자", nullable = true)
    private LocalDate cnrdt; //--계약일자

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
    public InsCrDhStfCrr(String plyno, String dhStfTpcd, String dhStfno, LocalDate apNddt, LocalDate apStrdt, String ndsno, String valdNdsYn, LocalDateTime ndsApStrDthms, LocalDateTime ndsApNdDthms, String ikdGrpcd, String tabfDhStfno, String usrno, String prsDhStfYn, BigDecimal qtrt, String taCrno, BigDecimal pymSeq, BigDecimal bzcsQtrt, LocalDate cnrdt, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plyno = plyno;
        this.dhStfTpcd = dhStfTpcd;
        this.dhStfno = dhStfno;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.ikdGrpcd = ikdGrpcd;
        this.tabfDhStfno = tabfDhStfno;
        this.usrno = usrno;
        this.prsDhStfYn = prsDhStfYn;
        this.qtrt = qtrt;
        this.taCrno = taCrno;
        this.pymSeq = pymSeq;
        this.bzcsQtrt = bzcsQtrt;
        this.cnrdt = cnrdt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
