/**
 * InsCrDhStfCrr Entity Controller 클래스
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
import com.skims.domain.entity.InsCrDhStfCrr;
import com.skims.domain.repository.InsCrDhStfCrrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCrDhStfCrr 계약취급직원이력 Controller")
@Slf4j
public class InsCrDhStfCrrController {

    @Autowired
    InsCrDhStfCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "계약취급직원이력 전체조회" , summary = "계약취급직원이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscrdhstfcrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscrdhstfcrrs")
    public ResponseEntity<Page<InsCrDhStfCrr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "계약취급직원이력 Key조회" , description = "계약취급직원이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrDhStfCrr not found", content = @Content) })
    @GetMapping("/inscrdhstfcrrs/{aid}")
    public ResponseEntity<InsCrDhStfCrr> getById(@PathVariable("aid") Long aid) {
        Optional<InsCrDhStfCrr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "계약취급직원이력 등록" , description = "계약취급직원이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscrdhstfcrrs")
    ResponseEntity<InsCrDhStfCrr> postData(@RequestBody InsCrDhStfCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "계약취급직원이력 수정" , description = "계약취급직원이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrDhStfCrr not found", content = @Content) })
    @PutMapping("/inscrdhstfcrrs/{aid}")
    ResponseEntity<InsCrDhStfCrr> putData(@RequestBody InsCrDhStfCrr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "계약취급직원이력 수정" , description = "계약취급직원이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrDhStfCrr not found", content = @Content) })
	@PatchMapping("/inscrdhstfcrrs/{aid}")
    ResponseEntity<InsCrDhStfCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCrDhStfCrr newData = mapper.convertValue(newMap, InsCrDhStfCrr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "dhStfTpcd" : oldData.setDhStfTpcd(newData.getDhStfTpcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "apStrdt" : oldData.setApStrdt(newData.getApStrdt()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "valdNdsYn" : oldData.setValdNdsYn(newData.getValdNdsYn()); break;
						    case "ndsApStrDthms" : oldData.setNdsApStrDthms(newData.getNdsApStrDthms()); break;
						    case "ndsApNdDthms" : oldData.setNdsApNdDthms(newData.getNdsApNdDthms()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "tabfDhStfno" : oldData.setTabfDhStfno(newData.getTabfDhStfno()); break;
						    case "usrno" : oldData.setUsrno(newData.getUsrno()); break;
						    case "prsDhStfYn" : oldData.setPrsDhStfYn(newData.getPrsDhStfYn()); break;
						    case "qtrt" : oldData.setQtrt(newData.getQtrt()); break;
						    case "taCrno" : oldData.setTaCrno(newData.getTaCrno()); break;
						    case "pymSeq" : oldData.setPymSeq(newData.getPymSeq()); break;
						    case "bzcsQtrt" : oldData.setBzcsQtrt(newData.getBzcsQtrt()); break;
						    case "cnrdt" : oldData.setCnrdt(newData.getCnrdt()); break;
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
	
    // @Operation(summary = "계약취급직원이력 삭제" , description = "계약취급직원이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscrdhstfcrrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
