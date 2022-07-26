/**
 * InsUdwr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.sql.Date;

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
import com.skims.domain.entity.InsUdwr;
import com.skims.domain.entity.InsUdwrPK;
import com.skims.domain.repository.InsUdwrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsUdwr 심사자 Controller")
@Slf4j
public class InsUdwrController {

    @Autowired
    InsUdwrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "심사자 전체조회" , summary = "심사자 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insudwrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUdwr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insudwrs")
    public ResponseEntity<Page<InsUdwr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "심사자 Key조회" , description = "심사자 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsUdwr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUdwr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsUdwr not found", content = @Content) })
    @GetMapping("/insudwrs/{udStfno}/{udPlFlgcd}/{udPrioRancd}/{udlmiTpFlgcd}/{apStrdt}")
    public ResponseEntity<InsUdwr> getById(@PathVariable("udStfno") String udStfno, @PathVariable("udPlFlgcd") String udPlFlgcd, @PathVariable("udPrioRancd") String udPrioRancd, @PathVariable("udlmiTpFlgcd") String udlmiTpFlgcd, @PathVariable("apStrdt") Date apStrdt) {
        Optional<InsUdwr> data = repository.findById(new InsUdwrPK(udStfno, udPlFlgcd, udPrioRancd, udlmiTpFlgcd, apStrdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "심사자 등록" , description = "심사자 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsUdwr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUdwr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insudwrs")
    ResponseEntity<InsUdwr> postData(@RequestBody InsUdwr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "심사자 수정" , description = "심사자 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsUdwr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUdwr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsUdwr not found", content = @Content) })
    @PutMapping("/insudwrs/{udStfno}/{udPlFlgcd}/{udPrioRancd}/{udlmiTpFlgcd}/{apStrdt}")
    ResponseEntity<InsUdwr> putData(@RequestBody InsUdwr newData, @PathVariable("udStfno") String udStfno, @PathVariable("udPlFlgcd") String udPlFlgcd, @PathVariable("udPrioRancd") String udPrioRancd, @PathVariable("udlmiTpFlgcd") String udlmiTpFlgcd, @PathVariable("apStrdt") Date apStrdt) {
        return repository.findById(new InsUdwrPK(udStfno, udPlFlgcd, udPrioRancd, udlmiTpFlgcd, apStrdt)) //
                .map(oldData -> {
                    newData.setUdStfno(oldData.getUdStfno());
                    newData.setUdPlFlgcd(oldData.getUdPlFlgcd());
                    newData.setUdPrioRancd(oldData.getUdPrioRancd());
                    newData.setUdlmiTpFlgcd(oldData.getUdlmiTpFlgcd());
                    newData.setApStrdt(oldData.getApStrdt());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "심사자 수정" , description = "심사자 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsUdwr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUdwr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsUdwr not found", content = @Content) })
	@PatchMapping("/insudwrs/{udStfno}/{udPlFlgcd}/{udPrioRancd}/{udlmiTpFlgcd}/{apStrdt}")
    ResponseEntity<InsUdwr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("udStfno") String udStfno, @PathVariable("udPlFlgcd") String udPlFlgcd, @PathVariable("udPrioRancd") String udPrioRancd, @PathVariable("udlmiTpFlgcd") String udlmiTpFlgcd, @PathVariable("apStrdt") Date apStrdt) {
        InsUdwr newData = mapper.convertValue(newMap, InsUdwr.class);
        return repository.findById(new InsUdwrPK(udStfno, udPlFlgcd, udPrioRancd, udlmiTpFlgcd, apStrdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "asAutcd" : oldData.setAsAutcd(newData.getAsAutcd()); break;
						    case "mdfUsrId" : oldData.setMdfUsrId(newData.getMdfUsrId()); break;
						    case "inpDthms" : oldData.setInpDthms(newData.getInpDthms()); break;
						    case "mdfDthms" : oldData.setMdfDthms(newData.getMdfDthms()); break;
						}
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "심사자 삭제" , description = "심사자 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsUdwr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUdwr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insudwrs/{udStfno}/{udPlFlgcd}/{udPrioRancd}/{udlmiTpFlgcd}/{apStrdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("udStfno") String udStfno, @PathVariable("udPlFlgcd") String udPlFlgcd, @PathVariable("udPrioRancd") String udPrioRancd, @PathVariable("udlmiTpFlgcd") String udlmiTpFlgcd, @PathVariable("apStrdt") Date apStrdt) {
        try {
            repository.deleteById(new InsUdwrPK(udStfno, udPlFlgcd, udPrioRancd, udlmiTpFlgcd, apStrdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
