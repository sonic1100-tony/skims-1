package com.skims.client;

import com.skims.dto.ContractInformationRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import java.math.BigDecimal;

@FeignClient(name="igd", url="localhost:8081")
public interface IgdFeignClient {

    @GetMapping("/igd/coverageName/{cvrcd}")
    ResponseEntity<String> getCoverageName(@PathVariable("cvrcd") String cvrcd);
}
