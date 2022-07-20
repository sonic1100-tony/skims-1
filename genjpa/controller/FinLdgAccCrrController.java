/**
 * FinLdgAccCrr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.sql.Date;

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
import com.skims.domain.entity.FinLdgAccCrr;
import com.skims.domain.entity.FinLdgAccCrrPK;
import com.skims.domain.repository.FinLdgAccCrrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinLdgAccCrr 원장계정이력 Controller")
@Slf4j
public class FinLdgAccCrrController {

    @Autowired
    FinLdgAccCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "원장계정이력 전체조회" , summary = "원장계정이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finldgacccrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finldgacccrrs")
    public ResponseEntity<Page<FinLdgAccCrr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "원장계정이력 Key조회" , description = "원장계정이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinLdgAccCrr not found", content = @Content) })
    @GetMapping("/finldgacccrrs/{aid}/{crRmdt}")
    public ResponseEntity<FinLdgAccCrr> getById(@PathVariable("aid") Long aid, @PathVariable("crRmdt") Date crRmdt) {
        Optional<FinLdgAccCrr> data = repository.findById(new FinLdgAccCrrPK(aid, crRmdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "원장계정이력 등록" , description = "원장계정이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finldgacccrrs")
    ResponseEntity<FinLdgAccCrr> postData(@RequestBody FinLdgAccCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "원장계정이력 수정" , description = "원장계정이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinLdgAccCrr not found", content = @Content) })
    @PutMapping("/finldgacccrrs/{aid}/{crRmdt}")
    ResponseEntity<FinLdgAccCrr> putData(@RequestBody FinLdgAccCrr newData, @PathVariable("aid") Long aid, @PathVariable("crRmdt") Date crRmdt) {
        return repository.findById(new FinLdgAccCrrPK(aid, crRmdt)) //
                .map(oldData -> {
                    oldData.setLdgno(newData.getLdgno());
                    oldData.setLdgKndcd(newData.getLdgKndcd());
                    oldData.setCrrSeqno(newData.getCrrSeqno());
                    oldData.setNtaccCd(newData.getNtaccCd());
                    oldData.setActOrgcd(newData.getActOrgcd());
                    oldData.setDhOrgcd(newData.getDhOrgcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setCrRmFlgcd(newData.getCrRmFlgcd());
                    oldData.setMncd(newData.getMncd());
                    oldData.setFcCrRmamt(newData.getFcCrRmamt());
                    oldData.setWoamtCrRmamt(newData.getWoamtCrRmamt());
                    oldData.setFcCrTblam(newData.getFcCrTblam());
                    oldData.setWoncrCrTblam(newData.getWoncrCrTblam());
                    oldData.setApXcrt(newData.getApXcrt());
                    oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                    oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                    oldData.setAccCrrTpcd(newData.getAccCrrTpcd());
                    oldData.setXcdt(newData.getXcdt());
                    oldData.setXcOrgcd(newData.getXcOrgcd());
                    oldData.setXcno(newData.getXcno());
                    oldData.setDsodt(newData.getDsodt());
                    oldData.setBdgDpno(newData.getBdgDpno());
                    oldData.setBfNtaccCd(newData.getBfNtaccCd());
                    oldData.setBfactOrgcd(newData.getBfactOrgcd());
                    oldData.setBfdhOrgcd(newData.getBfdhOrgcd());
                    oldData.setBfdhStfno(newData.getBfdhStfno());
                    oldData.setSlpdt(newData.getSlpdt());
                    oldData.setSlpno(newData.getSlpno());
                    oldData.setSlpLnno(newData.getSlpLnno());
                    oldData.setErsYn(newData.getErsYn());
                    oldData.setNotsMtt(newData.getNotsMtt());
                    oldData.setErpTsYn(newData.getErpTsYn());
                    oldData.setErpTsdt(newData.getErpTsdt());
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

    // @Operation(summary = "원장계정이력 수정" , description = "원장계정이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinLdgAccCrr not found", content = @Content) })
	@PatchMapping("/finldgacccrrs/{aid}/{crRmdt}")
    ResponseEntity<FinLdgAccCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid, @PathVariable("crRmdt") Date crRmdt) {
        FinLdgAccCrr newData = mapper.convertValue(newMap, FinLdgAccCrr.class);
        return repository.findById(new FinLdgAccCrrPK(aid, crRmdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("ldgno"))
                            oldData.setLdgno(newData.getLdgno());
                        if (strKey.equals("ldgKndcd"))
                            oldData.setLdgKndcd(newData.getLdgKndcd());
                        if (strKey.equals("crrSeqno"))
                            oldData.setCrrSeqno(newData.getCrrSeqno());
                        if (strKey.equals("ntaccCd"))
                            oldData.setNtaccCd(newData.getNtaccCd());
                        if (strKey.equals("actOrgcd"))
                            oldData.setActOrgcd(newData.getActOrgcd());
                        if (strKey.equals("dhOrgcd"))
                            oldData.setDhOrgcd(newData.getDhOrgcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("crRmFlgcd"))
                            oldData.setCrRmFlgcd(newData.getCrRmFlgcd());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("fcCrRmamt"))
                            oldData.setFcCrRmamt(newData.getFcCrRmamt());
                        if (strKey.equals("woamtCrRmamt"))
                            oldData.setWoamtCrRmamt(newData.getWoamtCrRmamt());
                        if (strKey.equals("fcCrTblam"))
                            oldData.setFcCrTblam(newData.getFcCrTblam());
                        if (strKey.equals("woncrCrTblam"))
                            oldData.setWoncrCrTblam(newData.getWoncrCrTblam());
                        if (strKey.equals("apXcrt"))
                            oldData.setApXcrt(newData.getApXcrt());
                        if (strKey.equals("dlTpO1Csfcd"))
                            oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                        if (strKey.equals("dlTpO2Csfcd"))
                            oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                        if (strKey.equals("accCrrTpcd"))
                            oldData.setAccCrrTpcd(newData.getAccCrrTpcd());
                        if (strKey.equals("xcdt"))
                            oldData.setXcdt(newData.getXcdt());
                        if (strKey.equals("xcOrgcd"))
                            oldData.setXcOrgcd(newData.getXcOrgcd());
                        if (strKey.equals("xcno"))
                            oldData.setXcno(newData.getXcno());
                        if (strKey.equals("dsodt"))
                            oldData.setDsodt(newData.getDsodt());
                        if (strKey.equals("bdgDpno"))
                            oldData.setBdgDpno(newData.getBdgDpno());
                        if (strKey.equals("bfNtaccCd"))
                            oldData.setBfNtaccCd(newData.getBfNtaccCd());
                        if (strKey.equals("bfactOrgcd"))
                            oldData.setBfactOrgcd(newData.getBfactOrgcd());
                        if (strKey.equals("bfdhOrgcd"))
                            oldData.setBfdhOrgcd(newData.getBfdhOrgcd());
                        if (strKey.equals("bfdhStfno"))
                            oldData.setBfdhStfno(newData.getBfdhStfno());
                        if (strKey.equals("slpdt"))
                            oldData.setSlpdt(newData.getSlpdt());
                        if (strKey.equals("slpno"))
                            oldData.setSlpno(newData.getSlpno());
                        if (strKey.equals("slpLnno"))
                            oldData.setSlpLnno(newData.getSlpLnno());
                        if (strKey.equals("ersYn"))
                            oldData.setErsYn(newData.getErsYn());
                        if (strKey.equals("notsMtt"))
                            oldData.setNotsMtt(newData.getNotsMtt());
                        if (strKey.equals("erpTsYn"))
                            oldData.setErpTsYn(newData.getErpTsYn());
                        if (strKey.equals("erpTsdt"))
                            oldData.setErpTsdt(newData.getErpTsdt());
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
	
    // @Operation(summary = "원장계정이력 삭제" , description = "원장계정이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinLdgAccCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinLdgAccCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finldgacccrrs/{aid}/{crRmdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid, @PathVariable("crRmdt") Date crRmdt) {
        try {
            repository.deleteById(new FinLdgAccCrrPK(aid, crRmdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
