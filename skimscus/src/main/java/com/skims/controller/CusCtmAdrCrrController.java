/**
 * CusCtmAdrCrr Entity Controller 클래스
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
import com.skims.domain.entity.CusCtmAdrCrr;
import com.skims.domain.repository.CusCtmAdrCrrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusCtmAdrCrr 고객주소이력 Controller")
@Slf4j
public class CusCtmAdrCrrController {

    @Autowired
    CusCtmAdrCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "고객주소이력 전체조회" , summary = "고객주소이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cusctmadrcrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAdrCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cusctmadrcrrs")
    public ResponseEntity<Page<CusCtmAdrCrr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "고객주소이력 Key조회" , description = "고객주소이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusCtmAdrCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAdrCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmAdrCrr not found", content = @Content) })
    @GetMapping("/cusctmadrcrrs/{aid}")
    public ResponseEntity<CusCtmAdrCrr> getById(@PathVariable("aid") Long aid) {
        Optional<CusCtmAdrCrr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "고객주소이력 등록" , description = "고객주소이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusCtmAdrCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAdrCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cusctmadrcrrs")
    ResponseEntity<CusCtmAdrCrr> postData(@RequestBody CusCtmAdrCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "고객주소이력 수정" , description = "고객주소이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmAdrCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAdrCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmAdrCrr not found", content = @Content) })
    @PutMapping("/cusctmadrcrrs/{aid}")
    ResponseEntity<CusCtmAdrCrr> putData(@RequestBody CusCtmAdrCrr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "고객주소이력 수정" , description = "고객주소이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmAdrCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAdrCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmAdrCrr not found", content = @Content) })
	@PatchMapping("/cusctmadrcrrs/{aid}")
    ResponseEntity<CusCtmAdrCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        CusCtmAdrCrr newData = mapper.convertValue(newMap, CusCtmAdrCrr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "adrSeqno" : oldData.setAdrSeqno(newData.getAdrSeqno()); break;
						    case "apNdDthms" : oldData.setApNdDthms(newData.getApNdDthms()); break;
						    case "apStrDthms" : oldData.setApStrDthms(newData.getApStrDthms()); break;
						    case "adrFlgcd" : oldData.setAdrFlgcd(newData.getAdrFlgcd()); break;
						    case "sd" : oldData.setSd(newData.getSd()); break;
						    case "sgng" : oldData.setSgng(newData.getSgng()); break;
						    case "twmd" : oldData.setTwmd(newData.getTwmd()); break;
						    case "riOrLrdlp" : oldData.setRiOrLrdlp(newData.getRiOrLrdlp()); break;
						    case "mailId" : oldData.setMailId(newData.getMailId()); break;
						    case "mailDomn" : oldData.setMailDomn(newData.getMailDomn()); break;
						    case "ntncd" : oldData.setNtncd(newData.getNtncd()); break;
						    case "ntnnm" : oldData.setNtnnm(newData.getNtnnm()); break;
						    case "dtadr" : oldData.setDtadr(newData.getDtadr()); break;
						    case "ovseCtycd" : oldData.setOvseCtycd(newData.getOvseCtycd()); break;
						    case "ovseCtynm" : oldData.setOvseCtynm(newData.getOvseCtynm()); break;
						    case "ovseDtadr" : oldData.setOvseDtadr(newData.getOvseDtadr()); break;
						    case "pstno" : oldData.setPstno(newData.getPstno()); break;
						    case "guPstno" : oldData.setGuPstno(newData.getGuPstno()); break;
						    case "chDlno" : oldData.setChDlno(newData.getChDlno()); break;
						    case "note" : oldData.setNote(newData.getNote()); break;
						    case "guFireAdrFlgcd" : oldData.setGuFireAdrFlgcd(newData.getGuFireAdrFlgcd()); break;
						    case "refIt" : oldData.setRefIt(newData.getRefIt()); break;
						    case "roadNm" : oldData.setRoadNm(newData.getRoadNm()); break;
						    case "undgFlgcd" : oldData.setUndgFlgcd(newData.getUndgFlgcd()); break;
						    case "mnBldno" : oldData.setMnBldno(newData.getMnBldno()); break;
						    case "subBldno" : oldData.setSubBldno(newData.getSubBldno()); break;
						    case "nwAdrFlgcd" : oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd()); break;
						    case "rtRscd" : oldData.setRtRscd(newData.getRtRscd()); break;
						    case "bfPstno" : oldData.setBfPstno(newData.getBfPstno()); break;
						    case "roadNmFlgcd" : oldData.setRoadNmFlgcd(newData.getRoadNmFlgcd()); break;
						    case "bldnm" : oldData.setBldnm(newData.getBldnm()); break;
						    case "bldAdmno" : oldData.setBldAdmno(newData.getBldAdmno()); break;
						    case "lacoDongFlgcd" : oldData.setLacoDongFlgcd(newData.getLacoDongFlgcd()); break;
						    case "lacoDngnm" : oldData.setLacoDngnm(newData.getLacoDngnm()); break;
						    case "bsnsFlgcd" : oldData.setBsnsFlgcd(newData.getBsnsFlgcd()); break;
						    case "erBaadr" : oldData.setErBaadr(newData.getErBaadr()); break;
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
	
    // @Operation(summary = "고객주소이력 삭제" , description = "고객주소이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the CusCtmAdrCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmAdrCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cusctmadrcrrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
