package com.skims.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ChangePlanStatusRequest implements Serializable {

    /** 설계번호 */
    private String plno;
    /** 설계상태 */
    private String plStcd;
    /** 설계상태 */
    private String plyno;


}
