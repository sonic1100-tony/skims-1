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

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setPstno(newData.getPstno());
                    oldData.setPstSno(newData.getPstSno());
                    oldData.setSd(newData.getSd());
                    oldData.setSgng(newData.getSgng());
                    oldData.setTwm(newData.getTwm());
                    oldData.setRoadNm(newData.getRoadNm());
                    oldData.setMnBldno(newData.getMnBldno());
                    oldData.setSubBldno(newData.getSubBldno());
                    oldData.setBldnm(newData.getBldnm());
                    oldData.setDtBldnm(newData.getDtBldnm());
                    oldData.setUndgFlgcd(newData.getUndgFlgcd());
                    oldData.setRoadNmFlgcd(newData.getRoadNmFlgcd());
                    oldData.setLacoDongFlgcd(newData.getLacoDongFlgcd());
                    oldData.setLacoDngnm(newData.getLacoDngnm());
                    oldData.setAmsDongFlgcd(newData.getAmsDongFlgcd());
                    oldData.setAmsDngnm(newData.getAmsDngnm());
                    oldData.setBldAdmno(newData.getBldAdmno());
                    oldData.setTwmdSno(newData.getTwmdSno());
                    oldData.setTwmd(newData.getTwmd());
                    oldData.setCmpxBldnm(newData.getCmpxBldnm());
                    oldData.setEngRoadNmAdr(newData.getEngRoadNmAdr());
                    oldData.setEngRoadNm(newData.getEngRoadNm());
                    oldData.setTotNwAdr(newData.getTotNwAdr());
                    oldData.setBaAdr(newData.getBaAdr());
                    oldData.setRefIt(newData.getRefIt());
                    oldData.setBfPstno(newData.getBfPstno());
                    oldData.setInpUsrId(newData.getInpUsrId());
                    oldData.setInpDthms(newData.getInpDthms());
                    oldData.setMdfUsrId(newData.getMdfUsrId());
                    oldData.setMdfDthms(newData.getMdfDthms());
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
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
                        if (strKey.equals("pstno"))
                            oldData.setPstno(newData.getPstno());
                        if (strKey.equals("pstSno"))
                            oldData.setPstSno(newData.getPstSno());
                        if (strKey.equals("sd"))
                            oldData.setSd(newData.getSd());
                        if (strKey.equals("sgng"))
                            oldData.setSgng(newData.getSgng());
                        if (strKey.equals("twm"))
                            oldData.setTwm(newData.getTwm());
                        if (strKey.equals("roadNm"))
                            oldData.setRoadNm(newData.getRoadNm());
                        if (strKey.equals("mnBldno"))
                            oldData.setMnBldno(newData.getMnBldno());
                        if (strKey.equals("subBldno"))
                            oldData.setSubBldno(newData.getSubBldno());
                        if (strKey.equals("bldnm"))
                            oldData.setBldnm(newData.getBldnm());
                        if (strKey.equals("dtBldnm"))
                            oldData.setDtBldnm(newData.getDtBldnm());
                        if (strKey.equals("undgFlgcd"))
                            oldData.setUndgFlgcd(newData.getUndgFlgcd());
                        if (strKey.equals("roadNmFlgcd"))
                            oldData.setRoadNmFlgcd(newData.getRoadNmFlgcd());
                        if (strKey.equals("lacoDongFlgcd"))
                            oldData.setLacoDongFlgcd(newData.getLacoDongFlgcd());
                        if (strKey.equals("lacoDngnm"))
                            oldData.setLacoDngnm(newData.getLacoDngnm());
                        if (strKey.equals("amsDongFlgcd"))
                            oldData.setAmsDongFlgcd(newData.getAmsDongFlgcd());
                        if (strKey.equals("amsDngnm"))
                            oldData.setAmsDngnm(newData.getAmsDngnm());
                        if (strKey.equals("bldAdmno"))
                            oldData.setBldAdmno(newData.getBldAdmno());
                        if (strKey.equals("twmdSno"))
                            oldData.setTwmdSno(newData.getTwmdSno());
                        if (strKey.equals("twmd"))
                            oldData.setTwmd(newData.getTwmd());
                        if (strKey.equals("cmpxBldnm"))
                            oldData.setCmpxBldnm(newData.getCmpxBldnm());
                        if (strKey.equals("engRoadNmAdr"))
                            oldData.setEngRoadNmAdr(newData.getEngRoadNmAdr());
                        if (strKey.equals("engRoadNm"))
                            oldData.setEngRoadNm(newData.getEngRoadNm());
                        if (strKey.equals("totNwAdr"))
                            oldData.setTotNwAdr(newData.getTotNwAdr());
                        if (strKey.equals("baAdr"))
                            oldData.setBaAdr(newData.getBaAdr());
                        if (strKey.equals("refIt"))
                            oldData.setRefIt(newData.getRefIt());
                        if (strKey.equals("bfPstno"))
                            oldData.setBfPstno(newData.getBfPstno());
                        if (strKey.equals("inpUsrId"))
                            oldData.setInpUsrId(newData.getInpUsrId());
                        if (strKey.equals("inpDthms"))
                            oldData.setInpDthms(newData.getInpDthms());
                        if (strKey.equals("mdfUsrId"))
                            oldData.setMdfUsrId(newData.getMdfUsrId());
                        if (strKey.equals("mdfDthms"))
                            oldData.setMdfDthms(newData.getMdfDthms());
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
