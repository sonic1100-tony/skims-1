/**
 * CusCtmCntrtCrr Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
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

import com.skims.domain.listener.CusCtmCntrtCrrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusCtmCntrtCrrListener.class)
@Table(name = "cus_ctm_cntrt_crr") //--고객접촉이력
@Schema(description = "고객접촉이력")
public class CusCtmCntrtCrr implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "cntrt_dthms", nullable = false)
    @Schema(description = "접촉일시", nullable = false)
    private LocalDateTime cntrtDthms; //--접촉일시

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    private String ctmno; //--고객번호

    @Column(name = "cntrt_mncd", length = 10, nullable = false)
    @Schema(description = "접촉수단코드", nullable = false)
    private String cntrtMncd; //--접촉수단코드

    @Column(name = "cntps_id", length = 50, nullable = true)
    @Schema(description = "접촉자id", nullable = true)
    private String cntpsId; //--접촉자id

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "whol_bsns_dl_tpnm", length = 50, nullable = true)
    @Schema(description = "전사업무처리유형명", nullable = true)
    private String wholBsnsDlTpnm; //--전사업무처리유형명

    @Column(name = "whol_bsns_dl_tp_dtnm", length = 50, nullable = true)
    @Schema(description = "전사업무처리유형상세명", nullable = true)
    private String wholBsnsDlTpDtnm; //--전사업무처리유형상세명

    @Column(name = "ntc_bjps_flgcd", length = 10, nullable = true)
    @Schema(description = "안내대상자구분코드", nullable = true)
    private String ntcBjpsFlgcd; //--안내대상자구분코드

    @Column(name = "cntrt_dl_flgcd", length = 10, nullable = true)
    @Schema(description = "접촉처리구분코드", nullable = true)
    private String cntrtDlFlgcd; //--접촉처리구분코드

    @Column(name = "isno", length = 13, nullable = true)
    @Schema(description = "발급번호", nullable = true)
    private String isno; //--발급번호

    @Column(name = "rqdt", nullable = true)
    @Schema(description = "신청일자", nullable = true)
    private LocalDate rqdt; //--신청일자

    @Column(name = "ctm_cntrt_rcv_cn", length = 100, nullable = true)
    @Schema(description = "고객접촉수신내용", nullable = true)
    private String ctmCntrtRcvCn; //--고객접촉수신내용

    @Column(name = "doc_id", length = 50, nullable = true)
    @Schema(description = "docid", nullable = true)
    private String docId; //--docid

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
    public CusCtmCntrtCrr(LocalDateTime cntrtDthms, String ctmno, String cntrtMncd, String cntpsId, String plyno, String wholBsnsDlTpnm, String wholBsnsDlTpDtnm, String ntcBjpsFlgcd, String cntrtDlFlgcd, String isno, LocalDate rqdt, String ctmCntrtRcvCn, String docId, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.cntrtDthms = cntrtDthms;
        this.ctmno = ctmno;
        this.cntrtMncd = cntrtMncd;
        this.cntpsId = cntpsId;
        this.plyno = plyno;
        this.wholBsnsDlTpnm = wholBsnsDlTpnm;
        this.wholBsnsDlTpDtnm = wholBsnsDlTpDtnm;
        this.ntcBjpsFlgcd = ntcBjpsFlgcd;
        this.cntrtDlFlgcd = cntrtDlFlgcd;
        this.isno = isno;
        this.rqdt = rqdt;
        this.ctmCntrtRcvCn = ctmCntrtRcvCn;
        this.docId = docId;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
