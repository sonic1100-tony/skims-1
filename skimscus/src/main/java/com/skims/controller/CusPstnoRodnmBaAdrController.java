/**
 * CusPstnoRodnmBaAdr Entity Controller 클래스
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
import org.springframework.data.web.PageableDefault;
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
import com.skims.domain.entity.CusPstnoRodnmBaAdr;
import com.skims.domain.repository.CusPstnoRodnmBaAdrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusPstnoRodnmBaAdr 우편번호도로명기본주소 Controller")
@Slf4j
public class CusPstnoRodnmBaAdrController {

    @Autowired
    CusPstnoRodnmBaAdrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "우편번호도로명기본주소 전체조회" , summary = "우편번호도로명기본주소 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cuspstnorodnmbaadrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmBaAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cuspstnorodnmbaadrs")
    public ResponseEntity<Page<CusPstnoRodnmBaAdr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "우편번호도로명기본주소 Key조회" , description = "우편번호도로명기본주소 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusPstnoRodnmBaAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmBaAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstnoRodnmBaAdr not found", content = @Content) })
    @GetMapping("/cuspstnorodnmbaadrs/{pstnoId}")
    public ResponseEntity<CusPstnoRodnmBaAdr> getById(@PathVariable("pstnoId") String pstnoId) {
        Optional<CusPstnoRodnmBaAdr> data = repository.findById(pstnoId);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "우편번호도로명기본주소 등록" , description = "우편번호도로명기본주소 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusPstnoRodnmBaAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmBaAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cuspstnorodnmbaadrs")
    ResponseEntity<CusPstnoRodnmBaAdr> postData(@RequestBody CusPstnoRodnmBaAdr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "우편번호도로명기본주소 수정" , description = "우편번호도로명기본주소 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusPstnoRodnmBaAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmBaAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstnoRodnmBaAdr not found", content = @Content) })
    @PutMapping("/cuspstnorodnmbaadrs/{pstnoId}")
    ResponseEntity<CusPstnoRodnmBaAdr> putData(@RequestBody CusPstnoRodnmBaAdr newData, @PathVariable("pstnoId") String pstnoId) {
        return repository.findById(pstnoId) //
                .map(oldData -> {
                    newData.setPstnoId(oldData.getPstnoId());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "우편번호도로명기본주소 수정" , description = "우편번호도로명기본주소 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusPstnoRodnmBaAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmBaAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstnoRodnmBaAdr not found", content = @Content) })
	@PatchMapping("/cuspstnorodnmbaadrs/{pstnoId}")
    ResponseEntity<CusPstnoRodnmBaAdr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("pstnoId") String pstnoId) {
        CusPstnoRodnmBaAdr newData = mapper.convertValue(newMap, CusPstnoRodnmBaAdr.class);
        return repository.findById(pstnoId) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "pstno" : oldData.setPstno(newData.getPstno()); break;
						    case "pstSno" : oldData.setPstSno(newData.getPstSno()); break;
						    case "sd" : oldData.setSd(newData.getSd()); break;
						    case "sgng" : oldData.setSgng(newData.getSgng()); break;
						    case "twm" : oldData.setTwm(newData.getTwm()); break;
						    case "roadNm" : oldData.setRoadNm(newData.getRoadNm()); break;
						    case "mnBldno" : oldData.setMnBldno(newData.getMnBldno()); break;
						    case "subBldno" : oldData.setSubBldno(newData.getSubBldno()); break;
						    case "bldnm" : oldData.setBldnm(newData.getBldnm()); break;
						    case "dtBldnm" : oldData.setDtBldnm(newData.getDtBldnm()); break;
						    case "undgFlgcd" : oldData.setUndgFlgcd(newData.getUndgFlgcd()); break;
						    case "roadNmFlgcd" : oldData.setRoadNmFlgcd(newData.getRoadNmFlgcd()); break;
						    case "lacoDongFlgcd" : oldData.setLacoDongFlgcd(newData.getLacoDongFlgcd()); break;
						    case "lacoDngnm" : oldData.setLacoDngnm(newData.getLacoDngnm()); break;
						    case "amsDongFlgcd" : oldData.setAmsDongFlgcd(newData.getAmsDongFlgcd()); break;
						    case "amsDngnm" : oldData.setAmsDngnm(newData.getAmsDngnm()); break;
						    case "bldAdmno" : oldData.setBldAdmno(newData.getBldAdmno()); break;
						    case "twmdSno" : oldData.setTwmdSno(newData.getTwmdSno()); break;
						    case "twmd" : oldData.setTwmd(newData.getTwmd()); break;
						    case "cmpxBldnm" : oldData.setCmpxBldnm(newData.getCmpxBldnm()); break;
						    case "engRoadNmAdr" : oldData.setEngRoadNmAdr(newData.getEngRoadNmAdr()); break;
						    case "engRoadNm" : oldData.setEngRoadNm(newData.getEngRoadNm()); break;
						    case "totNwAdr" : oldData.setTotNwAdr(newData.getTotNwAdr()); break;
						    case "baAdr" : oldData.setBaAdr(newData.getBaAdr()); break;
						    case "refIt" : oldData.setRefIt(newData.getRefIt()); break;
						    case "bfPstno" : oldData.setBfPstno(newData.getBfPstno()); break;
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
	
    // @Operation(summary = "우편번호도로명기본주소 삭제" , description = "우편번호도로명기본주소 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusPstnoRodnmBaAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmBaAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cuspstnorodnmbaadrs/{pstnoId}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("pstnoId") String pstnoId) {
        try {
            repository.deleteById(pstnoId);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
