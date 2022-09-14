package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.client.CnrFeignClient;
import com.skims.domain.service.PlanInformationService;
import com.skims.dto.ContractInformationRequest;
import com.skims.dto.PlanInformationDto;
import com.skims.dto.PlanInformationRequest;
import com.skims.dto.PlanInformationResponse;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import lombok.extern.slf4j.Slf4j;
import org.springdoc.api.annotations.ParameterObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController("/igd/v1")
@Slf4j
public class PlanInformationController {

    @Autowired
    PlanInformationService planInformationService;

    @Autowired
    ObjectMapper mapper;

    @Autowired
    CnrFeignClient cnrFeignClient;

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


    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the PlanInformation", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = String.class)) }),
            @ApiResponse(responseCode = "404", description = "Plan not found", content = @Content) })
    @GetMapping("/reflect-contract/{planNumber}")
    public ResponseEntity<String> setReflectContract(@PathVariable String planNumber) {

        Optional<PlanInformationDto> data = planInformationService.getPlanInformation(planNumber, BigDecimal.ONE);

        if (data.isPresent()) {

            log.debug("Controller setReflectContract PlanInformationDto: {}", data.toString());

            ContractInformationRequest request = mapper.convertValue(data.get(), ContractInformationRequest.class);

            request.setInsuranceContract(mapper.convertValue(data.get().getInsurancePlan(),ContractInformationRequest.InsuranceContract.class));

            request.setInsuredPersons(data.get().getInsuredPersons().stream().map(e->{
                return mapper.convertValue(e, ContractInformationRequest.InsuredPerson.class);
            }).collect(Collectors.toList()));

            log.debug("ContractInformationRequest: {}", request.toString());

            return ResponseEntity.ok().body(cnrFeignClient.createContractDetailInformation(request).getBody());
        }
        else
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
