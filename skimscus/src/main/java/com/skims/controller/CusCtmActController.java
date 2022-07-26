/**
 * CusCtmAct Entity Controller 클래스
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
import com.skims.domain.entity.CusCtmAct;
import com.skims.domain.repository.CusCtmActRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusCtmAct 고객계좌 Controller")
@Slf4j
public class CusCtmActController {

    @Autowired
    CusCtmActRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "고객계좌 전체조회" , summary = "고객계좌 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cusctmacts", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAct.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cusctmacts")
    public ResponseEntity<Page<CusCtmAct>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "고객계좌 Key조회" , description = "고객계좌 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusCtmAct", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAct.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmAct not found", content = @Content) })
    @GetMapping("/cusctmacts/{aid}")
    public ResponseEntity<CusCtmAct> getById(@PathVariable("aid") Long aid) {
        Optional<CusCtmAct> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "고객계좌 등록" , description = "고객계좌 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusCtmAct", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAct.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cusctmacts")
    ResponseEntity<CusCtmAct> postData(@RequestBody CusCtmAct newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "고객계좌 수정" , description = "고객계좌 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmAct", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAct.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmAct not found", content = @Content) })
    @PutMapping("/cusctmacts/{aid}")
    ResponseEntity<CusCtmAct> putData(@RequestBody CusCtmAct newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "고객계좌 수정" , description = "고객계좌 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmAct", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAct.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmAct not found", content = @Content) })
	@PatchMapping("/cusctmacts/{aid}")
    ResponseEntity<CusCtmAct> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        CusCtmAct newData = mapper.convertValue(newMap, CusCtmAct.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "actno" : oldData.setActno(newData.getActno()); break;
						    case "dpsnm" : oldData.setDpsnm(newData.getDpsnm()); break;
						    case "bkBrcd" : oldData.setBkBrcd(newData.getBkBrcd()); break;
						    case "bkBrnm" : oldData.setBkBrnm(newData.getBkBrnm()); break;
						    case "usYn" : oldData.setUsYn(newData.getUsYn()); break;
						    case "rgtdt" : oldData.setRgtdt(newData.getRgtdt()); break;
						    case "cnfYn" : oldData.setCnfYn(newData.getCnfYn()); break;
						    case "mntrActYn" : oldData.setMntrActYn(newData.getMntrActYn()); break;
						    case "fnlUsdt" : oldData.setFnlUsdt(newData.getFnlUsdt()); break;
						    case "chDlno" : oldData.setChDlno(newData.getChDlno()); break;
						    case "bknm" : oldData.setBknm(newData.getBknm()); break;
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
	
    // @Operation(summary = "고객계좌 삭제" , description = "고객계좌 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusCtmAct", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAct.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cusctmacts/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
