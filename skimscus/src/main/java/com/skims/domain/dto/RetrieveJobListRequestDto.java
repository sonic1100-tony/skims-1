package com.skims.domain.dto;

import java.math.BigDecimal;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@Builder
@ToString
public class RetrieveJobListRequestDto {

	private BigDecimal jbChSeqno; //--직업변경순번
	private String jbcd; //--직업코드
	private String jbnm; //--직업명
	private String dtJbnm; //--세부직업명
	
	private String startJbnm; //--시작 직업명
	
	private BigDecimal pprJbChSeqno; //--상위직업변경순번
	private String pprJbcd; //--상위직업코드
}
