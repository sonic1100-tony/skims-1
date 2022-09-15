package com.skims.client;

import com.skims.dto.ContractInformationRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name="cnr", url="localhost:8081")
public interface CnrFeignClient {

    @PostMapping("/cnr/contract-create")
    ResponseEntity<String> createContractDetailInformation(@RequestBody ContractInformationRequest request);
}
