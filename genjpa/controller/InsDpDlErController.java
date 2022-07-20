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
import com.skims.domain.entity.InsDpDlEr;
import com.skims.domain.repository.InsDpDlErRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<InsDpDlEr>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setDpDlErSeqno(newData.getDpDlErSeqno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setPymSeq(newData.getPymSeq());
                    oldData.setDpCascd(newData.getDpCascd());
                    oldData.setDpDtCascd(newData.getDpDtCascd());
                    oldData.setRtxKndcd(newData.getRtxKndcd());
                    oldData.setDpRstErcd(newData.getDpRstErcd());
                    oldData.setFnlPymYymm(newData.getFnlPymYymm());
                    oldData.setPymCyccd(newData.getPymCyccd());
                    oldData.setPymMtdcd(newData.getPymMtdcd());
                    oldData.setRpdt(newData.getRpdt());
                    oldData.setRviNt(newData.getRviNt());
                    oldData.setPtyOrRtnPrm(newData.getPtyOrRtnPrm());
                    oldData.setApPrm(newData.getApPrm());
                    oldData.setRpamt(newData.getRpamt());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setDppsFlgcd(newData.getDppsFlgcd());
                    oldData.setRvDlRstcd(newData.getRvDlRstcd());
                    oldData.setCtmInqAutoTfsno(newData.getCtmInqAutoTfsno());
                    oldData.setPvlPrdt(newData.getPvlPrdt());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setRvSbno(newData.getRvSbno());
                    oldData.setFrDpRstErcd(newData.getFrDpRstErcd());
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
                        if (strKey.equals("dpDlErSeqno"))
                            oldData.setDpDlErSeqno(newData.getDpDlErSeqno());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("pymSeq"))
                            oldData.setPymSeq(newData.getPymSeq());
                        if (strKey.equals("dpCascd"))
                            oldData.setDpCascd(newData.getDpCascd());
                        if (strKey.equals("dpDtCascd"))
                            oldData.setDpDtCascd(newData.getDpDtCascd());
                        if (strKey.equals("rtxKndcd"))
                            oldData.setRtxKndcd(newData.getRtxKndcd());
                        if (strKey.equals("dpRstErcd"))
                            oldData.setDpRstErcd(newData.getDpRstErcd());
                        if (strKey.equals("fnlPymYymm"))
                            oldData.setFnlPymYymm(newData.getFnlPymYymm());
                        if (strKey.equals("pymCyccd"))
                            oldData.setPymCyccd(newData.getPymCyccd());
                        if (strKey.equals("pymMtdcd"))
                            oldData.setPymMtdcd(newData.getPymMtdcd());
                        if (strKey.equals("rpdt"))
                            oldData.setRpdt(newData.getRpdt());
                        if (strKey.equals("rviNt"))
                            oldData.setRviNt(newData.getRviNt());
                        if (strKey.equals("ptyOrRtnPrm"))
                            oldData.setPtyOrRtnPrm(newData.getPtyOrRtnPrm());
                        if (strKey.equals("apPrm"))
                            oldData.setApPrm(newData.getApPrm());
                        if (strKey.equals("rpamt"))
                            oldData.setRpamt(newData.getRpamt());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("dppsFlgcd"))
                            oldData.setDppsFlgcd(newData.getDppsFlgcd());
                        if (strKey.equals("rvDlRstcd"))
                            oldData.setRvDlRstcd(newData.getRvDlRstcd());
                        if (strKey.equals("ctmInqAutoTfsno"))
                            oldData.setCtmInqAutoTfsno(newData.getCtmInqAutoTfsno());
                        if (strKey.equals("pvlPrdt"))
                            oldData.setPvlPrdt(newData.getPvlPrdt());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("rvSbno"))
                            oldData.setRvSbno(newData.getRvSbno());
                        if (strKey.equals("frDpRstErcd"))
                            oldData.setFrDpRstErcd(newData.getFrDpRstErcd());
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
