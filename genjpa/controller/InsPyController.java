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
import com.skims.domain.entity.InsPy;
import com.skims.domain.repository.InsPyRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<InsPy>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setPyno(newData.getPyno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setPyCrBrcd(newData.getPyCrBrcd());
                    oldData.setPyCrdt(newData.getPyCrdt());
                    oldData.setOpyno(newData.getOpyno());
                    oldData.setAcPyYn(newData.getAcPyYn());
                    oldData.setAcPydt(newData.getAcPydt());
                    oldData.setPyMtdcd(newData.getPyMtdcd());
                    oldData.setExRcvFlgcd(newData.getExRcvFlgcd());
                    oldData.setPyUramt(newData.getPyUramt());
                    oldData.setUiamt(newData.getUiamt());
                    oldData.setPyRsamt(newData.getPyRsamt());
                    oldData.setSbPyamt(newData.getSbPyamt());
                    oldData.setWoncvPyUramt(newData.getWoncvPyUramt());
                    oldData.setWoncvUiamt(newData.getWoncvUiamt());
                    oldData.setWoncvSbPyamt(newData.getWoncvSbPyamt());
                    oldData.setMncd(newData.getMncd());
                    oldData.setXcrtApdt(newData.getXcrtApdt());
                    oldData.setXcrt(newData.getXcrt());
                    oldData.setSelfChamt(newData.getSelfChamt());
                    oldData.setBaamtFlgcd(newData.getBaamtFlgcd());
                    oldData.setPfbRcpsRelcd(newData.getPfbRcpsRelcd());
                    oldData.setPyBjnm(newData.getPyBjnm());
                    oldData.setPyBjRsBzmno(newData.getPyBjRsBzmno());
                    oldData.setRqapsNm(newData.getRqapsNm());
                    oldData.setRqapsRsno(newData.getRqapsRsno());
                    oldData.setDlgPyRscd(newData.getDlgPyRscd());
                    oldData.setBkcd(newData.getBkcd());
                    oldData.setActno(newData.getActno());
                    oldData.setDpsnm(newData.getDpsnm());
                    oldData.setDpsrRsBzmno(newData.getDpsrRsBzmno());
                    oldData.setPyBjDpsrRelcd(newData.getPyBjDpsrRelcd());
                    oldData.setAcctBdlrmInpYn(newData.getAcctBdlrmInpYn());
                    oldData.setApTxPfFlgcd(newData.getApTxPfFlgcd());
                    oldData.setCrDhStfno(newData.getCrDhStfno());
                    oldData.setPyCrPtncd(newData.getPyCrPtncd());
                    oldData.setBdlRmPlyno(newData.getBdlRmPlyno());
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setBdlrmRelpcClmpsSeqno(newData.getBdlrmRelpcClmpsSeqno());
                    oldData.setPyActFlgcd(newData.getPyActFlgcd());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setCprtEntpSeqno(newData.getCprtEntpSeqno());
                    oldData.setAdtxYn(newData.getAdtxYn());
                    oldData.setCmpPyRltno(newData.getCmpPyRltno());
                    oldData.setPyStcd(newData.getPyStcd());
                    oldData.setPyCrno(newData.getPyCrno());
                    oldData.setTabPyYn(newData.getTabPyYn());
                    oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                    oldData.setSmsBjYn(newData.getSmsBjYn());
                    oldData.setRtamtTpcd(newData.getRtamtTpcd());
                    oldData.setPyCstno(newData.getPyCstno());
                    oldData.setLnPyDtFlgcd(newData.getLnPyDtFlgcd());
                    oldData.setPyBjKndcd(newData.getPyBjKndcd());
                    oldData.setPyBjVictmRelcd(newData.getPyBjVictmRelcd());
                    oldData.setEvdno(newData.getEvdno());
                    oldData.setRmMtdcd(newData.getRmMtdcd());
                    oldData.setOvseTfYn(newData.getOvseTfYn());
                    oldData.setPyplFlgcd(newData.getPyplFlgcd());
                    oldData.setIbnfCsFlgcd(newData.getIbnfCsFlgcd());
                    oldData.setOvsePyBjnm(newData.getOvsePyBjnm());
                    oldData.setOvsePyBjAdr(newData.getOvsePyBjAdr());
                    oldData.setOvsePyBknm(newData.getOvsePyBknm());
                    oldData.setOvsePyBkAdr(newData.getOvsePyBkAdr());
                    oldData.setNtnBkcd(newData.getNtnBkcd());
                    oldData.setSwf(newData.getSwf());
                    oldData.setPyBkCtynm(newData.getPyBkCtynm());
                    oldData.setPyBkNtnnm(newData.getPyBkNtnnm());
                    oldData.setOvseRmBkTpcd(newData.getOvseRmBkTpcd());
                    oldData.setOseaCmChrgFlgcd(newData.getOseaCmChrgFlgcd());
                    oldData.setOvseRqaplRel(newData.getOvseRqaplRel());
                    oldData.setOvsePyRs(newData.getOvsePyRs());
                    oldData.setOvseRcpntRefRs(newData.getOvseRcpntRefRs());
                    oldData.setOvseRqaplRelCn(newData.getOvseRqaplRelCn());
                    oldData.setOvsePyRsCn(newData.getOvsePyRsCn());
                    oldData.setOvseActno(newData.getOvseActno());
                    oldData.setPyDlayNt(newData.getPyDlayNt());
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
                        if (strKey.equals("pyno"))
                            oldData.setPyno(newData.getPyno());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("pyCrBrcd"))
                            oldData.setPyCrBrcd(newData.getPyCrBrcd());
                        if (strKey.equals("pyCrdt"))
                            oldData.setPyCrdt(newData.getPyCrdt());
                        if (strKey.equals("opyno"))
                            oldData.setOpyno(newData.getOpyno());
                        if (strKey.equals("acPyYn"))
                            oldData.setAcPyYn(newData.getAcPyYn());
                        if (strKey.equals("acPydt"))
                            oldData.setAcPydt(newData.getAcPydt());
                        if (strKey.equals("pyMtdcd"))
                            oldData.setPyMtdcd(newData.getPyMtdcd());
                        if (strKey.equals("exRcvFlgcd"))
                            oldData.setExRcvFlgcd(newData.getExRcvFlgcd());
                        if (strKey.equals("pyUramt"))
                            oldData.setPyUramt(newData.getPyUramt());
                        if (strKey.equals("uiamt"))
                            oldData.setUiamt(newData.getUiamt());
                        if (strKey.equals("pyRsamt"))
                            oldData.setPyRsamt(newData.getPyRsamt());
                        if (strKey.equals("sbPyamt"))
                            oldData.setSbPyamt(newData.getSbPyamt());
                        if (strKey.equals("woncvPyUramt"))
                            oldData.setWoncvPyUramt(newData.getWoncvPyUramt());
                        if (strKey.equals("woncvUiamt"))
                            oldData.setWoncvUiamt(newData.getWoncvUiamt());
                        if (strKey.equals("woncvSbPyamt"))
                            oldData.setWoncvSbPyamt(newData.getWoncvSbPyamt());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("xcrtApdt"))
                            oldData.setXcrtApdt(newData.getXcrtApdt());
                        if (strKey.equals("xcrt"))
                            oldData.setXcrt(newData.getXcrt());
                        if (strKey.equals("selfChamt"))
                            oldData.setSelfChamt(newData.getSelfChamt());
                        if (strKey.equals("baamtFlgcd"))
                            oldData.setBaamtFlgcd(newData.getBaamtFlgcd());
                        if (strKey.equals("pfbRcpsRelcd"))
                            oldData.setPfbRcpsRelcd(newData.getPfbRcpsRelcd());
                        if (strKey.equals("pyBjnm"))
                            oldData.setPyBjnm(newData.getPyBjnm());
                        if (strKey.equals("pyBjRsBzmno"))
                            oldData.setPyBjRsBzmno(newData.getPyBjRsBzmno());
                        if (strKey.equals("rqapsNm"))
                            oldData.setRqapsNm(newData.getRqapsNm());
                        if (strKey.equals("rqapsRsno"))
                            oldData.setRqapsRsno(newData.getRqapsRsno());
                        if (strKey.equals("dlgPyRscd"))
                            oldData.setDlgPyRscd(newData.getDlgPyRscd());
                        if (strKey.equals("bkcd"))
                            oldData.setBkcd(newData.getBkcd());
                        if (strKey.equals("actno"))
                            oldData.setActno(newData.getActno());
                        if (strKey.equals("dpsnm"))
                            oldData.setDpsnm(newData.getDpsnm());
                        if (strKey.equals("dpsrRsBzmno"))
                            oldData.setDpsrRsBzmno(newData.getDpsrRsBzmno());
                        if (strKey.equals("pyBjDpsrRelcd"))
                            oldData.setPyBjDpsrRelcd(newData.getPyBjDpsrRelcd());
                        if (strKey.equals("acctBdlrmInpYn"))
                            oldData.setAcctBdlrmInpYn(newData.getAcctBdlrmInpYn());
                        if (strKey.equals("apTxPfFlgcd"))
                            oldData.setApTxPfFlgcd(newData.getApTxPfFlgcd());
                        if (strKey.equals("crDhStfno"))
                            oldData.setCrDhStfno(newData.getCrDhStfno());
                        if (strKey.equals("pyCrPtncd"))
                            oldData.setPyCrPtncd(newData.getPyCrPtncd());
                        if (strKey.equals("bdlRmPlyno"))
                            oldData.setBdlRmPlyno(newData.getBdlRmPlyno());
                        if (strKey.equals("rcpYymm"))
                            oldData.setRcpYymm(newData.getRcpYymm());
                        if (strKey.equals("rcpNvSeqno"))
                            oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                        if (strKey.equals("bdlrmRelpcClmpsSeqno"))
                            oldData.setBdlrmRelpcClmpsSeqno(newData.getBdlrmRelpcClmpsSeqno());
                        if (strKey.equals("pyActFlgcd"))
                            oldData.setPyActFlgcd(newData.getPyActFlgcd());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("cprtEntpSeqno"))
                            oldData.setCprtEntpSeqno(newData.getCprtEntpSeqno());
                        if (strKey.equals("adtxYn"))
                            oldData.setAdtxYn(newData.getAdtxYn());
                        if (strKey.equals("cmpPyRltno"))
                            oldData.setCmpPyRltno(newData.getCmpPyRltno());
                        if (strKey.equals("pyStcd"))
                            oldData.setPyStcd(newData.getPyStcd());
                        if (strKey.equals("pyCrno"))
                            oldData.setPyCrno(newData.getPyCrno());
                        if (strKey.equals("tabPyYn"))
                            oldData.setTabPyYn(newData.getTabPyYn());
                        if (strKey.equals("olcrrSeqno"))
                            oldData.setOlcrrSeqno(newData.getOlcrrSeqno());
                        if (strKey.equals("smsBjYn"))
                            oldData.setSmsBjYn(newData.getSmsBjYn());
                        if (strKey.equals("rtamtTpcd"))
                            oldData.setRtamtTpcd(newData.getRtamtTpcd());
                        if (strKey.equals("pyCstno"))
                            oldData.setPyCstno(newData.getPyCstno());
                        if (strKey.equals("lnPyDtFlgcd"))
                            oldData.setLnPyDtFlgcd(newData.getLnPyDtFlgcd());
                        if (strKey.equals("pyBjKndcd"))
                            oldData.setPyBjKndcd(newData.getPyBjKndcd());
                        if (strKey.equals("pyBjVictmRelcd"))
                            oldData.setPyBjVictmRelcd(newData.getPyBjVictmRelcd());
                        if (strKey.equals("evdno"))
                            oldData.setEvdno(newData.getEvdno());
                        if (strKey.equals("rmMtdcd"))
                            oldData.setRmMtdcd(newData.getRmMtdcd());
                        if (strKey.equals("ovseTfYn"))
                            oldData.setOvseTfYn(newData.getOvseTfYn());
                        if (strKey.equals("pyplFlgcd"))
                            oldData.setPyplFlgcd(newData.getPyplFlgcd());
                        if (strKey.equals("ibnfCsFlgcd"))
                            oldData.setIbnfCsFlgcd(newData.getIbnfCsFlgcd());
                        if (strKey.equals("ovsePyBjnm"))
                            oldData.setOvsePyBjnm(newData.getOvsePyBjnm());
                        if (strKey.equals("ovsePyBjAdr"))
                            oldData.setOvsePyBjAdr(newData.getOvsePyBjAdr());
                        if (strKey.equals("ovsePyBknm"))
                            oldData.setOvsePyBknm(newData.getOvsePyBknm());
                        if (strKey.equals("ovsePyBkAdr"))
                            oldData.setOvsePyBkAdr(newData.getOvsePyBkAdr());
                        if (strKey.equals("ntnBkcd"))
                            oldData.setNtnBkcd(newData.getNtnBkcd());
                        if (strKey.equals("swf"))
                            oldData.setSwf(newData.getSwf());
                        if (strKey.equals("pyBkCtynm"))
                            oldData.setPyBkCtynm(newData.getPyBkCtynm());
                        if (strKey.equals("pyBkNtnnm"))
                            oldData.setPyBkNtnnm(newData.getPyBkNtnnm());
                        if (strKey.equals("ovseRmBkTpcd"))
                            oldData.setOvseRmBkTpcd(newData.getOvseRmBkTpcd());
                        if (strKey.equals("oseaCmChrgFlgcd"))
                            oldData.setOseaCmChrgFlgcd(newData.getOseaCmChrgFlgcd());
                        if (strKey.equals("ovseRqaplRel"))
                            oldData.setOvseRqaplRel(newData.getOvseRqaplRel());
                        if (strKey.equals("ovsePyRs"))
                            oldData.setOvsePyRs(newData.getOvsePyRs());
                        if (strKey.equals("ovseRcpntRefRs"))
                            oldData.setOvseRcpntRefRs(newData.getOvseRcpntRefRs());
                        if (strKey.equals("ovseRqaplRelCn"))
                            oldData.setOvseRqaplRelCn(newData.getOvseRqaplRelCn());
                        if (strKey.equals("ovsePyRsCn"))
                            oldData.setOvsePyRsCn(newData.getOvsePyRsCn());
                        if (strKey.equals("ovseActno"))
                            oldData.setOvseActno(newData.getOvseActno());
                        if (strKey.equals("pyDlayNt"))
                            oldData.setPyDlayNt(newData.getPyDlayNt());
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
