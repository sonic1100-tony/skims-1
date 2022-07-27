/**
 * InsPlRelpcAdr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
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

import com.skims.domain.listener.InsPlRelpcAdrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsPlRelpcAdrListener.class)
@Table(name = "ins_pl_relpc_adr") //--설계관계자주소
@Schema(description = "설계관계자주소")
public class InsPlRelpcAdr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plno", length = 17, nullable = false)
    @Schema(description = "설계번호", nullable = false)
    private String plno; //--설계번호

    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    private BigDecimal relpcSeqno; //--관계자순번

    @Column(name = "adr_usecd", length = 10, nullable = false)
    @Schema(description = "주소용도코드", nullable = false)
    private String adrUsecd; //--주소용도코드

    @Column(name = "adr_flgcd", length = 10, nullable = false)
    @Schema(description = "주소구분코드", nullable = false)
    private String adrFlgcd; //--주소구분코드

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    private String ctmno; //--고객번호

    @Column(name = "adr_seqno", precision = 10, scale = 0, nullable = true)
    @Schema(description = "주소순번", nullable = true)
    private BigDecimal adrSeqno; //--주소순번

    @Column(name = "bf_bk_br_pstno", length = 6, nullable = true)
    @Schema(description = "전은행지점우편번호", nullable = true)
    private String bfBkBrPstno; //--전은행지점우편번호

    @Column(name = "nw_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "신규주소구분코드", nullable = true)
    private String nwAdrFlgcd; //--신규주소구분코드

    @Column(name = "ref_it", length = 100, nullable = true)
    @Schema(description = "참고항목", nullable = true)
    private String refIt; //--참고항목

    @Column(name = "bk_br_pstno", length = 6, nullable = true)
    @Schema(description = "은행지점우편번호", nullable = true)
    private String bkBrPstno; //--은행지점우편번호

    @Column(name = "bk_br_ba_adr", length = 100, nullable = true)
    @Schema(description = "은행지점기본주소", nullable = true)
    private String bkBrBaAdr; //--은행지점기본주소

    @Column(name = "bk_br_et_adr", length = 100, nullable = true)
    @Schema(description = "은행지점기타주소", nullable = true)
    private String bkBrEtAdr; //--은행지점기타주소

    @Column(name = "ltrm_nds_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "장기배서처리구분코드", nullable = true)
    private String ltrmNdsDlFlgcd; //--장기배서처리구분코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public InsPlRelpcAdr(String plno, BigDecimal cgafChSeqno, BigDecimal relpcSeqno, String adrUsecd, String adrFlgcd, String ctmno, BigDecimal adrSeqno, String bfBkBrPstno, String nwAdrFlgcd, String refIt, String bkBrPstno, String bkBrBaAdr, String bkBrEtAdr, String ltrmNdsDlFlgcd, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.relpcSeqno = relpcSeqno;
        this.adrUsecd = adrUsecd;
        this.adrFlgcd = adrFlgcd;
        this.ctmno = ctmno;
        this.adrSeqno = adrSeqno;
        this.bfBkBrPstno = bfBkBrPstno;
        this.nwAdrFlgcd = nwAdrFlgcd;
        this.refIt = refIt;
        this.bkBrPstno = bkBrPstno;
        this.bkBrBaAdr = bkBrBaAdr;
        this.bkBrEtAdr = bkBrEtAdr;
        this.ltrmNdsDlFlgcd = ltrmNdsDlFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
