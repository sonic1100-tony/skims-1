/**
 * FinPyCr Entity Controller 클래스
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
import com.skims.domain.entity.FinPyCr;
import com.skims.domain.repository.FinPyCrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinPyCr 지급발생 Controller")
@Slf4j
public class FinPyCrController {

    @Autowired
    FinPyCrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "지급발생 전체조회" , summary = "지급발생 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finpycrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finpycrs")
    public ResponseEntity<Page<FinPyCr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "지급발생 Key조회" , description = "지급발생 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyCr not found", content = @Content) })
    @GetMapping("/finpycrs/{aid}")
    public ResponseEntity<FinPyCr> getById(@PathVariable("aid") Long aid) {
        Optional<FinPyCr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "지급발생 등록" , description = "지급발생 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finpycrs")
    ResponseEntity<FinPyCr> postData(@RequestBody FinPyCr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "지급발생 수정" , description = "지급발생 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyCr not found", content = @Content) })
    @PutMapping("/finpycrs/{aid}")
    ResponseEntity<FinPyCr> putData(@RequestBody FinPyCr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPyCrno(newData.getPyCrno());
                    oldData.setLdgKndcd(newData.getLdgKndcd());
                    oldData.setLdgno(newData.getLdgno());
                    oldData.setCrdt(newData.getCrdt());
                    oldData.setActOrgcd(newData.getActOrgcd());
                    oldData.setRqogCd(newData.getRqogCd());
                    oldData.setRqfno(newData.getRqfno());
                    oldData.setCrSyscd(newData.getCrSyscd());
                    oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                    oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                    oldData.setPylno(newData.getPylno());
                    oldData.setPyplFlgcd(newData.getPyplFlgcd());
                    oldData.setPyplKndcd(newData.getPyplKndcd());
                    oldData.setBkcd(newData.getBkcd());
                    oldData.setPyplActno(newData.getPyplActno());
                    oldData.setDpsr(newData.getDpsr());
                    oldData.setPylnm(newData.getPylnm());
                    oldData.setPynctTpcd(newData.getPynctTpcd());
                    oldData.setDfpcd(newData.getDfpcd());
                    oldData.setPyMtdcd(newData.getPyMtdcd());
                    oldData.setMncd(newData.getMncd());
                    oldData.setPyPrdt(newData.getPyPrdt());
                    oldData.setPyPrWoamt(newData.getPyPrWoamt());
                    oldData.setPyPrFcamt(newData.getPyPrFcamt());
                    oldData.setPyDcnWoamt(newData.getPyDcnWoamt());
                    oldData.setPyDcnFcamt(newData.getPyDcnFcamt());
                    oldData.setRlPyDcnWoamt(newData.getRlPyDcnWoamt());
                    oldData.setRlPyDcnFcamt(newData.getRlPyDcnFcamt());
                    oldData.setFxPldoqFlgcd(newData.getFxPldoqFlgcd());
                    oldData.setFxPqamt(newData.getFxPqamt());
                    oldData.setApXcrt(newData.getApXcrt());
                    oldData.setFcDcndt(newData.getFcDcndt());
                    oldData.setFcDcnStfno(newData.getFcDcnStfno());
                    oldData.setFcDcnApXcrt(newData.getFcDcnApXcrt());
                    oldData.setSelfYn(newData.getSelfYn());
                    oldData.setRcrRsno(newData.getRcrRsno());
                    oldData.setRcrNm(newData.getRcrNm());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setInvlnGdcd(newData.getInvlnGdcd());
                    oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd());
                    oldData.setBsnsCnnno(newData.getBsnsCnnno());
                    oldData.setCrtDscno(newData.getCrtDscno());
                    oldData.setVictmDscno(newData.getVictmDscno());
                    oldData.setNrdpsDscno(newData.getNrdpsDscno());
                    oldData.setDmgnm(newData.getDmgnm());
                    oldData.setUdrtkTycd(newData.getUdrtkTycd());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setFndcd(newData.getFndcd());
                    oldData.setApdt(newData.getApdt());
                    oldData.setApOrgcd(newData.getApOrgcd());
                    oldData.setApStfno(newData.getApStfno());
                    oldData.setRpAdmcrNo(newData.getRpAdmcrNo());
                    oldData.setRpAdmcrOutdt(newData.getRpAdmcrOutdt());
                    oldData.setRpAdmcrOutbjYn(newData.getRpAdmcrOutbjYn());
                    oldData.setDsodt(newData.getDsodt());
                    oldData.setBdgDpno(newData.getBdgDpno());
                    oldData.setPydt(newData.getPydt());
                    oldData.setPyOrgcd(newData.getPyOrgcd());
                    oldData.setPyXcno(newData.getPyXcno());
                    oldData.setChbfCrno(newData.getChbfCrno());
                    oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd());
                    oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd());
                    oldData.setFrDpdt(newData.getFrDpdt());
                    oldData.setFrDhOrgcd(newData.getFrDhOrgcd());
                    oldData.setFrDhStfno(newData.getFrDhStfno());
                    oldData.setPyCrRmTpcd(newData.getPyCrRmTpcd());
                    oldData.setJonlYn(newData.getJonlYn());
                    oldData.setPyDlEryn(newData.getPyDlEryn());
                    oldData.setPyErNtMtdcd(newData.getPyErNtMtdcd());
                    oldData.setFcByIptdt(newData.getFcByIptdt());
                    oldData.setFcByInpStfno(newData.getFcByInpStfno());
                    oldData.setRmStcd(newData.getRmStcd());
                    oldData.setPyCrStcd(newData.getPyCrStcd());
                    oldData.setPyReqdt(newData.getPyReqdt());
                    oldData.setRepyReqdt(newData.getRepyReqdt());
                    oldData.setRepyRqStfno(newData.getRepyRqStfno());
                    oldData.setRepyRqRscd(newData.getRepyRqRscd());
                    oldData.setSlpdt(newData.getSlpdt());
                    oldData.setSlpno(newData.getSlpno());
                    oldData.setPyStDvDldt(newData.getPyStDvDldt());
                    oldData.setPystDvDlStfno(newData.getPystDvDlStfno());
                    oldData.setPystDvDlOrgcd(newData.getPystDvDlOrgcd());
                    oldData.setPyno(newData.getPyno());
                    oldData.setCclBjPyno(newData.getCclBjPyno());
                    oldData.setPyCstno(newData.getPyCstno());
                    oldData.setCclBjPyCstno(newData.getCclBjPyCstno());
                    oldData.setPyStDvDlno(newData.getPyStDvDlno());
                    oldData.setCclBjNdsno(newData.getCclBjNdsno());
                    oldData.setChrpsDsdt(newData.getChrpsDsdt());
                    oldData.setChrpsAsmtOrgcd(newData.getChrpsAsmtOrgcd());
                    oldData.setChrpsAsmtStfno(newData.getChrpsAsmtStfno());
                    oldData.setWdraBkcd(newData.getWdraBkcd());
                    oldData.setWdraActno(newData.getWdraActno());
                    oldData.setStYymm(newData.getStYymm());
                    oldData.setBdlTfBsnsFlgcd(newData.getBdlTfBsnsFlgcd());
                    oldData.setBdlTfDlSeqno(newData.getBdlTfDlSeqno());
                    oldData.setNotsMtt(newData.getNotsMtt());
                    oldData.setPystDvDlSeqno(newData.getPystDvDlSeqno());
                    oldData.setBdlRmYn(newData.getBdlRmYn());
                    oldData.setRcapmOrgDtFlgcd(newData.getRcapmOrgDtFlgcd());
                    oldData.setSmsPyTpcd(newData.getSmsPyTpcd());
                    oldData.setBsnsAdxFileDscno(newData.getBsnsAdxFileDscno());
                    oldData.setElecEvdImgBsnno(newData.getElecEvdImgBsnno());
                    oldData.setElecPrvDcuId(newData.getElecPrvDcuId());
                    oldData.setFileEvdGpno(newData.getFileEvdGpno());
                    oldData.setMyctPyBjyn(newData.getMyctPyBjyn());
                    oldData.setDbAccSbjcd(newData.getDbAccSbjcd());
                    oldData.setCrdtAccSbjcd(newData.getCrdtAccSbjcd());
                    oldData.setPyDlFlgcd(newData.getPyDlFlgcd());
                    oldData.setInrEdamtDldt(newData.getInrEdamtDldt());
                    oldData.setInrRtxno(newData.getInrRtxno());
                    oldData.setSmsBjYn(newData.getSmsBjYn());
                    oldData.setHpno(newData.getHpno());
                    oldData.setChrCn(newData.getChrCn());
                    oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                    oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                    oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
                    oldData.setKkoPayPyYn(newData.getKkoPayPyYn());
                    oldData.setKkoAccId(newData.getKkoAccId());
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

    // @Operation(summary = "지급발생 수정" , description = "지급발생 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyCr not found", content = @Content) })
	@PatchMapping("/finpycrs/{aid}")
    ResponseEntity<FinPyCr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        FinPyCr newData = mapper.convertValue(newMap, FinPyCr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("pyCrno"))
                            oldData.setPyCrno(newData.getPyCrno());
                        if (strKey.equals("ldgKndcd"))
                            oldData.setLdgKndcd(newData.getLdgKndcd());
                        if (strKey.equals("ldgno"))
                            oldData.setLdgno(newData.getLdgno());
                        if (strKey.equals("crdt"))
                            oldData.setCrdt(newData.getCrdt());
                        if (strKey.equals("actOrgcd"))
                            oldData.setActOrgcd(newData.getActOrgcd());
                        if (strKey.equals("rqogCd"))
                            oldData.setRqogCd(newData.getRqogCd());
                        if (strKey.equals("rqfno"))
                            oldData.setRqfno(newData.getRqfno());
                        if (strKey.equals("crSyscd"))
                            oldData.setCrSyscd(newData.getCrSyscd());
                        if (strKey.equals("dlTpO1Csfcd"))
                            oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                        if (strKey.equals("dlTpO2Csfcd"))
                            oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                        if (strKey.equals("pylno"))
                            oldData.setPylno(newData.getPylno());
                        if (strKey.equals("pyplFlgcd"))
                            oldData.setPyplFlgcd(newData.getPyplFlgcd());
                        if (strKey.equals("pyplKndcd"))
                            oldData.setPyplKndcd(newData.getPyplKndcd());
                        if (strKey.equals("bkcd"))
                            oldData.setBkcd(newData.getBkcd());
                        if (strKey.equals("pyplActno"))
                            oldData.setPyplActno(newData.getPyplActno());
                        if (strKey.equals("dpsr"))
                            oldData.setDpsr(newData.getDpsr());
                        if (strKey.equals("pylnm"))
                            oldData.setPylnm(newData.getPylnm());
                        if (strKey.equals("pynctTpcd"))
                            oldData.setPynctTpcd(newData.getPynctTpcd());
                        if (strKey.equals("dfpcd"))
                            oldData.setDfpcd(newData.getDfpcd());
                        if (strKey.equals("pyMtdcd"))
                            oldData.setPyMtdcd(newData.getPyMtdcd());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("pyPrdt"))
                            oldData.setPyPrdt(newData.getPyPrdt());
                        if (strKey.equals("pyPrWoamt"))
                            oldData.setPyPrWoamt(newData.getPyPrWoamt());
                        if (strKey.equals("pyPrFcamt"))
                            oldData.setPyPrFcamt(newData.getPyPrFcamt());
                        if (strKey.equals("pyDcnWoamt"))
                            oldData.setPyDcnWoamt(newData.getPyDcnWoamt());
                        if (strKey.equals("pyDcnFcamt"))
                            oldData.setPyDcnFcamt(newData.getPyDcnFcamt());
                        if (strKey.equals("rlPyDcnWoamt"))
                            oldData.setRlPyDcnWoamt(newData.getRlPyDcnWoamt());
                        if (strKey.equals("rlPyDcnFcamt"))
                            oldData.setRlPyDcnFcamt(newData.getRlPyDcnFcamt());
                        if (strKey.equals("fxPldoqFlgcd"))
                            oldData.setFxPldoqFlgcd(newData.getFxPldoqFlgcd());
                        if (strKey.equals("fxPqamt"))
                            oldData.setFxPqamt(newData.getFxPqamt());
                        if (strKey.equals("apXcrt"))
                            oldData.setApXcrt(newData.getApXcrt());
                        if (strKey.equals("fcDcndt"))
                            oldData.setFcDcndt(newData.getFcDcndt());
                        if (strKey.equals("fcDcnStfno"))
                            oldData.setFcDcnStfno(newData.getFcDcnStfno());
                        if (strKey.equals("fcDcnApXcrt"))
                            oldData.setFcDcnApXcrt(newData.getFcDcnApXcrt());
                        if (strKey.equals("selfYn"))
                            oldData.setSelfYn(newData.getSelfYn());
                        if (strKey.equals("rcrRsno"))
                            oldData.setRcrRsno(newData.getRcrRsno());
                        if (strKey.equals("rcrNm"))
                            oldData.setRcrNm(newData.getRcrNm());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("invlnGdcd"))
                            oldData.setInvlnGdcd(newData.getInvlnGdcd());
                        if (strKey.equals("bsnsCnnnoFlgcd"))
                            oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd());
                        if (strKey.equals("bsnsCnnno"))
                            oldData.setBsnsCnnno(newData.getBsnsCnnno());
                        if (strKey.equals("crtDscno"))
                            oldData.setCrtDscno(newData.getCrtDscno());
                        if (strKey.equals("victmDscno"))
                            oldData.setVictmDscno(newData.getVictmDscno());
                        if (strKey.equals("nrdpsDscno"))
                            oldData.setNrdpsDscno(newData.getNrdpsDscno());
                        if (strKey.equals("dmgnm"))
                            oldData.setDmgnm(newData.getDmgnm());
                        if (strKey.equals("udrtkTycd"))
                            oldData.setUdrtkTycd(newData.getUdrtkTycd());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("fndcd"))
                            oldData.setFndcd(newData.getFndcd());
                        if (strKey.equals("apdt"))
                            oldData.setApdt(newData.getApdt());
                        if (strKey.equals("apOrgcd"))
                            oldData.setApOrgcd(newData.getApOrgcd());
                        if (strKey.equals("apStfno"))
                            oldData.setApStfno(newData.getApStfno());
                        if (strKey.equals("rpAdmcrNo"))
                            oldData.setRpAdmcrNo(newData.getRpAdmcrNo());
                        if (strKey.equals("rpAdmcrOutdt"))
                            oldData.setRpAdmcrOutdt(newData.getRpAdmcrOutdt());
                        if (strKey.equals("rpAdmcrOutbjYn"))
                            oldData.setRpAdmcrOutbjYn(newData.getRpAdmcrOutbjYn());
                        if (strKey.equals("dsodt"))
                            oldData.setDsodt(newData.getDsodt());
                        if (strKey.equals("bdgDpno"))
                            oldData.setBdgDpno(newData.getBdgDpno());
                        if (strKey.equals("pydt"))
                            oldData.setPydt(newData.getPydt());
                        if (strKey.equals("pyOrgcd"))
                            oldData.setPyOrgcd(newData.getPyOrgcd());
                        if (strKey.equals("pyXcno"))
                            oldData.setPyXcno(newData.getPyXcno());
                        if (strKey.equals("chbfCrno"))
                            oldData.setChbfCrno(newData.getChbfCrno());
                        if (strKey.equals("pyDlO1Flgcd"))
                            oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd());
                        if (strKey.equals("pyDlO2Flgcd"))
                            oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd());
                        if (strKey.equals("frDpdt"))
                            oldData.setFrDpdt(newData.getFrDpdt());
                        if (strKey.equals("frDhOrgcd"))
                            oldData.setFrDhOrgcd(newData.getFrDhOrgcd());
                        if (strKey.equals("frDhStfno"))
                            oldData.setFrDhStfno(newData.getFrDhStfno());
                        if (strKey.equals("pyCrRmTpcd"))
                            oldData.setPyCrRmTpcd(newData.getPyCrRmTpcd());
                        if (strKey.equals("jonlYn"))
                            oldData.setJonlYn(newData.getJonlYn());
                        if (strKey.equals("pyDlEryn"))
                            oldData.setPyDlEryn(newData.getPyDlEryn());
                        if (strKey.equals("pyErNtMtdcd"))
                            oldData.setPyErNtMtdcd(newData.getPyErNtMtdcd());
                        if (strKey.equals("fcByIptdt"))
                            oldData.setFcByIptdt(newData.getFcByIptdt());
                        if (strKey.equals("fcByInpStfno"))
                            oldData.setFcByInpStfno(newData.getFcByInpStfno());
                        if (strKey.equals("rmStcd"))
                            oldData.setRmStcd(newData.getRmStcd());
                        if (strKey.equals("pyCrStcd"))
                            oldData.setPyCrStcd(newData.getPyCrStcd());
                        if (strKey.equals("pyReqdt"))
                            oldData.setPyReqdt(newData.getPyReqdt());
                        if (strKey.equals("repyReqdt"))
                            oldData.setRepyReqdt(newData.getRepyReqdt());
                        if (strKey.equals("repyRqStfno"))
                            oldData.setRepyRqStfno(newData.getRepyRqStfno());
                        if (strKey.equals("repyRqRscd"))
                            oldData.setRepyRqRscd(newData.getRepyRqRscd());
                        if (strKey.equals("slpdt"))
                            oldData.setSlpdt(newData.getSlpdt());
                        if (strKey.equals("slpno"))
                            oldData.setSlpno(newData.getSlpno());
                        if (strKey.equals("pyStDvDldt"))
                            oldData.setPyStDvDldt(newData.getPyStDvDldt());
                        if (strKey.equals("pystDvDlStfno"))
                            oldData.setPystDvDlStfno(newData.getPystDvDlStfno());
                        if (strKey.equals("pystDvDlOrgcd"))
                            oldData.setPystDvDlOrgcd(newData.getPystDvDlOrgcd());
                        if (strKey.equals("pyno"))
                            oldData.setPyno(newData.getPyno());
                        if (strKey.equals("cclBjPyno"))
                            oldData.setCclBjPyno(newData.getCclBjPyno());
                        if (strKey.equals("pyCstno"))
                            oldData.setPyCstno(newData.getPyCstno());
                        if (strKey.equals("cclBjPyCstno"))
                            oldData.setCclBjPyCstno(newData.getCclBjPyCstno());
                        if (strKey.equals("pyStDvDlno"))
                            oldData.setPyStDvDlno(newData.getPyStDvDlno());
                        if (strKey.equals("cclBjNdsno"))
                            oldData.setCclBjNdsno(newData.getCclBjNdsno());
                        if (strKey.equals("chrpsDsdt"))
                            oldData.setChrpsDsdt(newData.getChrpsDsdt());
                        if (strKey.equals("chrpsAsmtOrgcd"))
                            oldData.setChrpsAsmtOrgcd(newData.getChrpsAsmtOrgcd());
                        if (strKey.equals("chrpsAsmtStfno"))
                            oldData.setChrpsAsmtStfno(newData.getChrpsAsmtStfno());
                        if (strKey.equals("wdraBkcd"))
                            oldData.setWdraBkcd(newData.getWdraBkcd());
                        if (strKey.equals("wdraActno"))
                            oldData.setWdraActno(newData.getWdraActno());
                        if (strKey.equals("stYymm"))
                            oldData.setStYymm(newData.getStYymm());
                        if (strKey.equals("bdlTfBsnsFlgcd"))
                            oldData.setBdlTfBsnsFlgcd(newData.getBdlTfBsnsFlgcd());
                        if (strKey.equals("bdlTfDlSeqno"))
                            oldData.setBdlTfDlSeqno(newData.getBdlTfDlSeqno());
                        if (strKey.equals("notsMtt"))
                            oldData.setNotsMtt(newData.getNotsMtt());
                        if (strKey.equals("pystDvDlSeqno"))
                            oldData.setPystDvDlSeqno(newData.getPystDvDlSeqno());
                        if (strKey.equals("bdlRmYn"))
                            oldData.setBdlRmYn(newData.getBdlRmYn());
                        if (strKey.equals("rcapmOrgDtFlgcd"))
                            oldData.setRcapmOrgDtFlgcd(newData.getRcapmOrgDtFlgcd());
                        if (strKey.equals("smsPyTpcd"))
                            oldData.setSmsPyTpcd(newData.getSmsPyTpcd());
                        if (strKey.equals("bsnsAdxFileDscno"))
                            oldData.setBsnsAdxFileDscno(newData.getBsnsAdxFileDscno());
                        if (strKey.equals("elecEvdImgBsnno"))
                            oldData.setElecEvdImgBsnno(newData.getElecEvdImgBsnno());
                        if (strKey.equals("elecPrvDcuId"))
                            oldData.setElecPrvDcuId(newData.getElecPrvDcuId());
                        if (strKey.equals("fileEvdGpno"))
                            oldData.setFileEvdGpno(newData.getFileEvdGpno());
                        if (strKey.equals("myctPyBjyn"))
                            oldData.setMyctPyBjyn(newData.getMyctPyBjyn());
                        if (strKey.equals("dbAccSbjcd"))
                            oldData.setDbAccSbjcd(newData.getDbAccSbjcd());
                        if (strKey.equals("crdtAccSbjcd"))
                            oldData.setCrdtAccSbjcd(newData.getCrdtAccSbjcd());
                        if (strKey.equals("pyDlFlgcd"))
                            oldData.setPyDlFlgcd(newData.getPyDlFlgcd());
                        if (strKey.equals("inrEdamtDldt"))
                            oldData.setInrEdamtDldt(newData.getInrEdamtDldt());
                        if (strKey.equals("inrRtxno"))
                            oldData.setInrRtxno(newData.getInrRtxno());
                        if (strKey.equals("smsBjYn"))
                            oldData.setSmsBjYn(newData.getSmsBjYn());
                        if (strKey.equals("hpno"))
                            oldData.setHpno(newData.getHpno());
                        if (strKey.equals("chrCn"))
                            oldData.setChrCn(newData.getChrCn());
                        if (strKey.equals("finaDatVrfFlg1Vl"))
                            oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                        if (strKey.equals("finaDatVrfFlg2Vl"))
                            oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                        if (strKey.equals("finaDatVrfFlg3Vl"))
                            oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
                        if (strKey.equals("kkoPayPyYn"))
                            oldData.setKkoPayPyYn(newData.getKkoPayPyYn());
                        if (strKey.equals("kkoAccId"))
                            oldData.setKkoAccId(newData.getKkoAccId());
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
	
    // @Operation(summary = "지급발생 삭제" , description = "지급발생 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finpycrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
