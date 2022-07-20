/**
 * LseClmNvCsSpc Entity Controller 클래스
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
import com.skims.domain.entity.LseClmNvCsSpc;
import com.skims.domain.repository.LseClmNvCsSpcRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseClmNvCsSpc 사고조사비용내역 Controller")
@Slf4j
public class LseClmNvCsSpcController {

    @Autowired
    LseClmNvCsSpcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "사고조사비용내역 전체조회" , summary = "사고조사비용내역 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lseclmnvcsspcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNvCsSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lseclmnvcsspcs")
    public ResponseEntity<Page<LseClmNvCsSpc>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "사고조사비용내역 Key조회" , description = "사고조사비용내역 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseClmNvCsSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNvCsSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmNvCsSpc not found", content = @Content) })
    @GetMapping("/lseclmnvcsspcs/{aid}")
    public ResponseEntity<LseClmNvCsSpc> getById(@PathVariable("aid") Long aid) {
        Optional<LseClmNvCsSpc> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "사고조사비용내역 등록" , description = "사고조사비용내역 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseClmNvCsSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNvCsSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lseclmnvcsspcs")
    ResponseEntity<LseClmNvCsSpc> postData(@RequestBody LseClmNvCsSpc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "사고조사비용내역 수정" , description = "사고조사비용내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmNvCsSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNvCsSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmNvCsSpc not found", content = @Content) })
    @PutMapping("/lseclmnvcsspcs/{aid}")
    ResponseEntity<LseClmNvCsSpc> putData(@RequestBody LseClmNvCsSpc newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setCcSeq(newData.getCcSeq());
                    oldData.setCsSpcSeqno(newData.getCsSpcSeqno());
                    oldData.setCsFlgLclcd(newData.getCsFlgLclcd());
                    oldData.setCsFlgcd(newData.getCsFlgcd());
                    oldData.setMncd(newData.getMncd());
                    oldData.setXcrt(newData.getXcrt());
                    oldData.setXcrtApdt(newData.getXcrtApdt());
                    oldData.setCsAmt(newData.getCsAmt());
                    oldData.setWoncrCvCsamt(newData.getWoncrCvCsamt());
                    oldData.setRemnXiMncd(newData.getRemnXiMncd());
                    oldData.setRemnXiCsamt(newData.getRemnXiCsamt());
                    oldData.setNvOrgCtmno(newData.getNvOrgCtmno());
                    oldData.setCondtCsamt(newData.getCondtCsamt());
                    oldData.setCondtWoncvCsamt(newData.getCondtWoncvCsamt());
                    oldData.setCondtRemnXiCsamt(newData.getCondtRemnXiCsamt());
                    oldData.setLtrmRert(newData.getLtrmRert());
                    oldData.setLtrmReNvCs(newData.getLtrmReNvCs());
                    oldData.setLtrmReRemnXiamt(newData.getLtrmReRemnXiamt());
                    oldData.setFrXiCsamt(newData.getFrXiCsamt());
                    oldData.setCondtFrXiCsamt(newData.getCondtFrXiCsamt());
                    oldData.setCmpPyRltno(newData.getCmpPyRltno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setLtinsPstcd(newData.getLtinsPstcd());
                    oldData.setLtinsRinsPs(newData.getLtinsRinsPs());
                    oldData.setReTrtFlgcd(newData.getReTrtFlgcd());
                    oldData.setMdudSeq(newData.getMdudSeq());
                    oldData.setPyplFlgcd(newData.getPyplFlgcd());
                    oldData.setPyplCtmno(newData.getPyplCtmno());
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

    // @Operation(summary = "사고조사비용내역 수정" , description = "사고조사비용내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmNvCsSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNvCsSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmNvCsSpc not found", content = @Content) })
	@PatchMapping("/lseclmnvcsspcs/{aid}")
    ResponseEntity<LseClmNvCsSpc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseClmNvCsSpc newData = mapper.convertValue(newMap, LseClmNvCsSpc.class);
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
                        if (strKey.equals("ccSeq"))
                            oldData.setCcSeq(newData.getCcSeq());
                        if (strKey.equals("csSpcSeqno"))
                            oldData.setCsSpcSeqno(newData.getCsSpcSeqno());
                        if (strKey.equals("csFlgLclcd"))
                            oldData.setCsFlgLclcd(newData.getCsFlgLclcd());
                        if (strKey.equals("csFlgcd"))
                            oldData.setCsFlgcd(newData.getCsFlgcd());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("xcrt"))
                            oldData.setXcrt(newData.getXcrt());
                        if (strKey.equals("xcrtApdt"))
                            oldData.setXcrtApdt(newData.getXcrtApdt());
                        if (strKey.equals("csAmt"))
                            oldData.setCsAmt(newData.getCsAmt());
                        if (strKey.equals("woncrCvCsamt"))
                            oldData.setWoncrCvCsamt(newData.getWoncrCvCsamt());
                        if (strKey.equals("remnXiMncd"))
                            oldData.setRemnXiMncd(newData.getRemnXiMncd());
                        if (strKey.equals("remnXiCsamt"))
                            oldData.setRemnXiCsamt(newData.getRemnXiCsamt());
                        if (strKey.equals("nvOrgCtmno"))
                            oldData.setNvOrgCtmno(newData.getNvOrgCtmno());
                        if (strKey.equals("condtCsamt"))
                            oldData.setCondtCsamt(newData.getCondtCsamt());
                        if (strKey.equals("condtWoncvCsamt"))
                            oldData.setCondtWoncvCsamt(newData.getCondtWoncvCsamt());
                        if (strKey.equals("condtRemnXiCsamt"))
                            oldData.setCondtRemnXiCsamt(newData.getCondtRemnXiCsamt());
                        if (strKey.equals("ltrmRert"))
                            oldData.setLtrmRert(newData.getLtrmRert());
                        if (strKey.equals("ltrmReNvCs"))
                            oldData.setLtrmReNvCs(newData.getLtrmReNvCs());
                        if (strKey.equals("ltrmReRemnXiamt"))
                            oldData.setLtrmReRemnXiamt(newData.getLtrmReRemnXiamt());
                        if (strKey.equals("frXiCsamt"))
                            oldData.setFrXiCsamt(newData.getFrXiCsamt());
                        if (strKey.equals("condtFrXiCsamt"))
                            oldData.setCondtFrXiCsamt(newData.getCondtFrXiCsamt());
                        if (strKey.equals("cmpPyRltno"))
                            oldData.setCmpPyRltno(newData.getCmpPyRltno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("ltinsPstcd"))
                            oldData.setLtinsPstcd(newData.getLtinsPstcd());
                        if (strKey.equals("ltinsRinsPs"))
                            oldData.setLtinsRinsPs(newData.getLtinsRinsPs());
                        if (strKey.equals("reTrtFlgcd"))
                            oldData.setReTrtFlgcd(newData.getReTrtFlgcd());
                        if (strKey.equals("mdudSeq"))
                            oldData.setMdudSeq(newData.getMdudSeq());
                        if (strKey.equals("pyplFlgcd"))
                            oldData.setPyplFlgcd(newData.getPyplFlgcd());
                        if (strKey.equals("pyplCtmno"))
                            oldData.setPyplCtmno(newData.getPyplCtmno());
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
	
    // @Operation(summary = "사고조사비용내역 삭제" , description = "사고조사비용내역 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseClmNvCsSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNvCsSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lseclmnvcsspcs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
