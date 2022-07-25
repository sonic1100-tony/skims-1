/**
 * InsPlDhStf Entity 클래스
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

import com.skims.domain.listener.InsPlDhStfListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPlDhStfListener.class)
@Table(name = "ins_pl_dh_stf") //--설계취급직원
@Schema(description = "설계취급직원")
public class InsPlDhStf implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plno", length = 17, nullable = false)
    @Schema(description = "설계번호", nullable = false)
    private String plno; //--설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Column(name = "dh_stf_tpcd", length = 10, nullable = false)
    @Schema(description = "취급직원유형코드", nullable = false)
    private String dhStfTpcd; //--취급직원유형코드

    @Column(name = "dh_stfno", length = 50, nullable = false)
    @Schema(description = "취급직원번호", nullable = false)
    private String dhStfno; //--취급직원번호

    @Column(name = "ikd_grpcd", length = 10, nullable = true)
    @Schema(description = "보종군코드", nullable = true)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "usrno", length = 10, nullable = true)
    @Schema(description = "사용인번호", nullable = true)
    private String usrno; //--사용인번호

    @Column(name = "prs_dh_stf_yn", length = 1, nullable = true)
    @Schema(description = "대표취급직원여부", nullable = true)
    private String prsDhStfYn; //--대표취급직원여부

    @Column(name = "qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "지분율", nullable = false)
    private BigDecimal qtrt; //--지분율

    @Column(name = "bzcs_qtrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "사업비지분율", nullable = false)
    private BigDecimal bzcsQtrt; //--사업비지분율

    @Column(name = "cnrdt", nullable = true)
    @Schema(description = "계약일자", nullable = true)
    private Date cnrdt; //--계약일자

    @Column(name = "ltrm_nds_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "장기배서처리구분코드", nullable = true)
    private String ltrmNdsDlFlgcd; //--장기배서처리구분코드

    @Column(name = "dmgrt_rk_stf_yn", length = 1, nullable = true)
    @Schema(description = "손해율위험직원여부", nullable = true)
    private String dmgrtRkStfYn; //--손해율위험직원여부

    @Column(name = "nwcr_chek_list_dcuno", length = 20, nullable = true)
    @Schema(description = "신계약체크리스트문서번호", nullable = true)
    private String nwcrChekListDcuno; //--신계약체크리스트문서번호

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
    public InsPlDhStf(String plno, BigDecimal cgafChSeqno, String dhStfTpcd, String dhStfno, String ikdGrpcd, String usrno, String prsDhStfYn, BigDecimal qtrt, BigDecimal bzcsQtrt, Date cnrdt, String ltrmNdsDlFlgcd, String dmgrtRkStfYn, String nwcrChekListDcuno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.dhStfTpcd = dhStfTpcd;
        this.dhStfno = dhStfno;
        this.ikdGrpcd = ikdGrpcd;
        this.usrno = usrno;
        this.prsDhStfYn = prsDhStfYn;
        this.qtrt = qtrt;
        this.bzcsQtrt = bzcsQtrt;
        this.cnrdt = cnrdt;
        this.ltrmNdsDlFlgcd = ltrmNdsDlFlgcd;
        this.dmgrtRkStfYn = dmgrtRkStfYn;
        this.nwcrChekListDcuno = nwcrChekListDcuno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
