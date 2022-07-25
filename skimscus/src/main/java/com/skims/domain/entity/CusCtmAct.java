/**
 * CusCtmAct Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
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

import com.skims.domain.listener.CusCtmActListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusCtmActListener.class)
@Table(name = "cus_ctm_act") //--고객계좌
@Schema(description = "고객계좌")
public class CusCtmAct implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    private String ctmno; //--고객번호

    @Column(name = "bkcd", length = 10, nullable = false)
    @Schema(description = "은행코드", nullable = false)
    private String bkcd; //--은행코드

    @Column(name = "actno", length = 48, nullable = false)
    @Schema(description = "계좌번호", nullable = false)
    private String actno; //--계좌번호

    @Column(name = "dpsnm", length = 100, nullable = true)
    @Schema(description = "예금주명", nullable = true)
    private String dpsnm; //--예금주명

    @Column(name = "bk_brcd", length = 10, nullable = true)
    @Schema(description = "은행지점코드", nullable = true)
    private String bkBrcd; //--은행지점코드

    @Column(name = "bk_brnm", length = 100, nullable = true)
    @Schema(description = "은행지점명", nullable = true)
    private String bkBrnm; //--은행지점명

    @Column(name = "us_yn", length = 1, nullable = true)
    @Schema(description = "사용여부", nullable = true)
    private String usYn; //--사용여부

    @Column(name = "rgtdt", nullable = true)
    @Schema(description = "등록일자", nullable = true)
    private Date rgtdt; //--등록일자

    @Column(name = "cnf_yn", length = 1, nullable = true)
    @Schema(description = "확인여부", nullable = true)
    private String cnfYn; //--확인여부

    @Column(name = "mntr_act_yn", length = 1, nullable = true)
    @Schema(description = "주거래계좌여부", nullable = true)
    private String mntrActYn; //--주거래계좌여부

    @Column(name = "fnl_usdt", nullable = true)
    @Schema(description = "최종사용일자", nullable = true)
    private Date fnlUsdt; //--최종사용일자

    @Column(name = "ch_dlno", length = 14, nullable = true)
    @Schema(description = "변경처리번호", nullable = true)
    private String chDlno; //--변경처리번호

    @Column(name = "bknm", length = 1000, nullable = true)
    @Schema(description = "은행명", nullable = true)
    private String bknm; //--은행명

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
    public CusCtmAct(String ctmno, String bkcd, String actno, String dpsnm, String bkBrcd, String bkBrnm, String usYn, Date rgtdt, String cnfYn, String mntrActYn, Date fnlUsdt, String chDlno, String bknm, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.ctmno = ctmno;
        this.bkcd = bkcd;
        this.actno = actno;
        this.dpsnm = dpsnm;
        this.bkBrcd = bkBrcd;
        this.bkBrnm = bkBrnm;
        this.usYn = usYn;
        this.rgtdt = rgtdt;
        this.cnfYn = cnfYn;
        this.mntrActYn = mntrActYn;
        this.fnlUsdt = fnlUsdt;
        this.chDlno = chDlno;
        this.bknm = bknm;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
