package com.skims.client;

import com.skims.dto.ReceiveStandbyRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name="fin", url="localhost:8081")
public interface FinFeignClient {

    @PostMapping("/fin/receive-standby")
    String insertReceiveStandby(@RequestBody ReceiveStandbyRequest request);

}
