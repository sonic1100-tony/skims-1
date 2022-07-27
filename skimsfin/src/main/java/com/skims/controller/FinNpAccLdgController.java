/**
 * FinNpAccLdg Entity Controller 클래스
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
import com.skims.domain.entity.FinNpAccLdg;
import com.skims.domain.repository.FinNpAccLdgRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinNpAccLdg 미지급계정원장 Controller")
@Slf4j
public class FinNpAccLdgController {

    @Autowired
    FinNpAccLdgRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "미지급계정원장 전체조회" , summary = "미지급계정원장 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finnpaccldgs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finnpaccldgs")
    public ResponseEntity<Page<FinNpAccLdg>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "미지급계정원장 Key조회" , description = "미지급계정원장 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "404", description = "FinNpAccLdg not found", content = @Content) })
    @GetMapping("/finnpaccldgs/{aid}")
    public ResponseEntity<FinNpAccLdg> getById(@PathVariable("aid") Long aid) {
        Optional<FinNpAccLdg> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "미지급계정원장 등록" , description = "미지급계정원장 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finnpaccldgs")
    ResponseEntity<FinNpAccLdg> postData(@RequestBody FinNpAccLdg newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "미지급계정원장 수정" , description = "미지급계정원장 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "404", description = "FinNpAccLdg not found", content = @Content) })
    @PutMapping("/finnpaccldgs/{aid}")
    ResponseEntity<FinNpAccLdg> putData(@RequestBody FinNpAccLdg newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "미지급계정원장 수정" , description = "미지급계정원장 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "404", description = "FinNpAccLdg not found", content = @Content) })
	@PatchMapping("/finnpaccldgs/{aid}")
    ResponseEntity<FinNpAccLdg> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        FinNpAccLdg newData = mapper.convertValue(newMap, FinNpAccLdg.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "npAccLdgno" : oldData.setNpAccLdgno(newData.getNpAccLdgno()); break;
						    case "crdt" : oldData.setCrdt(newData.getCrdt()); break;
						    case "ntaccCd" : oldData.setNtaccCd(newData.getNtaccCd()); break;
						    case "crSyscd" : oldData.setCrSyscd(newData.getCrSyscd()); break;
						    case "dlTpO1Csfcd" : oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd()); break;
						    case "dlTpO2Csfcd" : oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd()); break;
						    case "actOrgcd" : oldData.setActOrgcd(newData.getActOrgcd()); break;
						    case "dhOrgcd" : oldData.setDhOrgcd(newData.getDhOrgcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "pyDlO1Flgcd" : oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd()); break;
						    case "pyDlO2Flgcd" : oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "crWoamt" : oldData.setCrWoamt(newData.getCrWoamt()); break;
						    case "crFcamt" : oldData.setCrFcamt(newData.getCrFcamt()); break;
						    case "apXcrt" : oldData.setApXcrt(newData.getApXcrt()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "insImcd" : oldData.setInsImcd(newData.getInsImcd()); break;
						    case "invlnGdcd" : oldData.setInvlnGdcd(newData.getInvlnGdcd()); break;
						    case "bsnsCnnnoFlgcd" : oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd()); break;
						    case "bsnsCnnno" : oldData.setBsnsCnnno(newData.getBsnsCnnno()); break;
						    case "rvdt" : oldData.setRvdt(newData.getRvdt()); break;
						    case "rvOrgcd" : oldData.setRvOrgcd(newData.getRvOrgcd()); break;
						    case "rvXcno" : oldData.setRvXcno(newData.getRvXcno()); break;
						    case "pyCrno" : oldData.setPyCrno(newData.getPyCrno()); break;
						    case "pyBjno" : oldData.setPyBjno(newData.getPyBjno()); break;
						    case "rmStcd" : oldData.setRmStcd(newData.getRmStcd()); break;
						    case "fnlRmdt" : oldData.setFnlRmdt(newData.getFnlRmdt()); break;
						    case "notsMtt" : oldData.setNotsMtt(newData.getNotsMtt()); break;
						    case "noteMtt" : oldData.setNoteMtt(newData.getNoteMtt()); break;
						    case "finaDatVrfFlg1Vl" : oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl()); break;
						    case "finaDatVrfFlg2Vl" : oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl()); break;
						    case "finaDatVrfFlg3Vl" : oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl()); break;
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
	
    // @Operation(summary = "미지급계정원장 삭제" , description = "미지급계정원장 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finnpaccldgs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
