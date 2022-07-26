/**
 * InsNrdpsTisrdAtr Entity Controller 클래스
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
import com.skims.domain.entity.InsNrdpsTisrdAtr;
import com.skims.domain.repository.InsNrdpsTisrdAtrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsNrdpsTisrdAtr 피보험자부보자속성 Controller")
@Slf4j
public class InsNrdpsTisrdAtrController {

    @Autowired
    InsNrdpsTisrdAtrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "피보험자부보자속성 전체조회" , summary = "피보험자부보자속성 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insnrdpstisrdatrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insnrdpstisrdatrs")
    public ResponseEntity<Page<InsNrdpsTisrdAtr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "피보험자부보자속성 Key조회" , description = "피보험자부보자속성 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsNrdpsTisrdAtr not found", content = @Content) })
    @GetMapping("/insnrdpstisrdatrs/{aid}")
    public ResponseEntity<InsNrdpsTisrdAtr> getById(@PathVariable("aid") Long aid) {
        Optional<InsNrdpsTisrdAtr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "피보험자부보자속성 등록" , description = "피보험자부보자속성 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insnrdpstisrdatrs")
    ResponseEntity<InsNrdpsTisrdAtr> postData(@RequestBody InsNrdpsTisrdAtr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "피보험자부보자속성 수정" , description = "피보험자부보자속성 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsNrdpsTisrdAtr not found", content = @Content) })
    @PutMapping("/insnrdpstisrdatrs/{aid}")
    ResponseEntity<InsNrdpsTisrdAtr> putData(@RequestBody InsNrdpsTisrdAtr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "피보험자부보자속성 수정" , description = "피보험자부보자속성 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsNrdpsTisrdAtr not found", content = @Content) })
	@PatchMapping("/insnrdpstisrdatrs/{aid}")
    ResponseEntity<InsNrdpsTisrdAtr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsNrdpsTisrdAtr newData = mapper.convertValue(newMap, InsNrdpsTisrdAtr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "relpcSeqno" : oldData.setRelpcSeqno(newData.getRelpcSeqno()); break;
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "apStrdt" : oldData.setApStrdt(newData.getApStrdt()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "valdNdsYn" : oldData.setValdNdsYn(newData.getValdNdsYn()); break;
						    case "ndsApStrDthms" : oldData.setNdsApStrDthms(newData.getNdsApStrDthms()); break;
						    case "ndsApNdDthms" : oldData.setNdsApNdDthms(newData.getNdsApNdDthms()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "nrdpsTisrdFlgcd" : oldData.setNrdpsTisrdFlgcd(newData.getNrdpsTisrdFlgcd()); break;
						    case "crPlcd" : oldData.setCrPlcd(newData.getCrPlcd()); break;
						    case "plCsfcd" : oldData.setPlCsfcd(newData.getPlCsfcd()); break;
						    case "mdNrdpsFlgcd" : oldData.setMdNrdpsFlgcd(newData.getMdNrdpsFlgcd()); break;
						    case "gpIsTp" : oldData.setGpIsTp(newData.getGpIsTp()); break;
						    case "nrdpsOrTisct" : oldData.setNrdpsOrTisct(newData.getNrdpsOrTisct()); break;
						    case "fmlct" : oldData.setFmlct(newData.getFmlct()); break;
						    case "manPsct" : oldData.setManPsct(newData.getManPsct()); break;
						    case "fmlPsct" : oldData.setFmlPsct(newData.getFmlPsct()); break;
						    case "rxamBjYn" : oldData.setRxamBjYn(newData.getRxamBjYn()); break;
						    case "twhvcDrveYn" : oldData.setTwhvcDrveYn(newData.getTwhvcDrveYn()); break;
						    case "drveYn" : oldData.setDrveYn(newData.getDrveYn()); break;
						    case "insSt" : oldData.setInsSt(newData.getInsSt()); break;
						    case "insStHms" : oldData.setInsStHms(newData.getInsStHms()); break;
						    case "insClstr" : oldData.setInsClstr(newData.getInsClstr()); break;
						    case "insClstrHms" : oldData.setInsClstrHms(newData.getInsClstrHms()); break;
						    case "rfdClcSt" : oldData.setRfdClcSt(newData.getRfdClcSt()); break;
						    case "rfdClcClstr" : oldData.setRfdClcClstr(newData.getRfdClcClstr()); break;
						    case "drveTycd" : oldData.setDrveTycd(newData.getDrveTycd()); break;
						    case "brth" : oldData.setBrth(newData.getBrth()); break;
						    case "embrYn" : oldData.setEmbrYn(newData.getEmbrYn()); break;
						    case "sexcd" : oldData.setSexcd(newData.getSexcd()); break;
						    case "age" : oldData.setAge(newData.getAge()); break;
						    case "jbcd" : oldData.setJbcd(newData.getJbcd()); break;
						    case "jbChSeqno" : oldData.setJbChSeqno(newData.getJbChSeqno()); break;
						    case "injrRnkcd" : oldData.setInjrRnkcd(newData.getInjrRnkcd()); break;
						    case "trfRnkcd" : oldData.setTrfRnkcd(newData.getTrfRnkcd()); break;
						    case "injrGrdcd" : oldData.setInjrGrdcd(newData.getInjrGrdcd()); break;
						    case "ptn" : oldData.setPtn(newData.getPtn()); break;
						    case "bdt" : oldData.setBdt(newData.getBdt()); break;
						    case "bthdt" : oldData.setBthdt(newData.getBthdt()); break;
						    case "stbdt" : oldData.setStbdt(newData.getStbdt()); break;
						    case "pregRndwk" : oldData.setPregRndwk(newData.getPregRndwk()); break;
						    case "mdcsRgtFlgcd" : oldData.setMdcsRgtFlgcd(newData.getMdcsRgtFlgcd()); break;
						    case "mdcsRgtStcd" : oldData.setMdcsRgtStcd(newData.getMdcsRgtStcd()); break;
						    case "sttPfsstFlgcd" : oldData.setSttPfsstFlgcd(newData.getSttPfsstFlgcd()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "tisrdRcpdt" : oldData.setTisrdRcpdt(newData.getTisrdRcpdt()); break;
						    case "acdisRgtdt" : oldData.setAcdisRgtdt(newData.getAcdisRgtdt()); break;
						    case "drveLicSpecd" : oldData.setDrveLicSpecd(newData.getDrveLicSpecd()); break;
						    case "paMncd" : oldData.setPaMncd(newData.getPaMncd()); break;
						    case "mnthAvgPa" : oldData.setMnthAvgPa(newData.getMnthAvgPa()); break;
						    case "yearPaTamt" : oldData.setYearPaTamt(newData.getYearPaTamt()); break;
						    case "xcApYn" : oldData.setXcApYn(newData.getXcApYn()); break;
						    case "brdpsRvpsFlgcd" : oldData.setBrdpsRvpsFlgcd(newData.getBrdpsRvpsFlgcd()); break;
						    case "dtycd" : oldData.setDtycd(newData.getDtycd()); break;
						    case "rcnBjyn" : oldData.setRcnBjyn(newData.getRcnBjyn()); break;
						    case "dgnUdBjYn" : oldData.setDgnUdBjYn(newData.getDgnUdBjYn()); break;
						    case "adIrtApChdct" : oldData.setAdIrtApChdct(newData.getAdIrtApChdct()); break;
						    case "embrIsAvYn" : oldData.setEmbrIsAvYn(newData.getEmbrIsAvYn()); break;
						    case "bthPrdt" : oldData.setBthPrdt(newData.getBthPrdt()); break;
						    case "nwbbyNm" : oldData.setNwbbyNm(newData.getNwbbyNm()); break;
						    case "nwbbyRsno" : oldData.setNwbbyRsno(newData.getNwbbyRsno()); break;
						    case "pregRndwkStdt" : oldData.setPregRndwkStdt(newData.getPregRndwkStdt()); break;
						    case "mdcsInqAgreYn" : oldData.setMdcsInqAgreYn(newData.getMdcsInqAgreYn()); break;
						    case "smokYn" : oldData.setSmokYn(newData.getSmokYn()); break;
						    case "dscrt" : oldData.setDscrt(newData.getDscrt()); break;
						    case "ssngCmpGdnm" : oldData.setSsngCmpGdnm(newData.getSsngCmpGdnm()); break;
						    case "wpcnm" : oldData.setWpcnm(newData.getWpcnm()); break;
						    case "bnnm" : oldData.setBnnm(newData.getBnnm()); break;
						    case "cePlcd" : oldData.setCePlcd(newData.getCePlcd()); break;
						    case "xclcBdYn" : oldData.setXclcBdYn(newData.getXclcBdYn()); break;
						    case "unfRtApYn" : oldData.setUnfRtApYn(newData.getUnfRtApYn()); break;
						    case "twhvcSubCvrtrIsFlgcd" : oldData.setTwhvcSubCvrtrIsFlgcd(newData.getTwhvcSubCvrtrIsFlgcd()); break;
						    case "dcAge" : oldData.setDcAge(newData.getDcAge()); break;
						    case "hltAgePrmApTrtIsFlgcd" : oldData.setHltAgePrmApTrtIsFlgcd(newData.getHltAgePrmApTrtIsFlgcd()); break;
						    case "hltAgeDcApFlgcd" : oldData.setHltAgeDcApFlgcd(newData.getHltAgeDcApFlgcd()); break;
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
	
    // @Operation(summary = "피보험자부보자속성 삭제" , description = "피보험자부보자속성 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insnrdpstisrdatrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
