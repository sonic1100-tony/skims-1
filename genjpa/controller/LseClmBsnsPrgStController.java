/**
 * LseClmBsnsPrgSt Entity Controller 클래스
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
import com.skims.domain.entity.LseClmBsnsPrgSt;
import com.skims.domain.repository.LseClmBsnsPrgStRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseClmBsnsPrgSt 사고업무진행상태 Controller")
@Slf4j
public class LseClmBsnsPrgStController {

    @Autowired
    LseClmBsnsPrgStRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "사고업무진행상태 전체조회" , summary = "사고업무진행상태 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lseclmbsnsprgsts", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmBsnsPrgSt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lseclmbsnsprgsts")
    public ResponseEntity<Page<LseClmBsnsPrgSt>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "사고업무진행상태 Key조회" , description = "사고업무진행상태 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseClmBsnsPrgSt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmBsnsPrgSt.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmBsnsPrgSt not found", content = @Content) })
    @GetMapping("/lseclmbsnsprgsts/{aid}")
    public ResponseEntity<LseClmBsnsPrgSt> getById(@PathVariable("aid") Long aid) {
        Optional<LseClmBsnsPrgSt> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "사고업무진행상태 등록" , description = "사고업무진행상태 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseClmBsnsPrgSt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmBsnsPrgSt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lseclmbsnsprgsts")
    ResponseEntity<LseClmBsnsPrgSt> postData(@RequestBody LseClmBsnsPrgSt newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "사고업무진행상태 수정" , description = "사고업무진행상태 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmBsnsPrgSt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmBsnsPrgSt.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmBsnsPrgSt not found", content = @Content) })
    @PutMapping("/lseclmbsnsprgsts/{aid}")
    ResponseEntity<LseClmBsnsPrgSt> putData(@RequestBody LseClmBsnsPrgSt newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setCrSeqno(newData.getCrSeqno());
                    oldData.setClmBsnsPrgStcd(newData.getClmBsnsPrgStcd());
                    oldData.setClmPrgCsfcd(newData.getClmPrgCsfcd());
                    oldData.setIdmrt(newData.getIdmrt());
                    oldData.setMncd(newData.getMncd());
                    oldData.setXcrt(newData.getXcrt());
                    oldData.setXcrtApdt(newData.getXcrtApdt());
                    oldData.setRnIbamt(newData.getRnIbamt());
                    oldData.setWoncrCvPyamt(newData.getWoncrCvPyamt());
                    oldData.setCsXcrt(newData.getCsXcrt());
                    oldData.setCsMncd(newData.getCsMncd());
                    oldData.setCsAmt(newData.getCsAmt());
                    oldData.setWoncrCvCsamt(newData.getWoncrCvCsamt());
                    oldData.setPsrt(newData.getPsrt());
                    oldData.setXiXcrt(newData.getXiXcrt());
                    oldData.setRemnXiMncd(newData.getRemnXiMncd());
                    oldData.setRemnXiAmt(newData.getRemnXiAmt());
                    oldData.setWoncrCvXiamt(newData.getWoncrCvXiamt());
                    oldData.setRemnXiCsMncd(newData.getRemnXiCsMncd());
                    oldData.setRemnXiCsamt(newData.getRemnXiCsamt());
                    oldData.setWoncvXiCsamt(newData.getWoncvXiCsamt());
                    oldData.setTmOrgcd(newData.getTmOrgcd());
                    oldData.setTmOrgnm(newData.getTmOrgnm());
                    oldData.setPprOrgcd(newData.getPprOrgcd());
                    oldData.setPprOrgnm(newData.getPprOrgnm());
                    oldData.setNotsCn(newData.getNotsCn());
                    oldData.setCrDmAmt(newData.getCrDmAmt());
                    oldData.setCcSeq(newData.getCcSeq());
                    oldData.setDmSeqno(newData.getDmSeqno());
                    oldData.setChrpsStfno(newData.getChrpsStfno());
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

    // @Operation(summary = "사고업무진행상태 수정" , description = "사고업무진행상태 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmBsnsPrgSt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmBsnsPrgSt.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmBsnsPrgSt not found", content = @Content) })
	@PatchMapping("/lseclmbsnsprgsts/{aid}")
    ResponseEntity<LseClmBsnsPrgSt> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseClmBsnsPrgSt newData = mapper.convertValue(newMap, LseClmBsnsPrgSt.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rcpYymm"))
                            oldData.setRcpYymm(newData.getRcpYymm());
                        if (strKey.equals("rcpNvSeqno"))
                            oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                        if (strKey.equals("clmpsSeqno"))
                            oldData.setClmpsSeqno(newData.getClmpsSeqno());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("crSeqno"))
                            oldData.setCrSeqno(newData.getCrSeqno());
                        if (strKey.equals("clmBsnsPrgStcd"))
                            oldData.setClmBsnsPrgStcd(newData.getClmBsnsPrgStcd());
                        if (strKey.equals("clmPrgCsfcd"))
                            oldData.setClmPrgCsfcd(newData.getClmPrgCsfcd());
                        if (strKey.equals("idmrt"))
                            oldData.setIdmrt(newData.getIdmrt());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("xcrt"))
                            oldData.setXcrt(newData.getXcrt());
                        if (strKey.equals("xcrtApdt"))
                            oldData.setXcrtApdt(newData.getXcrtApdt());
                        if (strKey.equals("rnIbamt"))
                            oldData.setRnIbamt(newData.getRnIbamt());
                        if (strKey.equals("woncrCvPyamt"))
                            oldData.setWoncrCvPyamt(newData.getWoncrCvPyamt());
                        if (strKey.equals("csXcrt"))
                            oldData.setCsXcrt(newData.getCsXcrt());
                        if (strKey.equals("csMncd"))
                            oldData.setCsMncd(newData.getCsMncd());
                        if (strKey.equals("csAmt"))
                            oldData.setCsAmt(newData.getCsAmt());
                        if (strKey.equals("woncrCvCsamt"))
                            oldData.setWoncrCvCsamt(newData.getWoncrCvCsamt());
                        if (strKey.equals("psrt"))
                            oldData.setPsrt(newData.getPsrt());
                        if (strKey.equals("xiXcrt"))
                            oldData.setXiXcrt(newData.getXiXcrt());
                        if (strKey.equals("remnXiMncd"))
                            oldData.setRemnXiMncd(newData.getRemnXiMncd());
                        if (strKey.equals("remnXiAmt"))
                            oldData.setRemnXiAmt(newData.getRemnXiAmt());
                        if (strKey.equals("woncrCvXiamt"))
                            oldData.setWoncrCvXiamt(newData.getWoncrCvXiamt());
                        if (strKey.equals("remnXiCsMncd"))
                            oldData.setRemnXiCsMncd(newData.getRemnXiCsMncd());
                        if (strKey.equals("remnXiCsamt"))
                            oldData.setRemnXiCsamt(newData.getRemnXiCsamt());
                        if (strKey.equals("woncvXiCsamt"))
                            oldData.setWoncvXiCsamt(newData.getWoncvXiCsamt());
                        if (strKey.equals("tmOrgcd"))
                            oldData.setTmOrgcd(newData.getTmOrgcd());
                        if (strKey.equals("tmOrgnm"))
                            oldData.setTmOrgnm(newData.getTmOrgnm());
                        if (strKey.equals("pprOrgcd"))
                            oldData.setPprOrgcd(newData.getPprOrgcd());
                        if (strKey.equals("pprOrgnm"))
                            oldData.setPprOrgnm(newData.getPprOrgnm());
                        if (strKey.equals("notsCn"))
                            oldData.setNotsCn(newData.getNotsCn());
                        if (strKey.equals("crDmAmt"))
                            oldData.setCrDmAmt(newData.getCrDmAmt());
                        if (strKey.equals("ccSeq"))
                            oldData.setCcSeq(newData.getCcSeq());
                        if (strKey.equals("dmSeqno"))
                            oldData.setDmSeqno(newData.getDmSeqno());
                        if (strKey.equals("chrpsStfno"))
                            oldData.setChrpsStfno(newData.getChrpsStfno());
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
	
    // @Operation(summary = "사고업무진행상태 삭제" , description = "사고업무진행상태 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseClmBsnsPrgSt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmBsnsPrgSt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lseclmbsnsprgsts/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
