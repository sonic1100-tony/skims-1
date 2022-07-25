/**
 * InsPyDc Entity 클래스
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

import com.skims.domain.listener.InsPyDcListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPyDcListener.class)
@Table(name = "ins_py_dc") //--지급공제
@Schema(description = "지급공제")
public class InsPyDc implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "py_dc_no", length = 10, nullable = false)
    @Schema(description = "지급공제번호", nullable = false)
    private String pyDcNo; //--지급공제번호

    @Column(name = "py_dc_no_sorc_cd", length = 2, nullable = false)
    @Schema(description = "지급공제번호출처코드", nullable = false)
    private String pyDcNoSorcCd; //--지급공제번호출처코드

    @Column(name = "dc_itcd", length = 10, nullable = false)
    @Schema(description = "공제항목코드", nullable = false)
    private String dcItcd; //--공제항목코드

    @Column(name = "dc_it_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "공제항목순번", nullable = false)
    private BigDecimal dcItSeqno; //--공제항목순번

    @Column(name = "uiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "공제금액", nullable = false)
    private BigDecimal uiamt; //--공제금액

    @Column(name = "nt_cc_strdt", nullable = true)
    @Schema(description = "이자산출시작일자", nullable = true)
    private Date ntCcStrdt; //--이자산출시작일자

    @Column(name = "nt_cc_nddt", nullable = true)
    @Schema(description = "이자산출종료일자", nullable = true)
    private Date ntCcNddt; //--이자산출종료일자

    @Column(name = "py_dc_cr_flgcd", length = 10, nullable = false)
    @Schema(description = "지급공제발생구분코드", nullable = false)
    private String pyDcCrFlgcd; //--지급공제발생구분코드

    @Column(name = "fina_rn_dl_yn", length = 1, nullable = true)
    @Schema(description = "재무원수처리여부", nullable = true)
    private String finaRnDlYn; //--재무원수처리여부

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    private String ndsno; //--배서번호

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
    public InsPyDc(String pyDcNo, String pyDcNoSorcCd, String dcItcd, BigDecimal dcItSeqno, BigDecimal uiamt, Date ntCcStrdt, Date ntCcNddt, String pyDcCrFlgcd, String finaRnDlYn, String plyno, String ndsno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.pyDcNo = pyDcNo;
        this.pyDcNoSorcCd = pyDcNoSorcCd;
        this.dcItcd = dcItcd;
        this.dcItSeqno = dcItSeqno;
        this.uiamt = uiamt;
        this.ntCcStrdt = ntCcStrdt;
        this.ntCcNddt = ntCcNddt;
        this.pyDcCrFlgcd = pyDcCrFlgcd;
        this.finaRnDlYn = finaRnDlYn;
        this.plyno = plyno;
        this.ndsno = ndsno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
