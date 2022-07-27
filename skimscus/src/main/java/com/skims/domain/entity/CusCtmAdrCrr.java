/**
 * CusCtmAdrCrr Entity 클래스
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

import com.skims.domain.listener.CusCtmAdrCrrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusCtmAdrCrrListener.class)
@Table(name = "cus_ctm_adr_crr") //--고객주소이력
@Schema(description = "고객주소이력")
public class CusCtmAdrCrr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    private String ctmno; //--고객번호

    @Column(name = "adr_seqno", precision = 10, scale = 0, nullable = false)
    @Schema(description = "주소순번", nullable = false)
    private BigDecimal adrSeqno; //--주소순번

    @Column(name = "ap_nd_dthms", nullable = false)
    @Schema(description = "적용종료일시", nullable = false)
    private LocalDateTime apNdDthms; //--적용종료일시

    @Column(name = "ap_str_dthms", nullable = false)
    @Schema(description = "적용시작일시", nullable = false)
    private LocalDateTime apStrDthms; //--적용시작일시

    @Column(name = "adr_flgcd", length = 10, nullable = false)
    @Schema(description = "주소구분코드", nullable = false)
    private String adrFlgcd; //--주소구분코드

    @Column(name = "sd", length = 30, nullable = true)
    @Schema(description = "시도", nullable = true)
    private String sd; //--시도

    @Column(name = "sgng", length = 30, nullable = true)
    @Schema(description = "시군구", nullable = true)
    private String sgng; //--시군구

    @Column(name = "twmd", length = 30, nullable = true)
    @Schema(description = "읍면동", nullable = true)
    private String twmd; //--읍면동

    @Column(name = "ri_or_lrdlp", length = 200, nullable = true)
    @Schema(description = "리대량배달처", nullable = true)
    private String riOrLrdlp; //--리대량배달처

    @Column(name = "mail_id", length = 50, nullable = true)
    @Schema(description = "이메일아이디", nullable = true)
    private String mailId; //--이메일아이디

    @Column(name = "mail_domn", length = 50, nullable = true)
    @Schema(description = "이메일도메인", nullable = true)
    private String mailDomn; //--이메일도메인

    @Column(name = "ntncd", length = 10, nullable = true)
    @Schema(description = "국가코드", nullable = true)
    private String ntncd; //--국가코드

    @Column(name = "ntnnm", length = 100, nullable = true)
    @Schema(description = "국가명", nullable = true)
    private String ntnnm; //--국가명

    @Column(name = "dtadr", length = 100, nullable = true)
    @Schema(description = "상세주소", nullable = true)
    private String dtadr; //--상세주소

    @Column(name = "ovse_ctycd", length = 10, nullable = true)
    @Schema(description = "해외도시코드", nullable = true)
    private String ovseCtycd; //--해외도시코드

    @Column(name = "ovse_ctynm", length = 100, nullable = true)
    @Schema(description = "해외도시명", nullable = true)
    private String ovseCtynm; //--해외도시명

    @Column(name = "ovse_dtadr", length = 100, nullable = true)
    @Schema(description = "해외상세주소", nullable = true)
    private String ovseDtadr; //--해외상세주소

    @Column(name = "pstno", length = 6, nullable = true)
    @Schema(description = "우편번호", nullable = true)
    private String pstno; //--우편번호

    @Column(name = "gu_pstno", length = 6, nullable = true)
    @Schema(description = "구우편번호", nullable = true)
    private String guPstno; //--구우편번호

    @Column(name = "ch_dlno", length = 14, nullable = true)
    @Schema(description = "변경처리번호", nullable = true)
    private String chDlno; //--변경처리번호

    @Column(name = "note", length = 2000, nullable = true)
    @Schema(description = "비고", nullable = true)
    private String note; //--비고

    @Column(name = "gu_fire_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "구화재주소구분코드", nullable = true)
    private String guFireAdrFlgcd; //--구화재주소구분코드

    @Column(name = "ref_it", length = 100, nullable = true)
    @Schema(description = "참고항목", nullable = true)
    private String refIt; //--참고항목

    @Column(name = "road_nm", length = 100, nullable = true)
    @Schema(description = "도로명", nullable = true)
    private String roadNm; //--도로명

    @Column(name = "undg_flgcd", length = 10, nullable = true)
    @Schema(description = "지하구분코드", nullable = true)
    private String undgFlgcd; //--지하구분코드

    @Column(name = "mn_bldno", length = 50, nullable = true)
    @Schema(description = "주건물번호", nullable = true)
    private String mnBldno; //--주건물번호

    @Column(name = "sub_bldno", length = 5, nullable = true)
    @Schema(description = "부건물번호", nullable = true)
    private String subBldno; //--부건물번호

    @Column(name = "nw_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "신규주소구분코드", nullable = true)
    private String nwAdrFlgcd; //--신규주소구분코드

    @Column(name = "rt_rscd", length = 10, nullable = true)
    @Schema(description = "반송사유코드", nullable = true)
    private String rtRscd; //--반송사유코드

    @Column(name = "bf_pstno", length = 6, nullable = true)
    @Schema(description = "전우편번호", nullable = true)
    private String bfPstno; //--전우편번호

    @Column(name = "road_nm_flgcd", length = 12, nullable = true)
    @Schema(description = "도로명구분코드", nullable = true)
    private String roadNmFlgcd; //--도로명구분코드

    @Column(name = "bldnm", length = 100, nullable = true)
    @Schema(description = "건물명", nullable = true)
    private String bldnm; //--건물명

    @Column(name = "bld_admno", length = 30, nullable = true)
    @Schema(description = "건물관리번호", nullable = true)
    private String bldAdmno; //--건물관리번호

    @Column(name = "laco_dong_flgcd", length = 10, nullable = true)
    @Schema(description = "법정동구분코드", nullable = true)
    private String lacoDongFlgcd; //--법정동구분코드

    @Column(name = "laco_dngnm", length = 30, nullable = true)
    @Schema(description = "법정동명", nullable = true)
    private String lacoDngnm; //--법정동명

    @Column(name = "bsns_flgcd", length = 10, nullable = true)
    @Schema(description = "업무구분코드", nullable = true)
    private String bsnsFlgcd; //--업무구분코드

    @Column(name = "er_baadr", length = 100, nullable = true)
    @Schema(description = "오류기본주소", nullable = true)
    private String erBaadr; //--오류기본주소

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
    public CusCtmAdrCrr(String ctmno, BigDecimal adrSeqno, LocalDateTime apNdDthms, LocalDateTime apStrDthms, String adrFlgcd, String sd, String sgng, String twmd, String riOrLrdlp, String mailId, String mailDomn, String ntncd, String ntnnm, String dtadr, String ovseCtycd, String ovseCtynm, String ovseDtadr, String pstno, String guPstno, String chDlno, String note, String guFireAdrFlgcd, String refIt, String roadNm, String undgFlgcd, String mnBldno, String subBldno, String nwAdrFlgcd, String rtRscd, String bfPstno, String roadNmFlgcd, String bldnm, String bldAdmno, String lacoDongFlgcd, String lacoDngnm, String bsnsFlgcd, String erBaadr, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.ctmno = ctmno;
        this.adrSeqno = adrSeqno;
        this.apNdDthms = apNdDthms;
        this.apStrDthms = apStrDthms;
        this.adrFlgcd = adrFlgcd;
        this.sd = sd;
        this.sgng = sgng;
        this.twmd = twmd;
        this.riOrLrdlp = riOrLrdlp;
        this.mailId = mailId;
        this.mailDomn = mailDomn;
        this.ntncd = ntncd;
        this.ntnnm = ntnnm;
        this.dtadr = dtadr;
        this.ovseCtycd = ovseCtycd;
        this.ovseCtynm = ovseCtynm;
        this.ovseDtadr = ovseDtadr;
        this.pstno = pstno;
        this.guPstno = guPstno;
        this.chDlno = chDlno;
        this.note = note;
        this.guFireAdrFlgcd = guFireAdrFlgcd;
        this.refIt = refIt;
        this.roadNm = roadNm;
        this.undgFlgcd = undgFlgcd;
        this.mnBldno = mnBldno;
        this.subBldno = subBldno;
        this.nwAdrFlgcd = nwAdrFlgcd;
        this.rtRscd = rtRscd;
        this.bfPstno = bfPstno;
        this.roadNmFlgcd = roadNmFlgcd;
        this.bldnm = bldnm;
        this.bldAdmno = bldAdmno;
        this.lacoDongFlgcd = lacoDongFlgcd;
        this.lacoDngnm = lacoDngnm;
        this.bsnsFlgcd = bsnsFlgcd;
        this.erBaadr = erBaadr;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
