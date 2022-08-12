package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.service.PlanInformationService;
import com.skims.dto.PlanInformationDto;
import com.skims.dto.PlanInformationRequest;
import com.skims.dto.PlanInformationResponse;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springdoc.api.annotations.ParameterObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController("/igd/v1")
public class PlanInformationController {

    @Autowired
    PlanInformationService planInformationService;

    @Autowired
    ObjectMapper mapper;

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the PlanInformation", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = PlanInformationResponse.class)) }),
            @ApiResponse(responseCode = "404", description = "Plan not found", content = @Content) })
    @GetMapping("/planInformation")
    ResponseEntity<PlanInformationResponse> getPlanInformation(@ParameterObject PlanInformationRequest request) {

        Optional<PlanInformationDto> data = planInformationService.getPlanInformation(request.getPlno(), request.getCgafChSeqno());

        if (data.isPresent()) {

            PlanInformationResponse response = mapper.convertValue(data,PlanInformationResponse.class);
            return ResponseEntity.ok().body(response);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the PlanInformation", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = PlanInformationResponse.class)) }),
            @ApiResponse(responseCode = "404", description = "Plan not found", content = @Content) })
    @PostMapping("/savePlanInformation")
    String savePlanInformation(@RequestBody PlanInformationRequest request) {
        PlanInformationDto dto = mapper.convertValue(request, PlanInformationDto.class);
        return planInformationService.savePlanInformation(dto);

    }
}
