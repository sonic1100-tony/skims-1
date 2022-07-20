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
import com.skims.domain.entity.CusCtmAdrCrr;
import com.skims.domain.repository.CusCtmAdrCrrRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<CusCtmAdrCrr>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setAdrSeqno(newData.getAdrSeqno());
                    oldData.setApNdDthms(newData.getApNdDthms());
                    oldData.setApStrDthms(newData.getApStrDthms());
                    oldData.setAdrFlgcd(newData.getAdrFlgcd());
                    oldData.setSd(newData.getSd());
                    oldData.setSgng(newData.getSgng());
                    oldData.setTwmd(newData.getTwmd());
                    oldData.setRiOrLrdlp(newData.getRiOrLrdlp());
                    oldData.setMailId(newData.getMailId());
                    oldData.setMailDomn(newData.getMailDomn());
                    oldData.setNtncd(newData.getNtncd());
                    oldData.setNtnnm(newData.getNtnnm());
                    oldData.setDtadr(newData.getDtadr());
                    oldData.setOvseCtycd(newData.getOvseCtycd());
                    oldData.setOvseCtynm(newData.getOvseCtynm());
                    oldData.setOvseDtadr(newData.getOvseDtadr());
                    oldData.setPstno(newData.getPstno());
                    oldData.setGuPstno(newData.getGuPstno());
                    oldData.setChDlno(newData.getChDlno());
                    oldData.setNote(newData.getNote());
                    oldData.setGuFireAdrFlgcd(newData.getGuFireAdrFlgcd());
                    oldData.setRefIt(newData.getRefIt());
                    oldData.setRoadNm(newData.getRoadNm());
                    oldData.setUndgFlgcd(newData.getUndgFlgcd());
                    oldData.setMnBldno(newData.getMnBldno());
                    oldData.setSubBldno(newData.getSubBldno());
                    oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                    oldData.setRtRscd(newData.getRtRscd());
                    oldData.setBfPstno(newData.getBfPstno());
                    oldData.setRoadNmFlgcd(newData.getRoadNmFlgcd());
                    oldData.setBldnm(newData.getBldnm());
                    oldData.setBldAdmno(newData.getBldAdmno());
                    oldData.setLacoDongFlgcd(newData.getLacoDongFlgcd());
                    oldData.setLacoDngnm(newData.getLacoDngnm());
                    oldData.setBsnsFlgcd(newData.getBsnsFlgcd());
                    oldData.setErBaadr(newData.getErBaadr());
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
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("adrSeqno"))
                            oldData.setAdrSeqno(newData.getAdrSeqno());
                        if (strKey.equals("apNdDthms"))
                            oldData.setApNdDthms(newData.getApNdDthms());
                        if (strKey.equals("apStrDthms"))
                            oldData.setApStrDthms(newData.getApStrDthms());
                        if (strKey.equals("adrFlgcd"))
                            oldData.setAdrFlgcd(newData.getAdrFlgcd());
                        if (strKey.equals("sd"))
                            oldData.setSd(newData.getSd());
                        if (strKey.equals("sgng"))
                            oldData.setSgng(newData.getSgng());
                        if (strKey.equals("twmd"))
                            oldData.setTwmd(newData.getTwmd());
                        if (strKey.equals("riOrLrdlp"))
                            oldData.setRiOrLrdlp(newData.getRiOrLrdlp());
                        if (strKey.equals("mailId"))
                            oldData.setMailId(newData.getMailId());
                        if (strKey.equals("mailDomn"))
                            oldData.setMailDomn(newData.getMailDomn());
                        if (strKey.equals("ntncd"))
                            oldData.setNtncd(newData.getNtncd());
                        if (strKey.equals("ntnnm"))
                            oldData.setNtnnm(newData.getNtnnm());
                        if (strKey.equals("dtadr"))
                            oldData.setDtadr(newData.getDtadr());
                        if (strKey.equals("ovseCtycd"))
                            oldData.setOvseCtycd(newData.getOvseCtycd());
                        if (strKey.equals("ovseCtynm"))
                            oldData.setOvseCtynm(newData.getOvseCtynm());
                        if (strKey.equals("ovseDtadr"))
                            oldData.setOvseDtadr(newData.getOvseDtadr());
                        if (strKey.equals("pstno"))
                            oldData.setPstno(newData.getPstno());
                        if (strKey.equals("guPstno"))
                            oldData.setGuPstno(newData.getGuPstno());
                        if (strKey.equals("chDlno"))
                            oldData.setChDlno(newData.getChDlno());
                        if (strKey.equals("note"))
                            oldData.setNote(newData.getNote());
                        if (strKey.equals("guFireAdrFlgcd"))
                            oldData.setGuFireAdrFlgcd(newData.getGuFireAdrFlgcd());
                        if (strKey.equals("refIt"))
                            oldData.setRefIt(newData.getRefIt());
                        if (strKey.equals("roadNm"))
                            oldData.setRoadNm(newData.getRoadNm());
                        if (strKey.equals("undgFlgcd"))
                            oldData.setUndgFlgcd(newData.getUndgFlgcd());
                        if (strKey.equals("mnBldno"))
                            oldData.setMnBldno(newData.getMnBldno());
                        if (strKey.equals("subBldno"))
                            oldData.setSubBldno(newData.getSubBldno());
                        if (strKey.equals("nwAdrFlgcd"))
                            oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                        if (strKey.equals("rtRscd"))
                            oldData.setRtRscd(newData.getRtRscd());
                        if (strKey.equals("bfPstno"))
                            oldData.setBfPstno(newData.getBfPstno());
                        if (strKey.equals("roadNmFlgcd"))
                            oldData.setRoadNmFlgcd(newData.getRoadNmFlgcd());
                        if (strKey.equals("bldnm"))
                            oldData.setBldnm(newData.getBldnm());
                        if (strKey.equals("bldAdmno"))
                            oldData.setBldAdmno(newData.getBldAdmno());
                        if (strKey.equals("lacoDongFlgcd"))
                            oldData.setLacoDongFlgcd(newData.getLacoDongFlgcd());
                        if (strKey.equals("lacoDngnm"))
                            oldData.setLacoDngnm(newData.getLacoDngnm());
                        if (strKey.equals("bsnsFlgcd"))
                            oldData.setBsnsFlgcd(newData.getBsnsFlgcd());
                        if (strKey.equals("erBaadr"))
                            oldData.setErBaadr(newData.getErBaadr());
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
	
    // @Operation(summary = "고객주소이력 삭제" , description = "고객주소이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusCtmAdrCrr", content = {
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
