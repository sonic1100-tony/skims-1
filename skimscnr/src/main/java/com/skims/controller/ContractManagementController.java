package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.client.IgdFeignClient;
import com.skims.domain.service.ContractInquiryService;
import com.skims.dto.ContractInformationDto;
import com.skims.dto.ContractInformationRequest;
import com.skims.dto.ContractInformationResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@Tag(name = "Contract Management Controller")
@Slf4j
public class ContractManagementController {

    @Autowired
    ContractInquiryService service;

    @Autowired
    ObjectMapper mapper;

    @Autowired
    IgdFeignClient igdFeignClient;

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the Contract", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = ContractInformationResponse.class)) }),
            @ApiResponse(responseCode = "404", description = "Contract not found", content = @Content) })
    @GetMapping("/contract/{policyNumber}")
    @Operation(summary = "계약상세정보조회", description = "계약상세정보 조회")
    public ResponseEntity<ContractInformationResponse> getContractDetailInformation(@PathVariable String policyNumber) {

        Optional<ContractInformationDto> data = service.getContractDetailInformation(policyNumber);

//        Optional<GoodsInformationResponse> goodsInformationResponse = igdFeignClient.getGoodsInformation("LAA201");
//
//        if( goodsInformationResponse.isPresent() ) {
//            log.debug(goodsInformationResponse.get().toString());
//        }

        if (data.isPresent()) {
            return ResponseEntity.ok().body(mapper.convertValue(data.get(), ContractInformationResponse.class));
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "계약생성완료", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = ContractInformationRequest.class)) }),
            @ApiResponse(responseCode = "404", description = "계약생성불가", content = @Content) })
    @PostMapping("/contract-create")
    @Operation(summary = "계약상세생성", description = "계약상세 생성")
    public ResponseEntity<String> createContractDetailInformation(@RequestBody ContractInformationRequest request) {

        log.debug("Controller createContractDetailInformation ContractInformationRequest: {}", request.toString());

        return ResponseEntity.ok().body(service.createContractDetailInformation(mapper.convertValue(request, ContractInformationDto.class)).getPlyno());
    }
}
