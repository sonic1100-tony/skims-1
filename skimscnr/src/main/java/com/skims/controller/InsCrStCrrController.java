/**
 * InsCrStCrr Entity Controller 클래스
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
import com.skims.domain.entity.InsCrStCrr;
import com.skims.domain.repository.InsCrStCrrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCrStCrr 계약상태이력 Controller")
@Slf4j
public class InsCrStCrrController {

    @Autowired
    InsCrStCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "계약상태이력 전체조회" , summary = "계약상태이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscrstcrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrStCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscrstcrrs")
    public ResponseEntity<Page<InsCrStCrr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "계약상태이력 Key조회" , description = "계약상태이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCrStCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrStCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrStCrr not found", content = @Content) })
    @GetMapping("/inscrstcrrs/{aid}")
    public ResponseEntity<InsCrStCrr> getById(@PathVariable("aid") Long aid) {
        Optional<InsCrStCrr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "계약상태이력 등록" , description = "계약상태이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCrStCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrStCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscrstcrrs")
    ResponseEntity<InsCrStCrr> postData(@RequestBody InsCrStCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "계약상태이력 수정" , description = "계약상태이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrStCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrStCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrStCrr not found", content = @Content) })
    @PutMapping("/inscrstcrrs/{aid}")
    ResponseEntity<InsCrStCrr> putData(@RequestBody InsCrStCrr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "계약상태이력 수정" , description = "계약상태이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrStCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrStCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrStCrr not found", content = @Content) })
	@PatchMapping("/inscrstcrrs/{aid}")
    ResponseEntity<InsCrStCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCrStCrr newData = mapper.convertValue(newMap, InsCrStCrr.class);
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
						    case "crStcd" : oldData.setCrStcd(newData.getCrStcd()); break;
						    case "crDtStcd" : oldData.setCrDtStcd(newData.getCrDtStcd()); break;
						    case "crStadt" : oldData.setCrStadt(newData.getCrStadt()); break;
						    case "partCvrStcd" : oldData.setPartCvrStcd(newData.getPartCvrStcd()); break;
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
	
    // @Operation(summary = "계약상태이력 삭제" , description = "계약상태이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the InsCrStCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrStCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscrstcrrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
