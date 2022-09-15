/**
 * InsRpAdm Entity 클래스
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

import com.skims.domain.listener.InsRpAdmListener;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@SuperBuilder(toBuilder = true)
@Entity
@EntityListeners(InsRpAdmListener.class)
@Table(name = "ins_rp_adm") // --영수관리
@Schema(description = "영수관리")
public class InsRpAdm implements Serializable {
    @Id // Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    // @Schema(description = "", nullable = true , defaultValue = "" , example = ""
    // , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; // --aid

    @Column(name = "rp_admno", length = 20, nullable = false)
    @Schema(description = "영수관리번호", nullable = false)
    private String rpAdmno; // --영수관리번호

    @Column(name = "mnt_flgcd", length = 10, nullable = true)
    @Schema(description = "금종구분코드", nullable = true)
    private String mntFlgcd; // --금종구분코드

    @Column(name = "rp_dthms", nullable = true)
    @Schema(description = "영수일시", nullable = true)
    private LocalDateTime rpDthms; // --영수일시

    @Column(name = "rtx_csfcd", length = 10, nullable = true)
    @Schema(description = "영수증분류코드", nullable = true)
    private String rtxCsfcd; // --영수증분류코드

    @Column(name = "rpamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "영수금액", nullable = false)
    private BigDecimal rpamt; // --영수금액

    @Column(name = "rv_xcno", length = 7, nullable = true)
    @Schema(description = "수납정산번호", nullable = true)
    private String rvXcno; // --수납정산번호

    @Column(name = "rvdt", nullable = true)
    @Schema(description = "수납일자", nullable = true)
    private LocalDate rvdt; // --수납일자

    @Column(name = "rv_yn", length = 1, nullable = true)
    @Schema(description = "수납여부", nullable = true)
    private String rvYn; // --수납여부

    @Column(name = "act_sbrcd", length = 7, nullable = true)
    @Schema(description = "회계부점코드", nullable = true)
    private String actSbrcd; // --회계부점코드

    @Column(name = "crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "카드회사코드", nullable = true)
    private String crdCmpcd; // --카드회사코드

    @Column(name = "rp_pth_flgcd", length = 10, nullable = true)
    @Schema(description = "영수경로구분코드", nullable = true)
    private String rpPthFlgcd; // --영수경로구분코드

    @Column(name = "plno", length = 17, nullable = true)
    @Schema(description = "설계번호", nullable = true)
    private String plno; // --설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "발행후변경순번", nullable = true)
    private BigDecimal cgafChSeqno; // --발행후변경순번

    @Column(name = "clsaf_rcpno", length = 12, nullable = true)
    @Schema(description = "마감후접수번호", nullable = true)
    private String clsafRcpno; // --마감후접수번호

    @Column(name = "clsaf_rcp_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "마감후접수순번", nullable = true)
    private BigDecimal clsafRcpSeqno; // --마감후접수순번

    @Column(name = "ctm_slr_auto_tfsno", length = 30, nullable = true)
    @Schema(description = "고객급여자동이체번호", nullable = true)
    private String ctmSlrAutoTfsno; // --고객급여자동이체번호

    @Column(name = "ltrm_cr_totno", length = 10, nullable = true)
    @Schema(description = "장기계약집계번호", nullable = true)
    private String ltrmCrTotno; // --장기계약집계번호

    @Column(name = "bll_ldgno", length = 20, nullable = true)
    @Schema(description = "어음원장번호", nullable = true)
    private String bllLdgno; // --어음원장번호

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; // --입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; // --입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; // --수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; // --수정일시

    @Builder
    public InsRpAdm(String rpAdmno, String mntFlgcd, LocalDateTime rpDthms, String rtxCsfcd, BigDecimal rpamt,
            String rvXcno, LocalDate rvdt, String rvYn, String actSbrcd, String crdCmpcd, String rpPthFlgcd,
            String plno, BigDecimal cgafChSeqno, String clsafRcpno, BigDecimal clsafRcpSeqno, String ctmSlrAutoTfsno,
            String ltrmCrTotno, String bllLdgno, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId,
            LocalDateTime mdfDthms) {
        this.rpAdmno = rpAdmno;
        this.mntFlgcd = mntFlgcd;
        this.rpDthms = rpDthms;
        this.rtxCsfcd = rtxCsfcd;
        this.rpamt = rpamt;
        this.rvXcno = rvXcno;
        this.rvdt = rvdt;
        this.rvYn = rvYn;
        this.actSbrcd = actSbrcd;
        this.crdCmpcd = crdCmpcd;
        this.rpPthFlgcd = rpPthFlgcd;
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.clsafRcpno = clsafRcpno;
        this.clsafRcpSeqno = clsafRcpSeqno;
        this.ctmSlrAutoTfsno = ctmSlrAutoTfsno;
        this.ltrmCrTotno = ltrmCrTotno;
        this.bllLdgno = bllLdgno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
