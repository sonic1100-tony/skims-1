/**
 * CusPstpoRcpl Entity 클래스
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

import com.skims.domain.listener.CusPstpoRcplListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusPstpoRcplListener.class)
@Table(name = "cus_pstpo_rcpl") //--우편물수령처
@Schema(description = "우편물수령처")
public class CusPstpoRcpl implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    private String ctmno; //--고객번호

    @Column(name = "ap_nd_dthms", nullable = false)
    @Schema(description = "적용종료일시", nullable = false)
    private Date apNdDthms; //--적용종료일시

    @Column(name = "ap_str_dthms", nullable = false)
    @Schema(description = "적용시작일시", nullable = false)
    private Date apStrDthms; //--적용시작일시

    @Column(name = "pstpo_rcpl_flgcd", length = 10, nullable = true)
    @Schema(description = "우편물수령지구분코드", nullable = true)
    private String pstpoRcplFlgcd; //--우편물수령지구분코드

    @Column(name = "ch_dlno", length = 14, nullable = true)
    @Schema(description = "변경처리번호", nullable = true)
    private String chDlno; //--변경처리번호

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
    public CusPstpoRcpl(String ctmno, Date apNdDthms, Date apStrDthms, String pstpoRcplFlgcd, String chDlno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.ctmno = ctmno;
        this.apNdDthms = apNdDthms;
        this.apStrDthms = apStrDthms;
        this.pstpoRcplFlgcd = pstpoRcplFlgcd;
        this.chDlno = chDlno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
