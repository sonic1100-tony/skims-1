/**
 * InsPlNcMtt Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
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

import com.skims.domain.listener.InsPlNcMttListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPlNcMttListener.class)
@Table(name = "ins_pl_nc_mtt") //--설계알릴사항
@Schema(description = "설계알릴사항")
@IdClass(InsPlNcMttPK.class)
public class InsPlNcMtt implements Serializable {
    @Id //  String
    @Column(name = "plno", length = 17, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "설계번호", nullable = false)
    private String plno; //--설계번호

    @Id //  BigDecimal
    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Id //  BigDecimal
    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    private BigDecimal relpcSeqno; //--관계자순번

    @Id //  String
    @Column(name = "nc_mtt_itno", length = 10, nullable = false)
    @Schema(description = "알릴사항항목번호", nullable = false)
    private String ncMttItno; //--알릴사항항목번호

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
    private Timestamp inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private Timestamp mdfDthms; //--수정일시

    @Builder
    public InsPlNcMtt(String plno, BigDecimal cgafChSeqno, BigDecimal relpcSeqno, String ncMttItno, BigDecimal qustSeqno, BigDecimal qustSbdSeqno, String rplCn, String etDtRpl, String mdfUsrId, Timestamp inpDthms, Timestamp mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.relpcSeqno = relpcSeqno;
        this.ncMttItno = ncMttItno;
        this.qustSeqno = qustSeqno;
        this.qustSbdSeqno = qustSbdSeqno;
        this.rplCn = rplCn;
        this.etDtRpl = etDtRpl;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
        this.mdfDthms = mdfDthms;
    }
}
