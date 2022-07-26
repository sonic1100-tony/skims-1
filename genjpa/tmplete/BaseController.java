/**
 * {{EntityName}} Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package {{Package}}.controller;

import java.util.Map;
import java.util.Optional;

{{@IfPKBigDecimal}}import java.math.BigDecimal;
{{@IfPKBlob} import java.sql.Blob;
{{@IfPKClob}}import java.sql.Clob;
{{@IfPKDate}}import java.sql.Date;
{{@IfPKTime}}import java.sql.Time;
{{@IfPKTimestamp}}import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import {{Package}}.domain.entity.{{EntityName}};
{{@IfIdClass}}import {{Package}}.domain.entity.{{IdType}};
import {{Package}}.domain.repository.{{EntityName}}Repository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "{{EntityName}} {{SchemaDesc}} Controller")
@Slf4j
public class {{EntityName}}Controller {

    @Autowired
    {{EntityName}}Repository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "{{SchemaDesc}} 전체조회" , summary = "{{SchemaDesc}} 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the {{CallID}}", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = {{EntityName}}.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/{{CallID}}")
    public ResponseEntity<Page<{{EntityName}}>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "{{SchemaDesc}} Key조회" , description = "{{SchemaDesc}} Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the {{EntityName}}", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = {{EntityName}}.class)) }),
            @ApiResponse(responseCode = "404", description = "{{EntityName}} not found", content = @Content) })
    @GetMapping("/{{CallID}}/{{Key}}")
    public ResponseEntity<{{EntityName}}> getById({{ParamKey}}) {
        Optional<{{EntityName}}> data = repository.findById({{KeyCol}});

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "{{SchemaDesc}} 등록" , description = "{{SchemaDesc}} 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the {{EntityName}}", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = {{EntityName}}.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/{{CallID}}")
    ResponseEntity<{{EntityName}}> postData(@RequestBody {{EntityName}} newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "{{SchemaDesc}} 수정" , description = "{{SchemaDesc}} 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the {{EntityName}}", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = {{EntityName}}.class)) }),
            @ApiResponse(responseCode = "404", description = "{{EntityName}} not found", content = @Content) })
    @PutMapping("/{{CallID}}/{{Key}}")
    ResponseEntity<{{EntityName}}> putData(@RequestBody {{EntityName}} newData, {{ParamKey}}) {
        return repository.findById({{KeyCol}}) //
                .map(oldData -> {
                    {{@PutFunction}}
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "{{SchemaDesc}} 수정" , description = "{{SchemaDesc}} 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the {{EntityName}}", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = {{EntityName}}.class)) }),
            @ApiResponse(responseCode = "404", description = "{{EntityName}} not found", content = @Content) })
	@PatchMapping("/{{CallID}}/{{Key}}")
    ResponseEntity<{{EntityName}}> patchData(@RequestBody Map<String, Object> newMap, {{ParamKey}}) {
        {{EntityName}} newData = mapper.convertValue(newMap, {{EntityName}}.class);
        return repository.findById({{KeyCol}}) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						{{@PatchFunction}}
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "{{SchemaDesc}} 삭제" , description = "{{SchemaDesc}} Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the {{EntityName}}", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = {{EntityName}}.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/{{CallID}}/{{Key}}")
    public ResponseEntity<HttpStatus> deleteUser({{ParamKey}}) {
        try {
            repository.deleteById({{KeyCol}});
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
