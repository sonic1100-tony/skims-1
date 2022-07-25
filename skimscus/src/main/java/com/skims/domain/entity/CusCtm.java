/**
 * CusCtm Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
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

import com.skims.domain.listener.CusCtmListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(CusCtmListener.class)
@Table(name = "cus_ctm") //--고객
@Schema(description = "고객")
public class CusCtm implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "ctmno", length = 13, nullable = false)
    @Schema(description = "고객번호", nullable = false)
    private String ctmno; //--고객번호

    @Column(name = "ctm_dscno", length = 48, nullable = true)
    @Schema(description = "고객식별번호", nullable = true)
    private String ctmDscno; //--고객식별번호

    @Column(name = "hngl_ctmnm", length = 150, nullable = true)
    @Schema(description = "한글고객명", nullable = true)
    private String hnglCtmnm; //--한글고객명

    @Column(name = "eng_ctmnm", length = 100, nullable = true)
    @Schema(description = "영문고객명", nullable = true)
    private String engCtmnm; //--영문고객명

    @Column(name = "chnc_ctmnm", length = 100, nullable = true)
    @Schema(description = "한문고객명", nullable = true)
    private String chncCtmnm; //--한문고객명

    @Column(name = "hngl_abrv_ctmnm", length = 150, nullable = true)
    @Schema(description = "한글축약고객명", nullable = true)
    private String hnglAbrvCtmnm; //--한글축약고객명

    @Column(name = "eng_abrv_ctmnm", length = 100, nullable = true)
    @Schema(description = "영문축약고객명", nullable = true)
    private String engAbrvCtmnm; //--영문축약고객명

    @Column(name = "ctm_tpcd", length = 10, nullable = false)
    @Schema(description = "고객유형코드", nullable = false)
    private String ctmTpcd; //--고객유형코드

    @Column(name = "cr_own_yn", length = 1, nullable = true)
    @Schema(description = "차량소유여부", nullable = true)
    private String crOwnYn; //--차량소유여부

    @Column(name = "drve_yn", length = 1, nullable = true)
    @Schema(description = "운전여부", nullable = true)
    private String drveYn; //--운전여부

    @Column(name = "ctm_dat_acq_ptncd", length = 10, nullable = true)
    @Schema(description = "고객데이터획득경로코드", nullable = true)
    private String ctmDatAcqPtncd; //--고객데이터획득경로코드

    @Column(name = "frg_dlpl_flgcd", length = 10, nullable = true)
    @Schema(description = "경품배달처구분코드", nullable = true)
    private String frgDlplFlgcd; //--경품배달처구분코드

    @Column(name = "fmllv_ctm_yn", length = 1, nullable = true)
    @Schema(description = "가족사랑고객여부", nullable = true)
    private String fmllvCtmYn; //--가족사랑고객여부

    @Column(name = "hmpag_adr", length = 100, nullable = true)
    @Schema(description = "홈페이지주소", nullable = true)
    private String hmpagAdr; //--홈페이지주소

    @Column(name = "cybmy", length = 50, nullable = true)
    @Schema(description = "사이버머니", nullable = true)
    private String cybmy; //--사이버머니

    @Column(name = "sms_rcv_yn", length = 1, nullable = true)
    @Schema(description = "sms수신여부", nullable = true)
    private String smsRcvYn; //--sms수신여부

    @Column(name = "rlnm_ctfct_file_pth", length = 100, nullable = true)
    @Schema(description = "실명증표파일경로", nullable = true)
    private String rlnmCtfctFilePth; //--실명증표파일경로

    @Column(name = "cntrt_st_rq_yn", length = 1, nullable = true)
    @Schema(description = "접촉정지요청여부", nullable = true)
    private String cntrtStRqYn; //--접촉정지요청여부

    @Column(name = "tl_rcv_yn", length = 1, nullable = true)
    @Schema(description = "전화수신여부", nullable = true)
    private String tlRcvYn; //--전화수신여부

    @Column(name = "crdif_utl_agre_yn", length = 1, nullable = true)
    @Schema(description = "신용정보활용동의여부", nullable = true)
    private String crdifUtlAgreYn; //--신용정보활용동의여부

    @Column(name = "mail_rcv_yn", length = 1, nullable = true)
    @Schema(description = "이메일수신여부", nullable = true)
    private String mailRcvYn; //--이메일수신여부

    @Column(name = "ntclt_mail_rcv_yn", length = 1, nullable = true)
    @Schema(description = "안내문이메일수신여부", nullable = true)
    private String ntcltMailRcvYn; //--안내문이메일수신여부

    @Column(name = "bzfml_sms_lmit_yn", length = 1, nullable = true)
    @Schema(description = "영업가족sms제한여부", nullable = true)
    private String bzfmlSmsLmitYn; //--영업가족sms제한여부

    @Column(name = "rgbrd_flgcd", length = 10, nullable = true)
    @Schema(description = "내외국구분코드", nullable = true)
    private String rgbrdFlgcd; //--내외국구분코드

    @Column(name = "mntr_bkcd", length = 10, nullable = true)
    @Schema(description = "주거래은행코드", nullable = true)
    private String mntrBkcd; //--주거래은행코드

    @Column(name = "mntr_bk_brcd", length = 10, nullable = true)
    @Schema(description = "주거래은행지점코드", nullable = true)
    private String mntrBkBrcd; //--주거래은행지점코드

    @Column(name = "et_adr_flgcd", length = 10, nullable = true)
    @Schema(description = "기타주소구분코드", nullable = true)
    private String etAdrFlgcd; //--기타주소구분코드

    @Column(name = "cnn_cmpcd", length = 10, nullable = true)
    @Schema(description = "관련회사코드", nullable = true)
    private String cnnCmpcd; //--관련회사코드

    @Column(name = "ctm_dscno_flgcd", length = 10, nullable = true)
    @Schema(description = "고객식별번호구분코드", nullable = true)
    private String ctmDscnoFlgcd; //--고객식별번호구분코드

    @Column(name = "spcl_rel_ctm_yn", length = 1, nullable = true)
    @Schema(description = "특수관계고객여부", nullable = true)
    private String spclRelCtmYn; //--특수관계고객여부

    @Column(name = "pdt_rsno", length = 48, nullable = true)
    @Schema(description = "대표자주민번호", nullable = true)
    private String pdtRsno; //--대표자주민번호

    @Column(name = "pdtnm", length = 100, nullable = true)
    @Schema(description = "대표자명", nullable = true)
    private String pdtnm; //--대표자명

    @Column(name = "indpd_mrtmn_yn", length = 1, nullable = true)
    @Schema(description = "독립유공자여부", nullable = true)
    private String indpdMrtmnYn; //--독립유공자여부

    @Column(name = "dflt_pt_yn", length = 1, nullable = true)
    @Schema(description = "고엽제환자여부", nullable = true)
    private String dfltPtYn; //--고엽제환자여부

    @Column(name = "dmrcy_518_injd_yn", length = 1, nullable = true)
    @Schema(description = "민주518부상자여부", nullable = true)
    private String dmrcy518InjdYn; //--민주518부상자여부

    @Column(name = "rltn_bzwpl_cd", length = 10, nullable = true)
    @Schema(description = "연계사업장코드", nullable = true)
    private String rltnBzwplCd; //--연계사업장코드

    @Column(name = "rltn_bzwpl_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "연계사업장순번", nullable = true)
    private BigDecimal rltnBzwplSeqno; //--연계사업장순번

    @Column(name = "psn_info_cvap_yn", length = 1, nullable = true)
    @Schema(description = "개인정보민원여부", nullable = true)
    private String psnInfoCvapYn; //--개인정보민원여부

    @Column(name = "rcmnm", length = 100, nullable = true)
    @Schema(description = "추천인명", nullable = true)
    private String rcmnm; //--추천인명

    @Column(name = "rcm_rsno", length = 48, nullable = true)
    @Schema(description = "추천인주민번호", nullable = true)
    private String rcmRsno; //--추천인주민번호

    @Column(name = "dher_rcm_relcd", length = 10, nullable = true)
    @Schema(description = "취급자추천인관계코드", nullable = true)
    private String dherRcmRelcd; //--취급자추천인관계코드

    @Column(name = "bzps_tpcd", length = 10, nullable = true)
    @Schema(description = "사업자유형코드", nullable = true)
    private String bzpsTpcd; //--사업자유형코드

    @Column(name = "ntp_sclcd", length = 10, nullable = true)
    @Schema(description = "기업규모코드", nullable = true)
    private String ntpSclcd; //--기업규모코드

    @Column(name = "bzps_bstnm", length = 100, nullable = true)
    @Schema(description = "사업자업태명", nullable = true)
    private String bzpsBstnm; //--사업자업태명

    @Column(name = "bzps_imnm", length = 100, nullable = true)
    @Schema(description = "사업자종목명", nullable = true)
    private String bzpsImnm; //--사업자종목명

    @Column(name = "empct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "종업원수", nullable = true)
    private BigDecimal empct; //--종업원수

    @Column(name = "slamt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "매출액", nullable = false)
    private BigDecimal slamt; //--매출액

    @Column(name = "capt", precision = 15, scale = 0, nullable = false)
    @Schema(description = "자본금", nullable = false)
    private BigDecimal capt; //--자본금

    @Column(name = "fnddt", nullable = true)
    @Schema(description = "설립일자", nullable = true)
    private Date fnddt; //--설립일자

    @Column(name = "clodt", nullable = true)
    @Schema(description = "폐쇄일자", nullable = true)
    private Date clodt; //--폐쇄일자

    @Column(name = "dlncd", length = 10, nullable = true)
    @Schema(description = "거래선코드", nullable = true)
    private String dlncd; //--거래선코드

    @Column(name = "bzwpl_own_yn", length = 1, nullable = true)
    @Schema(description = "사업장소유여부", nullable = true)
    private String bzwplOwnYn; //--사업장소유여부

    @Column(name = "mn_pdt_out_pdtct", precision = 7, scale = 0, nullable = true)
    @Schema(description = "주대표자외대표자수", nullable = true)
    private BigDecimal mnPdtOutPdtct; //--주대표자외대표자수

    @Column(name = "bdl_tf_pypsb_yn", length = 1, nullable = true)
    @Schema(description = "일괄이체지급가능여부", nullable = true)
    private String bdlTfPypsbYn; //--일괄이체지급가능여부

    @Column(name = "std_ind_csfcd", length = 10, nullable = true)
    @Schema(description = "표준산업분류코드", nullable = true)
    private String stdIndCsfcd; //--표준산업분류코드

    @Column(name = "ntp_tycd", length = 10, nullable = true)
    @Schema(description = "기업형태코드", nullable = true)
    private String ntpTycd; //--기업형태코드

    @Column(name = "lstst_flgcd", length = 10, nullable = true)
    @Schema(description = "상장구분코드", nullable = true)
    private String lststFlgcd; //--상장구분코드

    @Column(name = "crpno", length = 13, nullable = true)
    @Schema(description = "법인번호", nullable = true)
    private String crpno; //--법인번호

    @Column(name = "clgmm_flgcd", length = 10, nullable = true)
    @Schema(description = "결산월구분코드", nullable = true)
    private String clgmmFlgcd; //--결산월구분코드

    @Column(name = "gr_flgcd", length = 10, nullable = true)
    @Schema(description = "단체구분코드", nullable = true)
    private String grFlgcd; //--단체구분코드

    @Column(name = "gr_tpcd", length = 10, nullable = true)
    @Schema(description = "단체유형코드", nullable = true)
    private String grTpcd; //--단체유형코드

    @Column(name = "bzmno", length = 10, nullable = true)
    @Schema(description = "사업자번호", nullable = true)
    private String bzmno; //--사업자번호

    @Column(name = "crp_tpcd", length = 10, nullable = true)
    @Schema(description = "법인유형코드", nullable = true)
    private String crpTpcd; //--법인유형코드

    @Column(name = "wdg_yn", length = 1, nullable = true)
    @Schema(description = "결혼여부", nullable = true)
    private String wdgYn; //--결혼여부

    @Column(name = "relgn_cd", length = 10, nullable = true)
    @Schema(description = "종교코드", nullable = true)
    private String relgnCd; //--종교코드

    @Column(name = "fnl_edbcd", length = 10, nullable = true)
    @Schema(description = "최종학력코드", nullable = true)
    private String fnlEdbcd; //--최종학력코드

    @Column(name = "hndps_yn", length = 1, nullable = true)
    @Schema(description = "장애인여부", nullable = true)
    private String hndpsYn; //--장애인여부

    @Column(name = "hnd_grdcd", length = 10, nullable = true)
    @Schema(description = "장애등급코드", nullable = true)
    private String hndGrdcd; //--장애등급코드

    @Column(name = "hnd_grd_vald_trm", length = 8, nullable = true)
    @Schema(description = "장애등급유효기간", nullable = true)
    private String hndGrdValdTrm; //--장애등급유효기간

    @Column(name = "hndnm", length = 100, nullable = true)
    @Schema(description = "장애명", nullable = true)
    private String hndnm; //--장애명

    @Column(name = "hnd_grdpa_cd", length = 10, nullable = true)
    @Schema(description = "장애급호코드", nullable = true)
    private String hndGrdpaCd; //--장애급호코드

    @Column(name = "ntn_mrtmn_yn", length = 1, nullable = true)
    @Schema(description = "국가유공자여부", nullable = true)
    private String ntnMrtmnYn; //--국가유공자여부

    @Column(name = "rwxno", length = 20, nullable = true)
    @Schema(description = "보훈번호", nullable = true)
    private String rwxno; //--보훈번호

    @Column(name = "btplc_cd", length = 10, nullable = true)
    @Schema(description = "출생지코드", nullable = true)
    private String btplcCd; //--출생지코드

    @Column(name = "grdu_sch", length = 50, nullable = true)
    @Schema(description = "출신학교", nullable = true)
    private String grduSch; //--출신학교

    @Column(name = "slcr_flgcd", length = 10, nullable = true)
    @Schema(description = "양음구분코드", nullable = true)
    private String slcrFlgcd; //--양음구분코드

    @Column(name = "rl_brtyr_mndy", length = 8, nullable = true)
    @Schema(description = "실제생년월일", nullable = true)
    private String rlBrtyrMndy; //--실제생년월일

    @Column(name = "rh_tycd", length = 10, nullable = true)
    @Schema(description = "rh형태코드", nullable = true)
    private String rhTycd; //--rh형태코드

    @Column(name = "bldty_cd", length = 10, nullable = true)
    @Schema(description = "혈액형코드", nullable = true)
    private String bldtyCd; //--혈액형코드

    @Column(name = "wpcnm", length = 100, nullable = true)
    @Schema(description = "직장명", nullable = true)
    private String wpcnm; //--직장명

    @Column(name = "depnm", length = 100, nullable = true)
    @Schema(description = "부서명", nullable = true)
    private String depnm; //--부서명

    @Column(name = "ptn", length = 50, nullable = true)
    @Schema(description = "직위", nullable = true)
    private String ptn; //--직위

    @Column(name = "bdt", length = 50, nullable = true)
    @Schema(description = "직무", nullable = true)
    private String bdt; //--직무

    @Column(name = "bnnm", length = 300, nullable = true)
    @Schema(description = "업종명", nullable = true)
    private String bnnm; //--업종명

    @Column(name = "jb_dt", length = 50, nullable = true)
    @Schema(description = "직업상세", nullable = true)
    private String jbDt; //--직업상세

    @Column(name = "emp_tycd", length = 10, nullable = true)
    @Schema(description = "고용형태코드", nullable = true)
    private String empTycd; //--고용형태코드

    @Column(name = "wrk_arecd", length = 10, nullable = true)
    @Schema(description = "근무지역코드", nullable = true)
    private String wrkArecd; //--근무지역코드

    @Column(name = "sexcd", length = 10, nullable = true)
    @Schema(description = "성별코드", nullable = true)
    private String sexcd; //--성별코드

    @Column(name = "ba_life_sadps_yn", length = 1, nullable = true)
    @Schema(description = "기초생활수급자여부", nullable = true)
    private String baLifeSadpsYn; //--기초생활수급자여부

    @Column(name = "smok_yn", length = 1, nullable = true)
    @Schema(description = "흡연여부", nullable = true)
    private String smokYn; //--흡연여부

    @Column(name = "de_yn", length = 1, nullable = true)
    @Schema(description = "사망여부", nullable = true)
    private String deYn; //--사망여부

    @Column(name = "htn", length = 50, nullable = true)
    @Schema(description = "고향", nullable = true)
    private String htn; //--고향

    @Column(name = "wot_yn", length = 1, nullable = true)
    @Schema(description = "맞벌이여부", nullable = true)
    private String wotYn; //--맞벌이여부

    @Column(name = "frg_rlnm_ctfct_flgcd", length = 10, nullable = true)
    @Schema(description = "외국인실명증표구분코드", nullable = true)
    private String frgRlnmCtfctFlgcd; //--외국인실명증표구분코드

    @Column(name = "ntlcd", length = 10, nullable = true)
    @Schema(description = "국적코드", nullable = true)
    private String ntlcd; //--국적코드

    @Column(name = "pspno", length = 48, nullable = true)
    @Schema(description = "여권번호", nullable = true)
    private String pspno; //--여권번호

    @Column(name = "jb_ch_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "직업변경순번", nullable = true)
    private BigDecimal jbChSeqno; //--직업변경순번

    @Column(name = "jbcd", length = 10, nullable = true)
    @Schema(description = "직업코드", nullable = true)
    private String jbcd; //--직업코드

    @Column(name = "injr_rnkcd", length = 10, nullable = true)
    @Schema(description = "상해급수코드", nullable = true)
    private String injrRnkcd; //--상해급수코드

    @Column(name = "onw_jb_cnf_flgcd", length = 10, nullable = true)
    @Schema(description = "신구직업확인구분코드", nullable = true)
    private String onwJbCnfFlgcd; //--신구직업확인구분코드

    @Column(name = "rltn_bzwpl_pstdt", nullable = true)
    @Schema(description = "연계사업장소속일자", nullable = true)
    private Date rltnBzwplPstdt; //--연계사업장소속일자

    @Column(name = "rltn_bzwpl_rgtr_flgcd", length = 10, nullable = true)
    @Schema(description = "연계사업장등록자구분코드", nullable = true)
    private String rltnBzwplRgtrFlgcd; //--연계사업장등록자구분코드

    @Column(name = "rlnm_cnf_flgcd", length = 10, nullable = true)
    @Schema(description = "실명확인구분코드", nullable = true)
    private String rlnmCnfFlgcd; //--실명확인구분코드

    @Column(name = "cnv_hp_tmst_cd", length = 10, nullable = true)
    @Schema(description = "통화희망시간대코드", nullable = true)
    private String cnvHpTmstCd; //--통화희망시간대코드

    @Column(name = "born_yr", length = 4, nullable = true)
    @Schema(description = "출생년도", nullable = true)
    private String bornYr; //--출생년도

    @Column(name = "born_mndy", length = 4, nullable = true)
    @Schema(description = "출생월일", nullable = true)
    private String bornMndy; //--출생월일

    @Column(name = "rl_born_mndy", length = 4, nullable = true)
    @Schema(description = "실제출생월일", nullable = true)
    private String rlBornMndy; //--실제출생월일

    @Column(name = "mktg_agre_yn", length = 1, nullable = true)
    @Schema(description = "마케팅동의여부", nullable = true)
    private String mktgAgreYn; //--마케팅동의여부

    @Column(name = "gdint_crdio_agre_yn", length = 1, nullable = true)
    @Schema(description = "상품소개신용정보제공동의여부", nullable = true)
    private String gdintCrdioAgreYn; //--상품소개신용정보제공동의여부

    @Column(name = "doncl_yn", length = 1, nullable = true)
    @Schema(description = "두낫콜여부", nullable = true)
    private String donclYn; //--두낫콜여부

    @Column(name = "dm_rcv_yn", length = 1, nullable = true)
    @Schema(description = "dm수신여부", nullable = true)
    private String dmRcvYn; //--dm수신여부

    @Column(name = "mktg_sms_rcv_yn", length = 1, nullable = true)
    @Schema(description = "마케팅sms수신여부", nullable = true)
    private String mktgSmsRcvYn; //--마케팅sms수신여부

    @Column(name = "mktg_tl_rcv_yn", length = 1, nullable = true)
    @Schema(description = "마케팅전화수신여부", nullable = true)
    private String mktgTlRcvYn; //--마케팅전화수신여부

    @Column(name = "mktg_mail_rcv_yn", length = 1, nullable = true)
    @Schema(description = "마케팅이메일수신여부", nullable = true)
    private String mktgMailRcvYn; //--마케팅이메일수신여부

    @Column(name = "mktg_dm_rcv_yn", length = 1, nullable = true)
    @Schema(description = "마케팅dm수신여부", nullable = true)
    private String mktgDmRcvYn; //--마케팅dm수신여부

    @Column(name = "cer_of_agre_yn", length = 1, nullable = true)
    @Schema(description = "모집자제공동의여부", nullable = true)
    private String cerOfAgreYn; //--모집자제공동의여부

    @Column(name = "drve_licno", length = 48, nullable = true)
    @Schema(description = "운전면허번호", nullable = true)
    private String drveLicno; //--운전면허번호

    @Column(name = "carno", length = 50, nullable = true)
    @Schema(description = "차량번호", nullable = true)
    private String carno; //--차량번호

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
    public CusCtm(String ctmno, String ctmDscno, String hnglCtmnm, String engCtmnm, String chncCtmnm, String hnglAbrvCtmnm, String engAbrvCtmnm, String ctmTpcd, String crOwnYn, String drveYn, String ctmDatAcqPtncd, String frgDlplFlgcd, String fmllvCtmYn, String hmpagAdr, String cybmy, String smsRcvYn, String rlnmCtfctFilePth, String cntrtStRqYn, String tlRcvYn, String crdifUtlAgreYn, String mailRcvYn, String ntcltMailRcvYn, String bzfmlSmsLmitYn, String rgbrdFlgcd, String mntrBkcd, String mntrBkBrcd, String etAdrFlgcd, String cnnCmpcd, String ctmDscnoFlgcd, String spclRelCtmYn, String pdtRsno, String pdtnm, String indpdMrtmnYn, String dfltPtYn, String dmrcy518InjdYn, String rltnBzwplCd, BigDecimal rltnBzwplSeqno, String psnInfoCvapYn, String rcmnm, String rcmRsno, String dherRcmRelcd, String bzpsTpcd, String ntpSclcd, String bzpsBstnm, String bzpsImnm, BigDecimal empct, BigDecimal slamt, BigDecimal capt, Date fnddt, Date clodt, String dlncd, String bzwplOwnYn, BigDecimal mnPdtOutPdtct, String bdlTfPypsbYn, String stdIndCsfcd, String ntpTycd, String lststFlgcd, String crpno, String clgmmFlgcd, String grFlgcd, String grTpcd, String bzmno, String crpTpcd, String wdgYn, String relgnCd, String fnlEdbcd, String hndpsYn, String hndGrdcd, String hndGrdValdTrm, String hndnm, String hndGrdpaCd, String ntnMrtmnYn, String rwxno, String btplcCd, String grduSch, String slcrFlgcd, String rlBrtyrMndy, String rhTycd, String bldtyCd, String wpcnm, String depnm, String ptn, String bdt, String bnnm, String jbDt, String empTycd, String wrkArecd, String sexcd, String baLifeSadpsYn, String smokYn, String deYn, String htn, String wotYn, String frgRlnmCtfctFlgcd, String ntlcd, String pspno, BigDecimal jbChSeqno, String jbcd, String injrRnkcd, String onwJbCnfFlgcd, Date rltnBzwplPstdt, String rltnBzwplRgtrFlgcd, String rlnmCnfFlgcd, String cnvHpTmstCd, String bornYr, String bornMndy, String rlBornMndy, String mktgAgreYn, String gdintCrdioAgreYn, String donclYn, String dmRcvYn, String mktgSmsRcvYn, String mktgTlRcvYn, String mktgMailRcvYn, String mktgDmRcvYn, String cerOfAgreYn, String drveLicno, String carno, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.ctmno = ctmno;
        this.ctmDscno = ctmDscno;
        this.hnglCtmnm = hnglCtmnm;
        this.engCtmnm = engCtmnm;
        this.chncCtmnm = chncCtmnm;
        this.hnglAbrvCtmnm = hnglAbrvCtmnm;
        this.engAbrvCtmnm = engAbrvCtmnm;
        this.ctmTpcd = ctmTpcd;
        this.crOwnYn = crOwnYn;
        this.drveYn = drveYn;
        this.ctmDatAcqPtncd = ctmDatAcqPtncd;
        this.frgDlplFlgcd = frgDlplFlgcd;
        this.fmllvCtmYn = fmllvCtmYn;
        this.hmpagAdr = hmpagAdr;
        this.cybmy = cybmy;
        this.smsRcvYn = smsRcvYn;
        this.rlnmCtfctFilePth = rlnmCtfctFilePth;
        this.cntrtStRqYn = cntrtStRqYn;
        this.tlRcvYn = tlRcvYn;
        this.crdifUtlAgreYn = crdifUtlAgreYn;
        this.mailRcvYn = mailRcvYn;
        this.ntcltMailRcvYn = ntcltMailRcvYn;
        this.bzfmlSmsLmitYn = bzfmlSmsLmitYn;
        this.rgbrdFlgcd = rgbrdFlgcd;
        this.mntrBkcd = mntrBkcd;
        this.mntrBkBrcd = mntrBkBrcd;
        this.etAdrFlgcd = etAdrFlgcd;
        this.cnnCmpcd = cnnCmpcd;
        this.ctmDscnoFlgcd = ctmDscnoFlgcd;
        this.spclRelCtmYn = spclRelCtmYn;
        this.pdtRsno = pdtRsno;
        this.pdtnm = pdtnm;
        this.indpdMrtmnYn = indpdMrtmnYn;
        this.dfltPtYn = dfltPtYn;
        this.dmrcy518InjdYn = dmrcy518InjdYn;
        this.rltnBzwplCd = rltnBzwplCd;
        this.rltnBzwplSeqno = rltnBzwplSeqno;
        this.psnInfoCvapYn = psnInfoCvapYn;
        this.rcmnm = rcmnm;
        this.rcmRsno = rcmRsno;
        this.dherRcmRelcd = dherRcmRelcd;
        this.bzpsTpcd = bzpsTpcd;
        this.ntpSclcd = ntpSclcd;
        this.bzpsBstnm = bzpsBstnm;
        this.bzpsImnm = bzpsImnm;
        this.empct = empct;
        this.slamt = slamt;
        this.capt = capt;
        this.fnddt = fnddt;
        this.clodt = clodt;
        this.dlncd = dlncd;
        this.bzwplOwnYn = bzwplOwnYn;
        this.mnPdtOutPdtct = mnPdtOutPdtct;
        this.bdlTfPypsbYn = bdlTfPypsbYn;
        this.stdIndCsfcd = stdIndCsfcd;
        this.ntpTycd = ntpTycd;
        this.lststFlgcd = lststFlgcd;
        this.crpno = crpno;
        this.clgmmFlgcd = clgmmFlgcd;
        this.grFlgcd = grFlgcd;
        this.grTpcd = grTpcd;
        this.bzmno = bzmno;
        this.crpTpcd = crpTpcd;
        this.wdgYn = wdgYn;
        this.relgnCd = relgnCd;
        this.fnlEdbcd = fnlEdbcd;
        this.hndpsYn = hndpsYn;
        this.hndGrdcd = hndGrdcd;
        this.hndGrdValdTrm = hndGrdValdTrm;
        this.hndnm = hndnm;
        this.hndGrdpaCd = hndGrdpaCd;
        this.ntnMrtmnYn = ntnMrtmnYn;
        this.rwxno = rwxno;
        this.btplcCd = btplcCd;
        this.grduSch = grduSch;
        this.slcrFlgcd = slcrFlgcd;
        this.rlBrtyrMndy = rlBrtyrMndy;
        this.rhTycd = rhTycd;
        this.bldtyCd = bldtyCd;
        this.wpcnm = wpcnm;
        this.depnm = depnm;
        this.ptn = ptn;
        this.bdt = bdt;
        this.bnnm = bnnm;
        this.jbDt = jbDt;
        this.empTycd = empTycd;
        this.wrkArecd = wrkArecd;
        this.sexcd = sexcd;
        this.baLifeSadpsYn = baLifeSadpsYn;
        this.smokYn = smokYn;
        this.deYn = deYn;
        this.htn = htn;
        this.wotYn = wotYn;
        this.frgRlnmCtfctFlgcd = frgRlnmCtfctFlgcd;
        this.ntlcd = ntlcd;
        this.pspno = pspno;
        this.jbChSeqno = jbChSeqno;
        this.jbcd = jbcd;
        this.injrRnkcd = injrRnkcd;
        this.onwJbCnfFlgcd = onwJbCnfFlgcd;
        this.rltnBzwplPstdt = rltnBzwplPstdt;
        this.rltnBzwplRgtrFlgcd = rltnBzwplRgtrFlgcd;
        this.rlnmCnfFlgcd = rlnmCnfFlgcd;
        this.cnvHpTmstCd = cnvHpTmstCd;
        this.bornYr = bornYr;
        this.bornMndy = bornMndy;
        this.rlBornMndy = rlBornMndy;
        this.mktgAgreYn = mktgAgreYn;
        this.gdintCrdioAgreYn = gdintCrdioAgreYn;
        this.donclYn = donclYn;
        this.dmRcvYn = dmRcvYn;
        this.mktgSmsRcvYn = mktgSmsRcvYn;
        this.mktgTlRcvYn = mktgTlRcvYn;
        this.mktgMailRcvYn = mktgMailRcvYn;
        this.mktgDmRcvYn = mktgDmRcvYn;
        this.cerOfAgreYn = cerOfAgreYn;
        this.drveLicno = drveLicno;
        this.carno = carno;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
