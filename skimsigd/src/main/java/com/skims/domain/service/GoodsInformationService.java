package com.skims.domain.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.IgdGd;
import com.skims.domain.entity.IgdGdCvr;
import com.skims.domain.repository.IgdCvrRepository;
import com.skims.domain.repository.IgdGdCvrRepository;
import com.skims.domain.repository.IgdGdRepository;
import com.skims.dto.GoodsInformationDto;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Predicate;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class GoodsInformationService {

    @Autowired
    IgdGdRepository igdGdRepository;
    @Autowired
    IgdCvrRepository igdCvrRepository;
    @Autowired
    IgdGdCvrRepository igdGdCvrRepository;

    @Autowired
    ObjectMapper mapper;

    public Optional<GoodsInformationDto> getGoodsInformationAll(String goodsCode) {

        GoodsInformationDto dto = new GoodsInformationDto();

        if( true ) {
            // 상품정보 조회
            Specification<IgdGd> specification = (root, query, builder) -> {
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(builder.equal(root.get("gdcd"), goodsCode));
                predicates.add(builder.lessThanOrEqualTo(root.get("apStrdt"), LocalDate.now()));
                predicates.add(builder.greaterThan(root.get("apNddt"), LocalDate.now()));

                return builder.and(predicates.toArray(new Predicate[predicates.size()]));
            };

            Sort sort = Sort.by(Sort.Direction.ASC, "gdcd");

            List<IgdGd> igdGds = igdGdRepository.findAll(specification, sort);

            igdGds.forEach(e->{
                GoodsInformationDto.GoodsInformationDataDto goodsInformationDataDto = mapper.convertValue(e, GoodsInformationDto.GoodsInformationDataDto.class);

                List<GoodsInformationDto.CodeValueDataDto> plStcdDataDtos = new ArrayList<>();
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("설계중").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("11").value("설계삭제").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("보험료계산").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("설계완료").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("04").value("심사의뢰").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("41").value("심사중").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("42").value("심사승인").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("43").value("심사반려").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("05").value("청약완료").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("51").value("수납대기").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("06").value("수납완료").build());
                plStcdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("61").value("계약반영").build());
                goodsInformationDataDto.setPlStcd(plStcdDataDtos);


                List<GoodsInformationDto.CodeValueDataDto> paymentTermDataDtos = new ArrayList<>();
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02001").value("1년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02002").value("2년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02003").value("3년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02004").value("4년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02005").value("5년").build());
                goodsInformationDataDto.setPaymentTerm(paymentTermDataDtos);


                List<GoodsInformationDto.CodeValueDataDto> insuranceTermDataDtos = new ArrayList<>();
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02001").value("1년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02002").value("2년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02003").value("3년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02004").value("4년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02005").value("5년").build());
                goodsInformationDataDto.setInsuranceTerm(insuranceTermDataDtos);

                List<GoodsInformationDto.CodeValueDataDto> paymentCycleDataDtos = new ArrayList<>();
                paymentCycleDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("월납").build());
                paymentCycleDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("3월납").build());
                paymentCycleDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("06").value("6월납").build());
                paymentCycleDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("00").value("일시납").build());
                goodsInformationDataDto.setPaymentCycle(paymentCycleDataDtos);

                List<GoodsInformationDto.CodeValueDataDto> drveTycdDataDtos = new ArrayList<>();
                drveTycdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("자가용").build());
                drveTycdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("영업용").build());
                drveTycdDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("업무용").build());
                goodsInformationDataDto.setDrveTycd(drveTycdDataDtos);

                List<GoodsInformationDto.CodeValueDataDto> relcdDtos = new ArrayList<>();
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("본인").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("자녀").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("부").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("04").value("모").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("05").value("조부").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("06").value("조모").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("07").value("형재").build());
                relcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("99").value("기타").build());
                goodsInformationDataDto.setRelcd(relcdDtos);

                List<GoodsInformationDto.CodeValueDataDto> injrRnkcdDtos = new ArrayList<>();
                injrRnkcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("1급").build());
                injrRnkcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("2급").build());
                injrRnkcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("3급").build());
                injrRnkcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("04").value("4급").build());
                goodsInformationDataDto.setInjrRnkcd(injrRnkcdDtos);

                List<GoodsInformationDto.CodeValueDataDto> twhvcSubCvrtrIsFlgcdDtos = new ArrayList<>();
                twhvcSubCvrtrIsFlgcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("1").value("가입").build());
                twhvcSubCvrtrIsFlgcdDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("0").value("미가입").build());

                dto.setGoodsInformation(goodsInformationDataDto);
            });
        }

        if( true ) {
            // 담보정보 조회
            Specification<IgdGdCvr> specification = (root, query, builder) -> {
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(builder.equal(root.get("gdcd"), goodsCode));
                predicates.add(builder.lessThanOrEqualTo(root.get("apStrdt"), LocalDate.now()));
                predicates.add(builder.greaterThan(root.get("apNddt"), LocalDate.now()));

                return builder.and(predicates.toArray(new Predicate[predicates.size()]));
            };

            Sort sort = Sort.by(Sort.Direction.ASC, "cvrcd");

//            List<IgdGdCvr> igdGds = igdGdCvrRepository.findAll(specification, sort);
//
//            igdGds.forEach(e->{
//                GoodsInformationDto.CoverageInformationDataDto coverageInformationDataDto = mapper.convertValue(e, GoodsInformationDto.CoverageInformationDataDto.class);
//
//                BeanUtils.copyProperties(mapper.convertValue(igdCvrRepository.findById(e.getCvrcd()), GoodsInformationDto.CoverageInformationDataDto.class),
//                        coverageInformationDataDto);
//            });
//
//            List<GoodsInformationDto.CoverageInformationDataDto> dataDtos = igdGdCvrRepository.findAll(specification, sort).stream().map(e-> {
//                GoodsInformationDto.CoverageInformationDataDto coverageInformationDataDto = mapper.convertValue(e, GoodsInformationDto.CoverageInformationDataDto.class);
//
//                BeanUtils.copyProperties(mapper.convertValue(igdCvrRepository.findById(e.getCvrcd()), GoodsInformationDto.CoverageInformationDataDto.class),
//                        coverageInformationDataDto);
//
//                return coverageInformationDataDto;
//            }).collect(Collectors.toList());


            dto.setCoveragesInformation(igdGdCvrRepository.findAll(specification, sort).stream().map(e-> {

                GoodsInformationDto.CoverageInformationDataDto coverageInformationDataDto = mapper.convertValue(e, GoodsInformationDto.CoverageInformationDataDto.class);

                BeanUtils.copyProperties(mapper.convertValue(igdCvrRepository.findById(e.getCvrcd()), GoodsInformationDto.CoverageInformationDataDto.class),
                        coverageInformationDataDto);

                List<GoodsInformationDto.CodeValueDataDto> paymentTermDataDtos = new ArrayList<>();
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("1년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("2년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("3년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("04").value("4년").build());
                paymentTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("05").value("5년").build());
                coverageInformationDataDto.setPaymentTerm(paymentTermDataDtos);

                List<GoodsInformationDto.CodeValueDataDto> insuranceTermDataDtos = new ArrayList<>();
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("1년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("2년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("3년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("04").value("4년").build());
                insuranceTermDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("05").value("5년").build());
                coverageInformationDataDto.setInsuranceTerm(insuranceTermDataDtos);

                List<GoodsInformationDto.CodeValueDataDto> isamtDataDtos = new ArrayList<>();
                isamtDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("01").value("10,000,000").numberValue("10000000").build());
                isamtDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("02").value("20,000,000").numberValue("20000000").build());
                isamtDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("03").value("30,000,000").numberValue("30000000").build());
                isamtDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("04").value("40,000,000").numberValue("40000000").build());
                isamtDataDtos.add(GoodsInformationDto.CodeValueDataDto.builder()
                        .code("05").value("50,000,000").numberValue("50000000").build());
                coverageInformationDataDto.setInsuranceTerm(isamtDataDtos);

                return coverageInformationDataDto;
            }).collect(Collectors.toList()));
        }

        if( true ) {
            igdGdRepository.joinGoodsAndCoverage(goodsCode);
        }

        return Optional.ofNullable(dto);
    }
}
