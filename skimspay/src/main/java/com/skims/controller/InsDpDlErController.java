/**
 * InsDpDlEr Entity Controller 클래스
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
import com.skims.domain.entity.InsDpDlEr;
import com.skims.domain.repository.InsDpDlErRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsDpDlEr 입금처리오류 Controller")
@Slf4j
public class InsDpDlErController {

    @Autowired
    InsDpDlErRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "입금처리오류 전체조회" , summary = "입금처리오류 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insdpdlers", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsDpDlEr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insdpdlers")
    public ResponseEntity<Page<InsDpDlEr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "입금처리오류 Key조회" , description = "입금처리오류 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsDpDlEr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsDpDlEr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsDpDlEr not found", content = @Content) })
    @GetMapping("/insdpdlers/{aid}")
    public ResponseEntity<InsDpDlEr> getById(@PathVariable("aid") Long aid) {
        Optional<InsDpDlEr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "입금처리오류 등록" , description = "입금처리오류 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsDpDlEr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsDpDlEr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insdpdlers")
    ResponseEntity<InsDpDlEr> postData(@RequestBody InsDpDlEr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "입금처리오류 수정" , description = "입금처리오류 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsDpDlEr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsDpDlEr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsDpDlEr not found", content = @Content) })
    @PutMapping("/insdpdlers/{aid}")
    ResponseEntity<InsDpDlEr> putData(@RequestBody InsDpDlEr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "입금처리오류 수정" , description = "입금처리오류 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsDpDlEr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsDpDlEr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsDpDlEr not found", content = @Content) })
	@PatchMapping("/insdpdlers/{aid}")
    ResponseEntity<InsDpDlEr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsDpDlEr newData = mapper.convertValue(newMap, InsDpDlEr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "dpDlErSeqno" : oldData.setDpDlErSeqno(newData.getDpDlErSeqno()); break;
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "pymSeq" : oldData.setPymSeq(newData.getPymSeq()); break;
						    case "dpCascd" : oldData.setDpCascd(newData.getDpCascd()); break;
						    case "dpDtCascd" : oldData.setDpDtCascd(newData.getDpDtCascd()); break;
						    case "rtxKndcd" : oldData.setRtxKndcd(newData.getRtxKndcd()); break;
						    case "dpRstErcd" : oldData.setDpRstErcd(newData.getDpRstErcd()); break;
						    case "fnlPymYymm" : oldData.setFnlPymYymm(newData.getFnlPymYymm()); break;
						    case "pymCyccd" : oldData.setPymCyccd(newData.getPymCyccd()); break;
						    case "pymMtdcd" : oldData.setPymMtdcd(newData.getPymMtdcd()); break;
						    case "rpdt" : oldData.setRpdt(newData.getRpdt()); break;
						    case "rviNt" : oldData.setRviNt(newData.getRviNt()); break;
						    case "ptyOrRtnPrm" : oldData.setPtyOrRtnPrm(newData.getPtyOrRtnPrm()); break;
						    case "apPrm" : oldData.setApPrm(newData.getApPrm()); break;
						    case "rpamt" : oldData.setRpamt(newData.getRpamt()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "dppsFlgcd" : oldData.setDppsFlgcd(newData.getDppsFlgcd()); break;
						    case "rvDlRstcd" : oldData.setRvDlRstcd(newData.getRvDlRstcd()); break;
						    case "ctmInqAutoTfsno" : oldData.setCtmInqAutoTfsno(newData.getCtmInqAutoTfsno()); break;
						    case "pvlPrdt" : oldData.setPvlPrdt(newData.getPvlPrdt()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "rvSbno" : oldData.setRvSbno(newData.getRvSbno()); break;
						    case "frDpRstErcd" : oldData.setFrDpRstErcd(newData.getFrDpRstErcd()); break;
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
	
    // @Operation(summary = "입금처리오류 삭제" , description = "입금처리오류 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsDpDlEr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsDpDlEr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insdpdlers/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
