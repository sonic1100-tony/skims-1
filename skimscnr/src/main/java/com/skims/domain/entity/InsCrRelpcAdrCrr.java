/**
 * InsCrRelpcAdrCrr Entity 클래스
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

import com.skims.domain.listener.InsCrRelpcAdrCrrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsCrRelpcAdrCrrListener.class)
@Table(name = "ins_cr_relpc_adr_crr") //--계약관계자주소이력
@Schema(description = "계약관계자주소이력")
public class InsCrRelpcAdrCrr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    private String plyno; //--증권번호

    @Column(name = "relpc_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "관계자순번", nullable = false)
    private BigDecimal relpcSeqno; //--관계자순번

    @Column(name = "adr_usecd", length = 10, nullable = false)
    @Schema(description = "주소용도코드", nullable = false)
    private String adrUsecd; //--주소용도코드

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private LocalDate apNddt; //--적용종료일자

    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private LocalDate apStrdt; //--적용시작일자

    @Column(name = "ndsno", length = 4, nullable = false)
    @Schema(description = "배서번호", nullable = false)
    private String ndsno; //--배서번호

    @Column(name = "vald_nds_yn", length = 1, nullable = false)
    @Schema(description = "유효배서여부", nullable = false)
    private String valdNdsYn; //--유효배서여부

    @Column(name = "nds_ap_str_dthms", nullable = false)
    @Schema(description = "배서승인시작일시", nullable = false)
    private LocalDateTime ndsApStrDthms; //--배서승인시작일시

    @Column(name = "nds_ap_nd_dthms", nullable = false)
    @Schema(description = "배서승인종료일시", nullable = false)
    private LocalDateTime ndsApNdDthms; //--배서승인종료일시

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

    @Column(name = "bk_br_ba_adr", length = 100, nullable = true)
    @Schema(description = "은행지점기본주소", nullable = true)
    private String bkBrBaAdr; //--은행지점기본주소

    @Column(name = "bk_br_et_adr", length = 100, nullable = true)
    @Schema(description = "은행지점기타주소", nullable = true)
    private String bkBrEtAdr; //--은행지점기타주소

    @Column(name = "nw_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "신규주소구분코드", nullable = true)
    private String nwAdrFlgcd; //--신규주소구분코드

    @Column(name = "ref_it", length = 100, nullable = true)
    @Schema(description = "참고항목", nullable = true)
    private String refIt; //--참고항목

    @Column(name = "bk_br_pstno", length = 6, nullable = true)
    @Schema(description = "은행지점우편번호", nullable = true)
    private String bkBrPstno; //--은행지점우편번호

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
    public InsCrRelpcAdrCrr(String plyno, BigDecimal relpcSeqno, String adrUsecd, LocalDate apNddt, LocalDate apStrdt, String ndsno, String valdNdsYn, LocalDateTime ndsApStrDthms, LocalDateTime ndsApNdDthms, String adrFlgcd, String ctmno, BigDecimal adrSeqno, String bfBkBrPstno, String bkBrBaAdr, String bkBrEtAdr, String nwAdrFlgcd, String refIt, String bkBrPstno, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.plyno = plyno;
        this.relpcSeqno = relpcSeqno;
        this.adrUsecd = adrUsecd;
        this.apNddt = apNddt;
        this.apStrdt = apStrdt;
        this.ndsno = ndsno;
        this.valdNdsYn = valdNdsYn;
        this.ndsApStrDthms = ndsApStrDthms;
        this.ndsApNdDthms = ndsApNdDthms;
        this.adrFlgcd = adrFlgcd;
        this.ctmno = ctmno;
        this.adrSeqno = adrSeqno;
        this.bfBkBrPstno = bfBkBrPstno;
        this.bkBrBaAdr = bkBrBaAdr;
        this.bkBrEtAdr = bkBrEtAdr;
        this.nwAdrFlgcd = nwAdrFlgcd;
        this.refIt = refIt;
        this.bkBrPstno = bkBrPstno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
