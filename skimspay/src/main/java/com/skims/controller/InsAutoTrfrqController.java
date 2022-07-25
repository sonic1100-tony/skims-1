/**
 * InsAutoTrfrq Entity Controller 클래스
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
import com.skims.domain.entity.InsAutoTrfrq;
import com.skims.domain.repository.InsAutoTrfrqRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsAutoTrfrq 자동이체의뢰 Controller")
@Slf4j
public class InsAutoTrfrqController {

    @Autowired
    InsAutoTrfrqRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "자동이체의뢰 전체조회" , summary = "자동이체의뢰 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insautotrfrqs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTrfrq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insautotrfrqs")
    public ResponseEntity<Page<InsAutoTrfrq>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "자동이체의뢰 Key조회" , description = "자동이체의뢰 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsAutoTrfrq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTrfrq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTrfrq not found", content = @Content) })
    @GetMapping("/insautotrfrqs/{aid}")
    public ResponseEntity<InsAutoTrfrq> getById(@PathVariable("aid") Long aid) {
        Optional<InsAutoTrfrq> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "자동이체의뢰 등록" , description = "자동이체의뢰 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsAutoTrfrq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTrfrq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insautotrfrqs")
    ResponseEntity<InsAutoTrfrq> postData(@RequestBody InsAutoTrfrq newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "자동이체의뢰 수정" , description = "자동이체의뢰 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTrfrq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTrfrq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTrfrq not found", content = @Content) })
    @PutMapping("/insautotrfrqs/{aid}")
    ResponseEntity<InsAutoTrfrq> putData(@RequestBody InsAutoTrfrq newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "자동이체의뢰 수정" , description = "자동이체의뢰 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTrfrq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTrfrq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTrfrq not found", content = @Content) })
	@PatchMapping("/insautotrfrqs/{aid}")
    ResponseEntity<InsAutoTrfrq> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsAutoTrfrq newData = mapper.convertValue(newMap, InsAutoTrfrq.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "prsPlynoOrLnno" : oldData.setPrsPlynoOrLnno(newData.getPrsPlynoOrLnno()); break;
						    case "autoTfCgKndcd" : oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd()); break;
						    case "autoTfdt" : oldData.setAutoTfdt(newData.getAutoTfdt()); break;
						    case "prsPlyRqpymSeq" : oldData.setPrsPlyRqpymSeq(newData.getPrsPlyRqpymSeq()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "olcrrSeqno" : oldData.setOlcrrSeqno(newData.getOlcrrSeqno()); break;
						    case "oldblSeqno" : oldData.setOldblSeqno(newData.getOldblSeqno()); break;
						    case "bdlWdrcBjYn" : oldData.setBdlWdrcBjYn(newData.getBdlWdrcBjYn()); break;
						    case "tfRqWrkDthms" : oldData.setTfRqWrkDthms(newData.getTfRqWrkDthms()); break;
						    case "tfRequDlStcd" : oldData.setTfRequDlStcd(newData.getTfRequDlStcd()); break;
						    case "tfRstRcpdt" : oldData.setTfRstRcpdt(newData.getTfRstRcpdt()); break;
						    case "tfDlMetcd" : oldData.setTfDlMetcd(newData.getTfDlMetcd()); break;
						    case "tfBjYymm" : oldData.setTfBjYymm(newData.getTfBjYymm()); break;
						    case "tfBjdtCd" : oldData.setTfBjdtCd(newData.getTfBjdtCd()); break;
						    case "wdrcLmFlgcd" : oldData.setWdrcLmFlgcd(newData.getWdrcLmFlgcd()); break;
						    case "bdlWdrcBjCrct" : oldData.setBdlWdrcBjCrct(newData.getBdlWdrcBjCrct()); break;
						    case "rqTfamt" : oldData.setRqTfamt(newData.getRqTfamt()); break;
						    case "dmPcamt" : oldData.setDmPcamt(newData.getDmPcamt()); break;
						    case "tfRequFlgcd" : oldData.setTfRequFlgcd(newData.getTfRequFlgcd()); break;
						    case "frTfRqudt" : oldData.setFrTfRqudt(newData.getFrTfRqudt()); break;
						    case "epayStmNo" : oldData.setEpayStmNo(newData.getEpayStmNo()); break;
						    case "crdApno" : oldData.setCrdApno(newData.getCrdApno()); break;
						    case "crdApdt" : oldData.setCrdApdt(newData.getCrdApdt()); break;
						    case "crdApHms" : oldData.setCrdApHms(newData.getCrdApHms()); break;
						    case "jnsno" : oldData.setJnsno(newData.getJnsno()); break;
						    case "tfDmVncErcd" : oldData.setTfDmVncErcd(newData.getTfDmVncErcd()); break;
						    case "tfDmWdcmpErcd" : oldData.setTfDmWdcmpErcd(newData.getTfDmWdcmpErcd()); break;
						    case "tfErFlgcd" : oldData.setTfErFlgcd(newData.getTfErFlgcd()); break;
						    case "pvlPrdt" : oldData.setPvlPrdt(newData.getPvlPrdt()); break;
						    case "acctWrteCn" : oldData.setAcctWrteCn(newData.getAcctWrteCn()); break;
						    case "dhCmpcd" : oldData.setDhCmpcd(newData.getDhCmpcd()); break;
						    case "bkOrCrdCmpcd" : oldData.setBkOrCrdCmpcd(newData.getBkOrCrdCmpcd()); break;
						    case "actnoOrCrdno" : oldData.setActnoOrCrdno(newData.getActnoOrCrdno()); break;
						    case "epayPeriStmNo" : oldData.setEpayPeriStmNo(newData.getEpayPeriStmNo()); break;
						    case "bkBrcd" : oldData.setBkBrcd(newData.getBkBrcd()); break;
						    case "crdValdTrm" : oldData.setCrdValdTrm(newData.getCrdValdTrm()); break;
						    case "ctmDscno" : oldData.setCtmDscno(newData.getCtmDscno()); break;
						    case "pyrNo" : oldData.setPyrNo(newData.getPyrNo()); break;
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
	
    // @Operation(summary = "자동이체의뢰 삭제" , description = "자동이체의뢰 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsAutoTrfrq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTrfrq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insautotrfrqs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
