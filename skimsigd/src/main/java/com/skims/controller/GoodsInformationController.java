package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.service.GoodsInformationService;
import com.skims.dto.GoodsInformationDto;
import com.skims.dto.GoodsInformationResponse;
import com.skims.dto.PlanInformationRequest;
import com.skims.dto.PlanInformationResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController("/igd/v1")
@Slf4j
public class GoodsInformationController {

    @Autowired
    GoodsInformationService goodsInformationService;

    @Autowired
    ObjectMapper mapper;

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the GoodsInformation", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = GoodsInformationResponse.class)) }),
            @ApiResponse(responseCode = "404", description = "Goods not found", content = @Content) })
    @GetMapping("/goods/{goodsCode}")
    @Operation(summary = "상품정보상세조회", description = "가입설계에 필요한 상품정보 조회")
    ResponseEntity<GoodsInformationResponse> getGoodsInformationAll(@PathVariable String goodsCode) {

        Optional<GoodsInformationDto> data = goodsInformationService.getGoodsInformationAll(goodsCode);

        if (data.isPresent()) {
            GoodsInformationResponse response = GoodsInformationResponse.builder()
                    .goodsInformation(mapper.convertValue(data.get().getGoodsInformation(), GoodsInformationResponse.GoodsInformationDataDto.class))
                    .coverageInformation(data.get().getCoveragesInformation().stream().map(e->
                            mapper.convertValue(e, GoodsInformationResponse.CoverageInformationDataDto.class))
                            .collect(Collectors.toList()))
                    .build();
            return ResponseEntity.ok().body(response);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "보험료계산 완료", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = PlanInformationRequest.class)) }),
            @ApiResponse(responseCode = "404", description = "보험료계산 오류", content = @Content) })
    @PostMapping("/premium-calculate/{goodsCode}")
    @Operation(summary = "보험료계산", description = "보험료 계산결과를 제공")
    ResponseEntity<PlanInformationResponse> executePremiumCalculate(@RequestBody PlanInformationRequest request, @PathVariable String goodsCode) {

        log.debug("상품코드=====", goodsCode);

        PlanInformationResponse response = mapper.convertValue(request, PlanInformationResponse.class);

        response.setInsurancePlan(response.getInsurancePlan().toBuilder()
                .baPrm(BigDecimal.valueOf(1000000L))
                .apPrm(BigDecimal.valueOf(1000000L))
                .build());

        response.getInsuredPersons().forEach(e->{
            e.getCoverages().stream().map(ee-> {
                ee.setBaPrm(BigDecimal.valueOf(1000000L));
                ee.setApPrm(BigDecimal.valueOf(1000000L));
                return ee;
            });
        });

        return ResponseEntity.ok().body(response);
    }
}
