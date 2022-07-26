/**
 * InsCmMtd Entity Controller 클래스
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
import com.skims.domain.entity.InsCmMtd;
import com.skims.domain.repository.InsCmMtdRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCmMtd 수금방법 Controller")
@Slf4j
public class InsCmMtdController {

    @Autowired
    InsCmMtdRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "수금방법 전체조회" , summary = "수금방법 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscmmtds", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCmMtd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscmmtds")
    public ResponseEntity<Page<InsCmMtd>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "수금방법 Key조회" , description = "수금방법 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCmMtd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCmMtd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCmMtd not found", content = @Content) })
    @GetMapping("/inscmmtds/{aid}")
    public ResponseEntity<InsCmMtd> getById(@PathVariable("aid") Long aid) {
        Optional<InsCmMtd> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "수금방법 등록" , description = "수금방법 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCmMtd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCmMtd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscmmtds")
    ResponseEntity<InsCmMtd> postData(@RequestBody InsCmMtd newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "수금방법 수정" , description = "수금방법 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCmMtd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCmMtd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCmMtd not found", content = @Content) })
    @PutMapping("/inscmmtds/{aid}")
    ResponseEntity<InsCmMtd> putData(@RequestBody InsCmMtd newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "수금방법 수정" , description = "수금방법 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCmMtd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCmMtd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCmMtd not found", content = @Content) })
	@PatchMapping("/inscmmtds/{aid}")
    ResponseEntity<InsCmMtd> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCmMtd newData = mapper.convertValue(newMap, InsCmMtd.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "apStrdt" : oldData.setApStrdt(newData.getApStrdt()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "valdNdsYn" : oldData.setValdNdsYn(newData.getValdNdsYn()); break;
						    case "ndsApStrDthms" : oldData.setNdsApStrDthms(newData.getNdsApStrDthms()); break;
						    case "ndsApNdDthms" : oldData.setNdsApNdDthms(newData.getNdsApNdDthms()); break;
						    case "cmMtdcd" : oldData.setCmMtdcd(newData.getCmMtdcd()); break;
						    case "slrTfStfno" : oldData.setSlrTfStfno(newData.getSlrTfStfno()); break;
						    case "crtSlrtfStfRelcd" : oldData.setCrtSlrtfStfRelcd(newData.getCrtSlrtfStfRelcd()); break;
						    case "autoTfRqdcSsno" : oldData.setAutoTfRqdcSsno(newData.getAutoTfRqdcSsno()); break;
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
	
    // @Operation(summary = "수금방법 삭제" , description = "수금방법 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsCmMtd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCmMtd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscmmtds/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
