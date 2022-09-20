package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.FinPrmRvSb;
import com.skims.domain.service.ReceiveStandbyService;
import com.skims.dto.*;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
//@CrossOrigin(origins = "http://localhost:8080")
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
    void updateReceiveStandby(@RequestBody ReceiveRequest request) throws Exception {
        ReceiveStandbyDto dto = mapper.convertValue(request, ReceiveStandbyDto.class);
        receiveStandbyService.processPremiumReceive(dto);
    }

    @GetMapping("/receive-info/{receiptAdministrationNumber}")
    ReceiveStandbyResponse inquiryReceiveStandby(@PathVariable String receiptAdministrationNumber) {
        ReceiveStandbyDto dto = receiveStandbyService.inquiryReceiveStandby(receiptAdministrationNumber);
        ReceiveStandbyResponse response = mapper.convertValue(dto, ReceiveStandbyResponse.class);
        return response;
    }

    @PostMapping("immediately-withdraw")
    ImmediatelyWithdrawResponse processWithdraw(ImmediatelyWithdrawRequest request){
        ImmediatelyWithdrawDto dto = mapper.convertValue(request, ImmediatelyWithdrawDto.class);
        ImmediatelyWithdrawResponse response = ImmediatelyWithdrawResponse.builder()
                .answerCode(receiveStandbyService.processWithdraw(dto)).build();

        return response;
    }
}
