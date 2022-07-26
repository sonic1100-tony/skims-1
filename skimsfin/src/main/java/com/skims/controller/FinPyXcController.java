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
    public ResponseEntity<Page<FinPyXc>> getAll(Pageable pageable) {
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
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "pydt" : oldData.setPydt(newData.getPydt()); break;
						    case "pyOrgcd" : oldData.setPyOrgcd(newData.getPyOrgcd()); break;
						    case "pyXcno" : oldData.setPyXcno(newData.getPyXcno()); break;
						    case "pyActOrgcd" : oldData.setPyActOrgcd(newData.getPyActOrgcd()); break;
						    case "dlTpO1Csfcd" : oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd()); break;
						    case "dlTpO2Csfcd" : oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd()); break;
						    case "pyMtdcd" : oldData.setPyMtdcd(newData.getPyMtdcd()); break;
						    case "pyDlO1Flgcd" : oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd()); break;
						    case "pyDlO2Flgcd" : oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd()); break;
						    case "selfYn" : oldData.setSelfYn(newData.getSelfYn()); break;
						    case "rcrRsno" : oldData.setRcrRsno(newData.getRcrRsno()); break;
						    case "rcrNm" : oldData.setRcrNm(newData.getRcrNm()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "pySmct" : oldData.setPySmct(newData.getPySmct()); break;
						    case "pyWoncrSmamt" : oldData.setPyWoncrSmamt(newData.getPyWoncrSmamt()); break;
						    case "pyFcSmamt" : oldData.setPyFcSmamt(newData.getPyFcSmamt()); break;
						    case "fxPldoqFlgcd" : oldData.setFxPldoqFlgcd(newData.getFxPldoqFlgcd()); break;
						    case "fxPqamt" : oldData.setFxPqamt(newData.getFxPqamt()); break;
						    case "apXcrt" : oldData.setApXcrt(newData.getApXcrt()); break;
						    case "dfpcd" : oldData.setDfpcd(newData.getDfpcd()); break;
						    case "pyStcd" : oldData.setPyStcd(newData.getPyStcd()); break;
						    case "pySlpdt" : oldData.setPySlpdt(newData.getPySlpdt()); break;
						    case "pySlpno" : oldData.setPySlpno(newData.getPySlpno()); break;
						    case "inpScrId" : oldData.setInpScrId(newData.getInpScrId()); break;
						    case "ccldt" : oldData.setCcldt(newData.getCcldt()); break;
						    case "cclStfno" : oldData.setCclStfno(newData.getCclStfno()); break;
						    case "notsMtt" : oldData.setNotsMtt(newData.getNotsMtt()); break;
						    case "vnccd" : oldData.setVnccd(newData.getVnccd()); break;
						    case "mtactBkcd" : oldData.setMtactBkcd(newData.getMtactBkcd()); break;
						    case "finaDatVrfFlg1Vl" : oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl()); break;
						    case "finaDatVrfFlg2Vl" : oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl()); break;
						    case "finaDatVrfFlg3Vl" : oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl()); break;
						    case "tlmPno" : oldData.setTlmPno(newData.getTlmPno()); break;
						    case "msgId" : oldData.setMsgId(newData.getMsgId()); break;
						    case "msgTpCsfcd" : oldData.setMsgTpCsfcd(newData.getMsgTpCsfcd()); break;
						    case "uplsTlmTsdt" : oldData.setUplsTlmTsdt(newData.getUplsTlmTsdt()); break;
						    case "uplsTlmTsHms" : oldData.setUplsTlmTsHms(newData.getUplsTlmTsHms()); break;
						    case "uplsTmmno" : oldData.setUplsTmmno(newData.getUplsTmmno()); break;
						    case "uplsTlmcd" : oldData.setUplsTlmcd(newData.getUplsTlmcd()); break;
						    case "uplsBsnsFlgcd" : oldData.setUplsBsnsFlgcd(newData.getUplsBsnsFlgcd()); break;
						    case "imtyTfErFlgcd" : oldData.setImtyTfErFlgcd(newData.getImtyTfErFlgcd()); break;
						    case "acctSpcft" : oldData.setAcctSpcft(newData.getAcctSpcft()); break;
						    case "pynctTpcd" : oldData.setPynctTpcd(newData.getPynctTpcd()); break;
						    case "accLdgno" : oldData.setAccLdgno(newData.getAccLdgno()); break;
						    case "chkDscno" : oldData.setChkDscno(newData.getChkDscno()); break;
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
