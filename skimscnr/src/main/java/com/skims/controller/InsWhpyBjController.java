/**
 * InsWhpyBj Entity Controller 클래스
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
import com.skims.domain.entity.InsWhpyBj;
import com.skims.domain.repository.InsWhpyBjRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsWhpyBj 제지급대상 Controller")
@Slf4j
public class InsWhpyBjController {

    @Autowired
    InsWhpyBjRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "제지급대상 전체조회" , summary = "제지급대상 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inswhpybjs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyBj.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inswhpybjs")
    public ResponseEntity<Page<InsWhpyBj>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "제지급대상 Key조회" , description = "제지급대상 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsWhpyBj", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyBj.class)) }),
            @ApiResponse(responseCode = "404", description = "InsWhpyBj not found", content = @Content) })
    @GetMapping("/inswhpybjs/{aid}")
    public ResponseEntity<InsWhpyBj> getById(@PathVariable("aid") Long aid) {
        Optional<InsWhpyBj> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "제지급대상 등록" , description = "제지급대상 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsWhpyBj", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyBj.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inswhpybjs")
    ResponseEntity<InsWhpyBj> postData(@RequestBody InsWhpyBj newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "제지급대상 수정" , description = "제지급대상 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsWhpyBj", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyBj.class)) }),
            @ApiResponse(responseCode = "404", description = "InsWhpyBj not found", content = @Content) })
    @PutMapping("/inswhpybjs/{aid}")
    ResponseEntity<InsWhpyBj> putData(@RequestBody InsWhpyBj newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "제지급대상 수정" , description = "제지급대상 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsWhpyBj", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyBj.class)) }),
            @ApiResponse(responseCode = "404", description = "InsWhpyBj not found", content = @Content) })
	@PatchMapping("/inswhpybjs/{aid}")
    ResponseEntity<InsWhpyBj> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsWhpyBj newData = mapper.convertValue(newMap, InsWhpyBj.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "pyBjno" : oldData.setPyBjno(newData.getPyBjno()); break;
						    case "ppdt" : oldData.setPpdt(newData.getPpdt()); break;
						    case "pyCrTpcd" : oldData.setPyCrTpcd(newData.getPyCrTpcd()); break;
						    case "ccStdt" : oldData.setCcStdt(newData.getCcStdt()); break;
						    case "rtamt" : oldData.setRtamt(newData.getRtamt()); break;
						    case "pyAvLmamt" : oldData.setPyAvLmamt(newData.getPyAvLmamt()); break;
						    case "pmamtSmamt" : oldData.setPmamtSmamt(newData.getPmamtSmamt()); break;
						    case "pyNt" : oldData.setPyNt(newData.getPyNt()); break;
						    case "cclWdrReqdt" : oldData.setCclWdrReqdt(newData.getCclWdrReqdt()); break;
						    case "pyRsCascd" : oldData.setPyRsCascd(newData.getPyRsCascd()); break;
						    case "pyRsLclcd" : oldData.setPyRsLclcd(newData.getPyRsLclcd()); break;
						    case "pyRsMdccd" : oldData.setPyRsMdccd(newData.getPyRsMdccd()); break;
						    case "pyRsSmccd" : oldData.setPyRsSmccd(newData.getPyRsSmccd()); break;
						    case "pyRs" : oldData.setPyRs(newData.getPyRs()); break;
						    case "exRcvFlgcd" : oldData.setExRcvFlgcd(newData.getExRcvFlgcd()); break;
						    case "acDmcyDlYn" : oldData.setAcDmcyDlYn(newData.getAcDmcyDlYn()); break;
						    case "acDmcyDldt" : oldData.setAcDmcyDldt(newData.getAcDmcyDldt()); break;
						    case "whpyDissBjYn" : oldData.setWhpyDissBjYn(newData.getWhpyDissBjYn()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "whpyDissYn" : oldData.setWhpyDissYn(newData.getWhpyDissYn()); break;
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "incmPrmCrSeqno" : oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno()); break;
						    case "exOrpyBjno" : oldData.setExOrpyBjno(newData.getExOrpyBjno()); break;
						    case "pyno" : oldData.setPyno(newData.getPyno()); break;
						    case "whpyRqdt" : oldData.setWhpyRqdt(newData.getWhpyRqdt()); break;
						    case "ssno" : oldData.setSsno(newData.getSsno()); break;
						    case "ssDtno" : oldData.setSsDtno(newData.getSsDtno()); break;
						    case "lnno" : oldData.setLnno(newData.getLnno()); break;
						    case "samt" : oldData.setSamt(newData.getSamt()); break;
						    case "cllnAutoApFlgcd" : oldData.setCllnAutoApFlgcd(newData.getCllnAutoApFlgcd()); break;
						    case "cllnUdwrStfno" : oldData.setCllnUdwrStfno(newData.getCllnUdwrStfno()); break;
						    case "cllnUdRstStcd" : oldData.setCllnUdRstStcd(newData.getCllnUdRstStcd()); break;
						    case "cllnUdwdt" : oldData.setCllnUdwdt(newData.getCllnUdwdt()); break;
						    case "crStdt" : oldData.setCrStdt(newData.getCrStdt()); break;
						    case "rtamtTpcd" : oldData.setRtamtTpcd(newData.getRtamtTpcd()); break;
						    case "rviCrSeqno" : oldData.setRviCrSeqno(newData.getRviCrSeqno()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "orgcd" : oldData.setOrgcd(newData.getOrgcd()); break;
						    case "brOrgcd" : oldData.setBrOrgcd(newData.getBrOrgcd()); break;
						    case "pybfCrStcd" : oldData.setPybfCrStcd(newData.getPybfCrStcd()); break;
						    case "pybfCrDtStcd" : oldData.setPybfCrDtStcd(newData.getPybfCrDtStcd()); break;
						    case "cuCvrEndt" : oldData.setCuCvrEndt(newData.getCuCvrEndt()); break;
						    case "cfgcd" : oldData.setCfgcd(newData.getCfgcd()); break;
						    case "rndYyct" : oldData.setRndYyct(newData.getRndYyct()); break;
						    case "rndMc" : oldData.setRndMc(newData.getRndMc()); break;
						    case "nelpYyct" : oldData.setNelpYyct(newData.getNelpYyct()); break;
						    case "nelpMc" : oldData.setNelpMc(newData.getNelpMc()); break;
						    case "apDhtmCd" : oldData.setApDhtmCd(newData.getApDhtmCd()); break;
						    case "baGnRndRfamt" : oldData.setBaGnRndRfamt(newData.getBaGnRndRfamt()); break;
						    case "cuPcamt" : oldData.setCuPcamt(newData.getCuPcamt()); break;
						    case "cuNt" : oldData.setCuNt(newData.getCuNt()); break;
						    case "cuPartNwcrtDpcs" : oldData.setCuPartNwcrtDpcs(newData.getCuPartNwcrtDpcs()); break;
						    case "baRndRfamt" : oldData.setBaRndRfamt(newData.getBaRndRfamt()); break;
						    case "trtGnRndRfamt" : oldData.setTrtGnRndRfamt(newData.getTrtGnRndRfamt()); break;
						    case "gnNelpRfamt" : oldData.setGnNelpRfamt(newData.getGnNelpRfamt()); break;
						    case "ppyPrm" : oldData.setPpyPrm(newData.getPpyPrm()); break;
						    case "ppyNt" : oldData.setPpyNt(newData.getPpyNt()); break;
						    case "cvCnYn" : oldData.setCvCnYn(newData.getCvCnYn()); break;
						    case "crBefoFnorgBzmno" : oldData.setCrBefoFnorgBzmno(newData.getCrBefoFnorgBzmno()); break;
						    case "crBefoFnOrgnm" : oldData.setCrBefoFnOrgnm(newData.getCrBefoFnOrgnm()); break;
						    case "crDvFlgcd" : oldData.setCrDvFlgcd(newData.getCrDvFlgcd()); break;
						    case "adAnYpamt" : oldData.setAdAnYpamt(newData.getAdAnYpamt()); break;
						    case "nocrPyamt" : oldData.setNocrPyamt(newData.getNocrPyamt()); break;
						    case "anrrfStdt" : oldData.setAnrrfStdt(newData.getAnrrfStdt()); break;
						    case "anrrfPcamt" : oldData.setAnrrfPcamt(newData.getAnrrfPcamt()); break;
						    case "anrrfNt" : oldData.setAnrrfNt(newData.getAnrrfNt()); break;
						    case "anrrfDchgRatoCfc" : oldData.setAnrrfDchgRatoCfc(newData.getAnrrfDchgRatoCfc()); break;
						    case "anPyafRpblRfamt" : oldData.setAnPyafRpblRfamt(newData.getAnPyafRpblRfamt()); break;
						    case "anYyodr" : oldData.setAnYyodr(newData.getAnYyodr()); break;
						    case "anMgnfSm" : oldData.setAnMgnfSm(newData.getAnMgnfSm()); break;
						    case "ayamt" : oldData.setAyamt(newData.getAyamt()); break;
						    case "anSepPyamt" : oldData.setAnSepPyamt(newData.getAnSepPyamt()); break;
						    case "anFlgcd" : oldData.setAnFlgcd(newData.getAnFlgcd()); break;
						    case "relpcSeqno" : oldData.setRelpcSeqno(newData.getRelpcSeqno()); break;
						    case "ystrRfamt" : oldData.setYstrRfamt(newData.getYstrRfamt()); break;
						    case "cllnUdBjFlgcd" : oldData.setCllnUdBjFlgcd(newData.getCllnUdBjFlgcd()); break;
						    case "cuCvrInsSt" : oldData.setCuCvrInsSt(newData.getCuCvrInsSt()); break;
						    case "gnNelpMntRfamt" : oldData.setGnNelpMntRfamt(newData.getGnNelpMntRfamt()); break;
						    case "gnNelpMitrmRfamt" : oldData.setGnNelpMitrmRfamt(newData.getGnNelpMitrmRfamt()); break;
						    case "rkPrm" : oldData.setRkPrm(newData.getRkPrm()); break;
						    case "embrNrdpsSexcd" : oldData.setEmbrNrdpsSexcd(newData.getEmbrNrdpsSexcd()); break;
						    case "mwPyAfRrfnd" : oldData.setMwPyAfRrfnd(newData.getMwPyAfRrfnd()); break;
						    case "mwOpnRrfndPcamt" : oldData.setMwOpnRrfndPcamt(newData.getMwOpnRrfndPcamt()); break;
						    case "rcpdt" : oldData.setRcpdt(newData.getRcpdt()); break;
						    case "fireLbtrsCnRscd" : oldData.setFireLbtrsCnRscd(newData.getFireLbtrsCnRscd()); break;
						    case "exRcvRscd" : oldData.setExRcvRscd(newData.getExRcvRscd()); break;
						    case "anRcRckdt" : oldData.setAnRcRckdt(newData.getAnRcRckdt()); break;
						    case "anRcYyodr" : oldData.setAnRcYyodr(newData.getAnRcYyodr()); break;
						    case "anRcLmamt" : oldData.setAnRcLmamt(newData.getAnRcLmamt()); break;
						    case "anActVlamt" : oldData.setAnActVlamt(newData.getAnActVlamt()); break;
						    case "remnTxXcamt" : oldData.setRemnTxXcamt(newData.getRemnTxXcamt()); break;
						    case "dedt" : oldData.setDedt(newData.getDedt()); break;
						    case "plyRcdt" : oldData.setPlyRcdt(newData.getPlyRcdt()); break;
						    case "ntdtdIcamtAyamt" : oldData.setNtdtdIcamtAyamt(newData.getNtdtdIcamtAyamt()); break;
						    case "rkrtdIcamtAyamt" : oldData.setRkrtdIcamtAyamt(newData.getRkrtdIcamtAyamt()); break;
						    case "bzcsdIcamtAyamt" : oldData.setBzcsdIcamtAyamt(newData.getBzcsdIcamtAyamt()); break;
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
	
    // @Operation(summary = "제지급대상 삭제" , description = "제지급대상 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsWhpyBj", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyBj.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inswhpybjs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
