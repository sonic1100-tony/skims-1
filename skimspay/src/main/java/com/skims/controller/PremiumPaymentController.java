package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.InsRpAdm;
import com.skims.domain.service.PaymentDecisionService;
import com.skims.dto.DepositReflectionDto;
import com.skims.dto.DepositReflectionRequest;
import com.skims.dto.PaymentDecisionDto;
import com.skims.dto.PaymentDecisionRequest;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController("/ltr/v1/deposit")
public class PremiumPaymentController {
    @Autowired
    PaymentDecisionService paymentDecisionService;

    @Autowired
    ObjectMapper mapper;

    /** 납입확정 처리 **/

    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Insert Receipt And IncomePremium Information", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/receipt")
    public String createPremiumReceipt(final @RequestBody PaymentDecisionRequest request){

        PaymentDecisionDto dto = mapper.convertValue(request, PaymentDecisionDto.class);

        return paymentDecisionService.savePaymentDecision(dto);
    }

    @PostMapping("/deposit-reflection")
    public void reflectDepositAfterReceive(final @RequestBody DepositReflectionRequest request){
        DepositReflectionDto dto = mapper.convertValue(request, DepositReflectionDto.class);
        paymentDecisionService.reflectDepositAfterReceive(dto);
    }

}
