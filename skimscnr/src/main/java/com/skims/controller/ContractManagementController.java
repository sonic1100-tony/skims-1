package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.client.IgdFeignClient;
import com.skims.domain.service.ContractInquiryService;
import com.skims.dto.ContractInformationDto;
import com.skims.dto.GoodsInformationResponse;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

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
                    @Content(mediaType = "application/json", schema = @Schema(implementation = ContractInformationDto.class)) }),
            @ApiResponse(responseCode = "404", description = "Contract not found", content = @Content) })
    @GetMapping("/contract/{policyNumber}")
    public ResponseEntity<ContractInformationDto> getContractDetailInformation(@PathVariable String policyNumber) {

        Optional<ContractInformationDto> data = service.getContractDetailInformation(policyNumber);

        Optional<GoodsInformationResponse> goodsInformationResponse = igdFeignClient.getGoodsInformation("LAA201");

        if( goodsInformationResponse.isPresent() ) {
            log.debug(goodsInformationResponse.get().toString());
        }

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
