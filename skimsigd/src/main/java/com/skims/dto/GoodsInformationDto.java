package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GoodsInformationDto {
    /** 상품정보 */
    private GoodsInformationDataDto goodsInformation;

    /** 담보정보 */
    private List<CoverageInformationDataDto> coveragesInformation;

    @Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public static class GoodsInformationDataDto {

        private String gdcd; //--상품코드

        private LocalDate apNddt; //--적용종료일자

        private LocalDate apStrdt; //--적용시작일자

        private String ikdGrpcd; //--보종군코드

        private String insImcd; //--보험종목코드

        private String claLngFlgcd; //--약관언어구분코드

        private String gdTyFlgcd; //--상품형태구분코드

        private String gdSlnm; //--상품판매명

        private String gdShtnm; //--상품단축명

        private String gdKornm; //--상품한글명

        private String gdEnnm; //--상품영문명

        private String gdXpnm; //--상품설명

        private String gdPerYn; //--상품인가여부

        private String gdPernm; //--상품인가명

        private String gdPerTpcd; //--상품인가유형코드

        private Date gdPerdt; //--상품인가일자

        private String gdSlTpcd; //--상품판매유형코드

        private String crOpnBaHms; //--계약개시기본시간

        private String crNdBaHms; //--계약종료기본시간

        private String fcDhYn; //--외화취급여부

        private String reUntFlgcd; //--출재단위구분코드

        private String pymXmpUntFlgcd; //--납입면제단위구분코드

        private String ppyPrmPrmYn; //--선납보험료허용여부

        private BigDecimal ppyPrmMxpsbMc; //--선납보험료최대가능월수

        private String psnclDbinsPrmYn; //--개인별중복보험허용여부

        private String cvInsAvYn; //--전환보험가능여부

        private String autoTfDcYn; //--자동이체할인여부

        private String typeFlgcd; //--종구분코드

        private String typeCnFlgcd; //--종내용구분코드

        private String speScrRnwYn; //--종별화면갱신여부

        private String dvTpcd; //--배당유형코드

        private String prmStrFlgcd; //--보험료구조구분코드

        private String mwRtamtCrFlgcd; //--중도환급금액발생구분코드

        private String ndRtamtCrYn; //--만기환급금액발생여부

        private String dgnGdYn; //--진단상품여부

        private String autoRnwAvYn; //--자동갱신가능여부

        private String prmInpFlgcd; //--보험료입력구분코드

        private String cuPrmOcpymYn; //--적립보험료수시납입여부

        private String ctuCrdtfAvYn; //--계속카드이체가능여부

        private String claLnAvYn; //--약관대출가능여부

        private String sbPymFlgcd; //--대체납입구분코드

        private String sbPymTpcd; //--대체납입유형코드

        private String ageCcStFlgcd; //--연령산출기준구분코드

        private String bzMtdrpCsfcd; //--사업방법서분류코드

        private String isPlChtWrtyn; //--가입설계차트출력여부

        private String xtnTpcd; //--소멸유형코드

        private String xtntmRtamtFlgcd; //--소멸시환급금구분코드

        private BigDecimal trmclExplNtcMntct; //--기간별예시안내개월수

        private String rmimcFlgcd; //--실손의료비구분코드

        private String grIsFlgcd; //--단체가입구분코드

        private String grDcAvYn; //--단체할인가능여부

        private BigDecimal grMnIsPsct; //--단체최소가입인원수

        private String avgRtUsYn; //--평균요율사용여부

        private String prEsPrmYn; //--질권설정허용여부

        private String lowtPrmMncd; //--최저보험료화폐코드

        private BigDecimal lowtPrm; //--최저보험료

        private String cvrPrmSgdlgFlgcd; //--담보보험료단수처리구분코드
    }

    @Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public static class CoverageInformationDataDto {

        private String cvrcd; //--담보코드

        private String cvrPrsnm; //--담보대표명

        private String cvrKornm; //--담보한글명

        private String cvrHnglShtnm; //--담보한글단축명

        private String cvrEnnm; //--담보영문명

        private String cvrEngShtnm; //--담보영문단축명

        private String indpdTrtCvrYn; //--독립특약담보여부

        private Date cvrPerdt; //--담보인가일자

        private String cvrXpnm; //--담보설명

        private String frGdcd; //--최초상품코드

        private Date valdStrdt; //--유효시작일자

        private Date valdNddt; //--유효종료일자

        private String prstLclcd; //--급부대분류코드

        private String prstMdccd; //--급부중분류코드

        private String prstSmccd; //--급부소분류코드

        private String rlpmiFxamtFlgcd; //--실손정액구분코드

        private String gnCncd; //--보장내용코드

        private String cvrSpcd; //--담보특성코드

        private String cpytFlgcd; //--copayment구분코드

        private String uiamtStncd; //--공제금액기준코드

        private String cmpTrmcd; //--보상기간코드

        private String wardDiamtFlgcd; //--병실차액구분코드

        private String nppHlprmNapcFlgcd; //--국민건강보험미적용구분코드




        private String cvrClaCn; //--담보약관내용

        private String cvrBaTrtFlgcd; //--담보기본특약구분코드

        private String isBjYn; //--가입대상여부

        private String isamtNeedYn; //--가입금액필요여부

        private String prmAdmYn; //--보험료관리여부

        private String prmSumBjYn; //--보험료합산대상여부

        private String crLvlCvrYn; //--계약레벨담보여부

        private String pblctOutYn; //--발행물출력여부

        private String scrIdcCvrGpcd; //--화면표시담보그룹코드

        private String pymXmpAvYn; //--납입면제가능여부

        private String xtnAvYn; //--소멸가능여부

        private String dtInpscXstnYn; //--상세입력화면존재여부

        private String ageWkctFlgcd; //--연령주수구분코드

        private BigDecimal mnIsAge; //--최소가입연령

        private BigDecimal mxIsAge; //--최대가입연령

        private String isAvSexcd; //--가입가능성별코드

        private String mrrdBjCvrYn; //--기혼대상담보여부

        private String onwClaFlgcd; //--신구약관구분코드

        private String invcOutPrg; //--송장출력문구

        private String plyOutPrg1; //--증권출력문구1

        private String plyOutPrg2; //--증권출력문구2

        private String inpRtYn; //--입력요율여부

        private BigDecimal lowtInpRt; //--최저입력요율

        private BigDecimal mxInpRt; //--최대입력요율

        private String mdcsRgtBjYn; //--의료비등록대상여부

        private String autoRnwAvYn; //--자동갱신가능여부

        private String cvrDbisFlgcd; //--담보중복가입구분코드

        private String rnwAfCvrcd; //--갱신후담보코드

        private String isAvDrveTycd; //--가입가능운전형태코드

        private String isAvRelFlgcd; //--가입가능관계구분코드

        private String pymCyccd; //--납입주기코드

        private Date slStrdt; //--판매시작일자

        private Date slNddt; //--판매종료일자

        private String dtScrId; //--세부화면id

        private String rnwXcCvrYn; //--갱신전용담보여부

        private Date rlSlOpndt; //--실제판매개시일자

        private Date rlSlNddt; //--실제판매종료일자

        private String coobjIsAvYn; //--공동물건가입가능여부

        private String pymtmAtndMtt; //--지급시유의사항

        private Date nrdpsSlStrdt; //--피보험자판매시작일자

        private Date nrdpsSlNddt; //--피보험자판매종료일자

        private String rlpmiCvrYn; //--실손담보여부

        private String cvrTrtGpFlgcd; //--담보특약그룹구분코드

        private BigDecimal rnwCvrNclmDscrt; //--갱신담보무사고할인율

        private BigDecimal rwcvrNclmAdDscrt; //--갱신담보무사고추가할인율

        private BigDecimal rwcvrNclmAdDctrm; //--갱신담보무사고추가할인기간

        private String rmimcXcptPrmexBjyn; //--실손의료비제외보험료예시대상여부

        private String prsClmCvrcd; //--대표사고담보코드

        private String cvrXcptDlcd; //--담보예외처리코드

        private String ndsXcFlgcd; //--배서전용구분코드

        private String clmNdsXcCvrcd; //--사고배서전용담보코드

        private String cvrDcFlgcd; //--담보할인구분코드

        private String indpdTrtYn; //--독립특약여부

        private String indpdTrtGdcd; //--독립특약상품코드

        private BigDecimal gdCvrDscrt; //--상품담보할인율

        private String sbPymTpcd; //--대체납입유형코드

        private String cvrXtnDlFlgcd; //--담보소멸처리구분코드

        private BigDecimal claSeqno; //--약관순번

        private String ibnrFlgcd; //--ibnr구분코드


        /** 납입기간 */
        private List<CodeValueDataDto> paymentTerm;

        /** 보험기간 */
        private List<CodeValueDataDto> insuranceTerm;

        /** 납입주기 */
        private List<CodeValueDataDto> paymentCycle;
    }

    @Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public static class CodeValueDataDto {

        /** 코드 */
        private String code;

        /** 값 */
        private String value;

        /** 문자값 */
        private String characterValue;

        /** 숫자값 */
        private String numberValue;

        /** 추가정보 */
        private String additionalValue;
    }
}
