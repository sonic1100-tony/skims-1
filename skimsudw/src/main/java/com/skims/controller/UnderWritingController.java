package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.constant.PlStcdEnum;
import com.skims.dto.PlanInformationRequest;
import com.skims.dto.PlanInformationResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;

@RestController("/udw/v1")
@Slf4j
public class UnderWritingController {

    @Autowired
    ObjectMapper mapper;

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "자동심사처리 완료", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = PlanInformationRequest.class)) }),
            @ApiResponse(responseCode = "404", description = "보험자동심사처리료계산 오류", content = @Content) })
    @PostMapping("/under-writting/")
    @Operation(summary = "UW심사", description = "자동심사처리 및 심솨결과 Return")
    ResponseEntity<PlanInformationResponse> executePremiumCalculate(@RequestBody PlanInformationRequest request) {

        PlanInformationResponse response = mapper.convertValue(request, PlanInformationResponse.class);

        response.getInsurancePlan().setPlStcd(PlStcdEnum.PL_STCD_42.getCode());
        response.getInsurancePlan().setPlStChdt(LocalDate.now());

        return ResponseEntity.ok().body(response);
    }
}