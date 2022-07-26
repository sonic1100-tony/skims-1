/**
 * InsCrRelpc Entity Controller 클래스
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
import com.skims.domain.entity.InsCrRelpc;
import com.skims.domain.repository.InsCrRelpcRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCrRelpc 계약관계자 Controller")
@Slf4j
public class InsCrRelpcController {

    @Autowired
    InsCrRelpcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "계약관계자 전체조회" , summary = "계약관계자 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscrrelpcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscrrelpcs")
    public ResponseEntity<Page<InsCrRelpc>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "계약관계자 Key조회" , description = "계약관계자 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCrRelpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrRelpc not found", content = @Content) })
    @GetMapping("/inscrrelpcs/{aid}")
    public ResponseEntity<InsCrRelpc> getById(@PathVariable("aid") Long aid) {
        Optional<InsCrRelpc> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "계약관계자 등록" , description = "계약관계자 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCrRelpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscrrelpcs")
    ResponseEntity<InsCrRelpc> postData(@RequestBody InsCrRelpc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "계약관계자 수정" , description = "계약관계자 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrRelpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrRelpc not found", content = @Content) })
    @PutMapping("/inscrrelpcs/{aid}")
    ResponseEntity<InsCrRelpc> putData(@RequestBody InsCrRelpc newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "계약관계자 수정" , description = "계약관계자 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrRelpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrRelpc not found", content = @Content) })
	@PatchMapping("/inscrrelpcs/{aid}")
    ResponseEntity<InsCrRelpc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCrRelpc newData = mapper.convertValue(newMap, InsCrRelpc.class);
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
						    case "relpcTpcd" : oldData.setRelpcTpcd(newData.getRelpcTpcd()); break;
						    case "relpcStcd" : oldData.setRelpcStcd(newData.getRelpcStcd()); break;
						    case "stChdt" : oldData.setStChdt(newData.getStChdt()); break;
						    case "hnglRelnm" : oldData.setHnglRelnm(newData.getHnglRelnm()); break;
						    case "engRelnm" : oldData.setEngRelnm(newData.getEngRelnm()); break;
						    case "ctmDscno" : oldData.setCtmDscno(newData.getCtmDscno()); break;
						    case "relpcDscnoFlgcd" : oldData.setRelpcDscnoFlgcd(newData.getRelpcDscnoFlgcd()); break;
						    case "dlncd" : oldData.setDlncd(newData.getDlncd()); break;
						    case "prsRelpcYn" : oldData.setPrsRelpcYn(newData.getPrsRelpcYn()); break;
						    case "cntadSeqno" : oldData.setCntadSeqno(newData.getCntadSeqno()); break;
						    case "cntadFlgcd" : oldData.setCntadFlgcd(newData.getCntadFlgcd()); break;
						    case "relpcName" : oldData.setRelpcName(newData.getRelpcName()); break;
						    case "relpcNamePstcd" : oldData.setRelpcNamePstcd(newData.getRelpcNamePstcd()); break;
						    case "relpcRlecd" : oldData.setRelpcRlecd(newData.getRelpcRlecd()); break;
						    case "isrdt" : oldData.setIsrdt(newData.getIsrdt()); break;
						    case "pprRelpcSeqno" : oldData.setPprRelpcSeqno(newData.getPprRelpcSeqno()); break;
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "sbdGrCtmno" : oldData.setSbdGrCtmno(newData.getSbdGrCtmno()); break;
						    case "guPlyno" : oldData.setGuPlyno(newData.getGuPlyno()); break;
						    case "guFireLginId" : oldData.setGuFireLginId(newData.getGuFireLginId()); break;
						    case "orelCd" : oldData.setOrelCd(newData.getOrelCd()); break;
						    case "subCtmDscno" : oldData.setSubCtmDscno(newData.getSubCtmDscno()); break;
						    case "fireMnNrdpsYn" : oldData.setFireMnNrdpsYn(newData.getFireMnNrdpsYn()); break;
						    case "injrHspCvrYn" : oldData.setInjrHspCvrYn(newData.getInjrHspCvrYn()); break;
						    case "injrOtpCvrYn" : oldData.setInjrOtpCvrYn(newData.getInjrOtpCvrYn()); break;
						    case "dsasHspCvrYn" : oldData.setDsasHspCvrYn(newData.getDsasHspCvrYn()); break;
						    case "dsasOtpCvrYn" : oldData.setDsasOtpCvrYn(newData.getDsasOtpCvrYn()); break;
						    case "gnrzHspCvrYn" : oldData.setGnrzHspCvrYn(newData.getGnrzHspCvrYn()); break;
						    case "gnrzOtpCvrYn" : oldData.setGnrzOtpCvrYn(newData.getGnrzOtpCvrYn()); break;
						    case "sepCrCnYn" : oldData.setSepCrCnYn(newData.getSepCrCnYn()); break;
						    case "rntcrYn" : oldData.setRntcrYn(newData.getRntcrYn()); break;
						    case "fnOrgcd" : oldData.setFnOrgcd(newData.getFnOrgcd()); break;
						    case "prpsFlgcd" : oldData.setPrpsFlgcd(newData.getPrpsFlgcd()); break;
						    case "prmPymRt" : oldData.setPrmPymRt(newData.getPrmPymRt()); break;
						    case "hndpsYn" : oldData.setHndpsYn(newData.getHndpsYn()); break;
						    case "ntnMrtmnYn" : oldData.setNtnMrtmnYn(newData.getNtnMrtmnYn()); break;
						    case "baSadpsYn" : oldData.setBaSadpsYn(newData.getBaSadpsYn()); break;
						    case "crtFlgcd" : oldData.setCrtFlgcd(newData.getCrtFlgcd()); break;
						    case "dmosFlgcd" : oldData.setDmosFlgcd(newData.getDmosFlgcd()); break;
						    case "indpdMrtmnYn" : oldData.setIndpdMrtmnYn(newData.getIndpdMrtmnYn()); break;
						    case "dfltPtYn" : oldData.setDfltPtYn(newData.getDfltPtYn()); break;
						    case "dmrcy518InjdYn" : oldData.setDmrcy518InjdYn(newData.getDmrcy518InjdYn()); break;
						    case "ndtmRisAgreYn" : oldData.setNdtmRisAgreYn(newData.getNdtmRisAgreYn()); break;
						    case "pfbFlgcd" : oldData.setPfbFlgcd(newData.getPfbFlgcd()); break;
						    case "nrdpsAgreYn" : oldData.setNrdpsAgreYn(newData.getNrdpsAgreYn()); break;
						    case "utRt" : oldData.setUtRt(newData.getUtRt()); break;
						    case "mdCfcapEntpYn" : oldData.setMdCfcapEntpYn(newData.getMdCfcapEntpYn()); break;
						    case "sexcd" : oldData.setSexcd(newData.getSexcd()); break;
						    case "jbcd" : oldData.setJbcd(newData.getJbcd()); break;
						    case "jbChSeqno" : oldData.setJbChSeqno(newData.getJbChSeqno()); break;
						    case "age" : oldData.setAge(newData.getAge()); break;
						    case "wdgYn" : oldData.setWdgYn(newData.getWdgYn()); break;
						    case "licSpecd" : oldData.setLicSpecd(newData.getLicSpecd()); break;
						    case "licno" : oldData.setLicno(newData.getLicno()); break;
						    case "licCqdt" : oldData.setLicCqdt(newData.getLicCqdt()); break;
						    case "clmCrrYn" : oldData.setClmCrrYn(newData.getClmCrrYn()); break;
						    case "drveCrrYyct" : oldData.setDrveCrrYyct(newData.getDrveCrrYyct()); break;
						    case "drveCrrMntct" : oldData.setDrveCrrMntct(newData.getDrveCrrMntct()); break;
						    case "drvFlgcd" : oldData.setDrvFlgcd(newData.getDrvFlgcd()); break;
						    case "hotStdt" : oldData.setHotStdt(newData.getHotStdt()); break;
						    case "hotClsdt" : oldData.setHotClsdt(newData.getHotClsdt()); break;
						    case "hotOj" : oldData.setHotOj(newData.getHotOj()); break;
						    case "relpcScrInpYn" : oldData.setRelpcScrInpYn(newData.getRelpcScrInpYn()); break;
						    case "idntyCnfcKndcd" : oldData.setIdntyCnfcKndcd(newData.getIdntyCnfcKndcd()); break;
						    case "idntyCnfcEtInfo" : oldData.setIdntyCnfcEtInfo(newData.getIdntyCnfcEtInfo()); break;
						    case "idntyCnfcNo" : oldData.setIdntyCnfcNo(newData.getIdntyCnfcNo()); break;
						    case "idntyCnfcIsdt" : oldData.setIdntyCnfcIsdt(newData.getIdntyCnfcIsdt()); break;
						    case "idntyCnfcIsOrgnm" : oldData.setIdntyCnfcIsOrgnm(newData.getIdntyCnfcIsOrgnm()); break;
						    case "idntyCnfPdtnm" : oldData.setIdntyCnfPdtnm(newData.getIdntyCnfPdtnm()); break;
						    case "idntyCnfBnnm" : oldData.setIdntyCnfBnnm(newData.getIdntyCnfBnnm()); break;
						    case "rdchCrTpcd" : oldData.setRdchCrTpcd(newData.getRdchCrTpcd()); break;
						    case "crUdrtkArecd" : oldData.setCrUdrtkArecd(newData.getCrUdrtkArecd()); break;
						    case "pectSlMntrChncd" : oldData.setPectSlMntrChncd(newData.getPectSlMntrChncd()); break;
						    case "cmMnUsCnAgryn" : oldData.setCmMnUsCnAgryn(newData.getCmMnUsCnAgryn()); break;
						    case "pfbAstchAgrYn" : oldData.setPfbAstchAgrYn(newData.getPfbAstchAgrYn()); break;
						    case "pfbAstchRscd" : oldData.setPfbAstchRscd(newData.getPfbAstchRscd()); break;
						    case "isCrrApprStrdt" : oldData.setIsCrrApprStrdt(newData.getIsCrrApprStrdt()); break;
						    case "isCrrApprNddt" : oldData.setIsCrrApprNddt(newData.getIsCrrApprNddt()); break;
						    case "mdSlrSadpsYn" : oldData.setMdSlrSadpsYn(newData.getMdSlrSadpsYn()); break;
						    case "fdWshBjGrdcd" : oldData.setFdWshBjGrdcd(newData.getFdWshBjGrdcd()); break;
						    case "ovsePytxDtyTpcd" : oldData.setOvsePytxDtyTpcd(newData.getOvsePytxDtyTpcd()); break;
						    case "mailRcvYn" : oldData.setMailRcvYn(newData.getMailRcvYn()); break;
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
	
    // @Operation(summary = "계약관계자 삭제" , description = "계약관계자 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsCrRelpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscrrelpcs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
