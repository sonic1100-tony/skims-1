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
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "autoTfsno" : oldData.setAutoTfsno(newData.getAutoTfsno()); break;
						    case "plynoOrLnno" : oldData.setPlynoOrLnno(newData.getPlynoOrLnno()); break;
						    case "prsPlynoOrLnno" : oldData.setPrsPlynoOrLnno(newData.getPrsPlynoOrLnno()); break;
						    case "autoTfCgKndcd" : oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd()); break;
						    case "autoTfdt" : oldData.setAutoTfdt(newData.getAutoTfdt()); break;
						    case "prsPlyRqpymSeq" : oldData.setPrsPlyRqpymSeq(newData.getPrsPlyRqpymSeq()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "olcrrSeqno" : oldData.setOlcrrSeqno(newData.getOlcrrSeqno()); break;
						    case "oldblSeqno" : oldData.setOldblSeqno(newData.getOldblSeqno()); break;
						    case "rqPymSeq" : oldData.setRqPymSeq(newData.getRqPymSeq()); break;
						    case "requFnlPymYymm" : oldData.setRequFnlPymYymm(newData.getRequFnlPymYymm()); break;
						    case "dlPymSeq" : oldData.setDlPymSeq(newData.getDlPymSeq()); break;
						    case "dlFnlPymYymm" : oldData.setDlFnlPymYymm(newData.getDlFnlPymYymm()); break;
						    case "apPrm" : oldData.setApPrm(newData.getApPrm()); break;
						    case "tfamt" : oldData.setTfamt(newData.getTfamt()); break;
						    case "rvDlRstcd" : oldData.setRvDlRstcd(newData.getRvDlRstcd()); break;
						    case "dpDlWrkDthms" : oldData.setDpDlWrkDthms(newData.getDpDlWrkDthms()); break;
						    case "tfRequFlgcd" : oldData.setTfRequFlgcd(newData.getTfRequFlgcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "tfBjYymm" : oldData.setTfBjYymm(newData.getTfBjYymm()); break;
						    case "tfBjdtCd" : oldData.setTfBjdtCd(newData.getTfBjdtCd()); break;
						    case "tfAdDscrt" : oldData.setTfAdDscrt(newData.getTfAdDscrt()); break;
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
