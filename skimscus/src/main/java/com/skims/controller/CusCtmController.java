/**
 * CusCtm Entity Controller 클래스
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
import com.skims.domain.entity.CusCtm;
import com.skims.domain.repository.CusCtmRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusCtm 고객 Controller")
@Slf4j
public class CusCtmController {

    @Autowired
    CusCtmRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "고객 전체조회" , summary = "고객 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cusctms", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cusctms")
    public ResponseEntity<Page<CusCtm>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "고객 Key조회" , description = "고객 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusCtm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtm.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtm not found", content = @Content) })
    @GetMapping("/cusctms/{aid}")
    public ResponseEntity<CusCtm> getById(@PathVariable("aid") Long aid) {
        Optional<CusCtm> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "고객 등록" , description = "고객 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusCtm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cusctms")
    ResponseEntity<CusCtm> postData(@RequestBody CusCtm newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "고객 수정" , description = "고객 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtm.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtm not found", content = @Content) })
    @PutMapping("/cusctms/{aid}")
    ResponseEntity<CusCtm> putData(@RequestBody CusCtm newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "고객 수정" , description = "고객 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtm.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtm not found", content = @Content) })
	@PatchMapping("/cusctms/{aid}")
    ResponseEntity<CusCtm> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        CusCtm newData = mapper.convertValue(newMap, CusCtm.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "ctmDscno" : oldData.setCtmDscno(newData.getCtmDscno()); break;
						    case "hnglCtmnm" : oldData.setHnglCtmnm(newData.getHnglCtmnm()); break;
						    case "engCtmnm" : oldData.setEngCtmnm(newData.getEngCtmnm()); break;
						    case "chncCtmnm" : oldData.setChncCtmnm(newData.getChncCtmnm()); break;
						    case "hnglAbrvCtmnm" : oldData.setHnglAbrvCtmnm(newData.getHnglAbrvCtmnm()); break;
						    case "engAbrvCtmnm" : oldData.setEngAbrvCtmnm(newData.getEngAbrvCtmnm()); break;
						    case "ctmTpcd" : oldData.setCtmTpcd(newData.getCtmTpcd()); break;
						    case "crOwnYn" : oldData.setCrOwnYn(newData.getCrOwnYn()); break;
						    case "drveYn" : oldData.setDrveYn(newData.getDrveYn()); break;
						    case "ctmDatAcqPtncd" : oldData.setCtmDatAcqPtncd(newData.getCtmDatAcqPtncd()); break;
						    case "frgDlplFlgcd" : oldData.setFrgDlplFlgcd(newData.getFrgDlplFlgcd()); break;
						    case "fmllvCtmYn" : oldData.setFmllvCtmYn(newData.getFmllvCtmYn()); break;
						    case "hmpagAdr" : oldData.setHmpagAdr(newData.getHmpagAdr()); break;
						    case "cybmy" : oldData.setCybmy(newData.getCybmy()); break;
						    case "smsRcvYn" : oldData.setSmsRcvYn(newData.getSmsRcvYn()); break;
						    case "rlnmCtfctFilePth" : oldData.setRlnmCtfctFilePth(newData.getRlnmCtfctFilePth()); break;
						    case "cntrtStRqYn" : oldData.setCntrtStRqYn(newData.getCntrtStRqYn()); break;
						    case "tlRcvYn" : oldData.setTlRcvYn(newData.getTlRcvYn()); break;
						    case "crdifUtlAgreYn" : oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn()); break;
						    case "mailRcvYn" : oldData.setMailRcvYn(newData.getMailRcvYn()); break;
						    case "ntcltMailRcvYn" : oldData.setNtcltMailRcvYn(newData.getNtcltMailRcvYn()); break;
						    case "bzfmlSmsLmitYn" : oldData.setBzfmlSmsLmitYn(newData.getBzfmlSmsLmitYn()); break;
						    case "rgbrdFlgcd" : oldData.setRgbrdFlgcd(newData.getRgbrdFlgcd()); break;
						    case "mntrBkcd" : oldData.setMntrBkcd(newData.getMntrBkcd()); break;
						    case "mntrBkBrcd" : oldData.setMntrBkBrcd(newData.getMntrBkBrcd()); break;
						    case "etAdrFlgcd" : oldData.setEtAdrFlgcd(newData.getEtAdrFlgcd()); break;
						    case "cnnCmpcd" : oldData.setCnnCmpcd(newData.getCnnCmpcd()); break;
						    case "ctmDscnoFlgcd" : oldData.setCtmDscnoFlgcd(newData.getCtmDscnoFlgcd()); break;
						    case "spclRelCtmYn" : oldData.setSpclRelCtmYn(newData.getSpclRelCtmYn()); break;
						    case "pdtRsno" : oldData.setPdtRsno(newData.getPdtRsno()); break;
						    case "pdtnm" : oldData.setPdtnm(newData.getPdtnm()); break;
						    case "indpdMrtmnYn" : oldData.setIndpdMrtmnYn(newData.getIndpdMrtmnYn()); break;
						    case "dfltPtYn" : oldData.setDfltPtYn(newData.getDfltPtYn()); break;
						    case "dmrcy518InjdYn" : oldData.setDmrcy518InjdYn(newData.getDmrcy518InjdYn()); break;
						    case "rltnBzwplCd" : oldData.setRltnBzwplCd(newData.getRltnBzwplCd()); break;
						    case "rltnBzwplSeqno" : oldData.setRltnBzwplSeqno(newData.getRltnBzwplSeqno()); break;
						    case "psnInfoCvapYn" : oldData.setPsnInfoCvapYn(newData.getPsnInfoCvapYn()); break;
						    case "rcmnm" : oldData.setRcmnm(newData.getRcmnm()); break;
						    case "rcmRsno" : oldData.setRcmRsno(newData.getRcmRsno()); break;
						    case "dherRcmRelcd" : oldData.setDherRcmRelcd(newData.getDherRcmRelcd()); break;
						    case "bzpsTpcd" : oldData.setBzpsTpcd(newData.getBzpsTpcd()); break;
						    case "ntpSclcd" : oldData.setNtpSclcd(newData.getNtpSclcd()); break;
						    case "bzpsBstnm" : oldData.setBzpsBstnm(newData.getBzpsBstnm()); break;
						    case "bzpsImnm" : oldData.setBzpsImnm(newData.getBzpsImnm()); break;
						    case "empct" : oldData.setEmpct(newData.getEmpct()); break;
						    case "slamt" : oldData.setSlamt(newData.getSlamt()); break;
						    case "capt" : oldData.setCapt(newData.getCapt()); break;
						    case "fnddt" : oldData.setFnddt(newData.getFnddt()); break;
						    case "clodt" : oldData.setClodt(newData.getClodt()); break;
						    case "dlncd" : oldData.setDlncd(newData.getDlncd()); break;
						    case "bzwplOwnYn" : oldData.setBzwplOwnYn(newData.getBzwplOwnYn()); break;
						    case "mnPdtOutPdtct" : oldData.setMnPdtOutPdtct(newData.getMnPdtOutPdtct()); break;
						    case "bdlTfPypsbYn" : oldData.setBdlTfPypsbYn(newData.getBdlTfPypsbYn()); break;
						    case "stdIndCsfcd" : oldData.setStdIndCsfcd(newData.getStdIndCsfcd()); break;
						    case "ntpTycd" : oldData.setNtpTycd(newData.getNtpTycd()); break;
						    case "lststFlgcd" : oldData.setLststFlgcd(newData.getLststFlgcd()); break;
						    case "crpno" : oldData.setCrpno(newData.getCrpno()); break;
						    case "clgmmFlgcd" : oldData.setClgmmFlgcd(newData.getClgmmFlgcd()); break;
						    case "grFlgcd" : oldData.setGrFlgcd(newData.getGrFlgcd()); break;
						    case "grTpcd" : oldData.setGrTpcd(newData.getGrTpcd()); break;
						    case "bzmno" : oldData.setBzmno(newData.getBzmno()); break;
						    case "crpTpcd" : oldData.setCrpTpcd(newData.getCrpTpcd()); break;
						    case "wdgYn" : oldData.setWdgYn(newData.getWdgYn()); break;
						    case "relgnCd" : oldData.setRelgnCd(newData.getRelgnCd()); break;
						    case "fnlEdbcd" : oldData.setFnlEdbcd(newData.getFnlEdbcd()); break;
						    case "hndpsYn" : oldData.setHndpsYn(newData.getHndpsYn()); break;
						    case "hndGrdcd" : oldData.setHndGrdcd(newData.getHndGrdcd()); break;
						    case "hndGrdValdTrm" : oldData.setHndGrdValdTrm(newData.getHndGrdValdTrm()); break;
						    case "hndnm" : oldData.setHndnm(newData.getHndnm()); break;
						    case "hndGrdpaCd" : oldData.setHndGrdpaCd(newData.getHndGrdpaCd()); break;
						    case "ntnMrtmnYn" : oldData.setNtnMrtmnYn(newData.getNtnMrtmnYn()); break;
						    case "rwxno" : oldData.setRwxno(newData.getRwxno()); break;
						    case "btplcCd" : oldData.setBtplcCd(newData.getBtplcCd()); break;
						    case "grduSch" : oldData.setGrduSch(newData.getGrduSch()); break;
						    case "slcrFlgcd" : oldData.setSlcrFlgcd(newData.getSlcrFlgcd()); break;
						    case "rlBrtyrMndy" : oldData.setRlBrtyrMndy(newData.getRlBrtyrMndy()); break;
						    case "rhTycd" : oldData.setRhTycd(newData.getRhTycd()); break;
						    case "bldtyCd" : oldData.setBldtyCd(newData.getBldtyCd()); break;
						    case "wpcnm" : oldData.setWpcnm(newData.getWpcnm()); break;
						    case "depnm" : oldData.setDepnm(newData.getDepnm()); break;
						    case "ptn" : oldData.setPtn(newData.getPtn()); break;
						    case "bdt" : oldData.setBdt(newData.getBdt()); break;
						    case "bnnm" : oldData.setBnnm(newData.getBnnm()); break;
						    case "jbDt" : oldData.setJbDt(newData.getJbDt()); break;
						    case "empTycd" : oldData.setEmpTycd(newData.getEmpTycd()); break;
						    case "wrkArecd" : oldData.setWrkArecd(newData.getWrkArecd()); break;
						    case "sexcd" : oldData.setSexcd(newData.getSexcd()); break;
						    case "baLifeSadpsYn" : oldData.setBaLifeSadpsYn(newData.getBaLifeSadpsYn()); break;
						    case "smokYn" : oldData.setSmokYn(newData.getSmokYn()); break;
						    case "deYn" : oldData.setDeYn(newData.getDeYn()); break;
						    case "htn" : oldData.setHtn(newData.getHtn()); break;
						    case "wotYn" : oldData.setWotYn(newData.getWotYn()); break;
						    case "frgRlnmCtfctFlgcd" : oldData.setFrgRlnmCtfctFlgcd(newData.getFrgRlnmCtfctFlgcd()); break;
						    case "ntlcd" : oldData.setNtlcd(newData.getNtlcd()); break;
						    case "pspno" : oldData.setPspno(newData.getPspno()); break;
						    case "jbChSeqno" : oldData.setJbChSeqno(newData.getJbChSeqno()); break;
						    case "jbcd" : oldData.setJbcd(newData.getJbcd()); break;
						    case "injrRnkcd" : oldData.setInjrRnkcd(newData.getInjrRnkcd()); break;
						    case "onwJbCnfFlgcd" : oldData.setOnwJbCnfFlgcd(newData.getOnwJbCnfFlgcd()); break;
						    case "rltnBzwplPstdt" : oldData.setRltnBzwplPstdt(newData.getRltnBzwplPstdt()); break;
						    case "rltnBzwplRgtrFlgcd" : oldData.setRltnBzwplRgtrFlgcd(newData.getRltnBzwplRgtrFlgcd()); break;
						    case "rlnmCnfFlgcd" : oldData.setRlnmCnfFlgcd(newData.getRlnmCnfFlgcd()); break;
						    case "cnvHpTmstCd" : oldData.setCnvHpTmstCd(newData.getCnvHpTmstCd()); break;
						    case "bornYr" : oldData.setBornYr(newData.getBornYr()); break;
						    case "bornMndy" : oldData.setBornMndy(newData.getBornMndy()); break;
						    case "rlBornMndy" : oldData.setRlBornMndy(newData.getRlBornMndy()); break;
						    case "mktgAgreYn" : oldData.setMktgAgreYn(newData.getMktgAgreYn()); break;
						    case "gdintCrdioAgreYn" : oldData.setGdintCrdioAgreYn(newData.getGdintCrdioAgreYn()); break;
						    case "donclYn" : oldData.setDonclYn(newData.getDonclYn()); break;
						    case "dmRcvYn" : oldData.setDmRcvYn(newData.getDmRcvYn()); break;
						    case "mktgSmsRcvYn" : oldData.setMktgSmsRcvYn(newData.getMktgSmsRcvYn()); break;
						    case "mktgTlRcvYn" : oldData.setMktgTlRcvYn(newData.getMktgTlRcvYn()); break;
						    case "mktgMailRcvYn" : oldData.setMktgMailRcvYn(newData.getMktgMailRcvYn()); break;
						    case "mktgDmRcvYn" : oldData.setMktgDmRcvYn(newData.getMktgDmRcvYn()); break;
						    case "cerOfAgreYn" : oldData.setCerOfAgreYn(newData.getCerOfAgreYn()); break;
						    case "drveLicno" : oldData.setDrveLicno(newData.getDrveLicno()); break;
						    case "carno" : oldData.setCarno(newData.getCarno()); break;
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
	
    // @Operation(summary = "고객 삭제" , description = "고객 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusCtm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cusctms/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
