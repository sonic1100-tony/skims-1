/**
 * FinPyXc Entity Controller 클래스
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
import com.skims.domain.entity.FinPyXc;
import com.skims.domain.repository.FinPyXcRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinPyXc 지급정산 Controller")
@Slf4j
public class FinPyXcController {

    @Autowired
    FinPyXcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "지급정산 전체조회" , summary = "지급정산 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finpyxcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyXc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finpyxcs")
    public ResponseEntity<Page<FinPyXc>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "지급정산 Key조회" , description = "지급정산 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinPyXc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyXc.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyXc not found", content = @Content) })
    @GetMapping("/finpyxcs/{aid}")
    public ResponseEntity<FinPyXc> getById(@PathVariable("aid") Long aid) {
        Optional<FinPyXc> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "지급정산 등록" , description = "지급정산 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinPyXc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyXc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finpyxcs")
    ResponseEntity<FinPyXc> postData(@RequestBody FinPyXc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "지급정산 수정" , description = "지급정산 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPyXc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyXc.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyXc not found", content = @Content) })
    @PutMapping("/finpyxcs/{aid}")
    ResponseEntity<FinPyXc> putData(@RequestBody FinPyXc newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPydt(newData.getPydt());
                    oldData.setPyOrgcd(newData.getPyOrgcd());
                    oldData.setPyXcno(newData.getPyXcno());
                    oldData.setPyActOrgcd(newData.getPyActOrgcd());
                    oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                    oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                    oldData.setPyMtdcd(newData.getPyMtdcd());
                    oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd());
                    oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd());
                    oldData.setSelfYn(newData.getSelfYn());
                    oldData.setRcrRsno(newData.getRcrRsno());
                    oldData.setRcrNm(newData.getRcrNm());
                    oldData.setMncd(newData.getMncd());
                    oldData.setPySmct(newData.getPySmct());
                    oldData.setPyWoncrSmamt(newData.getPyWoncrSmamt());
                    oldData.setPyFcSmamt(newData.getPyFcSmamt());
                    oldData.setFxPldoqFlgcd(newData.getFxPldoqFlgcd());
                    oldData.setFxPqamt(newData.getFxPqamt());
                    oldData.setApXcrt(newData.getApXcrt());
                    oldData.setDfpcd(newData.getDfpcd());
                    oldData.setPyStcd(newData.getPyStcd());
                    oldData.setPySlpdt(newData.getPySlpdt());
                    oldData.setPySlpno(newData.getPySlpno());
                    oldData.setInpScrId(newData.getInpScrId());
                    oldData.setCcldt(newData.getCcldt());
                    oldData.setCclStfno(newData.getCclStfno());
                    oldData.setNotsMtt(newData.getNotsMtt());
                    oldData.setVnccd(newData.getVnccd());
                    oldData.setMtactBkcd(newData.getMtactBkcd());
                    oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                    oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                    oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
                    oldData.setTlmPno(newData.getTlmPno());
                    oldData.setMsgId(newData.getMsgId());
                    oldData.setMsgTpCsfcd(newData.getMsgTpCsfcd());
                    oldData.setUplsTlmTsdt(newData.getUplsTlmTsdt());
                    oldData.setUplsTlmTsHms(newData.getUplsTlmTsHms());
                    oldData.setUplsTmmno(newData.getUplsTmmno());
                    oldData.setUplsTlmcd(newData.getUplsTlmcd());
                    oldData.setUplsBsnsFlgcd(newData.getUplsBsnsFlgcd());
                    oldData.setImtyTfErFlgcd(newData.getImtyTfErFlgcd());
                    oldData.setAcctSpcft(newData.getAcctSpcft());
                    oldData.setPynctTpcd(newData.getPynctTpcd());
                    oldData.setAccLdgno(newData.getAccLdgno());
                    oldData.setChkDscno(newData.getChkDscno());
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

    // @Operation(summary = "지급정산 수정" , description = "지급정산 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPyXc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyXc.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyXc not found", content = @Content) })
	@PatchMapping("/finpyxcs/{aid}")
    ResponseEntity<FinPyXc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        FinPyXc newData = mapper.convertValue(newMap, FinPyXc.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("pydt"))
                            oldData.setPydt(newData.getPydt());
                        if (strKey.equals("pyOrgcd"))
                            oldData.setPyOrgcd(newData.getPyOrgcd());
                        if (strKey.equals("pyXcno"))
                            oldData.setPyXcno(newData.getPyXcno());
                        if (strKey.equals("pyActOrgcd"))
                            oldData.setPyActOrgcd(newData.getPyActOrgcd());
                        if (strKey.equals("dlTpO1Csfcd"))
                            oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                        if (strKey.equals("dlTpO2Csfcd"))
                            oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                        if (strKey.equals("pyMtdcd"))
                            oldData.setPyMtdcd(newData.getPyMtdcd());
                        if (strKey.equals("pyDlO1Flgcd"))
                            oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd());
                        if (strKey.equals("pyDlO2Flgcd"))
                            oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd());
                        if (strKey.equals("selfYn"))
                            oldData.setSelfYn(newData.getSelfYn());
                        if (strKey.equals("rcrRsno"))
                            oldData.setRcrRsno(newData.getRcrRsno());
                        if (strKey.equals("rcrNm"))
                            oldData.setRcrNm(newData.getRcrNm());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("pySmct"))
                            oldData.setPySmct(newData.getPySmct());
                        if (strKey.equals("pyWoncrSmamt"))
                            oldData.setPyWoncrSmamt(newData.getPyWoncrSmamt());
                        if (strKey.equals("pyFcSmamt"))
                            oldData.setPyFcSmamt(newData.getPyFcSmamt());
                        if (strKey.equals("fxPldoqFlgcd"))
                            oldData.setFxPldoqFlgcd(newData.getFxPldoqFlgcd());
                        if (strKey.equals("fxPqamt"))
                            oldData.setFxPqamt(newData.getFxPqamt());
                        if (strKey.equals("apXcrt"))
                            oldData.setApXcrt(newData.getApXcrt());
                        if (strKey.equals("dfpcd"))
                            oldData.setDfpcd(newData.getDfpcd());
                        if (strKey.equals("pyStcd"))
                            oldData.setPyStcd(newData.getPyStcd());
                        if (strKey.equals("pySlpdt"))
                            oldData.setPySlpdt(newData.getPySlpdt());
                        if (strKey.equals("pySlpno"))
                            oldData.setPySlpno(newData.getPySlpno());
                        if (strKey.equals("inpScrId"))
                            oldData.setInpScrId(newData.getInpScrId());
                        if (strKey.equals("ccldt"))
                            oldData.setCcldt(newData.getCcldt());
                        if (strKey.equals("cclStfno"))
                            oldData.setCclStfno(newData.getCclStfno());
                        if (strKey.equals("notsMtt"))
                            oldData.setNotsMtt(newData.getNotsMtt());
                        if (strKey.equals("vnccd"))
                            oldData.setVnccd(newData.getVnccd());
                        if (strKey.equals("mtactBkcd"))
                            oldData.setMtactBkcd(newData.getMtactBkcd());
                        if (strKey.equals("finaDatVrfFlg1Vl"))
                            oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                        if (strKey.equals("finaDatVrfFlg2Vl"))
                            oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                        if (strKey.equals("finaDatVrfFlg3Vl"))
                            oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
                        if (strKey.equals("tlmPno"))
                            oldData.setTlmPno(newData.getTlmPno());
                        if (strKey.equals("msgId"))
                            oldData.setMsgId(newData.getMsgId());
                        if (strKey.equals("msgTpCsfcd"))
                            oldData.setMsgTpCsfcd(newData.getMsgTpCsfcd());
                        if (strKey.equals("uplsTlmTsdt"))
                            oldData.setUplsTlmTsdt(newData.getUplsTlmTsdt());
                        if (strKey.equals("uplsTlmTsHms"))
                            oldData.setUplsTlmTsHms(newData.getUplsTlmTsHms());
                        if (strKey.equals("uplsTmmno"))
                            oldData.setUplsTmmno(newData.getUplsTmmno());
                        if (strKey.equals("uplsTlmcd"))
                            oldData.setUplsTlmcd(newData.getUplsTlmcd());
                        if (strKey.equals("uplsBsnsFlgcd"))
                            oldData.setUplsBsnsFlgcd(newData.getUplsBsnsFlgcd());
                        if (strKey.equals("imtyTfErFlgcd"))
                            oldData.setImtyTfErFlgcd(newData.getImtyTfErFlgcd());
                        if (strKey.equals("acctSpcft"))
                            oldData.setAcctSpcft(newData.getAcctSpcft());
                        if (strKey.equals("pynctTpcd"))
                            oldData.setPynctTpcd(newData.getPynctTpcd());
                        if (strKey.equals("accLdgno"))
                            oldData.setAccLdgno(newData.getAccLdgno());
                        if (strKey.equals("chkDscno"))
                            oldData.setChkDscno(newData.getChkDscno());
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
	
    // @Operation(summary = "지급정산 삭제" , description = "지급정산 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinPyXc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyXc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finpyxcs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
