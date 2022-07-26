/**
 * InsAutoTfRq Entity Controller 클래스
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
import com.skims.domain.entity.InsAutoTfRq;
import com.skims.domain.repository.InsAutoTfRqRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsAutoTfRq 자동이체신청 Controller")
@Slf4j
public class InsAutoTfRqController {

    @Autowired
    InsAutoTfRqRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "자동이체신청 전체조회" , summary = "자동이체신청 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insautotfrqs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insautotfrqs")
    public ResponseEntity<Page<InsAutoTfRq>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "자동이체신청 Key조회" , description = "자동이체신청 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfRq not found", content = @Content) })
    @GetMapping("/insautotfrqs/{aid}")
    public ResponseEntity<InsAutoTfRq> getById(@PathVariable("aid") Long aid) {
        Optional<InsAutoTfRq> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "자동이체신청 등록" , description = "자동이체신청 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insautotfrqs")
    ResponseEntity<InsAutoTfRq> postData(@RequestBody InsAutoTfRq newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "자동이체신청 수정" , description = "자동이체신청 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfRq not found", content = @Content) })
    @PutMapping("/insautotfrqs/{aid}")
    ResponseEntity<InsAutoTfRq> putData(@RequestBody InsAutoTfRq newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "자동이체신청 수정" , description = "자동이체신청 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfRq not found", content = @Content) })
	@PatchMapping("/insautotfrqs/{aid}")
    ResponseEntity<InsAutoTfRq> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsAutoTfRq newData = mapper.convertValue(newMap, InsAutoTfRq.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plynoOrLnno" : oldData.setPlynoOrLnno(newData.getPlynoOrLnno()); break;
						    case "autoTfCgKndcd" : oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd()); break;
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "apStrdt" : oldData.setApStrdt(newData.getApStrdt()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "olcrrSeqno" : oldData.setOlcrrSeqno(newData.getOlcrrSeqno()); break;
						    case "valdNdsYn" : oldData.setValdNdsYn(newData.getValdNdsYn()); break;
						    case "ndsApStrDthms" : oldData.setNdsApStrDthms(newData.getNdsApStrDthms()); break;
						    case "ndsApNdDthms" : oldData.setNdsApNdDthms(newData.getNdsApNdDthms()); break;
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "bkOrCrdCmpcd" : oldData.setBkOrCrdCmpcd(newData.getBkOrCrdCmpcd()); break;
						    case "actnoOrCrdno" : oldData.setActnoOrCrdno(newData.getActnoOrCrdno()); break;
						    case "epayPeriStmNo" : oldData.setEpayPeriStmNo(newData.getEpayPeriStmNo()); break;
						    case "tfTpcd" : oldData.setTfTpcd(newData.getTfTpcd()); break;
						    case "bkBrcd" : oldData.setBkBrcd(newData.getBkBrcd()); break;
						    case "bkBrnm" : oldData.setBkBrnm(newData.getBkBrnm()); break;
						    case "crdValdTrm" : oldData.setCrdValdTrm(newData.getCrdValdTrm()); break;
						    case "tfRqFlgcd" : oldData.setTfRqFlgcd(newData.getTfRqFlgcd()); break;
						    case "dpsrOrCrdOwrnm" : oldData.setDpsrOrCrdOwrnm(newData.getDpsrOrCrdOwrnm()); break;
						    case "ctmDscno" : oldData.setCtmDscno(newData.getCtmDscno()); break;
						    case "crtRelcd" : oldData.setCrtRelcd(newData.getCrtRelcd()); break;
						    case "ntTfHpdyCd" : oldData.setNtTfHpdyCd(newData.getNtTfHpdyCd()); break;
						    case "tfDlMetcd" : oldData.setTfDlMetcd(newData.getTfDlMetcd()); break;
						    case "autoTfRqPtncd" : oldData.setAutoTfRqPtncd(newData.getAutoTfRqPtncd()); break;
						    case "ptcrdSsYn" : oldData.setPtcrdSsYn(newData.getPtcrdSsYn()); break;
						    case "rqRqudt" : oldData.setRqRqudt(newData.getRqRqudt()); break;
						    case "tfRqDlStcd" : oldData.setTfRqDlStcd(newData.getTfRqDlStcd()); break;
						    case "rqRstRcpdt" : oldData.setRqRstRcpdt(newData.getRqRstRcpdt()); break;
						    case "bdlTfYn" : oldData.setBdlTfYn(newData.getBdlTfYn()); break;
						    case "bncRmactSynchYn" : oldData.setBncRmactSynchYn(newData.getBncRmactSynchYn()); break;
						    case "chCrdno" : oldData.setChCrdno(newData.getChCrdno()); break;
						    case "chCrdValdTrm" : oldData.setChCrdValdTrm(newData.getChCrdValdTrm()); break;
						    case "tfRqVncErcd" : oldData.setTfRqVncErcd(newData.getTfRqVncErcd()); break;
						    case "tfRqWdcmpErcd" : oldData.setTfRqWdcmpErcd(newData.getTfRqWdcmpErcd()); break;
						    case "atMntct" : oldData.setAtMntct(newData.getAtMntct()); break;
						    case "tfErFlgcd" : oldData.setTfErFlgcd(newData.getTfErFlgcd()); break;
						    case "rqdt" : oldData.setRqdt(newData.getRqdt()); break;
						    case "cnldt" : oldData.setCnldt(newData.getCnldt()); break;
						    case "cnRqudt" : oldData.setCnRqudt(newData.getCnRqudt()); break;
						    case "tfCnDlStcd" : oldData.setTfCnDlStcd(newData.getTfCnDlStcd()); break;
						    case "lnPlyno" : oldData.setLnPlyno(newData.getLnPlyno()); break;
						    case "frcCrtYn" : oldData.setFrcCrtYn(newData.getFrcCrtYn()); break;
						    case "autoTfRqdcSsno" : oldData.setAutoTfRqdcSsno(newData.getAutoTfRqdcSsno()); break;
						    case "dpsrTlno" : oldData.setDpsrTlno(newData.getDpsrTlno()); break;
						    case "dhCmpcd" : oldData.setDhCmpcd(newData.getDhCmpcd()); break;
						    case "fbsCvYn" : oldData.setFbsCvYn(newData.getFbsCvYn()); break;
						    case "ctmRqdt" : oldData.setCtmRqdt(newData.getCtmRqdt()); break;
						    case "evdDaFlgcd" : oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd()); break;
						    case "evdDaDscVl" : oldData.setEvdDaDscVl(newData.getEvdDaDscVl()); break;
						    case "evdDaSavePtncd" : oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd()); break;
						    case "rlPyrNo" : oldData.setRlPyrNo(newData.getRlPyrNo()); break;
						    case "vocNo" : oldData.setVocNo(newData.getVocNo()); break;
						    case "vocHdcftRgtYn" : oldData.setVocHdcftRgtYn(newData.getVocHdcftRgtYn()); break;
						    case "epayFlgcd" : oldData.setEpayFlgcd(newData.getEpayFlgcd()); break;
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
	
    // @Operation(summary = "자동이체신청 삭제" , description = "자동이체신청 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insautotfrqs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
