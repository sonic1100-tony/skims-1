/**
 * InsTfErcd Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
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

import com.skims.domain.listener.InsTfErcdListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsTfErcdListener.class)
@Table(name = "ins_tf_ercd") //--이체오류코드
@Schema(description = "이체오류코드")
@IdClass(InsTfErcdPK.class)
public class InsTfErcd implements Serializable {
    @Id //  String
    @Column(name = "tf_dl_metcd", length = 10, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "이체처리방식코드", nullable = false)
    private String tfDlMetcd; //--이체처리방식코드

    @Id //  String
    @Column(name = "wdcmp_or_vnccd", length = 10, nullable = false)
    @Schema(description = "출금사van사코드", nullable = false)
    private String wdcmpOrVnccd; //--출금사van사코드

    @Id //  String
    @Column(name = "tf_rq_dm_flgcd", length = 10, nullable = false)
    @Schema(description = "이체신청청구구분코드", nullable = false)
    private String tfRqDmFlgcd; //--이체신청청구구분코드

    @Id //  String
    @Column(name = "tf_rq_ercd", length = 10, nullable = false)
    @Schema(description = "이체신청오류코드", nullable = false)
    private String tfRqErcd; //--이체신청오류코드

    @Column(name = "er_cn", length = 500, nullable = true)
    @Schema(description = "오류내용", nullable = true)
    private String erCn; //--오류내용

    @Column(name = "act_er_dlbj_yn", length = 1, nullable = true)
    @Schema(description = "계좌오류처리대상여부", nullable = true)
    private String actErDlbjYn; //--계좌오류처리대상여부

    @Column(name = "er_dt_cn", length = 500, nullable = true)
    @Schema(description = "오류상세내용", nullable = true)
    private String erDtCn; //--오류상세내용

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
    public InsTfErcd(String tfDlMetcd, String wdcmpOrVnccd, String tfRqDmFlgcd, String tfRqErcd, String erCn, String actErDlbjYn, String erDtCn, String inpUsrId, Timestamp inpDthms, String mdfUsrId, Timestamp mdfDthms) {
        this.tfDlMetcd = tfDlMetcd;
        this.wdcmpOrVnccd = wdcmpOrVnccd;
        this.tfRqDmFlgcd = tfRqDmFlgcd;
        this.tfRqErcd = tfRqErcd;
        this.erCn = erCn;
        this.actErDlbjYn = actErDlbjYn;
        this.erDtCn = erDtCn;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
