package com.skims.dto;

import com.skims.domain.entity.InsCrCvr;
import com.skims.domain.entity.InsCrRelpc;
import com.skims.domain.entity.InsInsCr;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class ContractInformationDto {

    private String policyNumber;

    private InsInsCr insInsCr;

    private List<InsCrRelpc> insCrRelpcs;

    private List<InsCrCvr> insCrCvrs;
}
