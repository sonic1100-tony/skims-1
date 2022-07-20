/**
 * LseClmps Entity Controller 클래스
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
import com.skims.domain.entity.LseClmps;
import com.skims.domain.repository.LseClmpsRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseClmps 사고자 Controller")
@Slf4j
public class LseClmpsController {

    @Autowired
    LseClmpsRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "사고자 전체조회" , summary = "사고자 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lseclmpses", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmps.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lseclmpses")
    public ResponseEntity<Page<LseClmps>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "사고자 Key조회" , description = "사고자 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseClmps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmps.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmps not found", content = @Content) })
    @GetMapping("/lseclmpses/{aid}")
    public ResponseEntity<LseClmps> getById(@PathVariable("aid") Long aid) {
        Optional<LseClmps> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "사고자 등록" , description = "사고자 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseClmps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmps.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lseclmpses")
    ResponseEntity<LseClmps> postData(@RequestBody LseClmps newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "사고자 수정" , description = "사고자 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmps.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmps not found", content = @Content) })
    @PutMapping("/lseclmpses/{aid}")
    ResponseEntity<LseClmps> putData(@RequestBody LseClmps newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setClmpsFlgcd(newData.getClmpsFlgcd());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setClmnm(newData.getClmnm());
                    oldData.setImuYn(newData.getImuYn());
                    oldData.setEndYn(newData.getEndYn());
                    oldData.setEnddt(newData.getEnddt());
                    oldData.setClmNvKndcd(newData.getClmNvKndcd());
                    oldData.setClmpsMdfYn(newData.getClmpsMdfYn());
                    oldData.setCtmDscnoFlgcd(newData.getCtmDscnoFlgcd());
                    oldData.setCtmDscno(newData.getCtmDscno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setDcnYn(newData.getDcnYn());
                    oldData.setCntadFlgcd(newData.getCntadFlgcd());
                    oldData.setTlano(newData.getTlano());
                    oldData.setTltno(newData.getTltno());
                    oldData.setTlsno(newData.getTlsno());
                    oldData.setClmBjRcpYymm(newData.getClmBjRcpYymm());
                    oldData.setClmBjRcpnvSeqno(newData.getClmBjRcpnvSeqno());
                    oldData.setClmBjClmpsSeqno(newData.getClmBjClmpsSeqno());
                    oldData.setJbnm(newData.getJbnm());
                    oldData.setDmgnm(newData.getDmgnm());
                    oldData.setArecd(newData.getArecd());
                    oldData.setSd(newData.getSd());
                    oldData.setSgng(newData.getSgng());
                    oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn());
                    oldData.setMrlGrdcd(newData.getMrlGrdcd());
                    oldData.setMrlGrdCcCn(newData.getMrlGrdCcCn());
                    oldData.setFsvsCvapYn(newData.getFsvsCvapYn());
                    oldData.setMrlGrdRank(newData.getMrlGrdRank());
                    oldData.setMdcsTlmOpndt(newData.getMdcsTlmOpndt());
                    oldData.setMdcsTlmAdmno(newData.getMdcsTlmAdmno());
                    oldData.setMdcsTlmTsSeqno(newData.getMdcsTlmTsSeqno());
                    oldData.setPrpnCmpBjpcd(newData.getPrpnCmpBjpcd());
                    oldData.setIcpsScrgCt(newData.getIcpsScrgCt());
                    oldData.setIcpsScrgAmt(newData.getIcpsScrgAmt());
                    oldData.setXstfYn(newData.getXstfYn());
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

    // @Operation(summary = "사고자 수정" , description = "사고자 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmps.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmps not found", content = @Content) })
	@PatchMapping("/lseclmpses/{aid}")
    ResponseEntity<LseClmps> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseClmps newData = mapper.convertValue(newMap, LseClmps.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rcpYymm"))
                            oldData.setRcpYymm(newData.getRcpYymm());
                        if (strKey.equals("rcpNvSeqno"))
                            oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                        if (strKey.equals("clmpsSeqno"))
                            oldData.setClmpsSeqno(newData.getClmpsSeqno());
                        if (strKey.equals("clmpsFlgcd"))
                            oldData.setClmpsFlgcd(newData.getClmpsFlgcd());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("clmnm"))
                            oldData.setClmnm(newData.getClmnm());
                        if (strKey.equals("imuYn"))
                            oldData.setImuYn(newData.getImuYn());
                        if (strKey.equals("endYn"))
                            oldData.setEndYn(newData.getEndYn());
                        if (strKey.equals("enddt"))
                            oldData.setEnddt(newData.getEnddt());
                        if (strKey.equals("clmNvKndcd"))
                            oldData.setClmNvKndcd(newData.getClmNvKndcd());
                        if (strKey.equals("clmpsMdfYn"))
                            oldData.setClmpsMdfYn(newData.getClmpsMdfYn());
                        if (strKey.equals("ctmDscnoFlgcd"))
                            oldData.setCtmDscnoFlgcd(newData.getCtmDscnoFlgcd());
                        if (strKey.equals("ctmDscno"))
                            oldData.setCtmDscno(newData.getCtmDscno());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("dcnYn"))
                            oldData.setDcnYn(newData.getDcnYn());
                        if (strKey.equals("cntadFlgcd"))
                            oldData.setCntadFlgcd(newData.getCntadFlgcd());
                        if (strKey.equals("tlano"))
                            oldData.setTlano(newData.getTlano());
                        if (strKey.equals("tltno"))
                            oldData.setTltno(newData.getTltno());
                        if (strKey.equals("tlsno"))
                            oldData.setTlsno(newData.getTlsno());
                        if (strKey.equals("clmBjRcpYymm"))
                            oldData.setClmBjRcpYymm(newData.getClmBjRcpYymm());
                        if (strKey.equals("clmBjRcpnvSeqno"))
                            oldData.setClmBjRcpnvSeqno(newData.getClmBjRcpnvSeqno());
                        if (strKey.equals("clmBjClmpsSeqno"))
                            oldData.setClmBjClmpsSeqno(newData.getClmBjClmpsSeqno());
                        if (strKey.equals("jbnm"))
                            oldData.setJbnm(newData.getJbnm());
                        if (strKey.equals("dmgnm"))
                            oldData.setDmgnm(newData.getDmgnm());
                        if (strKey.equals("arecd"))
                            oldData.setArecd(newData.getArecd());
                        if (strKey.equals("sd"))
                            oldData.setSd(newData.getSd());
                        if (strKey.equals("sgng"))
                            oldData.setSgng(newData.getSgng());
                        if (strKey.equals("crdifUtlAgreYn"))
                            oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn());
                        if (strKey.equals("mrlGrdcd"))
                            oldData.setMrlGrdcd(newData.getMrlGrdcd());
                        if (strKey.equals("mrlGrdCcCn"))
                            oldData.setMrlGrdCcCn(newData.getMrlGrdCcCn());
                        if (strKey.equals("fsvsCvapYn"))
                            oldData.setFsvsCvapYn(newData.getFsvsCvapYn());
                        if (strKey.equals("mrlGrdRank"))
                            oldData.setMrlGrdRank(newData.getMrlGrdRank());
                        if (strKey.equals("mdcsTlmOpndt"))
                            oldData.setMdcsTlmOpndt(newData.getMdcsTlmOpndt());
                        if (strKey.equals("mdcsTlmAdmno"))
                            oldData.setMdcsTlmAdmno(newData.getMdcsTlmAdmno());
                        if (strKey.equals("mdcsTlmTsSeqno"))
                            oldData.setMdcsTlmTsSeqno(newData.getMdcsTlmTsSeqno());
                        if (strKey.equals("prpnCmpBjpcd"))
                            oldData.setPrpnCmpBjpcd(newData.getPrpnCmpBjpcd());
                        if (strKey.equals("icpsScrgCt"))
                            oldData.setIcpsScrgCt(newData.getIcpsScrgCt());
                        if (strKey.equals("icpsScrgAmt"))
                            oldData.setIcpsScrgAmt(newData.getIcpsScrgAmt());
                        if (strKey.equals("xstfYn"))
                            oldData.setXstfYn(newData.getXstfYn());
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
	
    // @Operation(summary = "사고자 삭제" , description = "사고자 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseClmps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmps.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lseclmpses/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
