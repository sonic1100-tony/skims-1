/**
 * FinSlp Entity Controller 클래스
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
import com.skims.domain.entity.FinSlp;
import com.skims.domain.entity.FinSlpPK;
import com.skims.domain.repository.FinSlpRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinSlp 전표 Controller")
@Slf4j
public class FinSlpController {

    @Autowired
    FinSlpRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "전표 전체조회" , summary = "전표 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finslps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlp.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finslps")
    public ResponseEntity<Page<FinSlp>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "전표 Key조회" , description = "전표 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinSlp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlp.class)) }),
            @ApiResponse(responseCode = "404", description = "FinSlp not found", content = @Content) })
    @GetMapping("/finslps/{aid}/{stYymm}")
    public ResponseEntity<FinSlp> getById(@PathVariable("aid") Long aid, @PathVariable("stYymm") String stYymm) {
        Optional<FinSlp> data = repository.findById(new FinSlpPK(aid, stYymm));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "전표 등록" , description = "전표 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinSlp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlp.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finslps")
    ResponseEntity<FinSlp> postData(@RequestBody FinSlp newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "전표 수정" , description = "전표 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinSlp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlp.class)) }),
            @ApiResponse(responseCode = "404", description = "FinSlp not found", content = @Content) })
    @PutMapping("/finslps/{aid}/{stYymm}")
    ResponseEntity<FinSlp> putData(@RequestBody FinSlp newData, @PathVariable("aid") Long aid, @PathVariable("stYymm") String stYymm) {
        return repository.findById(new FinSlpPK(aid, stYymm)) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    newData.setStYymm(oldData.getStYymm());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "전표 수정" , description = "전표 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinSlp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlp.class)) }),
            @ApiResponse(responseCode = "404", description = "FinSlp not found", content = @Content) })
	@PatchMapping("/finslps/{aid}/{stYymm}")
    ResponseEntity<FinSlp> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid, @PathVariable("stYymm") String stYymm) {
        FinSlp newData = mapper.convertValue(newMap, FinSlp.class);
        return repository.findById(new FinSlpPK(aid, stYymm)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "slpdt" : oldData.setSlpdt(newData.getSlpdt()); break;
						    case "slpno" : oldData.setSlpno(newData.getSlpno()); break;
						    case "gnSpcFlgcd" : oldData.setGnSpcFlgcd(newData.getGnSpcFlgcd()); break;
						    case "crSyscd" : oldData.setCrSyscd(newData.getCrSyscd()); break;
						    case "dlTpO1Csfcd" : oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd()); break;
						    case "dlTpO2Csfcd" : oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd()); break;
						    case "slpPrvStcd" : oldData.setSlpPrvStcd(newData.getSlpPrvStcd()); break;
						    case "slpPrvDthms" : oldData.setSlpPrvDthms(newData.getSlpPrvDthms()); break;
						    case "slpPrvStfno" : oldData.setSlpPrvStfno(newData.getSlpPrvStfno()); break;
						    case "crDlOrgcd" : oldData.setCrDlOrgcd(newData.getCrDlOrgcd()); break;
						    case "crDeldt" : oldData.setCrDeldt(newData.getCrDeldt()); break;
						    case "crDlno" : oldData.setCrDlno(newData.getCrDlno()); break;
						    case "slpStcd" : oldData.setSlpStcd(newData.getSlpStcd()); break;
						    case "ersDthms" : oldData.setErsDthms(newData.getErsDthms()); break;
						    case "actAtrcd" : oldData.setActAtrcd(newData.getActAtrcd()); break;
						    case "hdcftSlpPrvStcd" : oldData.setHdcftSlpPrvStcd(newData.getHdcftSlpPrvStcd()); break;
						    case "elecEvdImgBsnno" : oldData.setElecEvdImgBsnno(newData.getElecEvdImgBsnno()); break;
						    case "elecPrvDcuId" : oldData.setElecPrvDcuId(newData.getElecPrvDcuId()); break;
						    case "taccLdgCrtFlgcd" : oldData.setTaccLdgCrtFlgcd(newData.getTaccLdgCrtFlgcd()); break;
						    case "ifrsSlpdt" : oldData.setIfrsSlpdt(newData.getIfrsSlpdt()); break;
						    case "ifrsSlpno" : oldData.setIfrsSlpno(newData.getIfrsSlpno()); break;
						    case "actLdgFlgcd" : oldData.setActLdgFlgcd(newData.getActLdgFlgcd()); break;
						    case "erpTsYn" : oldData.setErpTsYn(newData.getErpTsYn()); break;
						    case "erpTsdt" : oldData.setErpTsdt(newData.getErpTsdt()); break;
						    case "erpSyncTaYn" : oldData.setErpSyncTaYn(newData.getErpSyncTaYn()); break;
						    case "erpSlpno" : oldData.setErpSlpno(newData.getErpSlpno()); break;
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
	
    // @Operation(summary = "전표 삭제" , description = "전표 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the FinSlp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlp.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finslps/{aid}/{stYymm}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid, @PathVariable("stYymm") String stYymm) {
        try {
            repository.deleteById(new FinSlpPK(aid, stYymm));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
