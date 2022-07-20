/**
 * FinPrmRvSb Entity Controller 클래스
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
import com.skims.domain.entity.FinPrmRvSb;
import com.skims.domain.repository.FinPrmRvSbRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinPrmRvSb 보험료수납대기 Controller")
@Slf4j
public class FinPrmRvSbController {

    @Autowired
    FinPrmRvSbRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "보험료수납대기 전체조회" , summary = "보험료수납대기 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finprmrvsbs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finprmrvsbs")
    public ResponseEntity<Page<FinPrmRvSb>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "보험료수납대기 Key조회" , description = "보험료수납대기 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPrmRvSb not found", content = @Content) })
    @GetMapping("/finprmrvsbs/{aid}")
    public ResponseEntity<FinPrmRvSb> getById(@PathVariable("aid") Long aid) {
        Optional<FinPrmRvSb> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "보험료수납대기 등록" , description = "보험료수납대기 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finprmrvsbs")
    ResponseEntity<FinPrmRvSb> postData(@RequestBody FinPrmRvSb newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "보험료수납대기 수정" , description = "보험료수납대기 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPrmRvSb not found", content = @Content) })
    @PutMapping("/finprmrvsbs/{aid}")
    ResponseEntity<FinPrmRvSb> putData(@RequestBody FinPrmRvSb newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRvSbno(newData.getRvSbno());
                    oldData.setCrSyscd(newData.getCrSyscd());
                    oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                    oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                    oldData.setRpdt(newData.getRpdt());
                    oldData.setDhOrgcd(newData.getDhOrgcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setInvlnGdcd(newData.getInvlnGdcd());
                    oldData.setNtaccCd(newData.getNtaccCd());
                    oldData.setCnrdt(newData.getCnrdt());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setCrtRsno(newData.getCrtRsno());
                    oldData.setRpblOpndt(newData.getRpblOpndt());
                    oldData.setLtrmCrTotno(newData.getLtrmCrTotno());
                    oldData.setUdrtkTycd(newData.getUdrtkTycd());
                    oldData.setDpCascd(newData.getDpCascd());
                    oldData.setMntFlgcd(newData.getMntFlgcd());
                    oldData.setDpdt(newData.getDpdt());
                    oldData.setRpAdmno(newData.getRpAdmno());
                    oldData.setPlno(newData.getPlno());
                    oldData.setBsnsNdsFlgcd(newData.getBsnsNdsFlgcd());
                    oldData.setClsafYn(newData.getClsafYn());
                    oldData.setTotFlgcd(newData.getTotFlgcd());
                    oldData.setTotct(newData.getTotct());
                    oldData.setTotPrm(newData.getTotPrm());
                    oldData.setWoncrPrm(newData.getWoncrPrm());
                    oldData.setCrRnPrm(newData.getCrRnPrm());
                    oldData.setCrDtamt(newData.getCrDtamt());
                    oldData.setMncd(newData.getMncd());
                    oldData.setFcPrm(newData.getFcPrm());
                    oldData.setApXcrt(newData.getApXcrt());
                    oldData.setTfCm(newData.getTfCm());
                    oldData.setEtamtFlgcd(newData.getEtamtFlgcd());
                    oldData.setEtamt(newData.getEtamt());
                    oldData.setRvdt(newData.getRvdt());
                    oldData.setRvOrgcd(newData.getRvOrgcd());
                    oldData.setRvXcno(newData.getRvXcno());
                    oldData.setDaCrTpcd(newData.getDaCrTpcd());
                    oldData.setGirAttfErYn(newData.getGirAttfErYn());
                    oldData.setGirDpStcd(newData.getGirDpStcd());
                    oldData.setPrmPvlSlpdt(newData.getPrmPvlSlpdt());
                    oldData.setPrmPvlSlpno(newData.getPrmPvlSlpno());
                    oldData.setPrmPvlSlpLnno(newData.getPrmPvlSlpLnno());
                    oldData.setPpdt(newData.getPpdt());
                    oldData.setUcPrmYn(newData.getUcPrmYn());
                    oldData.setMsgId(newData.getMsgId());
                    oldData.setMsgTpCsfcd(newData.getMsgTpCsfcd());
                    oldData.setTlmTsdt(newData.getTlmTsdt());
                    oldData.setTlmPno(newData.getTlmPno());
                    oldData.setTlmSpecd(newData.getTlmSpecd());
                    oldData.setSpbzFlgcd(newData.getSpbzFlgcd());
                    oldData.setActno(newData.getActno());
                    oldData.setDpsnm(newData.getDpsnm());
                    oldData.setCrrnm(newData.getCrrnm());
                    oldData.setInrIkdGrpcd(newData.getInrIkdGrpcd());
                    oldData.setInrPlyno(newData.getInrPlyno());
                    oldData.setInrPrm(newData.getInrPrm());
                    oldData.setBkcd(newData.getBkcd());
                    oldData.setCrdCmpcd(newData.getCrdCmpcd());
                    oldData.setCclYn(newData.getCclYn());
                    oldData.setDhCmpcd(newData.getDhCmpcd());
                    oldData.setCrdSmamtAryn(newData.getCrdSmamtAryn());
                    oldData.setRvDlFlgcd(newData.getRvDlFlgcd());
                    oldData.setInrEdamtDldt(newData.getInrEdamtDldt());
                    oldData.setInrRtxno(newData.getInrRtxno());
                    oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                    oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                    oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
                    oldData.setAgrEntpYn(newData.getAgrEntpYn());
                    oldData.setCrRpblPrm(newData.getCrRpblPrm());
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

    // @Operation(summary = "보험료수납대기 수정" , description = "보험료수납대기 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPrmRvSb not found", content = @Content) })
	@PatchMapping("/finprmrvsbs/{aid}")
    ResponseEntity<FinPrmRvSb> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        FinPrmRvSb newData = mapper.convertValue(newMap, FinPrmRvSb.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rvSbno"))
                            oldData.setRvSbno(newData.getRvSbno());
                        if (strKey.equals("crSyscd"))
                            oldData.setCrSyscd(newData.getCrSyscd());
                        if (strKey.equals("dlTpO1Csfcd"))
                            oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                        if (strKey.equals("dlTpO2Csfcd"))
                            oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                        if (strKey.equals("rpdt"))
                            oldData.setRpdt(newData.getRpdt());
                        if (strKey.equals("dhOrgcd"))
                            oldData.setDhOrgcd(newData.getDhOrgcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("invlnGdcd"))
                            oldData.setInvlnGdcd(newData.getInvlnGdcd());
                        if (strKey.equals("ntaccCd"))
                            oldData.setNtaccCd(newData.getNtaccCd());
                        if (strKey.equals("cnrdt"))
                            oldData.setCnrdt(newData.getCnrdt());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("incmPrmCrSeqno"))
                            oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("crtRsno"))
                            oldData.setCrtRsno(newData.getCrtRsno());
                        if (strKey.equals("rpblOpndt"))
                            oldData.setRpblOpndt(newData.getRpblOpndt());
                        if (strKey.equals("ltrmCrTotno"))
                            oldData.setLtrmCrTotno(newData.getLtrmCrTotno());
                        if (strKey.equals("udrtkTycd"))
                            oldData.setUdrtkTycd(newData.getUdrtkTycd());
                        if (strKey.equals("dpCascd"))
                            oldData.setDpCascd(newData.getDpCascd());
                        if (strKey.equals("mntFlgcd"))
                            oldData.setMntFlgcd(newData.getMntFlgcd());
                        if (strKey.equals("dpdt"))
                            oldData.setDpdt(newData.getDpdt());
                        if (strKey.equals("rpAdmno"))
                            oldData.setRpAdmno(newData.getRpAdmno());
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("bsnsNdsFlgcd"))
                            oldData.setBsnsNdsFlgcd(newData.getBsnsNdsFlgcd());
                        if (strKey.equals("clsafYn"))
                            oldData.setClsafYn(newData.getClsafYn());
                        if (strKey.equals("totFlgcd"))
                            oldData.setTotFlgcd(newData.getTotFlgcd());
                        if (strKey.equals("totct"))
                            oldData.setTotct(newData.getTotct());
                        if (strKey.equals("totPrm"))
                            oldData.setTotPrm(newData.getTotPrm());
                        if (strKey.equals("woncrPrm"))
                            oldData.setWoncrPrm(newData.getWoncrPrm());
                        if (strKey.equals("crRnPrm"))
                            oldData.setCrRnPrm(newData.getCrRnPrm());
                        if (strKey.equals("crDtamt"))
                            oldData.setCrDtamt(newData.getCrDtamt());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("fcPrm"))
                            oldData.setFcPrm(newData.getFcPrm());
                        if (strKey.equals("apXcrt"))
                            oldData.setApXcrt(newData.getApXcrt());
                        if (strKey.equals("tfCm"))
                            oldData.setTfCm(newData.getTfCm());
                        if (strKey.equals("etamtFlgcd"))
                            oldData.setEtamtFlgcd(newData.getEtamtFlgcd());
                        if (strKey.equals("etamt"))
                            oldData.setEtamt(newData.getEtamt());
                        if (strKey.equals("rvdt"))
                            oldData.setRvdt(newData.getRvdt());
                        if (strKey.equals("rvOrgcd"))
                            oldData.setRvOrgcd(newData.getRvOrgcd());
                        if (strKey.equals("rvXcno"))
                            oldData.setRvXcno(newData.getRvXcno());
                        if (strKey.equals("daCrTpcd"))
                            oldData.setDaCrTpcd(newData.getDaCrTpcd());
                        if (strKey.equals("girAttfErYn"))
                            oldData.setGirAttfErYn(newData.getGirAttfErYn());
                        if (strKey.equals("girDpStcd"))
                            oldData.setGirDpStcd(newData.getGirDpStcd());
                        if (strKey.equals("prmPvlSlpdt"))
                            oldData.setPrmPvlSlpdt(newData.getPrmPvlSlpdt());
                        if (strKey.equals("prmPvlSlpno"))
                            oldData.setPrmPvlSlpno(newData.getPrmPvlSlpno());
                        if (strKey.equals("prmPvlSlpLnno"))
                            oldData.setPrmPvlSlpLnno(newData.getPrmPvlSlpLnno());
                        if (strKey.equals("ppdt"))
                            oldData.setPpdt(newData.getPpdt());
                        if (strKey.equals("ucPrmYn"))
                            oldData.setUcPrmYn(newData.getUcPrmYn());
                        if (strKey.equals("msgId"))
                            oldData.setMsgId(newData.getMsgId());
                        if (strKey.equals("msgTpCsfcd"))
                            oldData.setMsgTpCsfcd(newData.getMsgTpCsfcd());
                        if (strKey.equals("tlmTsdt"))
                            oldData.setTlmTsdt(newData.getTlmTsdt());
                        if (strKey.equals("tlmPno"))
                            oldData.setTlmPno(newData.getTlmPno());
                        if (strKey.equals("tlmSpecd"))
                            oldData.setTlmSpecd(newData.getTlmSpecd());
                        if (strKey.equals("spbzFlgcd"))
                            oldData.setSpbzFlgcd(newData.getSpbzFlgcd());
                        if (strKey.equals("actno"))
                            oldData.setActno(newData.getActno());
                        if (strKey.equals("dpsnm"))
                            oldData.setDpsnm(newData.getDpsnm());
                        if (strKey.equals("crrnm"))
                            oldData.setCrrnm(newData.getCrrnm());
                        if (strKey.equals("inrIkdGrpcd"))
                            oldData.setInrIkdGrpcd(newData.getInrIkdGrpcd());
                        if (strKey.equals("inrPlyno"))
                            oldData.setInrPlyno(newData.getInrPlyno());
                        if (strKey.equals("inrPrm"))
                            oldData.setInrPrm(newData.getInrPrm());
                        if (strKey.equals("bkcd"))
                            oldData.setBkcd(newData.getBkcd());
                        if (strKey.equals("crdCmpcd"))
                            oldData.setCrdCmpcd(newData.getCrdCmpcd());
                        if (strKey.equals("cclYn"))
                            oldData.setCclYn(newData.getCclYn());
                        if (strKey.equals("dhCmpcd"))
                            oldData.setDhCmpcd(newData.getDhCmpcd());
                        if (strKey.equals("crdSmamtAryn"))
                            oldData.setCrdSmamtAryn(newData.getCrdSmamtAryn());
                        if (strKey.equals("rvDlFlgcd"))
                            oldData.setRvDlFlgcd(newData.getRvDlFlgcd());
                        if (strKey.equals("inrEdamtDldt"))
                            oldData.setInrEdamtDldt(newData.getInrEdamtDldt());
                        if (strKey.equals("inrRtxno"))
                            oldData.setInrRtxno(newData.getInrRtxno());
                        if (strKey.equals("finaDatVrfFlg1Vl"))
                            oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                        if (strKey.equals("finaDatVrfFlg2Vl"))
                            oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                        if (strKey.equals("finaDatVrfFlg3Vl"))
                            oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
                        if (strKey.equals("agrEntpYn"))
                            oldData.setAgrEntpYn(newData.getAgrEntpYn());
                        if (strKey.equals("crRpblPrm"))
                            oldData.setCrRpblPrm(newData.getCrRpblPrm());
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
	
    // @Operation(summary = "보험료수납대기 삭제" , description = "보험료수납대기 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinPrmRvSb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPrmRvSb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finprmrvsbs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
