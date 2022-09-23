package com.skims.client;

import com.skims.dto.CusCtmDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.math.BigDecimal;
import java.util.List;

@FeignClient(name="cus", url="localhost:8081")
public interface CusFeignClient {

    @GetMapping("/cus/jobName/{jbChSeqno}/{jbcd}")
    ResponseEntity<String> getJobName(@PathVariable("jbChSeqno") BigDecimal jbChSeqno, @PathVariable("jbcd") String jbcd);

    @GetMapping("/cusFindCtmno/{ctmno}")
    public ResponseEntity<List<CusCtmDto>> getByCtmno(@PathVariable("ctmno") String ctmno);
}
