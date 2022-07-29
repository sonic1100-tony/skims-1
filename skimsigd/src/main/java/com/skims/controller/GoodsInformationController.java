package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.service.GoodsInformationService;
import com.skims.dto.GoodsInformationDto;
import com.skims.dto.GoodsInformationResponse;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;
import java.util.stream.Collectors;

@RestController("/igd/v1")
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
}
