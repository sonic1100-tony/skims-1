/**
 * InsAutoTfSpc Entity Controller 클래스
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
import com.skims.domain.entity.InsAutoTfSpc;
import com.skims.domain.repository.InsAutoTfSpcRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsAutoTfSpc 자동이체내역 Controller")
@Slf4j
public class InsAutoTfSpcController {

    @Autowired
    InsAutoTfSpcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "자동이체내역 전체조회" , summary = "자동이체내역 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insautotfspcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insautotfspcs")
    public ResponseEntity<Page<InsAutoTfSpc>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "자동이체내역 Key조회" , description = "자동이체내역 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsAutoTfSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfSpc not found", content = @Content) })
    @GetMapping("/insautotfspcs/{aid}")
    public ResponseEntity<InsAutoTfSpc> getById(@PathVariable("aid") Long aid) {
        Optional<InsAutoTfSpc> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "자동이체내역 등록" , description = "자동이체내역 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsAutoTfSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insautotfspcs")
    ResponseEntity<InsAutoTfSpc> postData(@RequestBody InsAutoTfSpc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "자동이체내역 수정" , description = "자동이체내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTfSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfSpc not found", content = @Content) })
    @PutMapping("/insautotfspcs/{aid}")
    ResponseEntity<InsAutoTfSpc> putData(@RequestBody InsAutoTfSpc newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setAutoTfsno(newData.getAutoTfsno());
                    oldData.setPlynoOrLnno(newData.getPlynoOrLnno());
                    oldData.setPrsPlynoOrLnno(newData.getPrsPlynoOrLnno());
                    oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                    oldData.setAutoTfdt(newData.getAutoTfdt());
                    oldData.setPrsPlyRqpymSeq(newData.getPrsPlyRqpymSeq());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                    oldData.setOldblSeqno(newData.getOldblSeqno());
                    oldData.setRqPymSeq(newData.getRqPymSeq());
                    oldData.setRequFnlPymYymm(newData.getRequFnlPymYymm());
                    oldData.setDlPymSeq(newData.getDlPymSeq());
                    oldData.setDlFnlPymYymm(newData.getDlFnlPymYymm());
                    oldData.setApPrm(newData.getApPrm());
                    oldData.setTfamt(newData.getTfamt());
                    oldData.setRvDlRstcd(newData.getRvDlRstcd());
                    oldData.setDpDlWrkDthms(newData.getDpDlWrkDthms());
                    oldData.setTfRequFlgcd(newData.getTfRequFlgcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setTfBjYymm(newData.getTfBjYymm());
                    oldData.setTfBjdtCd(newData.getTfBjdtCd());
                    oldData.setTfAdDscrt(newData.getTfAdDscrt());
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

    // @Operation(summary = "자동이체내역 수정" , description = "자동이체내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTfSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfSpc not found", content = @Content) })
	@PatchMapping("/insautotfspcs/{aid}")
    ResponseEntity<InsAutoTfSpc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsAutoTfSpc newData = mapper.convertValue(newMap, InsAutoTfSpc.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("autoTfsno"))
                            oldData.setAutoTfsno(newData.getAutoTfsno());
                        if (strKey.equals("plynoOrLnno"))
                            oldData.setPlynoOrLnno(newData.getPlynoOrLnno());
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
                        if (strKey.equals("rqPymSeq"))
                            oldData.setRqPymSeq(newData.getRqPymSeq());
                        if (strKey.equals("requFnlPymYymm"))
                            oldData.setRequFnlPymYymm(newData.getRequFnlPymYymm());
                        if (strKey.equals("dlPymSeq"))
                            oldData.setDlPymSeq(newData.getDlPymSeq());
                        if (strKey.equals("dlFnlPymYymm"))
                            oldData.setDlFnlPymYymm(newData.getDlFnlPymYymm());
                        if (strKey.equals("apPrm"))
                            oldData.setApPrm(newData.getApPrm());
                        if (strKey.equals("tfamt"))
                            oldData.setTfamt(newData.getTfamt());
                        if (strKey.equals("rvDlRstcd"))
                            oldData.setRvDlRstcd(newData.getRvDlRstcd());
                        if (strKey.equals("dpDlWrkDthms"))
                            oldData.setDpDlWrkDthms(newData.getDpDlWrkDthms());
                        if (strKey.equals("tfRequFlgcd"))
                            oldData.setTfRequFlgcd(newData.getTfRequFlgcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("tfBjYymm"))
                            oldData.setTfBjYymm(newData.getTfBjYymm());
                        if (strKey.equals("tfBjdtCd"))
                            oldData.setTfBjdtCd(newData.getTfBjdtCd());
                        if (strKey.equals("tfAdDscrt"))
                            oldData.setTfAdDscrt(newData.getTfAdDscrt());
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
	
    // @Operation(summary = "자동이체내역 삭제" , description = "자동이체내역 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsAutoTfSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insautotfspcs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
