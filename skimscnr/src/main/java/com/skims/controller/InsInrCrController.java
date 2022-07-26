/**
 * InsInrCr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

<<<<<<< HEAD
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

=======
>>>>>>> d04a89a6781d74b3fc7d3345f445ca8716a0759d
import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.InsInrCr;
import com.skims.domain.repository.InsInrCrRepository;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Optional;


@RestController
@Tag(name = "InsInrCr 통합계약 Controller")
@Slf4j
public class InsInrCrController {

    @Autowired
    InsInrCrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "통합계약 전체조회" , summary = "통합계약 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insinrcrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insinrcrs")
    public ResponseEntity<Page<InsInrCr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "통합계약 Key조회" , description = "통합계약 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInrCr not found", content = @Content) })
    @GetMapping("/insinrcrs/{aid}")
    public ResponseEntity<InsInrCr> getById(@PathVariable("aid") Long aid) {
        Optional<InsInrCr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "통합계약 등록" , description = "통합계약 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insinrcrs")
    ResponseEntity<InsInrCr> postData(@RequestBody InsInrCr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "통합계약 수정" , description = "통합계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInrCr not found", content = @Content) })
    @PutMapping("/insinrcrs/{aid}")
    ResponseEntity<InsInrCr> putData(@RequestBody InsInrCr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "통합계약 수정" , description = "통합계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInrCr not found", content = @Content) })
	@PatchMapping("/insinrcrs/{aid}")
    ResponseEntity<InsInrCr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsInrCr newData = mapper.convertValue(newMap, InsInrCr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "stYymm" : oldData.setStYymm(newData.getStYymm()); break;
						    case "inrCrDaFlgcd" : oldData.setInrCrDaFlgcd(newData.getInrCrDaFlgcd()); break;
						    case "insSt" : oldData.setInsSt(newData.getInsSt()); break;
						    case "insClstr" : oldData.setInsClstr(newData.getInsClstr()); break;
						    case "crtCtmno" : oldData.setCrtCtmno(newData.getCrtCtmno()); break;
						    case "crStcd" : oldData.setCrStcd(newData.getCrStcd()); break;
						    case "crDtStcd" : oldData.setCrDtStcd(newData.getCrDtStcd()); break;
						    case "stChdt" : oldData.setStChdt(newData.getStChdt()); break;
						    case "hdqtOrgcd" : oldData.setHdqtOrgcd(newData.getHdqtOrgcd()); break;
						    case "aregpOrgcd" : oldData.setAregpOrgcd(newData.getAregpOrgcd()); break;
						    case "dhOrgcd" : oldData.setDhOrgcd(newData.getDhOrgcd()); break;
						    case "dhStfcd" : oldData.setDhStfcd(newData.getDhStfcd()); break;
						    case "usrno" : oldData.setUsrno(newData.getUsrno()); break;
						    case "inrNaamt" : oldData.setInrNaamt(newData.getInrNaamt()); break;
						    case "inrCrDlYn" : oldData.setInrCrDlYn(newData.getInrCrDlYn()); break;
						    case "inrCrNt" : oldData.setInrCrNt(newData.getInrCrNt()); break;
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
	
    // @Operation(summary = "통합계약 삭제" , description = "통합계약 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insinrcrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
