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
import com.skims.domain.entity.InsWhpyBj;
import com.skims.domain.repository.InsWhpyBjRepository;

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setPyBjno(newData.getPyBjno());
                    oldData.setPpdt(newData.getPpdt());
                    oldData.setPyCrTpcd(newData.getPyCrTpcd());
                    oldData.setCcStdt(newData.getCcStdt());
                    oldData.setRtamt(newData.getRtamt());
                    oldData.setPyAvLmamt(newData.getPyAvLmamt());
                    oldData.setPmamtSmamt(newData.getPmamtSmamt());
                    oldData.setPyNt(newData.getPyNt());
                    oldData.setCclWdrReqdt(newData.getCclWdrReqdt());
                    oldData.setPyRsCascd(newData.getPyRsCascd());
                    oldData.setPyRsLclcd(newData.getPyRsLclcd());
                    oldData.setPyRsMdccd(newData.getPyRsMdccd());
                    oldData.setPyRsSmccd(newData.getPyRsSmccd());
                    oldData.setPyRs(newData.getPyRs());
                    oldData.setExRcvFlgcd(newData.getExRcvFlgcd());
                    oldData.setAcDmcyDlYn(newData.getAcDmcyDlYn());
                    oldData.setAcDmcyDldt(newData.getAcDmcyDldt());
                    oldData.setWhpyDissBjYn(newData.getWhpyDissBjYn());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setWhpyDissYn(newData.getWhpyDissYn());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                    oldData.setExOrpyBjno(newData.getExOrpyBjno());
                    oldData.setPyno(newData.getPyno());
                    oldData.setWhpyRqdt(newData.getWhpyRqdt());
                    oldData.setSsno(newData.getSsno());
                    oldData.setSsDtno(newData.getSsDtno());
                    oldData.setLnno(newData.getLnno());
                    oldData.setSamt(newData.getSamt());
                    oldData.setCllnAutoApFlgcd(newData.getCllnAutoApFlgcd());
                    oldData.setCllnUdwrStfno(newData.getCllnUdwrStfno());
                    oldData.setCllnUdRstStcd(newData.getCllnUdRstStcd());
                    oldData.setCllnUdwdt(newData.getCllnUdwdt());
                    oldData.setCrStdt(newData.getCrStdt());
                    oldData.setRtamtTpcd(newData.getRtamtTpcd());
                    oldData.setRviCrSeqno(newData.getRviCrSeqno());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setOrgcd(newData.getOrgcd());
                    oldData.setBrOrgcd(newData.getBrOrgcd());
                    oldData.setPybfCrStcd(newData.getPybfCrStcd());
                    oldData.setPybfCrDtStcd(newData.getPybfCrDtStcd());
                    oldData.setCuCvrEndt(newData.getCuCvrEndt());
                    oldData.setCfgcd(newData.getCfgcd());
                    oldData.setRndYyct(newData.getRndYyct());
                    oldData.setRndMc(newData.getRndMc());
                    oldData.setNelpYyct(newData.getNelpYyct());
                    oldData.setNelpMc(newData.getNelpMc());
                    oldData.setApDhtmCd(newData.getApDhtmCd());
                    oldData.setBaGnRndRfamt(newData.getBaGnRndRfamt());
                    oldData.setCuPcamt(newData.getCuPcamt());
                    oldData.setCuNt(newData.getCuNt());
                    oldData.setCuPartNwcrtDpcs(newData.getCuPartNwcrtDpcs());
                    oldData.setBaRndRfamt(newData.getBaRndRfamt());
                    oldData.setTrtGnRndRfamt(newData.getTrtGnRndRfamt());
                    oldData.setGnNelpRfamt(newData.getGnNelpRfamt());
                    oldData.setPpyPrm(newData.getPpyPrm());
                    oldData.setPpyNt(newData.getPpyNt());
                    oldData.setCvCnYn(newData.getCvCnYn());
                    oldData.setCrBefoFnorgBzmno(newData.getCrBefoFnorgBzmno());
                    oldData.setCrBefoFnOrgnm(newData.getCrBefoFnOrgnm());
                    oldData.setCrDvFlgcd(newData.getCrDvFlgcd());
                    oldData.setAdAnYpamt(newData.getAdAnYpamt());
                    oldData.setNocrPyamt(newData.getNocrPyamt());
                    oldData.setAnrrfStdt(newData.getAnrrfStdt());
                    oldData.setAnrrfPcamt(newData.getAnrrfPcamt());
                    oldData.setAnrrfNt(newData.getAnrrfNt());
                    oldData.setAnrrfDchgRatoCfc(newData.getAnrrfDchgRatoCfc());
                    oldData.setAnPyafRpblRfamt(newData.getAnPyafRpblRfamt());
                    oldData.setAnYyodr(newData.getAnYyodr());
                    oldData.setAnMgnfSm(newData.getAnMgnfSm());
                    oldData.setAyamt(newData.getAyamt());
                    oldData.setAnSepPyamt(newData.getAnSepPyamt());
                    oldData.setAnFlgcd(newData.getAnFlgcd());
                    oldData.setRelpcSeqno(newData.getRelpcSeqno());
                    oldData.setYstrRfamt(newData.getYstrRfamt());
                    oldData.setCllnUdBjFlgcd(newData.getCllnUdBjFlgcd());
                    oldData.setCuCvrInsSt(newData.getCuCvrInsSt());
                    oldData.setGnNelpMntRfamt(newData.getGnNelpMntRfamt());
                    oldData.setGnNelpMitrmRfamt(newData.getGnNelpMitrmRfamt());
                    oldData.setRkPrm(newData.getRkPrm());
                    oldData.setEmbrNrdpsSexcd(newData.getEmbrNrdpsSexcd());
                    oldData.setMwPyAfRrfnd(newData.getMwPyAfRrfnd());
                    oldData.setMwOpnRrfndPcamt(newData.getMwOpnRrfndPcamt());
                    oldData.setRcpdt(newData.getRcpdt());
                    oldData.setFireLbtrsCnRscd(newData.getFireLbtrsCnRscd());
                    oldData.setExRcvRscd(newData.getExRcvRscd());
                    oldData.setAnRcRckdt(newData.getAnRcRckdt());
                    oldData.setAnRcYyodr(newData.getAnRcYyodr());
                    oldData.setAnRcLmamt(newData.getAnRcLmamt());
                    oldData.setAnActVlamt(newData.getAnActVlamt());
                    oldData.setRemnTxXcamt(newData.getRemnTxXcamt());
                    oldData.setDedt(newData.getDedt());
                    oldData.setPlyRcdt(newData.getPlyRcdt());
                    oldData.setNtdtdIcamtAyamt(newData.getNtdtdIcamtAyamt());
                    oldData.setRkrtdIcamtAyamt(newData.getRkrtdIcamtAyamt());
                    oldData.setBzcsdIcamtAyamt(newData.getBzcsdIcamtAyamt());
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
                        if (strKey.equals("pyBjno"))
                            oldData.setPyBjno(newData.getPyBjno());
                        if (strKey.equals("ppdt"))
                            oldData.setPpdt(newData.getPpdt());
                        if (strKey.equals("pyCrTpcd"))
                            oldData.setPyCrTpcd(newData.getPyCrTpcd());
                        if (strKey.equals("ccStdt"))
                            oldData.setCcStdt(newData.getCcStdt());
                        if (strKey.equals("rtamt"))
                            oldData.setRtamt(newData.getRtamt());
                        if (strKey.equals("pyAvLmamt"))
                            oldData.setPyAvLmamt(newData.getPyAvLmamt());
                        if (strKey.equals("pmamtSmamt"))
                            oldData.setPmamtSmamt(newData.getPmamtSmamt());
                        if (strKey.equals("pyNt"))
                            oldData.setPyNt(newData.getPyNt());
                        if (strKey.equals("cclWdrReqdt"))
                            oldData.setCclWdrReqdt(newData.getCclWdrReqdt());
                        if (strKey.equals("pyRsCascd"))
                            oldData.setPyRsCascd(newData.getPyRsCascd());
                        if (strKey.equals("pyRsLclcd"))
                            oldData.setPyRsLclcd(newData.getPyRsLclcd());
                        if (strKey.equals("pyRsMdccd"))
                            oldData.setPyRsMdccd(newData.getPyRsMdccd());
                        if (strKey.equals("pyRsSmccd"))
                            oldData.setPyRsSmccd(newData.getPyRsSmccd());
                        if (strKey.equals("pyRs"))
                            oldData.setPyRs(newData.getPyRs());
                        if (strKey.equals("exRcvFlgcd"))
                            oldData.setExRcvFlgcd(newData.getExRcvFlgcd());
                        if (strKey.equals("acDmcyDlYn"))
                            oldData.setAcDmcyDlYn(newData.getAcDmcyDlYn());
                        if (strKey.equals("acDmcyDldt"))
                            oldData.setAcDmcyDldt(newData.getAcDmcyDldt());
                        if (strKey.equals("whpyDissBjYn"))
                            oldData.setWhpyDissBjYn(newData.getWhpyDissBjYn());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("whpyDissYn"))
                            oldData.setWhpyDissYn(newData.getWhpyDissYn());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("incmPrmCrSeqno"))
                            oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                        if (strKey.equals("exOrpyBjno"))
                            oldData.setExOrpyBjno(newData.getExOrpyBjno());
                        if (strKey.equals("pyno"))
                            oldData.setPyno(newData.getPyno());
                        if (strKey.equals("whpyRqdt"))
                            oldData.setWhpyRqdt(newData.getWhpyRqdt());
                        if (strKey.equals("ssno"))
                            oldData.setSsno(newData.getSsno());
                        if (strKey.equals("ssDtno"))
                            oldData.setSsDtno(newData.getSsDtno());
                        if (strKey.equals("lnno"))
                            oldData.setLnno(newData.getLnno());
                        if (strKey.equals("samt"))
                            oldData.setSamt(newData.getSamt());
                        if (strKey.equals("cllnAutoApFlgcd"))
                            oldData.setCllnAutoApFlgcd(newData.getCllnAutoApFlgcd());
                        if (strKey.equals("cllnUdwrStfno"))
                            oldData.setCllnUdwrStfno(newData.getCllnUdwrStfno());
                        if (strKey.equals("cllnUdRstStcd"))
                            oldData.setCllnUdRstStcd(newData.getCllnUdRstStcd());
                        if (strKey.equals("cllnUdwdt"))
                            oldData.setCllnUdwdt(newData.getCllnUdwdt());
                        if (strKey.equals("crStdt"))
                            oldData.setCrStdt(newData.getCrStdt());
                        if (strKey.equals("rtamtTpcd"))
                            oldData.setRtamtTpcd(newData.getRtamtTpcd());
                        if (strKey.equals("rviCrSeqno"))
                            oldData.setRviCrSeqno(newData.getRviCrSeqno());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("orgcd"))
                            oldData.setOrgcd(newData.getOrgcd());
                        if (strKey.equals("brOrgcd"))
                            oldData.setBrOrgcd(newData.getBrOrgcd());
                        if (strKey.equals("pybfCrStcd"))
                            oldData.setPybfCrStcd(newData.getPybfCrStcd());
                        if (strKey.equals("pybfCrDtStcd"))
                            oldData.setPybfCrDtStcd(newData.getPybfCrDtStcd());
                        if (strKey.equals("cuCvrEndt"))
                            oldData.setCuCvrEndt(newData.getCuCvrEndt());
                        if (strKey.equals("cfgcd"))
                            oldData.setCfgcd(newData.getCfgcd());
                        if (strKey.equals("rndYyct"))
                            oldData.setRndYyct(newData.getRndYyct());
                        if (strKey.equals("rndMc"))
                            oldData.setRndMc(newData.getRndMc());
                        if (strKey.equals("nelpYyct"))
                            oldData.setNelpYyct(newData.getNelpYyct());
                        if (strKey.equals("nelpMc"))
                            oldData.setNelpMc(newData.getNelpMc());
                        if (strKey.equals("apDhtmCd"))
                            oldData.setApDhtmCd(newData.getApDhtmCd());
                        if (strKey.equals("baGnRndRfamt"))
                            oldData.setBaGnRndRfamt(newData.getBaGnRndRfamt());
                        if (strKey.equals("cuPcamt"))
                            oldData.setCuPcamt(newData.getCuPcamt());
                        if (strKey.equals("cuNt"))
                            oldData.setCuNt(newData.getCuNt());
                        if (strKey.equals("cuPartNwcrtDpcs"))
                            oldData.setCuPartNwcrtDpcs(newData.getCuPartNwcrtDpcs());
                        if (strKey.equals("baRndRfamt"))
                            oldData.setBaRndRfamt(newData.getBaRndRfamt());
                        if (strKey.equals("trtGnRndRfamt"))
                            oldData.setTrtGnRndRfamt(newData.getTrtGnRndRfamt());
                        if (strKey.equals("gnNelpRfamt"))
                            oldData.setGnNelpRfamt(newData.getGnNelpRfamt());
                        if (strKey.equals("ppyPrm"))
                            oldData.setPpyPrm(newData.getPpyPrm());
                        if (strKey.equals("ppyNt"))
                            oldData.setPpyNt(newData.getPpyNt());
                        if (strKey.equals("cvCnYn"))
                            oldData.setCvCnYn(newData.getCvCnYn());
                        if (strKey.equals("crBefoFnorgBzmno"))
                            oldData.setCrBefoFnorgBzmno(newData.getCrBefoFnorgBzmno());
                        if (strKey.equals("crBefoFnOrgnm"))
                            oldData.setCrBefoFnOrgnm(newData.getCrBefoFnOrgnm());
                        if (strKey.equals("crDvFlgcd"))
                            oldData.setCrDvFlgcd(newData.getCrDvFlgcd());
                        if (strKey.equals("adAnYpamt"))
                            oldData.setAdAnYpamt(newData.getAdAnYpamt());
                        if (strKey.equals("nocrPyamt"))
                            oldData.setNocrPyamt(newData.getNocrPyamt());
                        if (strKey.equals("anrrfStdt"))
                            oldData.setAnrrfStdt(newData.getAnrrfStdt());
                        if (strKey.equals("anrrfPcamt"))
                            oldData.setAnrrfPcamt(newData.getAnrrfPcamt());
                        if (strKey.equals("anrrfNt"))
                            oldData.setAnrrfNt(newData.getAnrrfNt());
                        if (strKey.equals("anrrfDchgRatoCfc"))
                            oldData.setAnrrfDchgRatoCfc(newData.getAnrrfDchgRatoCfc());
                        if (strKey.equals("anPyafRpblRfamt"))
                            oldData.setAnPyafRpblRfamt(newData.getAnPyafRpblRfamt());
                        if (strKey.equals("anYyodr"))
                            oldData.setAnYyodr(newData.getAnYyodr());
                        if (strKey.equals("anMgnfSm"))
                            oldData.setAnMgnfSm(newData.getAnMgnfSm());
                        if (strKey.equals("ayamt"))
                            oldData.setAyamt(newData.getAyamt());
                        if (strKey.equals("anSepPyamt"))
                            oldData.setAnSepPyamt(newData.getAnSepPyamt());
                        if (strKey.equals("anFlgcd"))
                            oldData.setAnFlgcd(newData.getAnFlgcd());
                        if (strKey.equals("relpcSeqno"))
                            oldData.setRelpcSeqno(newData.getRelpcSeqno());
                        if (strKey.equals("ystrRfamt"))
                            oldData.setYstrRfamt(newData.getYstrRfamt());
                        if (strKey.equals("cllnUdBjFlgcd"))
                            oldData.setCllnUdBjFlgcd(newData.getCllnUdBjFlgcd());
                        if (strKey.equals("cuCvrInsSt"))
                            oldData.setCuCvrInsSt(newData.getCuCvrInsSt());
                        if (strKey.equals("gnNelpMntRfamt"))
                            oldData.setGnNelpMntRfamt(newData.getGnNelpMntRfamt());
                        if (strKey.equals("gnNelpMitrmRfamt"))
                            oldData.setGnNelpMitrmRfamt(newData.getGnNelpMitrmRfamt());
                        if (strKey.equals("rkPrm"))
                            oldData.setRkPrm(newData.getRkPrm());
                        if (strKey.equals("embrNrdpsSexcd"))
                            oldData.setEmbrNrdpsSexcd(newData.getEmbrNrdpsSexcd());
                        if (strKey.equals("mwPyAfRrfnd"))
                            oldData.setMwPyAfRrfnd(newData.getMwPyAfRrfnd());
                        if (strKey.equals("mwOpnRrfndPcamt"))
                            oldData.setMwOpnRrfndPcamt(newData.getMwOpnRrfndPcamt());
                        if (strKey.equals("rcpdt"))
                            oldData.setRcpdt(newData.getRcpdt());
                        if (strKey.equals("fireLbtrsCnRscd"))
                            oldData.setFireLbtrsCnRscd(newData.getFireLbtrsCnRscd());
                        if (strKey.equals("exRcvRscd"))
                            oldData.setExRcvRscd(newData.getExRcvRscd());
                        if (strKey.equals("anRcRckdt"))
                            oldData.setAnRcRckdt(newData.getAnRcRckdt());
                        if (strKey.equals("anRcYyodr"))
                            oldData.setAnRcYyodr(newData.getAnRcYyodr());
                        if (strKey.equals("anRcLmamt"))
                            oldData.setAnRcLmamt(newData.getAnRcLmamt());
                        if (strKey.equals("anActVlamt"))
                            oldData.setAnActVlamt(newData.getAnActVlamt());
                        if (strKey.equals("remnTxXcamt"))
                            oldData.setRemnTxXcamt(newData.getRemnTxXcamt());
                        if (strKey.equals("dedt"))
                            oldData.setDedt(newData.getDedt());
                        if (strKey.equals("plyRcdt"))
                            oldData.setPlyRcdt(newData.getPlyRcdt());
                        if (strKey.equals("ntdtdIcamtAyamt"))
                            oldData.setNtdtdIcamtAyamt(newData.getNtdtdIcamtAyamt());
                        if (strKey.equals("rkrtdIcamtAyamt"))
                            oldData.setRkrtdIcamtAyamt(newData.getRkrtdIcamtAyamt());
                        if (strKey.equals("bzcsdIcamtAyamt"))
                            oldData.setBzcsdIcamtAyamt(newData.getBzcsdIcamtAyamt());
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
