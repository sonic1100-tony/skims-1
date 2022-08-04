package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class ContractInformationDto {

    private String plyno;

    private String ndsno;

    private LocalDateTime ndsApDthms;



    private InsuranceContract insuranceContract;

    private List<Contractor> contractors;

    private List<InsuredPerson> insuredPeople;

    private List<Beneficiary> beneficiaries;


    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder(toBuilder = true)
    public static class InsuranceContract {

        private String ndsno; //--배서번호

        private LocalDateTime ndsApStrDthms; //--배서승인시작일시

        private LocalDateTime ndsApNdDthms; //--배서승인종료일시

        private String fnlCrStcd; //--최종계약상태코드

        private String fnlCrDtStcd; //--최종계약세부상태코드

        private LocalDate fnlCrStChdt; //--최종계약상태변경일자

        private LocalDate cnrdt; //--계약일자

        private BigDecimal fnlPymSeq; //--최종납입회차

        private String fnlPymYymm; //--최종납입년월

        private String gdcd; //--상품코드

        private String ikdGrpcd; //--보종군코드

        private LocalDate apldt; //--청약일자

        private String trmSctFlgcd; //--기간구간구분코드

        private LocalDate insSt; //--보험시기

        private LocalDate insClstr; //--보험종기

        private BigDecimal insDays; //--보험일수

        private BigDecimal instrMc; //--보험기간월수

        private BigDecimal fstiRpPrm; //--초회영수보험료

        private String pymTrmFlgcd; //--납입기간구분코드

        private BigDecimal pymTrm; //--납입기간

        private String pymTrmcd; //--납입기간코드

        private BigDecimal rlPymTrm; //--실납입기간

        private String ndFlgcd; //--만기구분코드

        private BigDecimal nd; //--만기

        private String ndcd; //--만기코드

        private BigDecimal rlNdTrm; //--실만기기간

        private String pymCyccd; //--납입주기코드

        private BigDecimal baPrm; //--기본보험료

        private BigDecimal apPrm; //--적용보험료

        private String dhStfno; //--취급직원번호
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder(toBuilder = true)
    public static class Contractor {

        private String ndsno; //--배서번호

        private LocalDateTime ndsApStrDthms; //--배서승인시작일시

        private LocalDateTime ndsApNdDthms; //--배서승인종료일시

        private BigDecimal relpcSeqno; //--관계자순번

        private String relpcTpcd; //--관계자유형코드

        private String relpcStcd; //--관계자상태코드

        private LocalDate stChdt; //--상태변경일자

        private String prsRelpcYn; //--대표관계자여부

        private String ctmno; //--고객번호

        /**
         * 관계자관계
         */
        private String relpcRelcd; //--관계자관계코드


//        private List<Coverage> coverages;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder(toBuilder = true)
    public static class InsuredPerson {

        private String ndsno; //--배서번호

        private LocalDateTime ndsApStrDthms; //--배서승인시작일시

        private LocalDateTime ndsApNdDthms; //--배서승인종료일시

        private BigDecimal relpcSeqno; //--관계자순번

        private String relpcTpcd; //--관계자유형코드

        private String relpcStcd; //--관계자상태코드

        private LocalDate stChdt; //--상태변경일자

        private String prsRelpcYn; //--대표관계자여부

        private String ctmno; //--고객번호


        /**
         * 고객
         */
        private String ctmDscno; //--고객식별번호

        private String hnglCtmnm; //--한글고객명

        private String ctmTpcd; //--고객유형코드


        /**
         * 피보험자
         */
        private String drveTycd; //--운전형태코드

        private String sexcd; //--성별코드

        private BigDecimal age; //--연령

        private String jbcd; //--직업코드

        private BigDecimal jbChSeqno; //--직업변경순번

        private String injrRnkcd; //--상해급수코드


        /**
         * 관계자관계
         */
        private String relpcRelcd; //--관계자관계코드


        private List<Coverage> coverages;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder(toBuilder = true)
    public static class Beneficiary {

        private String ndsno; //--배서번호

        private LocalDateTime ndsApStrDthms; //--배서승인시작일시

        private LocalDateTime ndsApNdDthms; //--배서승인종료일시

        private BigDecimal relpcSeqno; //--관계자순번

        private String relpcTpcd; //--관계자유형코드

        private String relpcStcd; //--관계자상태코드

        private LocalDate stChdt; //--상태변경일자

        private String prsRelpcYn; //--대표관계자여부

        private String ctmno; //--고객번호

        /**
         * 관계자관계
         */
        private String relpcRelcd; //--관계자관계코드
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder(toBuilder = true)
    public static class Coverage {

        private String ndsno; //--배서번호

        private LocalDateTime ndsApStrDthms; //--배서승인시작일시

        private LocalDateTime ndsApNdDthms; //--배서승인종료일시

        private String cvrcd; //--담보코드

        private BigDecimal cvrSeqno; //--담보순번

        private String cvrBaTrtFlgcd; //--담보기본특약구분코드

        private String cvrStcd; //--담보상태코드

        private LocalDate cvrStChdt; //--담보상태변경일자

        private BigDecimal isamt; //--가입금액

        private BigDecimal baPrm; //--기본보험료

        private BigDecimal apPrm; //--적용보험료

        private LocalDate insSt; //--보험시기

        private LocalDate insClstr; //--보험종기

        private String pymCyccd; //--납입주기코드

        private String pymTrmcd; //--납입기간코드

        private String cvrFnlPymYymm; //--담보최종납입년월

        private BigDecimal cvrFnlPymSeq; //--담보최종납입회차

        private String ndFlgcd; //--만기구분코드

        private BigDecimal nd; //--만기

        private String ndcd; //--만기코드

        private BigDecimal rlNdTrm; //--실만기기간

        private String pymTrmFlgcd; //--납입기간구분코드

        private BigDecimal pymTrm; //--납입기간

        private BigDecimal rlPymTrm; //--실납입기간

        private BigDecimal nrdpsApAge; //--피보험자적용연령

        private String isamtCd; //--가입금액코드
    }
}
