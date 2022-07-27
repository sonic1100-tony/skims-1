/**
 * CusCtmCntad Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;


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
import com.skims.domain.entity.CusCtmCntad;
import com.skims.domain.repository.CusCtmCntadRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusCtmCntad 고객연락처 Controller")
@Slf4j
public class CusCtmCntadController {

    @Autowired
    CusCtmCntadRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "고객연락처 전체조회" , summary = "고객연락처 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cusctmcntads", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntad.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cusctmcntads")
    public ResponseEntity<Page<CusCtmCntad>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "고객연락처 Key조회" , description = "고객연락처 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusCtmCntad", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntad.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmCntad not found", content = @Content) })
    @GetMapping("/cusctmcntads/{aid}")
    public ResponseEntity<CusCtmCntad> getById(@PathVariable("aid") Long aid) {
        Optional<CusCtmCntad> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "고객연락처 등록" , description = "고객연락처 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusCtmCntad", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntad.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cusctmcntads")
    ResponseEntity<CusCtmCntad> postData(@RequestBody CusCtmCntad newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "고객연락처 수정" , description = "고객연락처 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmCntad", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntad.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmCntad not found", content = @Content) })
    @PutMapping("/cusctmcntads/{aid}")
    ResponseEntity<CusCtmCntad> putData(@RequestBody CusCtmCntad newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "고객연락처 수정" , description = "고객연락처 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmCntad", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntad.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmCntad not found", content = @Content) })
	@PatchMapping("/cusctmcntads/{aid}")
    ResponseEntity<CusCtmCntad> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        CusCtmCntad newData = mapper.convertValue(newMap, CusCtmCntad.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "cntadSeqno" : oldData.setCntadSeqno(newData.getCntadSeqno()); break;
						    case "apNdDthms" : oldData.setApNdDthms(newData.getApNdDthms()); break;
						    case "apStrDthms" : oldData.setApStrDthms(newData.getApStrDthms()); break;
						    case "cntadFlgcd" : oldData.setCntadFlgcd(newData.getCntadFlgcd()); break;
						    case "tlano" : oldData.setTlano(newData.getTlano()); break;
						    case "tltno" : oldData.setTltno(newData.getTltno()); break;
						    case "strTlsno" : oldData.setStrTlsno(newData.getStrTlsno()); break;
						    case "endTlsno" : oldData.setEndTlsno(newData.getEndTlsno()); break;
						    case "nlnno" : oldData.setNlnno(newData.getNlnno()); break;
						    case "brdTlNtnno" : oldData.setBrdTlNtnno(newData.getBrdTlNtnno()); break;
						    case "brdTlno" : oldData.setBrdTlno(newData.getBrdTlno()); break;
						    case "chDlno" : oldData.setChDlno(newData.getChDlno()); break;
						    case "note" : oldData.setNote(newData.getNote()); break;
						    case "guFireCntadFlgcd" : oldData.setGuFireCntadFlgcd(newData.getGuFireCntadFlgcd()); break;
						    case "cntrtFailRscd" : oldData.setCntrtFailRscd(newData.getCntrtFailRscd()); break;
						    case "bsnsFlgcd" : oldData.setBsnsFlgcd(newData.getBsnsFlgcd()); break;
						    case "mnoErnoFlgcd" : oldData.setMnoErnoFlgcd(newData.getMnoErnoFlgcd()); break;
						    case "inpUsrId" : oldData.setInpUsrId(newData.getInpUsrId()); break;
						    case "inpDthms" : oldData.setInpDthms(newData.getInpDthms()); break;
						    case "mdfUsrId" : oldData.setMdfUsrId(newData.getMdfUsrId()); break;
						    case "mdfDthms" : oldData.setMdfDthms(newData.getMdfDthms()); break;
						}
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "고객연락처 삭제" , description = "고객연락처 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the CusCtmCntad", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntad.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cusctmcntads/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
