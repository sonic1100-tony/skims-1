/**
 * InsPlNrdpsTisrdAtr Entity Controller 클래스
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
import com.skims.domain.entity.InsPlNrdpsTisrdAtr;
import com.skims.domain.repository.InsPlNrdpsTisrdAtrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlNrdpsTisrdAtr 설계피보험자부보자속성 Controller")
@Slf4j
public class InsPlNrdpsTisrdAtrController {

    @Autowired
    InsPlNrdpsTisrdAtrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계피보험자부보자속성 전체조회" , summary = "설계피보험자부보자속성 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insplnrdpstisrdatrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insplnrdpstisrdatrs")
    public ResponseEntity<Page<InsPlNrdpsTisrdAtr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계피보험자부보자속성 Key조회" , description = "설계피보험자부보자속성 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlNrdpsTisrdAtr not found", content = @Content) })
    @GetMapping("/insplnrdpstisrdatrs/{aid}")
    public ResponseEntity<InsPlNrdpsTisrdAtr> getById(@PathVariable("aid") Long aid) {
        Optional<InsPlNrdpsTisrdAtr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계피보험자부보자속성 등록" , description = "설계피보험자부보자속성 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insplnrdpstisrdatrs")
    ResponseEntity<InsPlNrdpsTisrdAtr> postData(@RequestBody InsPlNrdpsTisrdAtr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계피보험자부보자속성 수정" , description = "설계피보험자부보자속성 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlNrdpsTisrdAtr not found", content = @Content) })
    @PutMapping("/insplnrdpstisrdatrs/{aid}")
    ResponseEntity<InsPlNrdpsTisrdAtr> putData(@RequestBody InsPlNrdpsTisrdAtr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlno(newData.getPlno());
                    oldData.setCgafChSeqno(newData.getCgafChSeqno());
                    oldData.setRelpcSeqno(newData.getRelpcSeqno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setNrdpsTisrdFlgcd(newData.getNrdpsTisrdFlgcd());
                    oldData.setPlPlcd(newData.getPlPlcd());
                    oldData.setPlCsfcd(newData.getPlCsfcd());
                    oldData.setMdNrdpsFlgcd(newData.getMdNrdpsFlgcd());
                    oldData.setGpIsTp(newData.getGpIsTp());
                    oldData.setNrdpsOrTisct(newData.getNrdpsOrTisct());
                    oldData.setFmlct(newData.getFmlct());
                    oldData.setManPsct(newData.getManPsct());
                    oldData.setFmlPsct(newData.getFmlPsct());
                    oldData.setRxamBjYn(newData.getRxamBjYn());
                    oldData.setTwhvcDrveYn(newData.getTwhvcDrveYn());
                    oldData.setDrveYn(newData.getDrveYn());
                    oldData.setInsSt(newData.getInsSt());
                    oldData.setInsStHms(newData.getInsStHms());
                    oldData.setInsClstr(newData.getInsClstr());
                    oldData.setInsClstrHms(newData.getInsClstrHms());
                    oldData.setRfdClcSt(newData.getRfdClcSt());
                    oldData.setRfdClcClstr(newData.getRfdClcClstr());
                    oldData.setDrveTycd(newData.getDrveTycd());
                    oldData.setBrth(newData.getBrth());
                    oldData.setEmbrYn(newData.getEmbrYn());
                    oldData.setSexcd(newData.getSexcd());
                    oldData.setAge(newData.getAge());
                    oldData.setJbcd(newData.getJbcd());
                    oldData.setJbChSeqno(newData.getJbChSeqno());
                    oldData.setInjrRnkcd(newData.getInjrRnkcd());
                    oldData.setTrfRnkcd(newData.getTrfRnkcd());
                    oldData.setInjrGrdcd(newData.getInjrGrdcd());
                    oldData.setPtn(newData.getPtn());
                    oldData.setBdt(newData.getBdt());
                    oldData.setBthdt(newData.getBthdt());
                    oldData.setStbdt(newData.getStbdt());
                    oldData.setPregRndwk(newData.getPregRndwk());
                    oldData.setMdcsRgtFlgcd(newData.getMdcsRgtFlgcd());
                    oldData.setMdcsRgtStcd(newData.getMdcsRgtStcd());
                    oldData.setSttPfsstFlgcd(newData.getSttPfsstFlgcd());
                    oldData.setBkcd(newData.getBkcd());
                    oldData.setTisrdRcpdt(newData.getTisrdRcpdt());
                    oldData.setAcdisRgtdt(newData.getAcdisRgtdt());
                    oldData.setDrveLicSpecd(newData.getDrveLicSpecd());
                    oldData.setPaMncd(newData.getPaMncd());
                    oldData.setMnthAvgPa(newData.getMnthAvgPa());
                    oldData.setYearPaTamt(newData.getYearPaTamt());
                    oldData.setXcApYn(newData.getXcApYn());
                    oldData.setBrdpsRvpsFlgcd(newData.getBrdpsRvpsFlgcd());
                    oldData.setDtycd(newData.getDtycd());
                    oldData.setRcnBjyn(newData.getRcnBjyn());
                    oldData.setDgnUdBjYn(newData.getDgnUdBjYn());
                    oldData.setAdIrtApChdct(newData.getAdIrtApChdct());
                    oldData.setEmbrIsAvYn(newData.getEmbrIsAvYn());
                    oldData.setBthPrdt(newData.getBthPrdt());
                    oldData.setNwbbyNm(newData.getNwbbyNm());
                    oldData.setNwbbyRsno(newData.getNwbbyRsno());
                    oldData.setPregRndwkStdt(newData.getPregRndwkStdt());
                    oldData.setMdcsInqAgreYn(newData.getMdcsInqAgreYn());
                    oldData.setSmokYn(newData.getSmokYn());
                    oldData.setDscrt(newData.getDscrt());
                    oldData.setRvibaNdsNeedYn(newData.getRvibaNdsNeedYn());
                    oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
                    oldData.setWpcnm(newData.getWpcnm());
                    oldData.setBnnm(newData.getBnnm());
                    oldData.setCePlcd(newData.getCePlcd());
                    oldData.setXclcBdYn(newData.getXclcBdYn());
                    oldData.setUnfRtApYn(newData.getUnfRtApYn());
                    oldData.setTwhvcSubCvrtrIsFlgcd(newData.getTwhvcSubCvrtrIsFlgcd());
                    oldData.setDcAge(newData.getDcAge());
                    oldData.setHltAgePrmApTrtIsFlgcd(newData.getHltAgePrmApTrtIsFlgcd());
                    oldData.setHltAgeDcApFlgcd(newData.getHltAgeDcApFlgcd());
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

    // @Operation(summary = "설계피보험자부보자속성 수정" , description = "설계피보험자부보자속성 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlNrdpsTisrdAtr not found", content = @Content) })
	@PatchMapping("/insplnrdpstisrdatrs/{aid}")
    ResponseEntity<InsPlNrdpsTisrdAtr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPlNrdpsTisrdAtr newData = mapper.convertValue(newMap, InsPlNrdpsTisrdAtr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("cgafChSeqno"))
                            oldData.setCgafChSeqno(newData.getCgafChSeqno());
                        if (strKey.equals("relpcSeqno"))
                            oldData.setRelpcSeqno(newData.getRelpcSeqno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("nrdpsTisrdFlgcd"))
                            oldData.setNrdpsTisrdFlgcd(newData.getNrdpsTisrdFlgcd());
                        if (strKey.equals("plPlcd"))
                            oldData.setPlPlcd(newData.getPlPlcd());
                        if (strKey.equals("plCsfcd"))
                            oldData.setPlCsfcd(newData.getPlCsfcd());
                        if (strKey.equals("mdNrdpsFlgcd"))
                            oldData.setMdNrdpsFlgcd(newData.getMdNrdpsFlgcd());
                        if (strKey.equals("gpIsTp"))
                            oldData.setGpIsTp(newData.getGpIsTp());
                        if (strKey.equals("nrdpsOrTisct"))
                            oldData.setNrdpsOrTisct(newData.getNrdpsOrTisct());
                        if (strKey.equals("fmlct"))
                            oldData.setFmlct(newData.getFmlct());
                        if (strKey.equals("manPsct"))
                            oldData.setManPsct(newData.getManPsct());
                        if (strKey.equals("fmlPsct"))
                            oldData.setFmlPsct(newData.getFmlPsct());
                        if (strKey.equals("rxamBjYn"))
                            oldData.setRxamBjYn(newData.getRxamBjYn());
                        if (strKey.equals("twhvcDrveYn"))
                            oldData.setTwhvcDrveYn(newData.getTwhvcDrveYn());
                        if (strKey.equals("drveYn"))
                            oldData.setDrveYn(newData.getDrveYn());
                        if (strKey.equals("insSt"))
                            oldData.setInsSt(newData.getInsSt());
                        if (strKey.equals("insStHms"))
                            oldData.setInsStHms(newData.getInsStHms());
                        if (strKey.equals("insClstr"))
                            oldData.setInsClstr(newData.getInsClstr());
                        if (strKey.equals("insClstrHms"))
                            oldData.setInsClstrHms(newData.getInsClstrHms());
                        if (strKey.equals("rfdClcSt"))
                            oldData.setRfdClcSt(newData.getRfdClcSt());
                        if (strKey.equals("rfdClcClstr"))
                            oldData.setRfdClcClstr(newData.getRfdClcClstr());
                        if (strKey.equals("drveTycd"))
                            oldData.setDrveTycd(newData.getDrveTycd());
                        if (strKey.equals("brth"))
                            oldData.setBrth(newData.getBrth());
                        if (strKey.equals("embrYn"))
                            oldData.setEmbrYn(newData.getEmbrYn());
                        if (strKey.equals("sexcd"))
                            oldData.setSexcd(newData.getSexcd());
                        if (strKey.equals("age"))
                            oldData.setAge(newData.getAge());
                        if (strKey.equals("jbcd"))
                            oldData.setJbcd(newData.getJbcd());
                        if (strKey.equals("jbChSeqno"))
                            oldData.setJbChSeqno(newData.getJbChSeqno());
                        if (strKey.equals("injrRnkcd"))
                            oldData.setInjrRnkcd(newData.getInjrRnkcd());
                        if (strKey.equals("trfRnkcd"))
                            oldData.setTrfRnkcd(newData.getTrfRnkcd());
                        if (strKey.equals("injrGrdcd"))
                            oldData.setInjrGrdcd(newData.getInjrGrdcd());
                        if (strKey.equals("ptn"))
                            oldData.setPtn(newData.getPtn());
                        if (strKey.equals("bdt"))
                            oldData.setBdt(newData.getBdt());
                        if (strKey.equals("bthdt"))
                            oldData.setBthdt(newData.getBthdt());
                        if (strKey.equals("stbdt"))
                            oldData.setStbdt(newData.getStbdt());
                        if (strKey.equals("pregRndwk"))
                            oldData.setPregRndwk(newData.getPregRndwk());
                        if (strKey.equals("mdcsRgtFlgcd"))
                            oldData.setMdcsRgtFlgcd(newData.getMdcsRgtFlgcd());
                        if (strKey.equals("mdcsRgtStcd"))
                            oldData.setMdcsRgtStcd(newData.getMdcsRgtStcd());
                        if (strKey.equals("sttPfsstFlgcd"))
                            oldData.setSttPfsstFlgcd(newData.getSttPfsstFlgcd());
                        if (strKey.equals("bkcd"))
                            oldData.setBkcd(newData.getBkcd());
                        if (strKey.equals("tisrdRcpdt"))
                            oldData.setTisrdRcpdt(newData.getTisrdRcpdt());
                        if (strKey.equals("acdisRgtdt"))
                            oldData.setAcdisRgtdt(newData.getAcdisRgtdt());
                        if (strKey.equals("drveLicSpecd"))
                            oldData.setDrveLicSpecd(newData.getDrveLicSpecd());
                        if (strKey.equals("paMncd"))
                            oldData.setPaMncd(newData.getPaMncd());
                        if (strKey.equals("mnthAvgPa"))
                            oldData.setMnthAvgPa(newData.getMnthAvgPa());
                        if (strKey.equals("yearPaTamt"))
                            oldData.setYearPaTamt(newData.getYearPaTamt());
                        if (strKey.equals("xcApYn"))
                            oldData.setXcApYn(newData.getXcApYn());
                        if (strKey.equals("brdpsRvpsFlgcd"))
                            oldData.setBrdpsRvpsFlgcd(newData.getBrdpsRvpsFlgcd());
                        if (strKey.equals("dtycd"))
                            oldData.setDtycd(newData.getDtycd());
                        if (strKey.equals("rcnBjyn"))
                            oldData.setRcnBjyn(newData.getRcnBjyn());
                        if (strKey.equals("dgnUdBjYn"))
                            oldData.setDgnUdBjYn(newData.getDgnUdBjYn());
                        if (strKey.equals("adIrtApChdct"))
                            oldData.setAdIrtApChdct(newData.getAdIrtApChdct());
                        if (strKey.equals("embrIsAvYn"))
                            oldData.setEmbrIsAvYn(newData.getEmbrIsAvYn());
                        if (strKey.equals("bthPrdt"))
                            oldData.setBthPrdt(newData.getBthPrdt());
                        if (strKey.equals("nwbbyNm"))
                            oldData.setNwbbyNm(newData.getNwbbyNm());
                        if (strKey.equals("nwbbyRsno"))
                            oldData.setNwbbyRsno(newData.getNwbbyRsno());
                        if (strKey.equals("pregRndwkStdt"))
                            oldData.setPregRndwkStdt(newData.getPregRndwkStdt());
                        if (strKey.equals("mdcsInqAgreYn"))
                            oldData.setMdcsInqAgreYn(newData.getMdcsInqAgreYn());
                        if (strKey.equals("smokYn"))
                            oldData.setSmokYn(newData.getSmokYn());
                        if (strKey.equals("dscrt"))
                            oldData.setDscrt(newData.getDscrt());
                        if (strKey.equals("rvibaNdsNeedYn"))
                            oldData.setRvibaNdsNeedYn(newData.getRvibaNdsNeedYn());
                        if (strKey.equals("ltrmNdsDlFlgcd"))
                            oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
                        if (strKey.equals("wpcnm"))
                            oldData.setWpcnm(newData.getWpcnm());
                        if (strKey.equals("bnnm"))
                            oldData.setBnnm(newData.getBnnm());
                        if (strKey.equals("cePlcd"))
                            oldData.setCePlcd(newData.getCePlcd());
                        if (strKey.equals("xclcBdYn"))
                            oldData.setXclcBdYn(newData.getXclcBdYn());
                        if (strKey.equals("unfRtApYn"))
                            oldData.setUnfRtApYn(newData.getUnfRtApYn());
                        if (strKey.equals("twhvcSubCvrtrIsFlgcd"))
                            oldData.setTwhvcSubCvrtrIsFlgcd(newData.getTwhvcSubCvrtrIsFlgcd());
                        if (strKey.equals("dcAge"))
                            oldData.setDcAge(newData.getDcAge());
                        if (strKey.equals("hltAgePrmApTrtIsFlgcd"))
                            oldData.setHltAgePrmApTrtIsFlgcd(newData.getHltAgePrmApTrtIsFlgcd());
                        if (strKey.equals("hltAgeDcApFlgcd"))
                            oldData.setHltAgeDcApFlgcd(newData.getHltAgeDcApFlgcd());
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
	
    // @Operation(summary = "설계피보험자부보자속성 삭제" , description = "설계피보험자부보자속성 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlNrdpsTisrdAtr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNrdpsTisrdAtr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insplnrdpstisrdatrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
