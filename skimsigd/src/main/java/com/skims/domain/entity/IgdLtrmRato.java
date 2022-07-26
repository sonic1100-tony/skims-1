/**
 * IgdLtrmRato Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.sql.Date;
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

import com.skims.domain.listener.IgdLtrmRatoListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(IgdLtrmRatoListener.class)
@Table(name = "igd_ltrm_rato") //--장기이율
@Schema(description = "장기이율")
@IdClass(IgdLtrmRatoPK.class)
public class IgdLtrmRato implements Serializable {
    @Id //  String
    @Column(name = "ltrm_rt_tabl_flgcd", length = 10, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "장기요율테이블구분코드", nullable = false)
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드

    @Id //  String
    @Column(name = "sno", length = 7, nullable = false)
    @Schema(description = "일련번호", nullable = false)
    private String sno; //--일련번호

    @Id //  Date
    @Column(name = "ap_strdt", nullable = false)
    @Schema(description = "적용시작일자", nullable = false)
    private Date apStrdt; //--적용시작일자

    @Column(name = "ap_nddt", nullable = false)
    @Schema(description = "적용종료일자", nullable = false)
    private Date apNddt; //--적용종료일자

    @Column(name = "cop_chrvl1", length = 500, nullable = true)
    @Schema(description = "구성문자값1", nullable = true)
    private String copChrvl1; //--구성문자값1

    @Column(name = "cop_chrvl2", length = 500, nullable = true)
    @Schema(description = "구성문자값2", nullable = true)
    private String copChrvl2; //--구성문자값2

    @Column(name = "cop_chrvl3", length = 500, nullable = true)
    @Schema(description = "구성문자값3", nullable = true)
    private String copChrvl3; //--구성문자값3

    @Column(name = "cop_chrvl4", length = 500, nullable = true)
    @Schema(description = "구성문자값4", nullable = true)
    private String copChrvl4; //--구성문자값4

    @Column(name = "cop_chrvl5", length = 500, nullable = true)
    @Schema(description = "구성문자값5", nullable = true)
    private String copChrvl5; //--구성문자값5

    @Column(name = "cop_chrvl6", length = 500, nullable = true)
    @Schema(description = "구성문자값6", nullable = true)
    private String copChrvl6; //--구성문자값6

    @Column(name = "cop_chrvl7", length = 500, nullable = true)
    @Schema(description = "구성문자값7", nullable = true)
    private String copChrvl7; //--구성문자값7

    @Column(name = "cop_chrvl8", length = 500, nullable = true)
    @Schema(description = "구성문자값8", nullable = true)
    private String copChrvl8; //--구성문자값8

    @Column(name = "cop_chrvl9", length = 500, nullable = true)
    @Schema(description = "구성문자값9", nullable = true)
    private String copChrvl9; //--구성문자값9

    @Column(name = "cop_chrvl10", length = 500, nullable = true)
    @Schema(description = "구성문자값10", nullable = true)
    private String copChrvl10; //--구성문자값10

    @Column(name = "cop_chrvl11", length = 500, nullable = true)
    @Schema(description = "구성문자값11", nullable = true)
    private String copChrvl11; //--구성문자값11

    @Column(name = "cop_chrvl12", length = 500, nullable = true)
    @Schema(description = "구성문자값12", nullable = true)
    private String copChrvl12; //--구성문자값12

    @Column(name = "cop_chrvl13", length = 500, nullable = true)
    @Schema(description = "구성문자값13", nullable = true)
    private String copChrvl13; //--구성문자값13

    @Column(name = "cop_chrvl14", length = 500, nullable = true)
    @Schema(description = "구성문자값14", nullable = true)
    private String copChrvl14; //--구성문자값14

    @Column(name = "cop_chrvl15", length = 500, nullable = true)
    @Schema(description = "구성문자값15", nullable = true)
    private String copChrvl15; //--구성문자값15

    @Column(name = "cop_chrvl16", length = 500, nullable = true)
    @Schema(description = "구성문자값16", nullable = true)
    private String copChrvl16; //--구성문자값16

    @Column(name = "cop_chrvl17", length = 500, nullable = true)
    @Schema(description = "구성문자값17", nullable = true)
    private String copChrvl17; //--구성문자값17

    @Column(name = "cop_chrvl18", length = 500, nullable = true)
    @Schema(description = "구성문자값18", nullable = true)
    private String copChrvl18; //--구성문자값18

    @Column(name = "cop_chrvl19", length = 500, nullable = true)
    @Schema(description = "구성문자값19", nullable = true)
    private String copChrvl19; //--구성문자값19

    @Column(name = "cop_chrvl20", length = 500, nullable = true)
    @Schema(description = "구성문자값20", nullable = true)
    private String copChrvl20; //--구성문자값20

    @Column(name = "cop_chrvl21", length = 500, nullable = true)
    @Schema(description = "구성문자값21", nullable = true)
    private String copChrvl21; //--구성문자값21

    @Column(name = "out_dat_vl1", length = 50, nullable = true)
    @Schema(description = "출력데이터값1", nullable = true)
    private String outDatVl1; //--출력데이터값1

    @Column(name = "out_dat_vl2", length = 50, nullable = true)
    @Schema(description = "출력데이터값2", nullable = true)
    private String outDatVl2; //--출력데이터값2

    @Column(name = "out_dat_vl3", length = 50, nullable = true)
    @Schema(description = "출력데이터값3", nullable = true)
    private String outDatVl3; //--출력데이터값3

    @Column(name = "out_dat_vl4", length = 50, nullable = true)
    @Schema(description = "출력데이터값4", nullable = true)
    private String outDatVl4; //--출력데이터값4

    @Column(name = "out_dat_vl5", length = 50, nullable = true)
    @Schema(description = "출력데이터값5", nullable = true)
    private String outDatVl5; //--출력데이터값5

    @Column(name = "out_dat_vl6", length = 50, nullable = true)
    @Schema(description = "출력데이터값6", nullable = true)
    private String outDatVl6; //--출력데이터값6

    @Column(name = "out_dat_vl7", length = 50, nullable = true)
    @Schema(description = "출력데이터값7", nullable = true)
    private String outDatVl7; //--출력데이터값7

    @Column(name = "out_dat_vl8", length = 50, nullable = true)
    @Schema(description = "출력데이터값8", nullable = true)
    private String outDatVl8; //--출력데이터값8

    @Column(name = "out_dat_vl9", length = 50, nullable = true)
    @Schema(description = "출력데이터값9", nullable = true)
    private String outDatVl9; //--출력데이터값9

    @Column(name = "out_dat_vl10", length = 50, nullable = true)
    @Schema(description = "출력데이터값10", nullable = true)
    private String outDatVl10; //--출력데이터값10

    @Column(name = "out_dat_vl11", length = 50, nullable = true)
    @Schema(description = "출력데이터값11", nullable = true)
    private String outDatVl11; //--출력데이터값11

    @Column(name = "out_dat_vl12", length = 50, nullable = true)
    @Schema(description = "출력데이터값12", nullable = true)
    private String outDatVl12; //--출력데이터값12

    @Column(name = "out_dat_vl13", length = 50, nullable = true)
    @Schema(description = "출력데이터값13", nullable = true)
    private String outDatVl13; //--출력데이터값13

    @Column(name = "out_dat_vl14", length = 50, nullable = true)
    @Schema(description = "출력데이터값14", nullable = true)
    private String outDatVl14; //--출력데이터값14

    @Column(name = "out_dat_vl15", length = 50, nullable = true)
    @Schema(description = "출력데이터값15", nullable = true)
    private String outDatVl15; //--출력데이터값15

    @Column(name = "out_dat_vl16", length = 50, nullable = true)
    @Schema(description = "출력데이터값16", nullable = true)
    private String outDatVl16; //--출력데이터값16

    @Column(name = "out_dat_vl17", length = 50, nullable = true)
    @Schema(description = "출력데이터값17", nullable = true)
    private String outDatVl17; //--출력데이터값17

    @Column(name = "out_dat_vl18", length = 50, nullable = true)
    @Schema(description = "출력데이터값18", nullable = true)
    private String outDatVl18; //--출력데이터값18

    @Column(name = "out_dat_vl19", length = 50, nullable = true)
    @Schema(description = "출력데이터값19", nullable = true)
    private String outDatVl19; //--출력데이터값19

    @Column(name = "out_dat_vl20", length = 50, nullable = true)
    @Schema(description = "출력데이터값20", nullable = true)
    private String outDatVl20; //--출력데이터값20

    @Column(name = "out_dat_vl21", length = 50, nullable = true)
    @Schema(description = "출력데이터값21", nullable = true)
    private String outDatVl21; //--출력데이터값21

    @Column(name = "out_dat_vl22", length = 50, nullable = true)
    @Schema(description = "출력데이터값22", nullable = true)
    private String outDatVl22; //--출력데이터값22

    @Column(name = "out_dat_vl23", length = 50, nullable = true)
    @Schema(description = "출력데이터값23", nullable = true)
    private String outDatVl23; //--출력데이터값23

    @Column(name = "out_dat_vl24", length = 50, nullable = true)
    @Schema(description = "출력데이터값24", nullable = true)
    private String outDatVl24; //--출력데이터값24

    @Column(name = "out_dat_vl25", length = 50, nullable = true)
    @Schema(description = "출력데이터값25", nullable = true)
    private String outDatVl25; //--출력데이터값25

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
    public IgdLtrmRato(String ltrmRtTablFlgcd, String sno, Date apStrdt, Date apNddt, String copChrvl1, String copChrvl2, String copChrvl3, String copChrvl4, String copChrvl5, String copChrvl6, String copChrvl7, String copChrvl8, String copChrvl9, String copChrvl10, String copChrvl11, String copChrvl12, String copChrvl13, String copChrvl14, String copChrvl15, String copChrvl16, String copChrvl17, String copChrvl18, String copChrvl19, String copChrvl20, String copChrvl21, String outDatVl1, String outDatVl2, String outDatVl3, String outDatVl4, String outDatVl5, String outDatVl6, String outDatVl7, String outDatVl8, String outDatVl9, String outDatVl10, String outDatVl11, String outDatVl12, String outDatVl13, String outDatVl14, String outDatVl15, String outDatVl16, String outDatVl17, String outDatVl18, String outDatVl19, String outDatVl20, String outDatVl21, String outDatVl22, String outDatVl23, String outDatVl24, String outDatVl25, String mdfUsrId, Timestamp inpDthms, Timestamp mdfDthms) {
        this.ltrmRtTablFlgcd = ltrmRtTablFlgcd;
        this.sno = sno;
        this.apStrdt = apStrdt;
        this.apNddt = apNddt;
        this.copChrvl1 = copChrvl1;
        this.copChrvl2 = copChrvl2;
        this.copChrvl3 = copChrvl3;
        this.copChrvl4 = copChrvl4;
        this.copChrvl5 = copChrvl5;
        this.copChrvl6 = copChrvl6;
        this.copChrvl7 = copChrvl7;
        this.copChrvl8 = copChrvl8;
        this.copChrvl9 = copChrvl9;
        this.copChrvl10 = copChrvl10;
        this.copChrvl11 = copChrvl11;
        this.copChrvl12 = copChrvl12;
        this.copChrvl13 = copChrvl13;
        this.copChrvl14 = copChrvl14;
        this.copChrvl15 = copChrvl15;
        this.copChrvl16 = copChrvl16;
        this.copChrvl17 = copChrvl17;
        this.copChrvl18 = copChrvl18;
        this.copChrvl19 = copChrvl19;
        this.copChrvl20 = copChrvl20;
        this.copChrvl21 = copChrvl21;
        this.outDatVl1 = outDatVl1;
        this.outDatVl2 = outDatVl2;
        this.outDatVl3 = outDatVl3;
        this.outDatVl4 = outDatVl4;
        this.outDatVl5 = outDatVl5;
        this.outDatVl6 = outDatVl6;
        this.outDatVl7 = outDatVl7;
        this.outDatVl8 = outDatVl8;
        this.outDatVl9 = outDatVl9;
        this.outDatVl10 = outDatVl10;
        this.outDatVl11 = outDatVl11;
        this.outDatVl12 = outDatVl12;
        this.outDatVl13 = outDatVl13;
        this.outDatVl14 = outDatVl14;
        this.outDatVl15 = outDatVl15;
        this.outDatVl16 = outDatVl16;
        this.outDatVl17 = outDatVl17;
        this.outDatVl18 = outDatVl18;
        this.outDatVl19 = outDatVl19;
        this.outDatVl20 = outDatVl20;
        this.outDatVl21 = outDatVl21;
        this.outDatVl22 = outDatVl22;
        this.outDatVl23 = outDatVl23;
        this.outDatVl24 = outDatVl24;
        this.outDatVl25 = outDatVl25;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
        this.mdfDthms = mdfDthms;
    }
}
