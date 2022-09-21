package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.client.CnrFeignClient;
import com.skims.domain.service.PlanInformationService;
import com.skims.dto.*;
import io.swagger.v3.oas.annotations.Operation;
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

@RestController("/pln/v1")
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
            @ApiResponse(responseCode = "200", description = "설계상태변경 성공", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = PlanInformationResponse.class)) }),
            @ApiResponse(responseCode = "404", description = "설계상태변경 실패", content = @Content) })
    @PostMapping("/changePlanStatus")
    ResponseEntity<String> changePlanStatus(@RequestBody ChangePlanStatusRequest request) {
        PlanInformationDto dto = mapper.convertValue(request, PlanInformationDto.class);
        dto.setCgafChSeqno(BigDecimal.ONE);
        dto.setInsurancePlan(new PlanInformationDto.InsurancePlan());
        dto.getInsurancePlan().setPlStcd(request.getPlStcd());

        planInformationService.changePlanStatus(dto);

        return ResponseEntity.ok().body(dto.getPlno());

    }

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "계약반영 성공", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = String.class)) }),
            @ApiResponse(responseCode = "404", description = "계약반영 실패", content = @Content) })
    @PostMapping("/reflect-contract/{planNumber}")
    @Operation(summary = "계약반영", description = "설계정보를 조회하고, 계약생성을 호출")
    public ResponseEntity<String> setReflectContract(@PathVariable String planNumber) {

        // 설계조회
        Optional<PlanInformationDto> data = planInformationService.getPlanInformation(planNumber, BigDecimal.ONE);

        if (data.isPresent()) {

            log.debug("Controller setReflectContract PlanInformationDto: {}", data.toString());

            ContractInformationRequest request = mapper.convertValue(data.get(), ContractInformationRequest.class);

            request.setPlyno(data.get().getInsurancePlan().getPlyno());

            request.setInsuranceContract(
                    mapper.convertValue(data.get().getInsurancePlan(),ContractInformationRequest.InsuranceContract.class));

            request.setInsuredPersons(
                    data.get().getInsuredPersons().stream()
                            .map(e->mapper.convertValue(e, ContractInformationRequest.InsuredPerson.class))
                            .collect(Collectors.toList()));

            log.debug("ContractInformationRequest: {}", request.toString());

            // 계약반영
            String plyno = cnrFeignClient.createContractDetailInformation(request).getBody();
            PlanInformationDto dto = data.get();
            dto.getInsurancePlan().setPlyno(plyno);
            dto.getInsurancePlan().setPlStcd("61");

            // 설계상태변경
            planInformationService.changePlanStatus(dto);

            return ResponseEntity.ok().body(plyno);
        }
        else
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
