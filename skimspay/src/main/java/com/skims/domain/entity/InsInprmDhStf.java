/**
 * InsInprmDhStf Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.InsInprmDhStfListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsInprmDhStfListener.class)
@Table(name = "ins_inprm_dh_stf") //--수입보험료취급직원
@Schema(description = "수입보험료취급직원")
@IdClass(InsInprmDhStfPK.class)
public class InsInprmDhStf implements Serializable {
    @Id //  String
    @Column(name = "plyno", length = 16, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Id //  BigDecimal
    @Column(name = "incm_prm_cr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "수입보험료발생순번", nullable = false)
    private BigDecimal incmPrmCrSeqno; //--수입보험료발생순번

    @Id //  String
    @Column(name = "dh_stf_tpcd", length = 10, nullable = false)
    @Schema(description = "취급직원유형코드", nullable = false)
    private String dhStfTpcd; //--취급직원유형코드

    @Id //  String
    @Column(name = "dh_stfno", length = 50, nullable = false)
    @Schema(description = "취급직원번호", nullable = false)
    private String dhStfno; //--취급직원번호

    @Column(name = "usrno", length = 10, nullable = true)
    @Schema(description = "사용인번호", nullable = true)
    private String usrno; //--사용인번호

    @Column(name = "bzcs_qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "사업비지분율", nullable = false)
    private BigDecimal bzcsQtrt; //--사업비지분율

    @Column(name = "qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "지분율", nullable = false)
    private BigDecimal qtrt; //--지분율

    @Column(name = "prs_dh_stf_yn", length = 1, nullable = true)
    @Schema(description = "대표취급직원여부", nullable = true)
    private String prsDhStfYn; //--대표취급직원여부

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Date mdfDthms; //--수정일시

    @Builder
    public InsInprmDhStf(String plyno, BigDecimal incmPrmCrSeqno, String dhStfTpcd, String dhStfno, String usrno, BigDecimal bzcsQtrt, BigDecimal qtrt, String prsDhStfYn, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plyno = plyno;
        this.incmPrmCrSeqno = incmPrmCrSeqno;
        this.dhStfTpcd = dhStfTpcd;
        this.dhStfno = dhStfno;
        this.usrno = usrno;
        this.bzcsQtrt = bzcsQtrt;
        this.qtrt = qtrt;
        this.prsDhStfYn = prsDhStfYn;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
