/**
 * InsUdwr Entity 클래스
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
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.InsUdwrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsUdwrListener.class)
@Table(name = "ins_udwr") //--심사자
@Schema(description = "심사자")
@IdClass(InsUdwrPK.class)
public class InsUdwr implements Serializable {
    @Id //  String
    @Column(name = "ud_stfno", length = 50, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "심사직원번호", nullable = false)
    private String udStfno; //--심사직원번호

    @Id //  String
    @Column(name = "ud_pl_flgcd", length = 10, nullable = false)
    @Schema(description = "심사설계구분코드", nullable = false)
    private String udPlFlgcd; //--심사설계구분코드

    @Id //  String
    @Column(name = "ud_prio_rancd", length = 10, nullable = false)
    @Schema(description = "심사우선순위코드", nullable = false)
    private String udPrioRancd; //--심사우선순위코드

    @Id //  String
    @Column(name = "udlmi_tp_flgcd", length = 10, nullable = false)
    @Schema(description = "인수제한유형구분코드", nullable = false)
    private String udlmiTpFlgcd; //--인수제한유형구분코드

    @Id //  LocalDate
    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private LocalDate apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private LocalDate apNddt; //--적용종료일자

    @Column(name = "as_autcd", length = 10, nullable = false)
    @Schema(description = "배정권한코드", nullable = false)
    private String asAutcd; //--배정권한코드

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public InsUdwr(String udStfno, String udPlFlgcd, String udPrioRancd, String udlmiTpFlgcd, LocalDate apStrdt, LocalDate apNddt, String asAutcd, String mdfUsrId, LocalDateTime inpDthms, LocalDateTime mdfDthms) {
        this.udStfno = udStfno;
        this.udPlFlgcd = udPlFlgcd;
        this.udPrioRancd = udPrioRancd;
        this.udlmiTpFlgcd = udlmiTpFlgcd;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.asAutcd = asAutcd;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
        this.mdfDthms = mdfDthms;
    }
}
