package com.skims.client;

import com.skims.dto.GoodsInformationResponse;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@FeignClient(name="igd", url="localhost:8081")
public interface IgdFeignClient {

    @GetMapping("/igd/goods/{goodsCode}")
    Optional<GoodsInformationResponse> getGoodsInformation(@PathVariable String goodsCode);
}
