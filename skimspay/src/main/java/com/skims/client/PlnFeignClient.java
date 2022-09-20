package com.skims.client;

import com.skims.dto.ChangePlanStatusRequest;
import com.skims.dto.ReceiveStandbyRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name="pln", url="localhost:8081")
public interface PlnFeignClient {

    @PostMapping("/pln/reflect-contract/{planNumber}")
    ResponseEntity<String> setReflectContract(@PathVariable String planNumber);

    @PostMapping("pln/changePlanStatus")
    ResponseEntity<String> changePlanStatus(@RequestBody ChangePlanStatusRequest request);
}
