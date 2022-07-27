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
    public ResponseEntity<Page<FinPrmRvSb>> getAll(Pageable pageable) {
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
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "rvSbno" : oldData.setRvSbno(newData.getRvSbno()); break;
						    case "crSyscd" : oldData.setCrSyscd(newData.getCrSyscd()); break;
						    case "dlTpO1Csfcd" : oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd()); break;
						    case "dlTpO2Csfcd" : oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd()); break;
						    case "rpdt" : oldData.setRpdt(newData.getRpdt()); break;
						    case "dhOrgcd" : oldData.setDhOrgcd(newData.getDhOrgcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "insImcd" : oldData.setInsImcd(newData.getInsImcd()); break;
						    case "invlnGdcd" : oldData.setInvlnGdcd(newData.getInvlnGdcd()); break;
						    case "ntaccCd" : oldData.setNtaccCd(newData.getNtaccCd()); break;
						    case "cnrdt" : oldData.setCnrdt(newData.getCnrdt()); break;
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "incmPrmCrSeqno" : oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "crtRsno" : oldData.setCrtRsno(newData.getCrtRsno()); break;
						    case "rpblOpndt" : oldData.setRpblOpndt(newData.getRpblOpndt()); break;
						    case "ltrmCrTotno" : oldData.setLtrmCrTotno(newData.getLtrmCrTotno()); break;
						    case "udrtkTycd" : oldData.setUdrtkTycd(newData.getUdrtkTycd()); break;
						    case "dpCascd" : oldData.setDpCascd(newData.getDpCascd()); break;
						    case "mntFlgcd" : oldData.setMntFlgcd(newData.getMntFlgcd()); break;
						    case "dpdt" : oldData.setDpdt(newData.getDpdt()); break;
						    case "rpAdmno" : oldData.setRpAdmno(newData.getRpAdmno()); break;
						    case "plno" : oldData.setPlno(newData.getPlno()); break;
						    case "bsnsNdsFlgcd" : oldData.setBsnsNdsFlgcd(newData.getBsnsNdsFlgcd()); break;
						    case "clsafYn" : oldData.setClsafYn(newData.getClsafYn()); break;
						    case "totFlgcd" : oldData.setTotFlgcd(newData.getTotFlgcd()); break;
						    case "totct" : oldData.setTotct(newData.getTotct()); break;
						    case "totPrm" : oldData.setTotPrm(newData.getTotPrm()); break;
						    case "woncrPrm" : oldData.setWoncrPrm(newData.getWoncrPrm()); break;
						    case "crRnPrm" : oldData.setCrRnPrm(newData.getCrRnPrm()); break;
						    case "crDtamt" : oldData.setCrDtamt(newData.getCrDtamt()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "fcPrm" : oldData.setFcPrm(newData.getFcPrm()); break;
						    case "apXcrt" : oldData.setApXcrt(newData.getApXcrt()); break;
						    case "tfCm" : oldData.setTfCm(newData.getTfCm()); break;
						    case "etamtFlgcd" : oldData.setEtamtFlgcd(newData.getEtamtFlgcd()); break;
						    case "etamt" : oldData.setEtamt(newData.getEtamt()); break;
						    case "rvdt" : oldData.setRvdt(newData.getRvdt()); break;
						    case "rvOrgcd" : oldData.setRvOrgcd(newData.getRvOrgcd()); break;
						    case "rvXcno" : oldData.setRvXcno(newData.getRvXcno()); break;
						    case "daCrTpcd" : oldData.setDaCrTpcd(newData.getDaCrTpcd()); break;
						    case "girAttfErYn" : oldData.setGirAttfErYn(newData.getGirAttfErYn()); break;
						    case "girDpStcd" : oldData.setGirDpStcd(newData.getGirDpStcd()); break;
						    case "prmPvlSlpdt" : oldData.setPrmPvlSlpdt(newData.getPrmPvlSlpdt()); break;
						    case "prmPvlSlpno" : oldData.setPrmPvlSlpno(newData.getPrmPvlSlpno()); break;
						    case "prmPvlSlpLnno" : oldData.setPrmPvlSlpLnno(newData.getPrmPvlSlpLnno()); break;
						    case "ppdt" : oldData.setPpdt(newData.getPpdt()); break;
						    case "ucPrmYn" : oldData.setUcPrmYn(newData.getUcPrmYn()); break;
						    case "msgId" : oldData.setMsgId(newData.getMsgId()); break;
						    case "msgTpCsfcd" : oldData.setMsgTpCsfcd(newData.getMsgTpCsfcd()); break;
						    case "tlmTsdt" : oldData.setTlmTsdt(newData.getTlmTsdt()); break;
						    case "tlmPno" : oldData.setTlmPno(newData.getTlmPno()); break;
						    case "tlmSpecd" : oldData.setTlmSpecd(newData.getTlmSpecd()); break;
						    case "spbzFlgcd" : oldData.setSpbzFlgcd(newData.getSpbzFlgcd()); break;
						    case "actno" : oldData.setActno(newData.getActno()); break;
						    case "dpsnm" : oldData.setDpsnm(newData.getDpsnm()); break;
						    case "crrnm" : oldData.setCrrnm(newData.getCrrnm()); break;
						    case "inrIkdGrpcd" : oldData.setInrIkdGrpcd(newData.getInrIkdGrpcd()); break;
						    case "inrPlyno" : oldData.setInrPlyno(newData.getInrPlyno()); break;
						    case "inrPrm" : oldData.setInrPrm(newData.getInrPrm()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "crdCmpcd" : oldData.setCrdCmpcd(newData.getCrdCmpcd()); break;
						    case "cclYn" : oldData.setCclYn(newData.getCclYn()); break;
						    case "dhCmpcd" : oldData.setDhCmpcd(newData.getDhCmpcd()); break;
						    case "crdSmamtAryn" : oldData.setCrdSmamtAryn(newData.getCrdSmamtAryn()); break;
						    case "rvDlFlgcd" : oldData.setRvDlFlgcd(newData.getRvDlFlgcd()); break;
						    case "inrEdamtDldt" : oldData.setInrEdamtDldt(newData.getInrEdamtDldt()); break;
						    case "inrRtxno" : oldData.setInrRtxno(newData.getInrRtxno()); break;
						    case "finaDatVrfFlg1Vl" : oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl()); break;
						    case "finaDatVrfFlg2Vl" : oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl()); break;
						    case "finaDatVrfFlg3Vl" : oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl()); break;
						    case "agrEntpYn" : oldData.setAgrEntpYn(newData.getAgrEntpYn()); break;
						    case "crRpblPrm" : oldData.setCrRpblPrm(newData.getCrRpblPrm()); break;
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
	
    // @Operation(summary = "보험료수납대기 삭제" , description = "보험료수납대기 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the FinPrmRvSb", content = {
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
