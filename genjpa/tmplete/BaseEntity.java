/**
 * {{EntityName}} Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package {{Package}}.domain.entity;

import java.io.Serializable;
{{@IfBigDecimal}}import java.math.BigDecimal;
{{@IfBlob}}import java.sql.Blob;
{{@IfClob}}import java.sql.Clob;
{{@IfDate}}import java.sql.Date;
{{@IfTime}}import java.sql.Time;
{{@IfTimestamp}}import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
{{@IfIdentity}}import javax.persistence.GeneratedValue;
{{@IfIdentity}}import javax.persistence.GenerationType;
import javax.persistence.Id;
{{@IfIdClass}}import javax.persistence.IdClass;
{{@IfTemporal}}// import javax.persistence.Temporal;
{{@IfTemporal}}// import javax.persistence.TemporalType;
import javax.persistence.PostLoad;
import javax.persistence.PostPersist;
import javax.persistence.PostRemove;
import javax.persistence.PostUpdate;
import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Entity
@Table(name = "{{TableName}}") {{TableComment}}
@Schema(description = "{{SchemaDesc}}")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
{{@IfIdClass}}@IdClass({{IdType}}.class)
public class {{EntityName}} implements Serializable {
    {{@EntityFunction}}
    @Builder
    {{@BuilderFunction}}
	
	//----------------------------------------------------
    // Load/Persist/Update/Remove(조회/신규/수정/삭제)
    // Entity Pre/Post(이전/이후) 처리에 대한 정의(PreLoad는 없음)
    // * DB의 Trigger와 비슷한 JPA기능
    //----------------------------------------------------
    @PostLoad
    public void onPostLoad() {
        log.info("onPostLoad : Select후 호출" );
    }

    @PrePersist
    public void onPrePersist() {
        log.info("onPrePersist : Insert전 호출");
    }
    
    @PostPersist
    public void onPostPersist() {
        log.info("onPrePersist : Insert후 호출");
    }
    
    @PreUpdate
    public void onPreUpdate() {
        log.info("onPreUpdate : Update전 호출");
    }
    
    @PostUpdate
    public void onPostUpdate() {
        log.info("onPostUpdate : Update후 호출"); 
    }
    
    @PreRemove
    public void onPreRemove() {
        log.info("onPreRemove  : Delete전 호출");    
    }
    
    @PostRemove
    public void onPostRemove() {
        log.info("onPostRemove : Delete후 호출");
    }
}
