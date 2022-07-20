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
import com.skims.domain.entity.InsCrRelpc;
import com.skims.domain.repository.InsCrRelpcRepository;

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setRelpcSeqno(newData.getRelpcSeqno());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setValdNdsYn(newData.getValdNdsYn());
                    oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                    oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setRelpcTpcd(newData.getRelpcTpcd());
                    oldData.setRelpcStcd(newData.getRelpcStcd());
                    oldData.setStChdt(newData.getStChdt());
                    oldData.setHnglRelnm(newData.getHnglRelnm());
                    oldData.setEngRelnm(newData.getEngRelnm());
                    oldData.setCtmDscno(newData.getCtmDscno());
                    oldData.setRelpcDscnoFlgcd(newData.getRelpcDscnoFlgcd());
                    oldData.setDlncd(newData.getDlncd());
                    oldData.setPrsRelpcYn(newData.getPrsRelpcYn());
                    oldData.setCntadSeqno(newData.getCntadSeqno());
                    oldData.setCntadFlgcd(newData.getCntadFlgcd());
                    oldData.setRelpcName(newData.getRelpcName());
                    oldData.setRelpcNamePstcd(newData.getRelpcNamePstcd());
                    oldData.setRelpcRlecd(newData.getRelpcRlecd());
                    oldData.setIsrdt(newData.getIsrdt());
                    oldData.setPprRelpcSeqno(newData.getPprRelpcSeqno());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setSbdGrCtmno(newData.getSbdGrCtmno());
                    oldData.setGuPlyno(newData.getGuPlyno());
                    oldData.setGuFireLginId(newData.getGuFireLginId());
                    oldData.setOrelCd(newData.getOrelCd());
                    oldData.setSubCtmDscno(newData.getSubCtmDscno());
                    oldData.setFireMnNrdpsYn(newData.getFireMnNrdpsYn());
                    oldData.setInjrHspCvrYn(newData.getInjrHspCvrYn());
                    oldData.setInjrOtpCvrYn(newData.getInjrOtpCvrYn());
                    oldData.setDsasHspCvrYn(newData.getDsasHspCvrYn());
                    oldData.setDsasOtpCvrYn(newData.getDsasOtpCvrYn());
                    oldData.setGnrzHspCvrYn(newData.getGnrzHspCvrYn());
                    oldData.setGnrzOtpCvrYn(newData.getGnrzOtpCvrYn());
                    oldData.setSepCrCnYn(newData.getSepCrCnYn());
                    oldData.setRntcrYn(newData.getRntcrYn());
                    oldData.setFnOrgcd(newData.getFnOrgcd());
                    oldData.setPrpsFlgcd(newData.getPrpsFlgcd());
                    oldData.setPrmPymRt(newData.getPrmPymRt());
                    oldData.setHndpsYn(newData.getHndpsYn());
                    oldData.setNtnMrtmnYn(newData.getNtnMrtmnYn());
                    oldData.setBaSadpsYn(newData.getBaSadpsYn());
                    oldData.setCrtFlgcd(newData.getCrtFlgcd());
                    oldData.setDmosFlgcd(newData.getDmosFlgcd());
                    oldData.setIndpdMrtmnYn(newData.getIndpdMrtmnYn());
                    oldData.setDfltPtYn(newData.getDfltPtYn());
                    oldData.setDmrcy518InjdYn(newData.getDmrcy518InjdYn());
                    oldData.setNdtmRisAgreYn(newData.getNdtmRisAgreYn());
                    oldData.setPfbFlgcd(newData.getPfbFlgcd());
                    oldData.setNrdpsAgreYn(newData.getNrdpsAgreYn());
                    oldData.setUtRt(newData.getUtRt());
                    oldData.setMdCfcapEntpYn(newData.getMdCfcapEntpYn());
                    oldData.setSexcd(newData.getSexcd());
                    oldData.setJbcd(newData.getJbcd());
                    oldData.setJbChSeqno(newData.getJbChSeqno());
                    oldData.setAge(newData.getAge());
                    oldData.setWdgYn(newData.getWdgYn());
                    oldData.setLicSpecd(newData.getLicSpecd());
                    oldData.setLicno(newData.getLicno());
                    oldData.setLicCqdt(newData.getLicCqdt());
                    oldData.setClmCrrYn(newData.getClmCrrYn());
                    oldData.setDrveCrrYyct(newData.getDrveCrrYyct());
                    oldData.setDrveCrrMntct(newData.getDrveCrrMntct());
                    oldData.setDrvFlgcd(newData.getDrvFlgcd());
                    oldData.setHotStdt(newData.getHotStdt());
                    oldData.setHotClsdt(newData.getHotClsdt());
                    oldData.setHotOj(newData.getHotOj());
                    oldData.setRelpcScrInpYn(newData.getRelpcScrInpYn());
                    oldData.setIdntyCnfcKndcd(newData.getIdntyCnfcKndcd());
                    oldData.setIdntyCnfcEtInfo(newData.getIdntyCnfcEtInfo());
                    oldData.setIdntyCnfcNo(newData.getIdntyCnfcNo());
                    oldData.setIdntyCnfcIsdt(newData.getIdntyCnfcIsdt());
                    oldData.setIdntyCnfcIsOrgnm(newData.getIdntyCnfcIsOrgnm());
                    oldData.setIdntyCnfPdtnm(newData.getIdntyCnfPdtnm());
                    oldData.setIdntyCnfBnnm(newData.getIdntyCnfBnnm());
                    oldData.setRdchCrTpcd(newData.getRdchCrTpcd());
                    oldData.setCrUdrtkArecd(newData.getCrUdrtkArecd());
                    oldData.setPectSlMntrChncd(newData.getPectSlMntrChncd());
                    oldData.setCmMnUsCnAgryn(newData.getCmMnUsCnAgryn());
                    oldData.setPfbAstchAgrYn(newData.getPfbAstchAgrYn());
                    oldData.setPfbAstchRscd(newData.getPfbAstchRscd());
                    oldData.setIsCrrApprStrdt(newData.getIsCrrApprStrdt());
                    oldData.setIsCrrApprNddt(newData.getIsCrrApprNddt());
                    oldData.setMdSlrSadpsYn(newData.getMdSlrSadpsYn());
                    oldData.setFdWshBjGrdcd(newData.getFdWshBjGrdcd());
                    oldData.setOvsePytxDtyTpcd(newData.getOvsePytxDtyTpcd());
                    oldData.setMailRcvYn(newData.getMailRcvYn());
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
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("relpcSeqno"))
                            oldData.setRelpcSeqno(newData.getRelpcSeqno());
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("apStrdt"))
                            oldData.setApStrdt(newData.getApStrdt());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("valdNdsYn"))
                            oldData.setValdNdsYn(newData.getValdNdsYn());
                        if (strKey.equals("ndsApStrDthms"))
                            oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                        if (strKey.equals("ndsApNdDthms"))
                            oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("relpcTpcd"))
                            oldData.setRelpcTpcd(newData.getRelpcTpcd());
                        if (strKey.equals("relpcStcd"))
                            oldData.setRelpcStcd(newData.getRelpcStcd());
                        if (strKey.equals("stChdt"))
                            oldData.setStChdt(newData.getStChdt());
                        if (strKey.equals("hnglRelnm"))
                            oldData.setHnglRelnm(newData.getHnglRelnm());
                        if (strKey.equals("engRelnm"))
                            oldData.setEngRelnm(newData.getEngRelnm());
                        if (strKey.equals("ctmDscno"))
                            oldData.setCtmDscno(newData.getCtmDscno());
                        if (strKey.equals("relpcDscnoFlgcd"))
                            oldData.setRelpcDscnoFlgcd(newData.getRelpcDscnoFlgcd());
                        if (strKey.equals("dlncd"))
                            oldData.setDlncd(newData.getDlncd());
                        if (strKey.equals("prsRelpcYn"))
                            oldData.setPrsRelpcYn(newData.getPrsRelpcYn());
                        if (strKey.equals("cntadSeqno"))
                            oldData.setCntadSeqno(newData.getCntadSeqno());
                        if (strKey.equals("cntadFlgcd"))
                            oldData.setCntadFlgcd(newData.getCntadFlgcd());
                        if (strKey.equals("relpcName"))
                            oldData.setRelpcName(newData.getRelpcName());
                        if (strKey.equals("relpcNamePstcd"))
                            oldData.setRelpcNamePstcd(newData.getRelpcNamePstcd());
                        if (strKey.equals("relpcRlecd"))
                            oldData.setRelpcRlecd(newData.getRelpcRlecd());
                        if (strKey.equals("isrdt"))
                            oldData.setIsrdt(newData.getIsrdt());
                        if (strKey.equals("pprRelpcSeqno"))
                            oldData.setPprRelpcSeqno(newData.getPprRelpcSeqno());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("sbdGrCtmno"))
                            oldData.setSbdGrCtmno(newData.getSbdGrCtmno());
                        if (strKey.equals("guPlyno"))
                            oldData.setGuPlyno(newData.getGuPlyno());
                        if (strKey.equals("guFireLginId"))
                            oldData.setGuFireLginId(newData.getGuFireLginId());
                        if (strKey.equals("orelCd"))
                            oldData.setOrelCd(newData.getOrelCd());
                        if (strKey.equals("subCtmDscno"))
                            oldData.setSubCtmDscno(newData.getSubCtmDscno());
                        if (strKey.equals("fireMnNrdpsYn"))
                            oldData.setFireMnNrdpsYn(newData.getFireMnNrdpsYn());
                        if (strKey.equals("injrHspCvrYn"))
                            oldData.setInjrHspCvrYn(newData.getInjrHspCvrYn());
                        if (strKey.equals("injrOtpCvrYn"))
                            oldData.setInjrOtpCvrYn(newData.getInjrOtpCvrYn());
                        if (strKey.equals("dsasHspCvrYn"))
                            oldData.setDsasHspCvrYn(newData.getDsasHspCvrYn());
                        if (strKey.equals("dsasOtpCvrYn"))
                            oldData.setDsasOtpCvrYn(newData.getDsasOtpCvrYn());
                        if (strKey.equals("gnrzHspCvrYn"))
                            oldData.setGnrzHspCvrYn(newData.getGnrzHspCvrYn());
                        if (strKey.equals("gnrzOtpCvrYn"))
                            oldData.setGnrzOtpCvrYn(newData.getGnrzOtpCvrYn());
                        if (strKey.equals("sepCrCnYn"))
                            oldData.setSepCrCnYn(newData.getSepCrCnYn());
                        if (strKey.equals("rntcrYn"))
                            oldData.setRntcrYn(newData.getRntcrYn());
                        if (strKey.equals("fnOrgcd"))
                            oldData.setFnOrgcd(newData.getFnOrgcd());
                        if (strKey.equals("prpsFlgcd"))
                            oldData.setPrpsFlgcd(newData.getPrpsFlgcd());
                        if (strKey.equals("prmPymRt"))
                            oldData.setPrmPymRt(newData.getPrmPymRt());
                        if (strKey.equals("hndpsYn"))
                            oldData.setHndpsYn(newData.getHndpsYn());
                        if (strKey.equals("ntnMrtmnYn"))
                            oldData.setNtnMrtmnYn(newData.getNtnMrtmnYn());
                        if (strKey.equals("baSadpsYn"))
                            oldData.setBaSadpsYn(newData.getBaSadpsYn());
                        if (strKey.equals("crtFlgcd"))
                            oldData.setCrtFlgcd(newData.getCrtFlgcd());
                        if (strKey.equals("dmosFlgcd"))
                            oldData.setDmosFlgcd(newData.getDmosFlgcd());
                        if (strKey.equals("indpdMrtmnYn"))
                            oldData.setIndpdMrtmnYn(newData.getIndpdMrtmnYn());
                        if (strKey.equals("dfltPtYn"))
                            oldData.setDfltPtYn(newData.getDfltPtYn());
                        if (strKey.equals("dmrcy518InjdYn"))
                            oldData.setDmrcy518InjdYn(newData.getDmrcy518InjdYn());
                        if (strKey.equals("ndtmRisAgreYn"))
                            oldData.setNdtmRisAgreYn(newData.getNdtmRisAgreYn());
                        if (strKey.equals("pfbFlgcd"))
                            oldData.setPfbFlgcd(newData.getPfbFlgcd());
                        if (strKey.equals("nrdpsAgreYn"))
                            oldData.setNrdpsAgreYn(newData.getNrdpsAgreYn());
                        if (strKey.equals("utRt"))
                            oldData.setUtRt(newData.getUtRt());
                        if (strKey.equals("mdCfcapEntpYn"))
                            oldData.setMdCfcapEntpYn(newData.getMdCfcapEntpYn());
                        if (strKey.equals("sexcd"))
                            oldData.setSexcd(newData.getSexcd());
                        if (strKey.equals("jbcd"))
                            oldData.setJbcd(newData.getJbcd());
                        if (strKey.equals("jbChSeqno"))
                            oldData.setJbChSeqno(newData.getJbChSeqno());
                        if (strKey.equals("age"))
                            oldData.setAge(newData.getAge());
                        if (strKey.equals("wdgYn"))
                            oldData.setWdgYn(newData.getWdgYn());
                        if (strKey.equals("licSpecd"))
                            oldData.setLicSpecd(newData.getLicSpecd());
                        if (strKey.equals("licno"))
                            oldData.setLicno(newData.getLicno());
                        if (strKey.equals("licCqdt"))
                            oldData.setLicCqdt(newData.getLicCqdt());
                        if (strKey.equals("clmCrrYn"))
                            oldData.setClmCrrYn(newData.getClmCrrYn());
                        if (strKey.equals("drveCrrYyct"))
                            oldData.setDrveCrrYyct(newData.getDrveCrrYyct());
                        if (strKey.equals("drveCrrMntct"))
                            oldData.setDrveCrrMntct(newData.getDrveCrrMntct());
                        if (strKey.equals("drvFlgcd"))
                            oldData.setDrvFlgcd(newData.getDrvFlgcd());
                        if (strKey.equals("hotStdt"))
                            oldData.setHotStdt(newData.getHotStdt());
                        if (strKey.equals("hotClsdt"))
                            oldData.setHotClsdt(newData.getHotClsdt());
                        if (strKey.equals("hotOj"))
                            oldData.setHotOj(newData.getHotOj());
                        if (strKey.equals("relpcScrInpYn"))
                            oldData.setRelpcScrInpYn(newData.getRelpcScrInpYn());
                        if (strKey.equals("idntyCnfcKndcd"))
                            oldData.setIdntyCnfcKndcd(newData.getIdntyCnfcKndcd());
                        if (strKey.equals("idntyCnfcEtInfo"))
                            oldData.setIdntyCnfcEtInfo(newData.getIdntyCnfcEtInfo());
                        if (strKey.equals("idntyCnfcNo"))
                            oldData.setIdntyCnfcNo(newData.getIdntyCnfcNo());
                        if (strKey.equals("idntyCnfcIsdt"))
                            oldData.setIdntyCnfcIsdt(newData.getIdntyCnfcIsdt());
                        if (strKey.equals("idntyCnfcIsOrgnm"))
                            oldData.setIdntyCnfcIsOrgnm(newData.getIdntyCnfcIsOrgnm());
                        if (strKey.equals("idntyCnfPdtnm"))
                            oldData.setIdntyCnfPdtnm(newData.getIdntyCnfPdtnm());
                        if (strKey.equals("idntyCnfBnnm"))
                            oldData.setIdntyCnfBnnm(newData.getIdntyCnfBnnm());
                        if (strKey.equals("rdchCrTpcd"))
                            oldData.setRdchCrTpcd(newData.getRdchCrTpcd());
                        if (strKey.equals("crUdrtkArecd"))
                            oldData.setCrUdrtkArecd(newData.getCrUdrtkArecd());
                        if (strKey.equals("pectSlMntrChncd"))
                            oldData.setPectSlMntrChncd(newData.getPectSlMntrChncd());
                        if (strKey.equals("cmMnUsCnAgryn"))
                            oldData.setCmMnUsCnAgryn(newData.getCmMnUsCnAgryn());
                        if (strKey.equals("pfbAstchAgrYn"))
                            oldData.setPfbAstchAgrYn(newData.getPfbAstchAgrYn());
                        if (strKey.equals("pfbAstchRscd"))
                            oldData.setPfbAstchRscd(newData.getPfbAstchRscd());
                        if (strKey.equals("isCrrApprStrdt"))
                            oldData.setIsCrrApprStrdt(newData.getIsCrrApprStrdt());
                        if (strKey.equals("isCrrApprNddt"))
                            oldData.setIsCrrApprNddt(newData.getIsCrrApprNddt());
                        if (strKey.equals("mdSlrSadpsYn"))
                            oldData.setMdSlrSadpsYn(newData.getMdSlrSadpsYn());
                        if (strKey.equals("fdWshBjGrdcd"))
                            oldData.setFdWshBjGrdcd(newData.getFdWshBjGrdcd());
                        if (strKey.equals("ovsePytxDtyTpcd"))
                            oldData.setOvsePytxDtyTpcd(newData.getOvsePytxDtyTpcd());
                        if (strKey.equals("mailRcvYn"))
                            oldData.setMailRcvYn(newData.getMailRcvYn());
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
