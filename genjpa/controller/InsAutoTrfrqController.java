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

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setPrsPlynoOrLnno(newData.getPrsPlynoOrLnno());
                    oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                    oldData.setAutoTfdt(newData.getAutoTfdt());
                    oldData.setPrsPlyRqpymSeq(newData.getPrsPlyRqpymSeq());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                    oldData.setOldblSeqno(newData.getOldblSeqno());
                    oldData.setBdlWdrcBjYn(newData.getBdlWdrcBjYn());
                    oldData.setTfRqWrkDthms(newData.getTfRqWrkDthms());
                    oldData.setTfRequDlStcd(newData.getTfRequDlStcd());
                    oldData.setTfRstRcpdt(newData.getTfRstRcpdt());
                    oldData.setTfDlMetcd(newData.getTfDlMetcd());
                    oldData.setTfBjYymm(newData.getTfBjYymm());
                    oldData.setTfBjdtCd(newData.getTfBjdtCd());
                    oldData.setWdrcLmFlgcd(newData.getWdrcLmFlgcd());
                    oldData.setBdlWdrcBjCrct(newData.getBdlWdrcBjCrct());
                    oldData.setRqTfamt(newData.getRqTfamt());
                    oldData.setDmPcamt(newData.getDmPcamt());
                    oldData.setTfRequFlgcd(newData.getTfRequFlgcd());
                    oldData.setFrTfRqudt(newData.getFrTfRqudt());
                    oldData.setEpayStmNo(newData.getEpayStmNo());
                    oldData.setCrdApno(newData.getCrdApno());
                    oldData.setCrdApdt(newData.getCrdApdt());
                    oldData.setCrdApHms(newData.getCrdApHms());
                    oldData.setJnsno(newData.getJnsno());
                    oldData.setTfDmVncErcd(newData.getTfDmVncErcd());
                    oldData.setTfDmWdcmpErcd(newData.getTfDmWdcmpErcd());
                    oldData.setTfErFlgcd(newData.getTfErFlgcd());
                    oldData.setPvlPrdt(newData.getPvlPrdt());
                    oldData.setAcctWrteCn(newData.getAcctWrteCn());
                    oldData.setDhCmpcd(newData.getDhCmpcd());
                    oldData.setBkOrCrdCmpcd(newData.getBkOrCrdCmpcd());
                    oldData.setActnoOrCrdno(newData.getActnoOrCrdno());
                    oldData.setEpayPeriStmNo(newData.getEpayPeriStmNo());
                    oldData.setBkBrcd(newData.getBkBrcd());
                    oldData.setCrdValdTrm(newData.getCrdValdTrm());
                    oldData.setCtmDscno(newData.getCtmDscno());
                    oldData.setPyrNo(newData.getPyrNo());
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
                        if (strKey.equals("prsPlynoOrLnno"))
                            oldData.setPrsPlynoOrLnno(newData.getPrsPlynoOrLnno());
                        if (strKey.equals("autoTfCgKndcd"))
                            oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                        if (strKey.equals("autoTfdt"))
                            oldData.setAutoTfdt(newData.getAutoTfdt());
                        if (strKey.equals("prsPlyRqpymSeq"))
                            oldData.setPrsPlyRqpymSeq(newData.getPrsPlyRqpymSeq());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("olcrrSeqno"))
                            oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                        if (strKey.equals("oldblSeqno"))
                            oldData.setOldblSeqno(newData.getOldblSeqno());
                        if (strKey.equals("bdlWdrcBjYn"))
                            oldData.setBdlWdrcBjYn(newData.getBdlWdrcBjYn());
                        if (strKey.equals("tfRqWrkDthms"))
                            oldData.setTfRqWrkDthms(newData.getTfRqWrkDthms());
                        if (strKey.equals("tfRequDlStcd"))
                            oldData.setTfRequDlStcd(newData.getTfRequDlStcd());
                        if (strKey.equals("tfRstRcpdt"))
                            oldData.setTfRstRcpdt(newData.getTfRstRcpdt());
                        if (strKey.equals("tfDlMetcd"))
                            oldData.setTfDlMetcd(newData.getTfDlMetcd());
                        if (strKey.equals("tfBjYymm"))
                            oldData.setTfBjYymm(newData.getTfBjYymm());
                        if (strKey.equals("tfBjdtCd"))
                            oldData.setTfBjdtCd(newData.getTfBjdtCd());
                        if (strKey.equals("wdrcLmFlgcd"))
                            oldData.setWdrcLmFlgcd(newData.getWdrcLmFlgcd());
                        if (strKey.equals("bdlWdrcBjCrct"))
                            oldData.setBdlWdrcBjCrct(newData.getBdlWdrcBjCrct());
                        if (strKey.equals("rqTfamt"))
                            oldData.setRqTfamt(newData.getRqTfamt());
                        if (strKey.equals("dmPcamt"))
                            oldData.setDmPcamt(newData.getDmPcamt());
                        if (strKey.equals("tfRequFlgcd"))
                            oldData.setTfRequFlgcd(newData.getTfRequFlgcd());
                        if (strKey.equals("frTfRqudt"))
                            oldData.setFrTfRqudt(newData.getFrTfRqudt());
                        if (strKey.equals("epayStmNo"))
                            oldData.setEpayStmNo(newData.getEpayStmNo());
                        if (strKey.equals("crdApno"))
                            oldData.setCrdApno(newData.getCrdApno());
                        if (strKey.equals("crdApdt"))
                            oldData.setCrdApdt(newData.getCrdApdt());
                        if (strKey.equals("crdApHms"))
                            oldData.setCrdApHms(newData.getCrdApHms());
                        if (strKey.equals("jnsno"))
                            oldData.setJnsno(newData.getJnsno());
                        if (strKey.equals("tfDmVncErcd"))
                            oldData.setTfDmVncErcd(newData.getTfDmVncErcd());
                        if (strKey.equals("tfDmWdcmpErcd"))
                            oldData.setTfDmWdcmpErcd(newData.getTfDmWdcmpErcd());
                        if (strKey.equals("tfErFlgcd"))
                            oldData.setTfErFlgcd(newData.getTfErFlgcd());
                        if (strKey.equals("pvlPrdt"))
                            oldData.setPvlPrdt(newData.getPvlPrdt());
                        if (strKey.equals("acctWrteCn"))
                            oldData.setAcctWrteCn(newData.getAcctWrteCn());
                        if (strKey.equals("dhCmpcd"))
                            oldData.setDhCmpcd(newData.getDhCmpcd());
                        if (strKey.equals("bkOrCrdCmpcd"))
                            oldData.setBkOrCrdCmpcd(newData.getBkOrCrdCmpcd());
                        if (strKey.equals("actnoOrCrdno"))
                            oldData.setActnoOrCrdno(newData.getActnoOrCrdno());
                        if (strKey.equals("epayPeriStmNo"))
                            oldData.setEpayPeriStmNo(newData.getEpayPeriStmNo());
                        if (strKey.equals("bkBrcd"))
                            oldData.setBkBrcd(newData.getBkBrcd());
                        if (strKey.equals("crdValdTrm"))
                            oldData.setCrdValdTrm(newData.getCrdValdTrm());
                        if (strKey.equals("ctmDscno"))
                            oldData.setCtmDscno(newData.getCtmDscno());
                        if (strKey.equals("pyrNo"))
                            oldData.setPyrNo(newData.getPyrNo());
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
