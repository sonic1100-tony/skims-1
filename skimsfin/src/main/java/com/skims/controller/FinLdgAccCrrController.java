/**
 * FinLdgAccCrr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.time.LocalDate;

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
import com.skims.domain.entity.FinLdgAccCrr;
import com.skims.domain.entity.FinLdgAccCrrPK;
import com.skims.domain.repository.FinLdgAccCrrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinLdgAccCrr 원장계정이력 Controller")
@Slf4j
public class FinLdgAccCrrController {

    @Autowired
    FinLdgAccCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "원장계정이력 전체조회" , summary = "원장계정이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finldgacccrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finldgacccrrs")
    public ResponseEntity<Page<FinLdgAccCrr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "원장계정이력 Key조회" , description = "원장계정이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinLdgAccCrr not found", content = @Content) })
    @GetMapping("/finldgacccrrs/{aid}/{crRmdt}")
    public ResponseEntity<FinLdgAccCrr> getById(@PathVariable("aid") Long aid, @PathVariable("crRmdt") LocalDate crRmdt) {
        Optional<FinLdgAccCrr> data = repository.findById(new FinLdgAccCrrPK(aid, crRmdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "원장계정이력 등록" , description = "원장계정이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finldgacccrrs")
    ResponseEntity<FinLdgAccCrr> postData(@RequestBody FinLdgAccCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "원장계정이력 수정" , description = "원장계정이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinLdgAccCrr not found", content = @Content) })
    @PutMapping("/finldgacccrrs/{aid}/{crRmdt}")
    ResponseEntity<FinLdgAccCrr> putData(@RequestBody FinLdgAccCrr newData, @PathVariable("aid") Long aid, @PathVariable("crRmdt") LocalDate crRmdt) {
        return repository.findById(new FinLdgAccCrrPK(aid, crRmdt)) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    newData.setCrRmdt(oldData.getCrRmdt());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "원장계정이력 수정" , description = "원장계정이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinLdgAccCrr not found", content = @Content) })
	@PatchMapping("/finldgacccrrs/{aid}/{crRmdt}")
    ResponseEntity<FinLdgAccCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid, @PathVariable("crRmdt") LocalDate crRmdt) {
        FinLdgAccCrr newData = mapper.convertValue(newMap, FinLdgAccCrr.class);
        return repository.findById(new FinLdgAccCrrPK(aid, crRmdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ldgno" : oldData.setLdgno(newData.getLdgno()); break;
						    case "ldgKndcd" : oldData.setLdgKndcd(newData.getLdgKndcd()); break;
						    case "crrSeqno" : oldData.setCrrSeqno(newData.getCrrSeqno()); break;
						    case "ntaccCd" : oldData.setNtaccCd(newData.getNtaccCd()); break;
						    case "actOrgcd" : oldData.setActOrgcd(newData.getActOrgcd()); break;
						    case "dhOrgcd" : oldData.setDhOrgcd(newData.getDhOrgcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "crRmFlgcd" : oldData.setCrRmFlgcd(newData.getCrRmFlgcd()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "fcCrRmamt" : oldData.setFcCrRmamt(newData.getFcCrRmamt()); break;
						    case "woamtCrRmamt" : oldData.setWoamtCrRmamt(newData.getWoamtCrRmamt()); break;
						    case "fcCrTblam" : oldData.setFcCrTblam(newData.getFcCrTblam()); break;
						    case "woncrCrTblam" : oldData.setWoncrCrTblam(newData.getWoncrCrTblam()); break;
						    case "apXcrt" : oldData.setApXcrt(newData.getApXcrt()); break;
						    case "dlTpO1Csfcd" : oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd()); break;
						    case "dlTpO2Csfcd" : oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd()); break;
						    case "accCrrTpcd" : oldData.setAccCrrTpcd(newData.getAccCrrTpcd()); break;
						    case "xcdt" : oldData.setXcdt(newData.getXcdt()); break;
						    case "xcOrgcd" : oldData.setXcOrgcd(newData.getXcOrgcd()); break;
						    case "xcno" : oldData.setXcno(newData.getXcno()); break;
						    case "dsodt" : oldData.setDsodt(newData.getDsodt()); break;
						    case "bdgDpno" : oldData.setBdgDpno(newData.getBdgDpno()); break;
						    case "bfNtaccCd" : oldData.setBfNtaccCd(newData.getBfNtaccCd()); break;
						    case "bfactOrgcd" : oldData.setBfactOrgcd(newData.getBfactOrgcd()); break;
						    case "bfdhOrgcd" : oldData.setBfdhOrgcd(newData.getBfdhOrgcd()); break;
						    case "bfdhStfno" : oldData.setBfdhStfno(newData.getBfdhStfno()); break;
						    case "slpdt" : oldData.setSlpdt(newData.getSlpdt()); break;
						    case "slpno" : oldData.setSlpno(newData.getSlpno()); break;
						    case "slpLnno" : oldData.setSlpLnno(newData.getSlpLnno()); break;
						    case "ersYn" : oldData.setErsYn(newData.getErsYn()); break;
						    case "notsMtt" : oldData.setNotsMtt(newData.getNotsMtt()); break;
						    case "erpTsYn" : oldData.setErpTsYn(newData.getErpTsYn()); break;
						    case "erpTsdt" : oldData.setErpTsdt(newData.getErpTsdt()); break;
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
	
    // @Operation(summary = "원장계정이력 삭제" , description = "원장계정이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finldgacccrrs/{aid}/{crRmdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid, @PathVariable("crRmdt") LocalDate crRmdt) {
        try {
            repository.deleteById(new FinLdgAccCrrPK(aid, crRmdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
