/**
 * {{EntityName}} Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package {{Package}}.domain.entity;

import java.io.Serializable;

{{@IfPKBigDecimal}}import java.math.BigDecimal;
{{@IfPKBlob}}import java.sql.Blob;
{{@IfPKClob}}import java.sql.Clob;
{{@IfPKDate}}import java.sql.Date;
{{@IfPKTime}}import java.sql.Time;
{{@IfPKTimestamp}}import java.sql.Timestamp;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class {{IdType}} implements Serializable {
    {{@EntityPKFunction}}	
}
