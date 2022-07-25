/**
 * CusPstnoRodnmSrhAdr Entity 클래스
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
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.CusPstnoRodnmSrhAdrListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusPstnoRodnmSrhAdrListener.class)
@Table(name = "cus_pstno_rodnm_srh_adr") //--우편번호도로명검색주소
@Schema(description = "우편번호도로명검색주소")
@IdClass(CusPstnoRodnmSrhAdrPK.class)
public class CusPstnoRodnmSrhAdr implements Serializable {
    @Id //  String
    @Column(name = "road_nm_flgcd", length = 12, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "도로명구분코드", nullable = false)
    private String roadNmFlgcd; //--도로명구분코드

    @Id //  String
    @Column(name = "twmd_sno", length = 3, nullable = false)
    @Schema(description = "읍면동일련번호", nullable = false)
    private String twmdSno; //--읍면동일련번호

    @Column(name = "sd", length = 30, nullable = true)
    @Schema(description = "시도", nullable = true)
    private String sd; //--시도

    @Column(name = "sgng", length = 30, nullable = true)
    @Schema(description = "시군구", nullable = true)
    private String sgng; //--시군구

    @Column(name = "twm", length = 30, nullable = true)
    @Schema(description = "읍면", nullable = true)
    private String twm; //--읍면

    @Column(name = "twmd", length = 30, nullable = true)
    @Schema(description = "읍면동", nullable = true)
    private String twmd; //--읍면동

    @Column(name = "road_nm", length = 100, nullable = true)
    @Schema(description = "도로명", nullable = true)
    private String roadNm; //--도로명

    @Column(name = "bldno", length = 20, nullable = true)
    @Schema(description = "건물번호", nullable = true)
    private String bldno; //--건물번호

    @Column(name = "bld_ct", length = 10, nullable = true)
    @Schema(description = "건물건수", nullable = true)
    private String bldCt; //--건물건수

    @Column(name = "ba_adr", length = 100, nullable = true)
    @Schema(description = "기본주소", nullable = true)
    private String baAdr; //--기본주소

    @Column(name = "eng_road_nm_adr", length = 200, nullable = true)
    @Schema(description = "영문도로명주소", nullable = true)
    private String engRoadNmAdr; //--영문도로명주소

    @Column(name = "eng_road_nm", length = 100, nullable = true)
    @Schema(description = "영문도로명", nullable = true)
    private String engRoadNm; //--영문도로명

    @Column(name = "pstno", length = 6, nullable = true)
    @Schema(description = "우편번호", nullable = true)
    private String pstno; //--우편번호

    @Column(name = "stdt", nullable = true)
    @Schema(description = "기준일자", nullable = true)
    private Date stdt; //--기준일자

    @Column(name = "bf_pstno", length = 6, nullable = true)
    @Schema(description = "전우편번호", nullable = true)
    private String bfPstno; //--전우편번호

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
    public CusPstnoRodnmSrhAdr(String roadNmFlgcd, String twmdSno, String sd, String sgng, String twm, String twmd, String roadNm, String bldno, String bldCt, String baAdr, String engRoadNmAdr, String engRoadNm, String pstno, Date stdt, String bfPstno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.roadNmFlgcd = roadNmFlgcd;
        this.twmdSno = twmdSno;
        this.sd = sd;
        this.sgng = sgng;
        this.twm = twm;
        this.twmd = twmd;
        this.roadNm = roadNm;
        this.bldno = bldno;
        this.bldCt = bldCt;
        this.baAdr = baAdr;
        this.engRoadNmAdr = engRoadNmAdr;
        this.engRoadNm = engRoadNm;
        this.pstno = pstno;
        this.stdt = stdt;
        this.bfPstno = bfPstno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
