package com.skims.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name="cnr", url="localhost:8081")
public interface CnrFeignClient {

    @GetMapping("/cnr/create-policy-number")
    String createPolicyNumber();

}
