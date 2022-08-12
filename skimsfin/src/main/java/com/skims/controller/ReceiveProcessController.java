package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.FinPrmRvSb;
import com.skims.domain.service.ReceiveStandbyService;
import com.skims.dto.ReceiveStandbyDto;
import com.skims.dto.ReceiveStandbyRequest;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController("/fin/v1")
public class ReceiveProcessController {

    @Autowired
    ReceiveStandbyService receiveStandbyService;

    @Autowired
    ObjectMapper mapper;

    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/receive-standby")
    String insertReceiveStandby(@RequestBody ReceiveStandbyRequest request){

        ReceiveStandbyDto dto = mapper.convertValue(request, ReceiveStandbyDto.class);
        return receiveStandbyService.savePremiumReceiveStandby(dto);
    }

    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/receive")
    void updateReceiveStandby(@RequestBody String receiveStandbyNumber) throws Exception {

        receiveStandbyService.processPremiumReceive(receiveStandbyNumber);
    }
}
