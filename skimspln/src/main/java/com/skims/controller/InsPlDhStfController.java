/**
 * InsPlDhStf Entity Controller 클래스
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
import com.skims.domain.entity.InsPlDhStf;
import com.skims.domain.repository.InsPlDhStfRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlDhStf 설계취급직원 Controller")
@Slf4j
public class InsPlDhStfController {

    @Autowired
    InsPlDhStfRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계취급직원 전체조회" , summary = "설계취급직원 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inspldhstfs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inspldhstfs")
    public ResponseEntity<Page<InsPlDhStf>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계취급직원 Key조회" , description = "설계취급직원 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlDhStf not found", content = @Content) })
    @GetMapping("/inspldhstfs/{aid}")
    public ResponseEntity<InsPlDhStf> getById(@PathVariable("aid") Long aid) {
        Optional<InsPlDhStf> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계취급직원 등록" , description = "설계취급직원 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inspldhstfs")
    ResponseEntity<InsPlDhStf> postData(@RequestBody InsPlDhStf newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계취급직원 수정" , description = "설계취급직원 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlDhStf not found", content = @Content) })
    @PutMapping("/inspldhstfs/{aid}")
    ResponseEntity<InsPlDhStf> putData(@RequestBody InsPlDhStf newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "설계취급직원 수정" , description = "설계취급직원 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlDhStf not found", content = @Content) })
	@PatchMapping("/inspldhstfs/{aid}")
    ResponseEntity<InsPlDhStf> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPlDhStf newData = mapper.convertValue(newMap, InsPlDhStf.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plno" : oldData.setPlno(newData.getPlno()); break;
						    case "cgafChSeqno" : oldData.setCgafChSeqno(newData.getCgafChSeqno()); break;
						    case "dhStfTpcd" : oldData.setDhStfTpcd(newData.getDhStfTpcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "usrno" : oldData.setUsrno(newData.getUsrno()); break;
						    case "prsDhStfYn" : oldData.setPrsDhStfYn(newData.getPrsDhStfYn()); break;
						    case "qtrt" : oldData.setQtrt(newData.getQtrt()); break;
						    case "bzcsQtrt" : oldData.setBzcsQtrt(newData.getBzcsQtrt()); break;
						    case "cnrdt" : oldData.setCnrdt(newData.getCnrdt()); break;
						    case "ltrmNdsDlFlgcd" : oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd()); break;
						    case "dmgrtRkStfYn" : oldData.setDmgrtRkStfYn(newData.getDmgrtRkStfYn()); break;
						    case "nwcrChekListDcuno" : oldData.setNwcrChekListDcuno(newData.getNwcrChekListDcuno()); break;
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
	
    // @Operation(summary = "설계취급직원 삭제" , description = "설계취급직원 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inspldhstfs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
