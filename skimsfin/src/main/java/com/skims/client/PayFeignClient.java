package com.skims.client;

import com.skims.dto.DepositReflectionRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name="pay", url="localhost:8081")
public interface PayFeignClient {

    @PostMapping("/pay/deposit-reflection")
    void reflectDepositAfterReceive(@RequestBody DepositReflectionRequest request);

}
