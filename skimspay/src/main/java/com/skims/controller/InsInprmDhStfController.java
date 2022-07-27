/**
 * InsInprmDhStf Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.math.BigDecimal;

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
import com.skims.domain.entity.InsInprmDhStf;
import com.skims.domain.entity.InsInprmDhStfPK;
import com.skims.domain.repository.InsInprmDhStfRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsInprmDhStf 수입보험료취급직원 Controller")
@Slf4j
public class InsInprmDhStfController {

    @Autowired
    InsInprmDhStfRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "수입보험료취급직원 전체조회" , summary = "수입보험료취급직원 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insinprmdhstfs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInprmDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insinprmdhstfs")
    public ResponseEntity<Page<InsInprmDhStf>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "수입보험료취급직원 Key조회" , description = "수입보험료취급직원 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsInprmDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInprmDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInprmDhStf not found", content = @Content) })
    @GetMapping("/insinprmdhstfs/{plyno}/{incmPrmCrSeqno}/{dhStfTpcd}/{dhStfno}")
    public ResponseEntity<InsInprmDhStf> getById(@PathVariable("plyno") String plyno, @PathVariable("incmPrmCrSeqno") BigDecimal incmPrmCrSeqno, @PathVariable("dhStfTpcd") String dhStfTpcd, @PathVariable("dhStfno") String dhStfno) {
        Optional<InsInprmDhStf> data = repository.findById(new InsInprmDhStfPK(plyno, incmPrmCrSeqno, dhStfTpcd, dhStfno));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "수입보험료취급직원 등록" , description = "수입보험료취급직원 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsInprmDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInprmDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insinprmdhstfs")
    ResponseEntity<InsInprmDhStf> postData(@RequestBody InsInprmDhStf newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "수입보험료취급직원 수정" , description = "수입보험료취급직원 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInprmDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInprmDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInprmDhStf not found", content = @Content) })
    @PutMapping("/insinprmdhstfs/{plyno}/{incmPrmCrSeqno}/{dhStfTpcd}/{dhStfno}")
    ResponseEntity<InsInprmDhStf> putData(@RequestBody InsInprmDhStf newData, @PathVariable("plyno") String plyno, @PathVariable("incmPrmCrSeqno") BigDecimal incmPrmCrSeqno, @PathVariable("dhStfTpcd") String dhStfTpcd, @PathVariable("dhStfno") String dhStfno) {
        return repository.findById(new InsInprmDhStfPK(plyno, incmPrmCrSeqno, dhStfTpcd, dhStfno)) //
                .map(oldData -> {
                    newData.setPlyno(oldData.getPlyno());
                    newData.setIncmPrmCrSeqno(oldData.getIncmPrmCrSeqno());
                    newData.setDhStfTpcd(oldData.getDhStfTpcd());
                    newData.setDhStfno(oldData.getDhStfno());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "수입보험료취급직원 수정" , description = "수입보험료취급직원 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInprmDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInprmDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInprmDhStf not found", content = @Content) })
	@PatchMapping("/insinprmdhstfs/{plyno}/{incmPrmCrSeqno}/{dhStfTpcd}/{dhStfno}")
    ResponseEntity<InsInprmDhStf> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("plyno") String plyno, @PathVariable("incmPrmCrSeqno") BigDecimal incmPrmCrSeqno, @PathVariable("dhStfTpcd") String dhStfTpcd, @PathVariable("dhStfno") String dhStfno) {
        InsInprmDhStf newData = mapper.convertValue(newMap, InsInprmDhStf.class);
        return repository.findById(new InsInprmDhStfPK(plyno, incmPrmCrSeqno, dhStfTpcd, dhStfno)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "usrno" : oldData.setUsrno(newData.getUsrno()); break;
						    case "bzcsQtrt" : oldData.setBzcsQtrt(newData.getBzcsQtrt()); break;
						    case "qtrt" : oldData.setQtrt(newData.getQtrt()); break;
						    case "prsDhStfYn" : oldData.setPrsDhStfYn(newData.getPrsDhStfYn()); break;
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
	
    // @Operation(summary = "수입보험료취급직원 삭제" , description = "수입보험료취급직원 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the InsInprmDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInprmDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insinprmdhstfs/{plyno}/{incmPrmCrSeqno}/{dhStfTpcd}/{dhStfno}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("plyno") String plyno, @PathVariable("incmPrmCrSeqno") BigDecimal incmPrmCrSeqno, @PathVariable("dhStfTpcd") String dhStfTpcd, @PathVariable("dhStfno") String dhStfno) {
        try {
            repository.deleteById(new InsInprmDhStfPK(plyno, incmPrmCrSeqno, dhStfTpcd, dhStfno));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
