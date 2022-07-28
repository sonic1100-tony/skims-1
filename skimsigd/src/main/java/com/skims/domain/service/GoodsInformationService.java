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
                dto.setGoodsInformation(mapper.convertValue(e, GoodsInformationDto.GoodsInformationDataDto.class));
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

                return coverageInformationDataDto;
            }).collect(Collectors.toList()));
        }

        if( true ) {
            igdGdRepository.joinGoodsAndCoverage(goodsCode);
        }

        return Optional.ofNullable(dto);
    }
}
