/**
 * InsTfWrkDlCrst Entity 클래스
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

import com.skims.domain.listener.InsTfWrkDlCrstListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsTfWrkDlCrstListener.class)
@Table(name = "ins_tf_wrk_dl_crst") //--이체작업처리현황
@Schema(description = "이체작업처리현황")
@IdClass(InsTfWrkDlCrstPK.class)
public class InsTfWrkDlCrst implements Serializable {
    @Id //  Date
    @Column(name = "stdt", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "기준일자", nullable = false)
    private Date stdt; //--기준일자

    @Id //  String
    @Column(name = "tf_wrk_flgcd", length = 10, nullable = false)
    @Schema(description = "이체작업구분코드", nullable = false)
    private String tfWrkFlgcd; //--이체작업구분코드

    @Id //  BigDecimal
    @Column(name = "seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "순번", nullable = false)
    private BigDecimal seqno; //--순번

    @Column(name = "tf_1_yymm", length = 6, nullable = true)
    @Schema(description = "이체1년월", nullable = true)
    private String tf1Yymm; //--이체1년월

    @Column(name = "tf_1_daycd", length = 10, nullable = true)
    @Schema(description = "이체1일코드", nullable = true)
    private String tf1Daycd; //--이체1일코드

    @Column(name = "tf_2_yymm", length = 6, nullable = true)
    @Schema(description = "이체2년월", nullable = true)
    private String tf2Yymm; //--이체2년월

    @Column(name = "tf_2_daycd", length = 10, nullable = true)
    @Schema(description = "이체2일코드", nullable = true)
    private String tf2Daycd; //--이체2일코드

    @Column(name = "tf_dl_metcd", length = 10, nullable = true)
    @Schema(description = "이체처리방식코드", nullable = true)
    private String tfDlMetcd; //--이체처리방식코드

    @Column(name = "auto_tf_cg_kndcd", length = 10, nullable = true)
    @Schema(description = "자동이체요금종류코드", nullable = true)
    private String autoTfCgKndcd; //--자동이체요금종류코드

    @Column(name = "dh_cmpcd", length = 10, nullable = true)
    @Schema(description = "취급회사코드", nullable = true)
    private String dhCmpcd; //--취급회사코드

    @Column(name = "tf_wrk_rkcd", length = 10, nullable = true)
    @Schema(description = "이체작업단계코드", nullable = true)
    private String tfWrkRkcd; //--이체작업단계코드

    @Column(name = "wrk_exec_rst_tpcd", length = 10, nullable = true)
    @Schema(description = "작업수행결과유형코드", nullable = true)
    private String wrkExecRstTpcd; //--작업수행결과유형코드

    @Column(name = "wrk_exec_rst_ct", precision = 15, scale = 0, nullable = true)
    @Schema(description = "작업수행결과건수", nullable = true)
    private BigDecimal wrkExecRstCt; //--작업수행결과건수

    @Column(name = "wrk_exec_rst_amt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "작업수행결과금액", nullable = true)
    private BigDecimal wrkExecRstAmt; //--작업수행결과금액

    @Column(name = "cnf_mtdcd", length = 10, nullable = false)
    @Schema(description = "확인방법코드", nullable = false)
    private String cnfMtdcd; //--확인방법코드

    @Column(name = "cnf_yn", length = 1, nullable = false)
    @Schema(description = "확인여부", nullable = false)
    private String cnfYn; //--확인여부

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
    public InsTfWrkDlCrst(Date stdt, String tfWrkFlgcd, BigDecimal seqno, String tf1Yymm, String tf1Daycd, String tf2Yymm, String tf2Daycd, String tfDlMetcd, String autoTfCgKndcd, String dhCmpcd, String tfWrkRkcd, String wrkExecRstTpcd, BigDecimal wrkExecRstCt, BigDecimal wrkExecRstAmt, String cnfMtdcd, String cnfYn, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.stdt = stdt;
        this.tfWrkFlgcd = tfWrkFlgcd;
        this.seqno = seqno;
        this.tf1Yymm = tf1Yymm;
        this.tf1Daycd = tf1Daycd;
        this.tf2Yymm = tf2Yymm;
        this.tf2Daycd = tf2Daycd;
        this.tfDlMetcd = tfDlMetcd;
        this.autoTfCgKndcd = autoTfCgKndcd;
        this.dhCmpcd = dhCmpcd;
        this.tfWrkRkcd = tfWrkRkcd;
        this.wrkExecRstTpcd = wrkExecRstTpcd;
        this.wrkExecRstCt = wrkExecRstCt;
        this.wrkExecRstAmt = wrkExecRstAmt;
        this.cnfMtdcd = cnfMtdcd;
        this.cnfYn = cnfYn;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
