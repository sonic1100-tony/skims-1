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
import com.skims.domain.entity.InsAutoTfRq;
import com.skims.domain.repository.InsAutoTfRqRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<InsAutoTfRq>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setPlynoOrLnno(newData.getPlynoOrLnno());
                    oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                    oldData.setValdNdsYn(newData.getValdNdsYn());
                    oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                    oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setBkOrCrdCmpcd(newData.getBkOrCrdCmpcd());
                    oldData.setActnoOrCrdno(newData.getActnoOrCrdno());
                    oldData.setEpayPeriStmNo(newData.getEpayPeriStmNo());
                    oldData.setTfTpcd(newData.getTfTpcd());
                    oldData.setBkBrcd(newData.getBkBrcd());
                    oldData.setBkBrnm(newData.getBkBrnm());
                    oldData.setCrdValdTrm(newData.getCrdValdTrm());
                    oldData.setTfRqFlgcd(newData.getTfRqFlgcd());
                    oldData.setDpsrOrCrdOwrnm(newData.getDpsrOrCrdOwrnm());
                    oldData.setCtmDscno(newData.getCtmDscno());
                    oldData.setCrtRelcd(newData.getCrtRelcd());
                    oldData.setNtTfHpdyCd(newData.getNtTfHpdyCd());
                    oldData.setTfDlMetcd(newData.getTfDlMetcd());
                    oldData.setAutoTfRqPtncd(newData.getAutoTfRqPtncd());
                    oldData.setPtcrdSsYn(newData.getPtcrdSsYn());
                    oldData.setRqRqudt(newData.getRqRqudt());
                    oldData.setTfRqDlStcd(newData.getTfRqDlStcd());
                    oldData.setRqRstRcpdt(newData.getRqRstRcpdt());
                    oldData.setBdlTfYn(newData.getBdlTfYn());
                    oldData.setBncRmactSynchYn(newData.getBncRmactSynchYn());
                    oldData.setChCrdno(newData.getChCrdno());
                    oldData.setChCrdValdTrm(newData.getChCrdValdTrm());
                    oldData.setTfRqVncErcd(newData.getTfRqVncErcd());
                    oldData.setTfRqWdcmpErcd(newData.getTfRqWdcmpErcd());
                    oldData.setAtMntct(newData.getAtMntct());
                    oldData.setTfErFlgcd(newData.getTfErFlgcd());
                    oldData.setRqdt(newData.getRqdt());
                    oldData.setCnldt(newData.getCnldt());
                    oldData.setCnRqudt(newData.getCnRqudt());
                    oldData.setTfCnDlStcd(newData.getTfCnDlStcd());
                    oldData.setLnPlyno(newData.getLnPlyno());
                    oldData.setFrcCrtYn(newData.getFrcCrtYn());
                    oldData.setAutoTfRqdcSsno(newData.getAutoTfRqdcSsno());
                    oldData.setDpsrTlno(newData.getDpsrTlno());
                    oldData.setDhCmpcd(newData.getDhCmpcd());
                    oldData.setFbsCvYn(newData.getFbsCvYn());
                    oldData.setCtmRqdt(newData.getCtmRqdt());
                    oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd());
                    oldData.setEvdDaDscVl(newData.getEvdDaDscVl());
                    oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd());
                    oldData.setRlPyrNo(newData.getRlPyrNo());
                    oldData.setVocNo(newData.getVocNo());
                    oldData.setVocHdcftRgtYn(newData.getVocHdcftRgtYn());
                    oldData.setEpayFlgcd(newData.getEpayFlgcd());
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
                        if (strKey.equals("plynoOrLnno"))
                            oldData.setPlynoOrLnno(newData.getPlynoOrLnno());
                        if (strKey.equals("autoTfCgKndcd"))
                            oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("apStrdt"))
                            oldData.setApStrdt(newData.getApStrdt());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("olcrrSeqno"))
                            oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                        if (strKey.equals("valdNdsYn"))
                            oldData.setValdNdsYn(newData.getValdNdsYn());
                        if (strKey.equals("ndsApStrDthms"))
                            oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                        if (strKey.equals("ndsApNdDthms"))
                            oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("bkOrCrdCmpcd"))
                            oldData.setBkOrCrdCmpcd(newData.getBkOrCrdCmpcd());
                        if (strKey.equals("actnoOrCrdno"))
                            oldData.setActnoOrCrdno(newData.getActnoOrCrdno());
                        if (strKey.equals("epayPeriStmNo"))
                            oldData.setEpayPeriStmNo(newData.getEpayPeriStmNo());
                        if (strKey.equals("tfTpcd"))
                            oldData.setTfTpcd(newData.getTfTpcd());
                        if (strKey.equals("bkBrcd"))
                            oldData.setBkBrcd(newData.getBkBrcd());
                        if (strKey.equals("bkBrnm"))
                            oldData.setBkBrnm(newData.getBkBrnm());
                        if (strKey.equals("crdValdTrm"))
                            oldData.setCrdValdTrm(newData.getCrdValdTrm());
                        if (strKey.equals("tfRqFlgcd"))
                            oldData.setTfRqFlgcd(newData.getTfRqFlgcd());
                        if (strKey.equals("dpsrOrCrdOwrnm"))
                            oldData.setDpsrOrCrdOwrnm(newData.getDpsrOrCrdOwrnm());
                        if (strKey.equals("ctmDscno"))
                            oldData.setCtmDscno(newData.getCtmDscno());
                        if (strKey.equals("crtRelcd"))
                            oldData.setCrtRelcd(newData.getCrtRelcd());
                        if (strKey.equals("ntTfHpdyCd"))
                            oldData.setNtTfHpdyCd(newData.getNtTfHpdyCd());
                        if (strKey.equals("tfDlMetcd"))
                            oldData.setTfDlMetcd(newData.getTfDlMetcd());
                        if (strKey.equals("autoTfRqPtncd"))
                            oldData.setAutoTfRqPtncd(newData.getAutoTfRqPtncd());
                        if (strKey.equals("ptcrdSsYn"))
                            oldData.setPtcrdSsYn(newData.getPtcrdSsYn());
                        if (strKey.equals("rqRqudt"))
                            oldData.setRqRqudt(newData.getRqRqudt());
                        if (strKey.equals("tfRqDlStcd"))
                            oldData.setTfRqDlStcd(newData.getTfRqDlStcd());
                        if (strKey.equals("rqRstRcpdt"))
                            oldData.setRqRstRcpdt(newData.getRqRstRcpdt());
                        if (strKey.equals("bdlTfYn"))
                            oldData.setBdlTfYn(newData.getBdlTfYn());
                        if (strKey.equals("bncRmactSynchYn"))
                            oldData.setBncRmactSynchYn(newData.getBncRmactSynchYn());
                        if (strKey.equals("chCrdno"))
                            oldData.setChCrdno(newData.getChCrdno());
                        if (strKey.equals("chCrdValdTrm"))
                            oldData.setChCrdValdTrm(newData.getChCrdValdTrm());
                        if (strKey.equals("tfRqVncErcd"))
                            oldData.setTfRqVncErcd(newData.getTfRqVncErcd());
                        if (strKey.equals("tfRqWdcmpErcd"))
                            oldData.setTfRqWdcmpErcd(newData.getTfRqWdcmpErcd());
                        if (strKey.equals("atMntct"))
                            oldData.setAtMntct(newData.getAtMntct());
                        if (strKey.equals("tfErFlgcd"))
                            oldData.setTfErFlgcd(newData.getTfErFlgcd());
                        if (strKey.equals("rqdt"))
                            oldData.setRqdt(newData.getRqdt());
                        if (strKey.equals("cnldt"))
                            oldData.setCnldt(newData.getCnldt());
                        if (strKey.equals("cnRqudt"))
                            oldData.setCnRqudt(newData.getCnRqudt());
                        if (strKey.equals("tfCnDlStcd"))
                            oldData.setTfCnDlStcd(newData.getTfCnDlStcd());
                        if (strKey.equals("lnPlyno"))
                            oldData.setLnPlyno(newData.getLnPlyno());
                        if (strKey.equals("frcCrtYn"))
                            oldData.setFrcCrtYn(newData.getFrcCrtYn());
                        if (strKey.equals("autoTfRqdcSsno"))
                            oldData.setAutoTfRqdcSsno(newData.getAutoTfRqdcSsno());
                        if (strKey.equals("dpsrTlno"))
                            oldData.setDpsrTlno(newData.getDpsrTlno());
                        if (strKey.equals("dhCmpcd"))
                            oldData.setDhCmpcd(newData.getDhCmpcd());
                        if (strKey.equals("fbsCvYn"))
                            oldData.setFbsCvYn(newData.getFbsCvYn());
                        if (strKey.equals("ctmRqdt"))
                            oldData.setCtmRqdt(newData.getCtmRqdt());
                        if (strKey.equals("evdDaFlgcd"))
                            oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd());
                        if (strKey.equals("evdDaDscVl"))
                            oldData.setEvdDaDscVl(newData.getEvdDaDscVl());
                        if (strKey.equals("evdDaSavePtncd"))
                            oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd());
                        if (strKey.equals("rlPyrNo"))
                            oldData.setRlPyrNo(newData.getRlPyrNo());
                        if (strKey.equals("vocNo"))
                            oldData.setVocNo(newData.getVocNo());
                        if (strKey.equals("vocHdcftRgtYn"))
                            oldData.setVocHdcftRgtYn(newData.getVocHdcftRgtYn());
                        if (strKey.equals("epayFlgcd"))
                            oldData.setEpayFlgcd(newData.getEpayFlgcd());
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
