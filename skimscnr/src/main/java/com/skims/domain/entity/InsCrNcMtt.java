/**
 * InsCrNcMtt Entity 클래스
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

import com.skims.domain.listener.InsCrNcMttListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCrNcMttListener.class)
@Table(name = "ins_cr_nc_mtt") //--계약알릴사항
@Schema(description = "계약알릴사항")
@IdClass(InsCrNcMttPK.class)
public class InsCrNcMtt implements Serializable {
    @Id //  String
    @Column(name = "plyno", length = 16, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Id //  BigDecimal
    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    private BigDecimal relpcSeqno; //--관계자순번

    @Id //  String
    @Column(name = "nc_mtt_itno", length = 10, nullable = false)
    @Schema(description = "알릴사항항목번호", nullable = false)
    private String ncMttItno; //--알릴사항항목번호

    @Id //  Date
    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private Date ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private Date ndsApNdDthms; //--배서승인종료일시

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "qust_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "질문순번", nullable = false)
    private BigDecimal qustSeqno; //--질문순번

    @Column(name = "qust_sbd_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "질문하위순번", nullable = false)
    private BigDecimal qustSbdSeqno; //--질문하위순번

    @Column(name = "rpl_cn", length = 1000, nullable = true)
    @Schema(description = "답변내용", nullable = true)
    private String rplCn; //--답변내용

    @Column(name = "et_dt_rpl", length = 500, nullable = true)
    @Schema(description = "기타세부답변", nullable = true)
    private String etDtRpl; //--기타세부답변

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Date mdfDthms; //--수정일시

    @Builder
    public InsCrNcMtt(String plyno, BigDecimal relpcSeqno, String ncMttItno, Date ndsApStrDthms, Date ndsApNdDthms, String ndsno, BigDecimal qustSeqno, BigDecimal qustSbdSeqno, String rplCn, String etDtRpl, String mdfUsrId, Date inpDthms, Date mdfDthms) {
        this.plyno = plyno;
        this.relpcSeqno = relpcSeqno;
        this.ncMttItno = ncMttItno;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.ndsno = ndsno;
        this.qustSeqno = qustSeqno;
        this.qustSbdSeqno = qustSbdSeqno;
        this.rplCn = rplCn;
        this.etDtRpl = etDtRpl;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
        this.mdfDthms = mdfDthms;
    }
}
