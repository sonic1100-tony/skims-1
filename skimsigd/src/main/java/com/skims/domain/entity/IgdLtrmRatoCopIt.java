/**
 * IgdLtrmRatoCopIt Entity 클래스
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

import com.skims.domain.listener.IgdLtrmRatoCopItListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(IgdLtrmRatoCopItListener.class)
@Table(name = "igd_ltrm_rato_cop_it") //--장기이율구성항목
@Schema(description = "장기이율구성항목")
@IdClass(IgdLtrmRatoCopItPK.class)
public class IgdLtrmRatoCopIt implements Serializable {
    @Id //  String
    @Column(name = "ltrm_rt_tabl_flgcd", length = 10, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "장기요율테이블구분코드", nullable = false)
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드

    @Id //  String
    @Column(name = "in_out_flgcd", length = 1, nullable = false)
    @Schema(description = "inout구분코드", nullable = false)
    private String inOutFlgcd; //--inout구분코드

    @Id //  BigDecimal
    @Column(name = "it_idc_ordr", precision = 3, scale = 0, nullable = false)
    @Schema(description = "항목표시순서", nullable = false)
    private BigDecimal itIdcOrdr; //--항목표시순서

    @Id //  Date
    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private Date apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private Date apNddt; //--적용종료일자

    @Column(name = "rt_itcd_atrvl", length = 100, nullable = false)
    @Schema(description = "요율항목코드속성값", nullable = false)
    private String rtItcdAtrvl; //--요율항목코드속성값

    @Column(name = "rt_it_cdnm", length = 100, nullable = false)
    @Schema(description = "요율항목코드명", nullable = false)
    private String rtItCdnm; //--요율항목코드명

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Timestamp inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Timestamp mdfDthms; //--수정일시

    @Builder
    public IgdLtrmRatoCopIt(String ltrmRtTablFlgcd, String inOutFlgcd, BigDecimal itIdcOrdr, Date apStrdt, Date apNddt, String rtItcdAtrvl, String rtItCdnm, String mdfUsrId, Timestamp inpDthms, Timestamp mdfDthms) {
        this.ltrmRtTablFlgcd = ltrmRtTablFlgcd;
        this.inOutFlgcd = inOutFlgcd;
        this.itIdcOrdr = itIdcOrdr;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.rtItcdAtrvl = rtItcdAtrvl;
        this.rtItCdnm = rtItCdnm;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
        this.mdfDthms = mdfDthms;
    }
}
