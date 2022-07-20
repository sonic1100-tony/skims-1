/**
 * LseXiPySpc Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.PostLoad;
import javax.persistence.PostPersist;
import javax.persistence.PostRemove;
import javax.persistence.PostUpdate;
import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Entity
@Table(name = "lse_xi_py_spc") //--추산지급내역
@Schema(description = "추산지급내역")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
public class LseXiPySpc implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
    @Schema(description = "aid", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Long aid; //--aid

    @Column(name = "rcp_yymm", length = 6, nullable = false)
    @Schema(description = "접수년월", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpYymm; //--접수년월

    @Column(name = "rcp_nv_seqno", length = 9, nullable = false)
    @Schema(description = "접수조사순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rcpNvSeqno; //--접수조사순번

    @Column(name = "clmps_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "사고자순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal clmpsSeqno; //--사고자순번

    @Column(name = "plyno", length = 16, nullable = false)
    @Schema(description = "증권번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plyno; //--증권번호

    @Column(name = "cc_seq", precision = 3, scale = 0, nullable = false)
    @Schema(description = "산출회차", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ccSeq; //--산출회차

    @Column(name = "xi_py_spc_seqno", precision = 3, scale = 0, nullable = false)
    @Schema(description = "추산지급내역순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xiPySpcSeqno; //--추산지급내역순번

    @Column(name = "mncd", length = 10, nullable = true)
    @Schema(description = "화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mncd; //--화폐코드

    @Column(name = "pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pyamt; //--지급금액

    @Column(name = "woncr_cv_pyamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "원화환산지급금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvPyamt; //--원화환산지급금액

    @Column(name = "remn_xi_mncd", length = 10, nullable = true)
    @Schema(description = "잔여추산화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String remnXiMncd; //--잔여추산화폐코드

    @Column(name = "remn_xi_amt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "잔여추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal remnXiAmt; //--잔여추산금액

    @Column(name = "fr_cc_xiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "최초산출추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal frCcXiamt; //--최초산출추산금액

    @Column(name = "rk_tpcd", length = 8, nullable = true)
    @Schema(description = "위험유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rkTpcd; //--위험유형코드

    @Column(name = "cmp_py_rltno", length = 50, nullable = true)
    @Schema(description = "보상지급연계번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cmpPyRltno; //--보상지급연계번호

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ikdGrpcd; //--보종군코드

    @Column(name = "dlay_nt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "지연이자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dlayNt; //--지연이자

    @Column(name = "woncv_ibnf_dlay_nt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산보험금지연이자", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncvIbnfDlayNt; //--원화환산보험금지연이자

    @Column(name = "xcrt", precision = 12, scale = 6, nullable = false)
    @Schema(description = "환율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xcrt; //--환율

    @Column(name = "xcrt_apdt", nullable = true)
    @Schema(description = "환율적용일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date xcrtApdt; //--환율적용일자

    @Column(name = "py_spc_flgcd", length = 10, nullable = true)
    @Schema(description = "지급내역구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String pySpcFlgcd; //--지급내역구분코드

    @Column(name = "cvr_stcd", length = 10, nullable = true)
    @Schema(description = "담보상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String cvrStcd; //--담보상태코드

    @Column(name = "clm_cvrcd", length = 10, nullable = true)
    @Schema(description = "사고담보코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String clmCvrcd; //--사고담보코드

    @Column(name = "oj_tpcd", length = 8, nullable = true)
    @Schema(description = "목적물유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ojTpcd; //--목적물유형코드

    @Column(name = "ojnm", length = 200, nullable = true)
    @Schema(description = "목적물명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ojnm; //--목적물명

    @Column(name = "oj_dt_cn", length = 1000, nullable = true)
    @Schema(description = "목적물상세내용", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ojDtCn; //--목적물상세내용

    @Column(name = "cr_cvrcd", length = 8, nullable = true)
    @Schema(description = "계약담보코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crCvrcd; //--계약담보코드

    @Column(name = "self_chamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "자기부담금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal selfChamt; //--자기부담금액

    @Column(name = "isamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "가입금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal isamt; //--가입금액

    @Column(name = "isamt_mncd", length = 10, nullable = true)
    @Schema(description = "가입금액화폐코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String isamtMncd; //--가입금액화폐코드

    @Column(name = "oj_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "목적물순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ojSeqno; //--목적물순번

    @Column(name = "lctcd", length = 8, nullable = true)
    @Schema(description = "소재지코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lctcd; //--소재지코드

    @Column(name = "ivamt_flgcd", length = 10, nullable = true)
    @Schema(description = "보험가액구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ivamtFlgcd; //--보험가액구분코드

    @Column(name = "ivamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "보험가액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ivamt; //--보험가액

    @Column(name = "cdamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "발생손해금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cdamt; //--발생손해금액

    @Column(name = "sbamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "잔존물금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal sbamt; //--잔존물금액

    @Column(name = "ndamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "순손해금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ndamt; //--순손해금액

    @Column(name = "woncr_cv_isamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "원화환산가입금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal woncrCvIsamt; //--원화환산가입금액

    @Column(name = "ltcvr_re_ibamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장기담보출재보험금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltcvrReIbamt; //--장기담보출재보험금액

    @Column(name = "ltcvr_re_remn_xiamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "장기담보출재잔여추산금액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltcvrReRemnXiamt; //--장기담보출재잔여추산금액

    @Column(name = "ltrm_rert", precision = 12, scale = 6, nullable = false)
    @Schema(description = "장기출재율", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmRert; //--장기출재율

    @Column(name = "odclm_cvrcd", length = 10, nullable = true)
    @Schema(description = "구사고담보코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String odclmCvrcd; //--구사고담보코드

    @Column(name = "cvr_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "담보순번", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cvrSeqno; //--담보순번

    @Column(name = "ndcd", length = 10, nullable = true)
    @Schema(description = "만기코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ndcd; //--만기코드

    @Column(name = "cmp_lmamt", precision = 17, scale = 2, nullable = false)
    @Schema(description = "보상한도액", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cmpLmamt; //--보상한도액

    @Column(name = "ltins_pstcd", length = 10, nullable = true)
    @Schema(description = "장기보험경유처코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltinsPstcd; //--장기보험경유처코드

    @Column(name = "ltins_rins_ps", length = 10, nullable = true)
    @Schema(description = "장기보험재보험자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ltinsRinsPs; //--장기보험재보험자

    @Column(name = "imu_cvr_yn", length = 1, nullable = true)
    @Schema(description = "면책담보여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String imuCvrYn; //--면책담보여부

    @Column(name = "ibnf_cc_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "보험금산출금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ibnfCcAmt; //--보험금산출금액

    @Column(name = "chc_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "변동금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal chcAmt; //--변동금액

    @Column(name = "norm_cla_dc_metcd", length = 10, nullable = true)
    @Schema(description = "보통약관공제방식코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String normClaDcMetcd; //--보통약관공제방식코드

    @Column(name = "spc_cla_dc_metcd", length = 10, nullable = true)
    @Schema(description = "특별약관공제방식코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String spcClaDcMetcd; //--특별약관공제방식코드

    @Column(name = "auto_slc_yn", length = 1, nullable = true)
    @Schema(description = "자동선택여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoSlcYn; //--자동선택여부

    @Column(name = "prpn_cmp_yn", length = 1, nullable = true)
    @Schema(description = "비례보상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String prpnCmpYn; //--비례보상여부

    @Column(name = "ivamt_coins_rt_cd", length = 10, nullable = true)
    @Schema(description = "보험가액공동보험비율코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ivamtCoinsRtCd; //--보험가액공동보험비율코드

    @Column(name = "spcl_slfch_amt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "특별약관자기부담금금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal spclSlfchAmt; //--특별약관자기부담금금액

    @Column(name = "mdud_seq", precision = 3, scale = 0, nullable = true)
    @Schema(description = "의료심사회차", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal mdudSeq; //--의료심사회차

    @Column(name = "acrc_mdud_apamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "정밀의료심사승인금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal acrcMdudApamt; //--정밀의료심사승인금액

    @Column(name = "acrc_mdud_py_tpcd", length = 10, nullable = true)
    @Schema(description = "정밀의료심사지급유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String acrcMdudPyTpcd; //--정밀의료심사지급유형코드

    @Column(name = "re_trt_flgcd", length = 10, nullable = true)
    @Schema(description = "출재특약구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String reTrtFlgcd; //--출재특약구분코드

    @Column(name = "opccs_udamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "수술비심사금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal opccsUdamt; //--수술비심사금액

    @Column(name = "opccs_ud_ap_flgcd", length = 10, nullable = true)
    @Schema(description = "수술비심사승인구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opccsUdApFlgcd; //--수술비심사승인구분코드

    @Column(name = "opccs_ud_cpmt_tpcd", length = 10, nullable = true)
    @Schema(description = "수술비심사보완유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opccsUdCpmtTpcd; //--수술비심사보완유형코드

    @Column(name = "opccs_ud_ctn", length = 4000, nullable = true)
    @Schema(description = "수술비심사의견", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String opccsUdCtn; //--수술비심사의견

    @Column(name = "re_sply_vlamt", precision = 17, scale = 5, nullable = true)
    @Schema(description = "재조달가액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal reSplyVlamt; //--재조달가액

    @Column(name = "rlpmi_cvr_db_isyn", length = 1, nullable = true)
    @Schema(description = "실손담보중복가입여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rlpmiCvrDbIsyn; //--실손담보중복가입여부

    @Column(name = "cvrcl_dm_dmamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "담보별청구손해액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cvrclDmDmamt; //--담보별청구손해액

    @Column(name = "re_dlay_ntamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "출재지연이자금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal reDlayNtamt; //--출재지연이자금액

    @Column(name = "nt_ppcp_yn", length = 1, nullable = true)
    @Schema(description = "통지비례보상여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntPpcpYn; //--통지비례보상여부

    @Column(name = "tmppy_qck_py_flgcd", length = 10, nullable = true)
    @Schema(description = "가지급신속지급구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tmppyQckPyFlgcd; //--가지급신속지급구분코드

    @Column(name = "rs_rlv_dt", nullable = true)
    @Schema(description = "사유해당일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rsRlvDt; //--사유해당일자

    @Column(name = "ltrm_dlynt_re_ibamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "장기지연이자출재보험금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ltrmDlyntReIbamt; //--장기지연이자출재보험금액

    @Column(name = "ibnf_md_flgcd", length = 10, nullable = true)
    @Schema(description = "보험금조정구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ibnfMdFlgcd; //--보험금조정구분코드

    @Column(name = "ibnf_md_flg_dtcd", length = 10, nullable = true)
    @Schema(description = "보험금조정구분상세코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ibnfMdFlgDtcd; //--보험금조정구분상세코드

    @Column(name = "ibnf_mdamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "보험금조정금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ibnfMdamt; //--보험금조정금액

    @Column(name = "lsetm_pypl_rel_flgcd", length = 10, nullable = true)
    @Schema(description = "손사지급처관계구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lsetmPyplRelFlgcd; //--손사지급처관계구분코드

    @Column(name = "dm_dmamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "청구손해액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal dmDmamt; //--청구손해액

    @Column(name = "cc_dmamt", precision = 17, scale = 2, nullable = true)
    @Schema(description = "산출손해액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal ccDmamt; //--산출손해액

    @Column(name = "xi_amt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "추산금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal xiAmt; //--추산금액

    @Column(name = "pvpy_amt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "기지급금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal pvpyAmt; //--기지급금액

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date mdfDthms; //--수정일시

    @Builder
    public LseXiPySpc(String rcpYymm, String rcpNvSeqno, BigDecimal clmpsSeqno, String plyno, BigDecimal ccSeq, BigDecimal xiPySpcSeqno, String mncd, BigDecimal pyamt, BigDecimal woncrCvPyamt, String remnXiMncd, BigDecimal remnXiAmt, BigDecimal frCcXiamt, String rkTpcd, String cmpPyRltno, String ikdGrpcd, BigDecimal dlayNt, BigDecimal woncvIbnfDlayNt, BigDecimal xcrt, Date xcrtApdt, String pySpcFlgcd, String cvrStcd, String clmCvrcd, String ojTpcd, String ojnm, String ojDtCn, String crCvrcd, BigDecimal selfChamt, BigDecimal isamt, String isamtMncd, BigDecimal ojSeqno, String lctcd, String ivamtFlgcd, BigDecimal ivamt, BigDecimal cdamt, BigDecimal sbamt, BigDecimal ndamt, BigDecimal woncrCvIsamt, BigDecimal ltcvrReIbamt, BigDecimal ltcvrReRemnXiamt, BigDecimal ltrmRert, String odclmCvrcd, BigDecimal cvrSeqno, String ndcd, BigDecimal cmpLmamt, String ltinsPstcd, String ltinsRinsPs, String imuCvrYn, BigDecimal ibnfCcAmt, BigDecimal chcAmt, String normClaDcMetcd, String spcClaDcMetcd, String autoSlcYn, String prpnCmpYn, String ivamtCoinsRtCd, BigDecimal spclSlfchAmt, BigDecimal mdudSeq, BigDecimal acrcMdudApamt, String acrcMdudPyTpcd, String reTrtFlgcd, BigDecimal opccsUdamt, String opccsUdApFlgcd, String opccsUdCpmtTpcd, String opccsUdCtn, BigDecimal reSplyVlamt, String rlpmiCvrDbIsyn, BigDecimal cvrclDmDmamt, BigDecimal reDlayNtamt, String ntPpcpYn, String tmppyQckPyFlgcd, Date rsRlvDt, BigDecimal ltrmDlyntReIbamt, String ibnfMdFlgcd, String ibnfMdFlgDtcd, BigDecimal ibnfMdamt, String lsetmPyplRelFlgcd, BigDecimal dmDmamt, BigDecimal ccDmamt, BigDecimal xiAmt, BigDecimal pvpyAmt, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.rcpYymm = rcpYymm;
        this.rcpNvSeqno = rcpNvSeqno;
        this.clmpsSeqno = clmpsSeqno;
        this.plyno = plyno;
        this.ccSeq = ccSeq;
        this.xiPySpcSeqno = xiPySpcSeqno;
        this.mncd = mncd;
        this.pyamt = pyamt;
        this.woncrCvPyamt = woncrCvPyamt;
        this.remnXiMncd = remnXiMncd;
        this.remnXiAmt = remnXiAmt;
        this.frCcXiamt = frCcXiamt;
        this.rkTpcd = rkTpcd;
        this.cmpPyRltno = cmpPyRltno;
        this.ikdGrpcd = ikdGrpcd;
        this.dlayNt = dlayNt;
        this.woncvIbnfDlayNt = woncvIbnfDlayNt;
        this.xcrt = xcrt;
        this.xcrtApdt = xcrtApdt;
        this.pySpcFlgcd = pySpcFlgcd;
        this.cvrStcd = cvrStcd;
        this.clmCvrcd = clmCvrcd;
        this.ojTpcd = ojTpcd;
        this.ojnm = ojnm;
        this.ojDtCn = ojDtCn;
        this.crCvrcd = crCvrcd;
        this.selfChamt = selfChamt;
        this.isamt = isamt;
        this.isamtMncd = isamtMncd;
        this.ojSeqno = ojSeqno;
        this.lctcd = lctcd;
        this.ivamtFlgcd = ivamtFlgcd;
        this.ivamt = ivamt;
        this.cdamt = cdamt;
        this.sbamt = sbamt;
        this.ndamt = ndamt;
        this.woncrCvIsamt = woncrCvIsamt;
        this.ltcvrReIbamt = ltcvrReIbamt;
        this.ltcvrReRemnXiamt = ltcvrReRemnXiamt;
        this.ltrmRert = ltrmRert;
        this.odclmCvrcd = odclmCvrcd;
        this.cvrSeqno = cvrSeqno;
        this.ndcd = ndcd;
        this.cmpLmamt = cmpLmamt;
        this.ltinsPstcd = ltinsPstcd;
        this.ltinsRinsPs = ltinsRinsPs;
        this.imuCvrYn = imuCvrYn;
        this.ibnfCcAmt = ibnfCcAmt;
        this.chcAmt = chcAmt;
        this.normClaDcMetcd = normClaDcMetcd;
        this.spcClaDcMetcd = spcClaDcMetcd;
        this.autoSlcYn = autoSlcYn;
        this.prpnCmpYn = prpnCmpYn;
        this.ivamtCoinsRtCd = ivamtCoinsRtCd;
        this.spclSlfchAmt = spclSlfchAmt;
        this.mdudSeq = mdudSeq;
        this.acrcMdudApamt = acrcMdudApamt;
        this.acrcMdudPyTpcd = acrcMdudPyTpcd;
        this.reTrtFlgcd = reTrtFlgcd;
        this.opccsUdamt = opccsUdamt;
        this.opccsUdApFlgcd = opccsUdApFlgcd;
        this.opccsUdCpmtTpcd = opccsUdCpmtTpcd;
        this.opccsUdCtn = opccsUdCtn;
        this.reSplyVlamt = reSplyVlamt;
        this.rlpmiCvrDbIsyn = rlpmiCvrDbIsyn;
        this.cvrclDmDmamt = cvrclDmDmamt;
        this.reDlayNtamt = reDlayNtamt;
        this.ntPpcpYn = ntPpcpYn;
        this.tmppyQckPyFlgcd = tmppyQckPyFlgcd;
        this.rsRlvDt = rsRlvDt;
        this.ltrmDlyntReIbamt = ltrmDlyntReIbamt;
        this.ibnfMdFlgcd = ibnfMdFlgcd;
        this.ibnfMdFlgDtcd = ibnfMdFlgDtcd;
        this.ibnfMdamt = ibnfMdamt;
        this.lsetmPyplRelFlgcd = lsetmPyplRelFlgcd;
        this.dmDmamt = dmDmamt;
        this.ccDmamt = ccDmamt;
        this.xiAmt = xiAmt;
        this.pvpyAmt = pvpyAmt;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
	
	//----------------------------------------------------
    // Load/Persist/Update/Remove(조회/신규/수정/삭제)
    // Entity Pre/Post(이전/이후) 처리에 대한 정의(PreLoad는 없음)
    // * DB의 Trigger와 비슷한 JPA기능
    //----------------------------------------------------
    @PostLoad
    public void onPostLoad() {
        log.info("onPostLoad : Select후 호출" );
    }

    @PrePersist
    public void onPrePersist() {
        log.info("onPrePersist : Insert전 호출");
    }
    
    @PostPersist
    public void onPostPersist() {
        log.info("onPrePersist : Insert후 호출");
    }
    
    @PreUpdate
    public void onPreUpdate() {
        log.info("onPreUpdate : Update전 호출");
    }
    
    @PostUpdate
    public void onPostUpdate() {
        log.info("onPostUpdate : Update후 호출"); 
    }
    
    @PreRemove
    public void onPreRemove() {
        log.info("onPreRemove  : Delete전 호출");    
    }
    
    @PostRemove
    public void onPostRemove() {
        log.info("onPostRemove : Delete후 호출");
    }
}
