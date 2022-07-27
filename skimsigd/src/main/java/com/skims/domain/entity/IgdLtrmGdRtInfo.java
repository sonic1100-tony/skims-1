/**
 * IgdLtrmGdRtInfo Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.time.LocalDateTime;
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

import com.skims.domain.listener.IgdLtrmGdRtInfoListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(IgdLtrmGdRtInfoListener.class)
@Table(name = "igd_ltrm_gd_rt_info") //--장기상품요율정보
@Schema(description = "장기상품요율정보")
@IdClass(IgdLtrmGdRtInfoPK.class)
public class IgdLtrmGdRtInfo implements Serializable {
    @Id //  String
    @Column(name = "ltrm_rt_tabl_flgcd", length = 10, nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "장기요율테이블구분코드", nullable = false)
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드

    @Id //  String
    @Column(name = "gdcd", length = 10, nullable = false)
    @Schema(description = "상품코드", nullable = false)
    private String gdcd; //--상품코드

    @Column(name = "ltrm_rt_tabnm", length = 100, nullable = false)
    @Schema(description = "장기요율테이블명", nullable = false)
    private String ltrmRtTabnm; //--장기요율테이블명

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "rt_ap_csfcd", length = 10, nullable = false)
    @Schema(description = "요율적용분류코드", nullable = false)
    private String rtApCsfcd; //--요율적용분류코드

    @Column(name = "rt_ap_flgcd", length = 1, nullable = false)
    @Schema(description = "요율적용구분코드", nullable = false)
    private String rtApFlgcd; //--요율적용구분코드

    @Column(name = "rt_ap_untcd", length = 7, nullable = false)
    @Schema(description = "요율적용단위코드", nullable = false)
    private String rtApUntcd; //--요율적용단위코드

    @Column(name = "prm_ap_untcd", length = 7, nullable = true)
    @Schema(description = "보험료적용단위코드", nullable = true)
    private String prmApUntcd; //--보험료적용단위코드

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public IgdLtrmGdRtInfo(String ltrmRtTablFlgcd, String gdcd, String ltrmRtTabnm, String ikdGrpcd, String rtApCsfcd, String rtApFlgcd, String rtApUntcd, String prmApUntcd, String mdfUsrId, LocalDateTime inpDthms, LocalDateTime mdfDthms) {
        this.ltrmRtTablFlgcd = ltrmRtTablFlgcd;
        this.gdcd = gdcd;
        this.ltrmRtTabnm = ltrmRtTabnm;
        this.ikdGrpcd = ikdGrpcd;
        this.rtApCsfcd = rtApCsfcd;
        this.rtApFlgcd = rtApFlgcd;
        this.rtApUntcd = rtApUntcd;
        this.prmApUntcd = prmApUntcd;
        this.mdfUsrId = mdfUsrId;
        this.inpDthms = inpDthms;
        this.mdfDthms = mdfDthms;
    }
}
