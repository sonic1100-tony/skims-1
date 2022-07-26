/**
 * InsAutoTfSchd Entity 클래스
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

import com.skims.domain.listener.InsAutoTfSchdListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsAutoTfSchdListener.class)
@Table(name = "ins_auto_tf_schd") //--자동이체일정
@Schema(description = "자동이체일정")
public class InsAutoTfSchd implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "tf_yymm", length = 6, nullable = false)
    @Schema(description = "이체년월", nullable = false)
    private String tfYymm; //--이체년월

    @Column(name = "tf_daycd", length = 10, nullable = false)
    @Schema(description = "이체일코드", nullable = false)
    private String tfDaycd; //--이체일코드

    @Column(name = "tf_tpcd", length = 10, nullable = false)
    @Schema(description = "이체유형코드", nullable = false)
    private String tfTpcd; //--이체유형코드

    @Column(name = "dm_wrkdt", nullable = false)
    @Schema(description = "청구작업일자", nullable = false)
    private Date dmWrkdt; //--청구작업일자

    @Column(name = "tfdt", nullable = false)
    @Schema(description = "이체일자", nullable = false)
    private Date tfdt; //--이체일자

    @Column(name = "dp_wrkdt", nullable = false)
    @Schema(description = "입금작업일자", nullable = false)
    private Date dpWrkdt; //--입금작업일자

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
    public InsAutoTfSchd(String tfYymm, String tfDaycd, String tfTpcd, Date dmWrkdt, Date tfdt, Date dpWrkdt, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.tfYymm = tfYymm;
        this.tfDaycd = tfDaycd;
        this.tfTpcd = tfTpcd;
        this.dmWrkdt = dmWrkdt;
        this.tfdt = tfdt;
        this.dpWrkdt = dpWrkdt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
