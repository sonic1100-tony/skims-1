/**
 * CusJb Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
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

import com.skims.domain.listener.CusJbListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusJbListener.class)
@Table(name = "cus_jb") //--직업
@Schema(description = "직업")
@IdClass(CusJbPK.class)
public class CusJb implements Serializable {
    @Id //  BigDecimal
    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "직업변경순번", nullable = false)
    private BigDecimal jbChSeqno; //--직업변경순번

    @Id //  String
    @Column(name = "jbcd", length = 10, nullable = false)
    @Schema(description = "직업코드", nullable = false)
    private String jbcd; //--직업코드

    @Column(name = "jbnm", length = 100, nullable = true)
    @Schema(description = "직업명", nullable = true)
    private String jbnm; //--직업명

    @Column(name = "dt_jbnm", length = 100, nullable = true)
    @Schema(description = "세부직업명", nullable = true)
    private String dtJbnm; //--세부직업명

    @Column(name = "ap_strdt", nullable = true)
    @Schema(description = "적용시작일자", nullable = true)
    private Date apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = true)
    @Schema(description = "적용종료일자", nullable = true)
    private Date apNddt; //--적용종료일자

    @Column(name = "ppr_jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "상위직업변경순번", nullable = true)
    private BigDecimal pprJbChSeqno; //--상위직업변경순번

    @Column(name = "ppr_jbcd", length = 10, nullable = true)
    @Schema(description = "상위직업코드", nullable = true)
    private String pprJbcd; //--상위직업코드

    @Column(name = "injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "상해급수코드", nullable = true)
    private String injrRnkcd; //--상해급수코드

    @Column(name = "injr_grdcd", length = 10, nullable = true)
    @Schema(description = "상해등급코드", nullable = true)
    private String injrGrdcd; //--상해등급코드

    @Column(name = "trf_rnkcd", length = 10, nullable = true)
    @Schema(description = "교통급수코드", nullable = true)
    private String trfRnkcd; //--교통급수코드

    @Column(name = "xc_cvr_yn", length = 1, nullable = true)
    @Schema(description = "할증담보여부", nullable = true)
    private String xcCvrYn; //--할증담보여부

    @Column(name = "cr_jbcd", length = 10, nullable = true)
    @Schema(description = "자동차직업코드", nullable = true)
    private String crJbcd; //--자동차직업코드

    @Column(name = "ltrm_xclc_jb_flgcd", length = 10, nullable = true)
    @Schema(description = "장기우량직업구분코드", nullable = true)
    private String ltrmXclcJbFlgcd; //--장기우량직업구분코드

    @Column(name = "jb_xpnm", length = 2000, nullable = true)
    @Schema(description = "직업설명", nullable = true)
    private String jbXpnm; //--직업설명

    @Column(name = "jb_dt_tpnm", length = 2000, nullable = true)
    @Schema(description = "직업세부유형명", nullable = true)
    private String jbDtTpnm; //--직업세부유형명

    @Column(name = "apldo_out_bjyn", length = 1, nullable = true)
    @Schema(description = "청약서출력대상여부", nullable = true)
    private String apldoOutBjyn; //--청약서출력대상여부

    @Column(name = "jb_xpnm_out_cn", length = 4000, nullable = true)
    @Schema(description = "직업설명출력내용", nullable = true)
    private String jbXpnmOutCn; //--직업설명출력내용

    @Column(name = "ud_xcpt_jb_yn", length = 1, nullable = true)
    @Schema(description = "심사제외직업여부", nullable = true)
    private String udXcptJbYn; //--심사제외직업여부

    @Column(name = "injr_rk_grdcd", length = 1, nullable = true)
    @Schema(description = "상해위험등급코드", nullable = true)
    private String injrRkGrdcd; //--상해위험등급코드

    @Column(name = "dsas_rk_grdcd", length = 1, nullable = true)
    @Schema(description = "질병위험등급코드", nullable = true)
    private String dsasRkGrdcd; //--질병위험등급코드

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
    public CusJb(BigDecimal jbChSeqno, String jbcd, String jbnm, String dtJbnm, Date apStrdt, Date apNddt, BigDecimal pprJbChSeqno, String pprJbcd, String injrRnkcd, String injrGrdcd, String trfRnkcd, String xcCvrYn, String crJbcd, String ltrmXclcJbFlgcd, String jbXpnm, String jbDtTpnm, String apldoOutBjyn, String jbXpnmOutCn, String udXcptJbYn, String injrRkGrdcd, String dsasRkGrdcd, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.jbChSeqno = jbChSeqno;
        this.jbcd = jbcd;
        this.jbnm = jbnm;
        this.dtJbnm = dtJbnm;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.pprJbChSeqno = pprJbChSeqno;
        this.pprJbcd = pprJbcd;
        this.injrRnkcd = injrRnkcd;
        this.injrGrdcd = injrGrdcd;
        this.trfRnkcd = trfRnkcd;
        this.xcCvrYn = xcCvrYn;
        this.crJbcd = crJbcd;
        this.ltrmXclcJbFlgcd = ltrmXclcJbFlgcd;
        this.jbXpnm = jbXpnm;
        this.jbDtTpnm = jbDtTpnm;
        this.apldoOutBjyn = apldoOutBjyn;
        this.jbXpnmOutCn = jbXpnmOutCn;
        this.udXcptJbYn = udXcptJbYn;
        this.injrRkGrdcd = injrRkGrdcd;
        this.dsasRkGrdcd = dsasRkGrdcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
