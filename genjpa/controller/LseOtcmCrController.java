/**
 * LseOtcmCr Entity Controller 클래스
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
import com.skims.domain.entity.LseOtcmCr;
import com.skims.domain.repository.LseOtcmCrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseOtcmCr 사고자계약 Controller")
@Slf4j
public class LseOtcmCrController {

    @Autowired
    LseOtcmCrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "사고자계약 전체조회" , summary = "사고자계약 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lseotcmcrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseOtcmCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lseotcmcrs")
    public ResponseEntity<Page<LseOtcmCr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "사고자계약 Key조회" , description = "사고자계약 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseOtcmCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseOtcmCr.class)) }),
            @ApiResponse(responseCode = "404", description = "LseOtcmCr not found", content = @Content) })
    @GetMapping("/lseotcmcrs/{aid}")
    public ResponseEntity<LseOtcmCr> getById(@PathVariable("aid") Long aid) {
        Optional<LseOtcmCr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "사고자계약 등록" , description = "사고자계약 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseOtcmCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseOtcmCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lseotcmcrs")
    ResponseEntity<LseOtcmCr> postData(@RequestBody LseOtcmCr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "사고자계약 수정" , description = "사고자계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseOtcmCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseOtcmCr.class)) }),
            @ApiResponse(responseCode = "404", description = "LseOtcmCr not found", content = @Content) })
    @PutMapping("/lseotcmcrs/{aid}")
    ResponseEntity<LseOtcmCr> putData(@RequestBody LseOtcmCr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setCrStcd(newData.getCrStcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setGdcd(newData.getGdcd());
                    oldData.setCrrnm(newData.getCrrnm());
                    oldData.setNrdnm(newData.getNrdnm());
                    oldData.setOwrnm(newData.getOwrnm());
                    oldData.setOjnm(newData.getOjnm());
                    oldData.setCnrdt(newData.getCnrdt());
                    oldData.setCrSeekFlgcd(newData.getCrSeekFlgcd());
                    oldData.setImuYn(newData.getImuYn());
                    oldData.setEndYn(newData.getEndYn());
                    oldData.setEnddt(newData.getEnddt());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setCeStfno(newData.getCeStfno());
                    oldData.setClmPrgStcd(newData.getClmPrgStcd());
                    oldData.setOtcmPlyno(newData.getOtcmPlyno());
                    oldData.setQtrt(newData.getQtrt());
                    oldData.setCrtCtmno(newData.getCrtCtmno());
                    oldData.setNrdpsCtmno(newData.getNrdpsCtmno());
                    oldData.setUdrtkTycd(newData.getUdrtkTycd());
                    oldData.setMgcmpCd(newData.getMgcmpCd());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setClmThtmAge(newData.getClmThtmAge());
                    oldData.setCrRndYyct(newData.getCrRndYyct());
                    oldData.setCrRndMc(newData.getCrRndMc());
                    oldData.setChrpsStfno(newData.getChrpsStfno());
                    oldData.setClmBjYn(newData.getClmBjYn());
                    oldData.setDcnYn(newData.getDcnYn());
                    oldData.setChRscd(newData.getChRscd());
                    oldData.setNdsnoChYn(newData.getNdsnoChYn());
                    oldData.setFrcAdYn(newData.getFrcAdYn());
                    oldData.setNdschFrcAdRscd(newData.getNdschFrcAdRscd());
                    oldData.setCrPoutMttYn(newData.getCrPoutMttYn());
                    oldData.setWrDherCrYn(newData.getWrDherCrYn());
                    oldData.setRcpMdcsFlgcd(newData.getRcpMdcsFlgcd());
                    oldData.setRcpSeqno(newData.getRcpSeqno());
                    oldData.setThcpPfrt(newData.getThcpPfrt());
                    oldData.setLapDurnClmPyRscd(newData.getLapDurnClmPyRscd());
                    oldData.setLapDurnClmPyChrpsCtn(newData.getLapDurnClmPyChrpsCtn());
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

    // @Operation(summary = "사고자계약 수정" , description = "사고자계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseOtcmCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseOtcmCr.class)) }),
            @ApiResponse(responseCode = "404", description = "LseOtcmCr not found", content = @Content) })
	@PatchMapping("/lseotcmcrs/{aid}")
    ResponseEntity<LseOtcmCr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseOtcmCr newData = mapper.convertValue(newMap, LseOtcmCr.class);
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
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("crStcd"))
                            oldData.setCrStcd(newData.getCrStcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("gdcd"))
                            oldData.setGdcd(newData.getGdcd());
                        if (strKey.equals("crrnm"))
                            oldData.setCrrnm(newData.getCrrnm());
                        if (strKey.equals("nrdnm"))
                            oldData.setNrdnm(newData.getNrdnm());
                        if (strKey.equals("owrnm"))
                            oldData.setOwrnm(newData.getOwrnm());
                        if (strKey.equals("ojnm"))
                            oldData.setOjnm(newData.getOjnm());
                        if (strKey.equals("cnrdt"))
                            oldData.setCnrdt(newData.getCnrdt());
                        if (strKey.equals("crSeekFlgcd"))
                            oldData.setCrSeekFlgcd(newData.getCrSeekFlgcd());
                        if (strKey.equals("imuYn"))
                            oldData.setImuYn(newData.getImuYn());
                        if (strKey.equals("endYn"))
                            oldData.setEndYn(newData.getEndYn());
                        if (strKey.equals("enddt"))
                            oldData.setEnddt(newData.getEnddt());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("ceStfno"))
                            oldData.setCeStfno(newData.getCeStfno());
                        if (strKey.equals("clmPrgStcd"))
                            oldData.setClmPrgStcd(newData.getClmPrgStcd());
                        if (strKey.equals("otcmPlyno"))
                            oldData.setOtcmPlyno(newData.getOtcmPlyno());
                        if (strKey.equals("qtrt"))
                            oldData.setQtrt(newData.getQtrt());
                        if (strKey.equals("crtCtmno"))
                            oldData.setCrtCtmno(newData.getCrtCtmno());
                        if (strKey.equals("nrdpsCtmno"))
                            oldData.setNrdpsCtmno(newData.getNrdpsCtmno());
                        if (strKey.equals("udrtkTycd"))
                            oldData.setUdrtkTycd(newData.getUdrtkTycd());
                        if (strKey.equals("mgcmpCd"))
                            oldData.setMgcmpCd(newData.getMgcmpCd());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("clmThtmAge"))
                            oldData.setClmThtmAge(newData.getClmThtmAge());
                        if (strKey.equals("crRndYyct"))
                            oldData.setCrRndYyct(newData.getCrRndYyct());
                        if (strKey.equals("crRndMc"))
                            oldData.setCrRndMc(newData.getCrRndMc());
                        if (strKey.equals("chrpsStfno"))
                            oldData.setChrpsStfno(newData.getChrpsStfno());
                        if (strKey.equals("clmBjYn"))
                            oldData.setClmBjYn(newData.getClmBjYn());
                        if (strKey.equals("dcnYn"))
                            oldData.setDcnYn(newData.getDcnYn());
                        if (strKey.equals("chRscd"))
                            oldData.setChRscd(newData.getChRscd());
                        if (strKey.equals("ndsnoChYn"))
                            oldData.setNdsnoChYn(newData.getNdsnoChYn());
                        if (strKey.equals("frcAdYn"))
                            oldData.setFrcAdYn(newData.getFrcAdYn());
                        if (strKey.equals("ndschFrcAdRscd"))
                            oldData.setNdschFrcAdRscd(newData.getNdschFrcAdRscd());
                        if (strKey.equals("crPoutMttYn"))
                            oldData.setCrPoutMttYn(newData.getCrPoutMttYn());
                        if (strKey.equals("wrDherCrYn"))
                            oldData.setWrDherCrYn(newData.getWrDherCrYn());
                        if (strKey.equals("rcpMdcsFlgcd"))
                            oldData.setRcpMdcsFlgcd(newData.getRcpMdcsFlgcd());
                        if (strKey.equals("rcpSeqno"))
                            oldData.setRcpSeqno(newData.getRcpSeqno());
                        if (strKey.equals("thcpPfrt"))
                            oldData.setThcpPfrt(newData.getThcpPfrt());
                        if (strKey.equals("lapDurnClmPyRscd"))
                            oldData.setLapDurnClmPyRscd(newData.getLapDurnClmPyRscd());
                        if (strKey.equals("lapDurnClmPyChrpsCtn"))
                            oldData.setLapDurnClmPyChrpsCtn(newData.getLapDurnClmPyChrpsCtn());
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
	
    // @Operation(summary = "사고자계약 삭제" , description = "사고자계약 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseOtcmCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseOtcmCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lseotcmcrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
