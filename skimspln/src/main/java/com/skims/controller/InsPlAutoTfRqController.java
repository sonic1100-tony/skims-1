/**
 * InsPlAutoTfRq Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.math.BigDecimal;

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
import com.skims.domain.entity.InsPlAutoTfRq;
import com.skims.domain.entity.InsPlAutoTfRqPK;
import com.skims.domain.repository.InsPlAutoTfRqRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlAutoTfRq 설계자동이체신청 Controller")
@Slf4j
public class InsPlAutoTfRqController {

    @Autowired
    InsPlAutoTfRqRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계자동이체신청 전체조회" , summary = "설계자동이체신청 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insplautotfrqs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlAutoTfRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insplautotfrqs")
    public ResponseEntity<Page<InsPlAutoTfRq>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계자동이체신청 Key조회" , description = "설계자동이체신청 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlAutoTfRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlAutoTfRq not found", content = @Content) })
    @GetMapping("/insplautotfrqs/{plno}/{cgafChSeqno}/{autoTfCgKndcd}/{olcrrSeqno}")
    public ResponseEntity<InsPlAutoTfRq> getById(@PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("autoTfCgKndcd") String autoTfCgKndcd, @PathVariable("olcrrSeqno") BigDecimal olcrrSeqno) {
        Optional<InsPlAutoTfRq> data = repository.findById(new InsPlAutoTfRqPK(plno, cgafChSeqno, autoTfCgKndcd, olcrrSeqno));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계자동이체신청 등록" , description = "설계자동이체신청 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlAutoTfRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insplautotfrqs")
    ResponseEntity<InsPlAutoTfRq> postData(@RequestBody InsPlAutoTfRq newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계자동이체신청 수정" , description = "설계자동이체신청 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlAutoTfRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlAutoTfRq not found", content = @Content) })
    @PutMapping("/insplautotfrqs/{plno}/{cgafChSeqno}/{autoTfCgKndcd}/{olcrrSeqno}")
    ResponseEntity<InsPlAutoTfRq> putData(@RequestBody InsPlAutoTfRq newData, @PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("autoTfCgKndcd") String autoTfCgKndcd, @PathVariable("olcrrSeqno") BigDecimal olcrrSeqno) {
        return repository.findById(new InsPlAutoTfRqPK(plno, cgafChSeqno, autoTfCgKndcd, olcrrSeqno)) //
                .map(oldData -> {
                    newData.setPlno(oldData.getPlno());
                    newData.setCgafChSeqno(oldData.getCgafChSeqno());
                    newData.setAutoTfCgKndcd(oldData.getAutoTfCgKndcd());
                    newData.setOlcrrSeqno(oldData.getOlcrrSeqno());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "설계자동이체신청 수정" , description = "설계자동이체신청 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlAutoTfRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlAutoTfRq not found", content = @Content) })
	@PatchMapping("/insplautotfrqs/{plno}/{cgafChSeqno}/{autoTfCgKndcd}/{olcrrSeqno}")
    ResponseEntity<InsPlAutoTfRq> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("autoTfCgKndcd") String autoTfCgKndcd, @PathVariable("olcrrSeqno") BigDecimal olcrrSeqno) {
        InsPlAutoTfRq newData = mapper.convertValue(newMap, InsPlAutoTfRq.class);
        return repository.findById(new InsPlAutoTfRqPK(plno, cgafChSeqno, autoTfCgKndcd, olcrrSeqno)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
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
						    case "tfRqErcd" : oldData.setTfRqErcd(newData.getTfRqErcd()); break;
						    case "rqRstRcpdt" : oldData.setRqRstRcpdt(newData.getRqRstRcpdt()); break;
						    case "bdlTfYn" : oldData.setBdlTfYn(newData.getBdlTfYn()); break;
						    case "bncRmactSynchYn" : oldData.setBncRmactSynchYn(newData.getBncRmactSynchYn()); break;
						    case "chCrdno" : oldData.setChCrdno(newData.getChCrdno()); break;
						    case "chCrdValdTrm" : oldData.setChCrdValdTrm(newData.getChCrdValdTrm()); break;
						    case "atMntct" : oldData.setAtMntct(newData.getAtMntct()); break;
						    case "tfErFlgcd" : oldData.setTfErFlgcd(newData.getTfErFlgcd()); break;
						    case "rqdt" : oldData.setRqdt(newData.getRqdt()); break;
						    case "cnldt" : oldData.setCnldt(newData.getCnldt()); break;
						    case "cnRqudt" : oldData.setCnRqudt(newData.getCnRqudt()); break;
						    case "tfCnDlStcd" : oldData.setTfCnDlStcd(newData.getTfCnDlStcd()); break;
						    case "lnPlyno" : oldData.setLnPlyno(newData.getLnPlyno()); break;
						    case "dpsrTlno" : oldData.setDpsrTlno(newData.getDpsrTlno()); break;
						    case "dhCmpcd" : oldData.setDhCmpcd(newData.getDhCmpcd()); break;
						    case "ctmRqdt" : oldData.setCtmRqdt(newData.getCtmRqdt()); break;
						    case "evdDaFlgcd" : oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd()); break;
						    case "evdDaDscVl" : oldData.setEvdDaDscVl(newData.getEvdDaDscVl()); break;
						    case "evdDaSavePtncd" : oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd()); break;
						    case "rlPyrNo" : oldData.setRlPyrNo(newData.getRlPyrNo()); break;
						    case "lpntRqamt" : oldData.setLpntRqamt(newData.getLpntRqamt()); break;
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
	
    // @Operation(summary = "설계자동이체신청 삭제" , description = "설계자동이체신청 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlAutoTfRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlAutoTfRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insplautotfrqs/{plno}/{cgafChSeqno}/{autoTfCgKndcd}/{olcrrSeqno}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("autoTfCgKndcd") String autoTfCgKndcd, @PathVariable("olcrrSeqno") BigDecimal olcrrSeqno) {
        try {
            repository.deleteById(new InsPlAutoTfRqPK(plno, cgafChSeqno, autoTfCgKndcd, olcrrSeqno));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
