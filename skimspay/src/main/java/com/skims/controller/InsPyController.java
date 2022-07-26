/**
 * InsPy Entity Controller 클래스
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
import com.skims.domain.entity.InsPy;
import com.skims.domain.repository.InsPyRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPy 지급 Controller")
@Slf4j
public class InsPyController {

    @Autowired
    InsPyRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "지급 전체조회" , summary = "지급 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inspys", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPy.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inspys")
    public ResponseEntity<Page<InsPy>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "지급 Key조회" , description = "지급 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPy.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPy not found", content = @Content) })
    @GetMapping("/inspys/{aid}")
    public ResponseEntity<InsPy> getById(@PathVariable("aid") Long aid) {
        Optional<InsPy> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "지급 등록" , description = "지급 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPy.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inspys")
    ResponseEntity<InsPy> postData(@RequestBody InsPy newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "지급 수정" , description = "지급 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPy.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPy not found", content = @Content) })
    @PutMapping("/inspys/{aid}")
    ResponseEntity<InsPy> putData(@RequestBody InsPy newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "지급 수정" , description = "지급 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPy.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPy not found", content = @Content) })
	@PatchMapping("/inspys/{aid}")
    ResponseEntity<InsPy> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPy newData = mapper.convertValue(newMap, InsPy.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "pyno" : oldData.setPyno(newData.getPyno()); break;
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "pyCrBrcd" : oldData.setPyCrBrcd(newData.getPyCrBrcd()); break;
						    case "pyCrdt" : oldData.setPyCrdt(newData.getPyCrdt()); break;
						    case "opyno" : oldData.setOpyno(newData.getOpyno()); break;
						    case "acPyYn" : oldData.setAcPyYn(newData.getAcPyYn()); break;
						    case "acPydt" : oldData.setAcPydt(newData.getAcPydt()); break;
						    case "pyMtdcd" : oldData.setPyMtdcd(newData.getPyMtdcd()); break;
						    case "exRcvFlgcd" : oldData.setExRcvFlgcd(newData.getExRcvFlgcd()); break;
						    case "pyUramt" : oldData.setPyUramt(newData.getPyUramt()); break;
						    case "uiamt" : oldData.setUiamt(newData.getUiamt()); break;
						    case "pyRsamt" : oldData.setPyRsamt(newData.getPyRsamt()); break;
						    case "sbPyamt" : oldData.setSbPyamt(newData.getSbPyamt()); break;
						    case "woncvPyUramt" : oldData.setWoncvPyUramt(newData.getWoncvPyUramt()); break;
						    case "woncvUiamt" : oldData.setWoncvUiamt(newData.getWoncvUiamt()); break;
						    case "woncvSbPyamt" : oldData.setWoncvSbPyamt(newData.getWoncvSbPyamt()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "xcrtApdt" : oldData.setXcrtApdt(newData.getXcrtApdt()); break;
						    case "xcrt" : oldData.setXcrt(newData.getXcrt()); break;
						    case "selfChamt" : oldData.setSelfChamt(newData.getSelfChamt()); break;
						    case "baamtFlgcd" : oldData.setBaamtFlgcd(newData.getBaamtFlgcd()); break;
						    case "pfbRcpsRelcd" : oldData.setPfbRcpsRelcd(newData.getPfbRcpsRelcd()); break;
						    case "pyBjnm" : oldData.setPyBjnm(newData.getPyBjnm()); break;
						    case "pyBjRsBzmno" : oldData.setPyBjRsBzmno(newData.getPyBjRsBzmno()); break;
						    case "rqapsNm" : oldData.setRqapsNm(newData.getRqapsNm()); break;
						    case "rqapsRsno" : oldData.setRqapsRsno(newData.getRqapsRsno()); break;
						    case "dlgPyRscd" : oldData.setDlgPyRscd(newData.getDlgPyRscd()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "actno" : oldData.setActno(newData.getActno()); break;
						    case "dpsnm" : oldData.setDpsnm(newData.getDpsnm()); break;
						    case "dpsrRsBzmno" : oldData.setDpsrRsBzmno(newData.getDpsrRsBzmno()); break;
						    case "pyBjDpsrRelcd" : oldData.setPyBjDpsrRelcd(newData.getPyBjDpsrRelcd()); break;
						    case "acctBdlrmInpYn" : oldData.setAcctBdlrmInpYn(newData.getAcctBdlrmInpYn()); break;
						    case "apTxPfFlgcd" : oldData.setApTxPfFlgcd(newData.getApTxPfFlgcd()); break;
						    case "crDhStfno" : oldData.setCrDhStfno(newData.getCrDhStfno()); break;
						    case "pyCrPtncd" : oldData.setPyCrPtncd(newData.getPyCrPtncd()); break;
						    case "bdlRmPlyno" : oldData.setBdlRmPlyno(newData.getBdlRmPlyno()); break;
						    case "rcpYymm" : oldData.setRcpYymm(newData.getRcpYymm()); break;
						    case "rcpNvSeqno" : oldData.setRcpNvSeqno(newData.getRcpNvSeqno()); break;
						    case "bdlrmRelpcClmpsSeqno" : oldData.setBdlrmRelpcClmpsSeqno(newData.getBdlrmRelpcClmpsSeqno()); break;
						    case "pyActFlgcd" : oldData.setPyActFlgcd(newData.getPyActFlgcd()); break;
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "cprtEntpSeqno" : oldData.setCprtEntpSeqno(newData.getCprtEntpSeqno()); break;
						    case "adtxYn" : oldData.setAdtxYn(newData.getAdtxYn()); break;
						    case "cmpPyRltno" : oldData.setCmpPyRltno(newData.getCmpPyRltno()); break;
						    case "pyStcd" : oldData.setPyStcd(newData.getPyStcd()); break;
						    case "pyCrno" : oldData.setPyCrno(newData.getPyCrno()); break;
						    case "tabPyYn" : oldData.setTabPyYn(newData.getTabPyYn()); break;
						    case "olcrrSeqno" : oldData.setOlcrrSeqno(newData.getOlcrrSeqno()); break;
						    case "smsBjYn" : oldData.setSmsBjYn(newData.getSmsBjYn()); break;
						    case "rtamtTpcd" : oldData.setRtamtTpcd(newData.getRtamtTpcd()); break;
						    case "pyCstno" : oldData.setPyCstno(newData.getPyCstno()); break;
						    case "lnPyDtFlgcd" : oldData.setLnPyDtFlgcd(newData.getLnPyDtFlgcd()); break;
						    case "pyBjKndcd" : oldData.setPyBjKndcd(newData.getPyBjKndcd()); break;
						    case "pyBjVictmRelcd" : oldData.setPyBjVictmRelcd(newData.getPyBjVictmRelcd()); break;
						    case "evdno" : oldData.setEvdno(newData.getEvdno()); break;
						    case "rmMtdcd" : oldData.setRmMtdcd(newData.getRmMtdcd()); break;
						    case "ovseTfYn" : oldData.setOvseTfYn(newData.getOvseTfYn()); break;
						    case "pyplFlgcd" : oldData.setPyplFlgcd(newData.getPyplFlgcd()); break;
						    case "ibnfCsFlgcd" : oldData.setIbnfCsFlgcd(newData.getIbnfCsFlgcd()); break;
						    case "ovsePyBjnm" : oldData.setOvsePyBjnm(newData.getOvsePyBjnm()); break;
						    case "ovsePyBjAdr" : oldData.setOvsePyBjAdr(newData.getOvsePyBjAdr()); break;
						    case "ovsePyBknm" : oldData.setOvsePyBknm(newData.getOvsePyBknm()); break;
						    case "ovsePyBkAdr" : oldData.setOvsePyBkAdr(newData.getOvsePyBkAdr()); break;
						    case "ntnBkcd" : oldData.setNtnBkcd(newData.getNtnBkcd()); break;
						    case "swf" : oldData.setSwf(newData.getSwf()); break;
						    case "pyBkCtynm" : oldData.setPyBkCtynm(newData.getPyBkCtynm()); break;
						    case "pyBkNtnnm" : oldData.setPyBkNtnnm(newData.getPyBkNtnnm()); break;
						    case "ovseRmBkTpcd" : oldData.setOvseRmBkTpcd(newData.getOvseRmBkTpcd()); break;
						    case "oseaCmChrgFlgcd" : oldData.setOseaCmChrgFlgcd(newData.getOseaCmChrgFlgcd()); break;
						    case "ovseRqaplRel" : oldData.setOvseRqaplRel(newData.getOvseRqaplRel()); break;
						    case "ovsePyRs" : oldData.setOvsePyRs(newData.getOvsePyRs()); break;
						    case "ovseRcpntRefRs" : oldData.setOvseRcpntRefRs(newData.getOvseRcpntRefRs()); break;
						    case "ovseRqaplRelCn" : oldData.setOvseRqaplRelCn(newData.getOvseRqaplRelCn()); break;
						    case "ovsePyRsCn" : oldData.setOvsePyRsCn(newData.getOvsePyRsCn()); break;
						    case "ovseActno" : oldData.setOvseActno(newData.getOvseActno()); break;
						    case "pyDlayNt" : oldData.setPyDlayNt(newData.getPyDlayNt()); break;
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
	
    // @Operation(summary = "지급 삭제" , description = "지급 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPy.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inspys/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
