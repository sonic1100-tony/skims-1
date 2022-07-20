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

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setCtmDscno(newData.getCtmDscno());
                    oldData.setHnglCtmnm(newData.getHnglCtmnm());
                    oldData.setEngCtmnm(newData.getEngCtmnm());
                    oldData.setChncCtmnm(newData.getChncCtmnm());
                    oldData.setHnglAbrvCtmnm(newData.getHnglAbrvCtmnm());
                    oldData.setEngAbrvCtmnm(newData.getEngAbrvCtmnm());
                    oldData.setCtmTpcd(newData.getCtmTpcd());
                    oldData.setCrOwnYn(newData.getCrOwnYn());
                    oldData.setDrveYn(newData.getDrveYn());
                    oldData.setCtmDatAcqPtncd(newData.getCtmDatAcqPtncd());
                    oldData.setFrgDlplFlgcd(newData.getFrgDlplFlgcd());
                    oldData.setFmllvCtmYn(newData.getFmllvCtmYn());
                    oldData.setHmpagAdr(newData.getHmpagAdr());
                    oldData.setCybmy(newData.getCybmy());
                    oldData.setSmsRcvYn(newData.getSmsRcvYn());
                    oldData.setRlnmCtfctFilePth(newData.getRlnmCtfctFilePth());
                    oldData.setCntrtStRqYn(newData.getCntrtStRqYn());
                    oldData.setTlRcvYn(newData.getTlRcvYn());
                    oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn());
                    oldData.setMailRcvYn(newData.getMailRcvYn());
                    oldData.setNtcltMailRcvYn(newData.getNtcltMailRcvYn());
                    oldData.setBzfmlSmsLmitYn(newData.getBzfmlSmsLmitYn());
                    oldData.setRgbrdFlgcd(newData.getRgbrdFlgcd());
                    oldData.setMntrBkcd(newData.getMntrBkcd());
                    oldData.setMntrBkBrcd(newData.getMntrBkBrcd());
                    oldData.setEtAdrFlgcd(newData.getEtAdrFlgcd());
                    oldData.setCnnCmpcd(newData.getCnnCmpcd());
                    oldData.setCtmDscnoFlgcd(newData.getCtmDscnoFlgcd());
                    oldData.setSpclRelCtmYn(newData.getSpclRelCtmYn());
                    oldData.setPdtRsno(newData.getPdtRsno());
                    oldData.setPdtnm(newData.getPdtnm());
                    oldData.setIndpdMrtmnYn(newData.getIndpdMrtmnYn());
                    oldData.setDfltPtYn(newData.getDfltPtYn());
                    oldData.setDmrcy518InjdYn(newData.getDmrcy518InjdYn());
                    oldData.setRltnBzwplCd(newData.getRltnBzwplCd());
                    oldData.setRltnBzwplSeqno(newData.getRltnBzwplSeqno());
                    oldData.setPsnInfoCvapYn(newData.getPsnInfoCvapYn());
                    oldData.setRcmnm(newData.getRcmnm());
                    oldData.setRcmRsno(newData.getRcmRsno());
                    oldData.setDherRcmRelcd(newData.getDherRcmRelcd());
                    oldData.setBzpsTpcd(newData.getBzpsTpcd());
                    oldData.setNtpSclcd(newData.getNtpSclcd());
                    oldData.setBzpsBstnm(newData.getBzpsBstnm());
                    oldData.setBzpsImnm(newData.getBzpsImnm());
                    oldData.setEmpct(newData.getEmpct());
                    oldData.setSlamt(newData.getSlamt());
                    oldData.setCapt(newData.getCapt());
                    oldData.setFnddt(newData.getFnddt());
                    oldData.setClodt(newData.getClodt());
                    oldData.setDlncd(newData.getDlncd());
                    oldData.setBzwplOwnYn(newData.getBzwplOwnYn());
                    oldData.setMnPdtOutPdtct(newData.getMnPdtOutPdtct());
                    oldData.setBdlTfPypsbYn(newData.getBdlTfPypsbYn());
                    oldData.setStdIndCsfcd(newData.getStdIndCsfcd());
                    oldData.setNtpTycd(newData.getNtpTycd());
                    oldData.setLststFlgcd(newData.getLststFlgcd());
                    oldData.setCrpno(newData.getCrpno());
                    oldData.setClgmmFlgcd(newData.getClgmmFlgcd());
                    oldData.setGrFlgcd(newData.getGrFlgcd());
                    oldData.setGrTpcd(newData.getGrTpcd());
                    oldData.setBzmno(newData.getBzmno());
                    oldData.setCrpTpcd(newData.getCrpTpcd());
                    oldData.setWdgYn(newData.getWdgYn());
                    oldData.setRelgnCd(newData.getRelgnCd());
                    oldData.setFnlEdbcd(newData.getFnlEdbcd());
                    oldData.setHndpsYn(newData.getHndpsYn());
                    oldData.setHndGrdcd(newData.getHndGrdcd());
                    oldData.setHndGrdValdTrm(newData.getHndGrdValdTrm());
                    oldData.setHndnm(newData.getHndnm());
                    oldData.setHndGrdpaCd(newData.getHndGrdpaCd());
                    oldData.setNtnMrtmnYn(newData.getNtnMrtmnYn());
                    oldData.setRwxno(newData.getRwxno());
                    oldData.setBtplcCd(newData.getBtplcCd());
                    oldData.setGrduSch(newData.getGrduSch());
                    oldData.setSlcrFlgcd(newData.getSlcrFlgcd());
                    oldData.setRlBrtyrMndy(newData.getRlBrtyrMndy());
                    oldData.setRhTycd(newData.getRhTycd());
                    oldData.setBldtyCd(newData.getBldtyCd());
                    oldData.setWpcnm(newData.getWpcnm());
                    oldData.setDepnm(newData.getDepnm());
                    oldData.setPtn(newData.getPtn());
                    oldData.setBdt(newData.getBdt());
                    oldData.setBnnm(newData.getBnnm());
                    oldData.setJbDt(newData.getJbDt());
                    oldData.setEmpTycd(newData.getEmpTycd());
                    oldData.setWrkArecd(newData.getWrkArecd());
                    oldData.setSexcd(newData.getSexcd());
                    oldData.setBaLifeSadpsYn(newData.getBaLifeSadpsYn());
                    oldData.setSmokYn(newData.getSmokYn());
                    oldData.setDeYn(newData.getDeYn());
                    oldData.setHtn(newData.getHtn());
                    oldData.setWotYn(newData.getWotYn());
                    oldData.setFrgRlnmCtfctFlgcd(newData.getFrgRlnmCtfctFlgcd());
                    oldData.setNtlcd(newData.getNtlcd());
                    oldData.setPspno(newData.getPspno());
                    oldData.setJbChSeqno(newData.getJbChSeqno());
                    oldData.setJbcd(newData.getJbcd());
                    oldData.setInjrRnkcd(newData.getInjrRnkcd());
                    oldData.setOnwJbCnfFlgcd(newData.getOnwJbCnfFlgcd());
                    oldData.setRltnBzwplPstdt(newData.getRltnBzwplPstdt());
                    oldData.setRltnBzwplRgtrFlgcd(newData.getRltnBzwplRgtrFlgcd());
                    oldData.setRlnmCnfFlgcd(newData.getRlnmCnfFlgcd());
                    oldData.setCnvHpTmstCd(newData.getCnvHpTmstCd());
                    oldData.setBornYr(newData.getBornYr());
                    oldData.setBornMndy(newData.getBornMndy());
                    oldData.setRlBornMndy(newData.getRlBornMndy());
                    oldData.setMktgAgreYn(newData.getMktgAgreYn());
                    oldData.setGdintCrdioAgreYn(newData.getGdintCrdioAgreYn());
                    oldData.setDonclYn(newData.getDonclYn());
                    oldData.setDmRcvYn(newData.getDmRcvYn());
                    oldData.setMktgSmsRcvYn(newData.getMktgSmsRcvYn());
                    oldData.setMktgTlRcvYn(newData.getMktgTlRcvYn());
                    oldData.setMktgMailRcvYn(newData.getMktgMailRcvYn());
                    oldData.setMktgDmRcvYn(newData.getMktgDmRcvYn());
                    oldData.setCerOfAgreYn(newData.getCerOfAgreYn());
                    oldData.setDrveLicno(newData.getDrveLicno());
                    oldData.setCarno(newData.getCarno());
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
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("ctmDscno"))
                            oldData.setCtmDscno(newData.getCtmDscno());
                        if (strKey.equals("hnglCtmnm"))
                            oldData.setHnglCtmnm(newData.getHnglCtmnm());
                        if (strKey.equals("engCtmnm"))
                            oldData.setEngCtmnm(newData.getEngCtmnm());
                        if (strKey.equals("chncCtmnm"))
                            oldData.setChncCtmnm(newData.getChncCtmnm());
                        if (strKey.equals("hnglAbrvCtmnm"))
                            oldData.setHnglAbrvCtmnm(newData.getHnglAbrvCtmnm());
                        if (strKey.equals("engAbrvCtmnm"))
                            oldData.setEngAbrvCtmnm(newData.getEngAbrvCtmnm());
                        if (strKey.equals("ctmTpcd"))
                            oldData.setCtmTpcd(newData.getCtmTpcd());
                        if (strKey.equals("crOwnYn"))
                            oldData.setCrOwnYn(newData.getCrOwnYn());
                        if (strKey.equals("drveYn"))
                            oldData.setDrveYn(newData.getDrveYn());
                        if (strKey.equals("ctmDatAcqPtncd"))
                            oldData.setCtmDatAcqPtncd(newData.getCtmDatAcqPtncd());
                        if (strKey.equals("frgDlplFlgcd"))
                            oldData.setFrgDlplFlgcd(newData.getFrgDlplFlgcd());
                        if (strKey.equals("fmllvCtmYn"))
                            oldData.setFmllvCtmYn(newData.getFmllvCtmYn());
                        if (strKey.equals("hmpagAdr"))
                            oldData.setHmpagAdr(newData.getHmpagAdr());
                        if (strKey.equals("cybmy"))
                            oldData.setCybmy(newData.getCybmy());
                        if (strKey.equals("smsRcvYn"))
                            oldData.setSmsRcvYn(newData.getSmsRcvYn());
                        if (strKey.equals("rlnmCtfctFilePth"))
                            oldData.setRlnmCtfctFilePth(newData.getRlnmCtfctFilePth());
                        if (strKey.equals("cntrtStRqYn"))
                            oldData.setCntrtStRqYn(newData.getCntrtStRqYn());
                        if (strKey.equals("tlRcvYn"))
                            oldData.setTlRcvYn(newData.getTlRcvYn());
                        if (strKey.equals("crdifUtlAgreYn"))
                            oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn());
                        if (strKey.equals("mailRcvYn"))
                            oldData.setMailRcvYn(newData.getMailRcvYn());
                        if (strKey.equals("ntcltMailRcvYn"))
                            oldData.setNtcltMailRcvYn(newData.getNtcltMailRcvYn());
                        if (strKey.equals("bzfmlSmsLmitYn"))
                            oldData.setBzfmlSmsLmitYn(newData.getBzfmlSmsLmitYn());
                        if (strKey.equals("rgbrdFlgcd"))
                            oldData.setRgbrdFlgcd(newData.getRgbrdFlgcd());
                        if (strKey.equals("mntrBkcd"))
                            oldData.setMntrBkcd(newData.getMntrBkcd());
                        if (strKey.equals("mntrBkBrcd"))
                            oldData.setMntrBkBrcd(newData.getMntrBkBrcd());
                        if (strKey.equals("etAdrFlgcd"))
                            oldData.setEtAdrFlgcd(newData.getEtAdrFlgcd());
                        if (strKey.equals("cnnCmpcd"))
                            oldData.setCnnCmpcd(newData.getCnnCmpcd());
                        if (strKey.equals("ctmDscnoFlgcd"))
                            oldData.setCtmDscnoFlgcd(newData.getCtmDscnoFlgcd());
                        if (strKey.equals("spclRelCtmYn"))
                            oldData.setSpclRelCtmYn(newData.getSpclRelCtmYn());
                        if (strKey.equals("pdtRsno"))
                            oldData.setPdtRsno(newData.getPdtRsno());
                        if (strKey.equals("pdtnm"))
                            oldData.setPdtnm(newData.getPdtnm());
                        if (strKey.equals("indpdMrtmnYn"))
                            oldData.setIndpdMrtmnYn(newData.getIndpdMrtmnYn());
                        if (strKey.equals("dfltPtYn"))
                            oldData.setDfltPtYn(newData.getDfltPtYn());
                        if (strKey.equals("dmrcy518InjdYn"))
                            oldData.setDmrcy518InjdYn(newData.getDmrcy518InjdYn());
                        if (strKey.equals("rltnBzwplCd"))
                            oldData.setRltnBzwplCd(newData.getRltnBzwplCd());
                        if (strKey.equals("rltnBzwplSeqno"))
                            oldData.setRltnBzwplSeqno(newData.getRltnBzwplSeqno());
                        if (strKey.equals("psnInfoCvapYn"))
                            oldData.setPsnInfoCvapYn(newData.getPsnInfoCvapYn());
                        if (strKey.equals("rcmnm"))
                            oldData.setRcmnm(newData.getRcmnm());
                        if (strKey.equals("rcmRsno"))
                            oldData.setRcmRsno(newData.getRcmRsno());
                        if (strKey.equals("dherRcmRelcd"))
                            oldData.setDherRcmRelcd(newData.getDherRcmRelcd());
                        if (strKey.equals("bzpsTpcd"))
                            oldData.setBzpsTpcd(newData.getBzpsTpcd());
                        if (strKey.equals("ntpSclcd"))
                            oldData.setNtpSclcd(newData.getNtpSclcd());
                        if (strKey.equals("bzpsBstnm"))
                            oldData.setBzpsBstnm(newData.getBzpsBstnm());
                        if (strKey.equals("bzpsImnm"))
                            oldData.setBzpsImnm(newData.getBzpsImnm());
                        if (strKey.equals("empct"))
                            oldData.setEmpct(newData.getEmpct());
                        if (strKey.equals("slamt"))
                            oldData.setSlamt(newData.getSlamt());
                        if (strKey.equals("capt"))
                            oldData.setCapt(newData.getCapt());
                        if (strKey.equals("fnddt"))
                            oldData.setFnddt(newData.getFnddt());
                        if (strKey.equals("clodt"))
                            oldData.setClodt(newData.getClodt());
                        if (strKey.equals("dlncd"))
                            oldData.setDlncd(newData.getDlncd());
                        if (strKey.equals("bzwplOwnYn"))
                            oldData.setBzwplOwnYn(newData.getBzwplOwnYn());
                        if (strKey.equals("mnPdtOutPdtct"))
                            oldData.setMnPdtOutPdtct(newData.getMnPdtOutPdtct());
                        if (strKey.equals("bdlTfPypsbYn"))
                            oldData.setBdlTfPypsbYn(newData.getBdlTfPypsbYn());
                        if (strKey.equals("stdIndCsfcd"))
                            oldData.setStdIndCsfcd(newData.getStdIndCsfcd());
                        if (strKey.equals("ntpTycd"))
                            oldData.setNtpTycd(newData.getNtpTycd());
                        if (strKey.equals("lststFlgcd"))
                            oldData.setLststFlgcd(newData.getLststFlgcd());
                        if (strKey.equals("crpno"))
                            oldData.setCrpno(newData.getCrpno());
                        if (strKey.equals("clgmmFlgcd"))
                            oldData.setClgmmFlgcd(newData.getClgmmFlgcd());
                        if (strKey.equals("grFlgcd"))
                            oldData.setGrFlgcd(newData.getGrFlgcd());
                        if (strKey.equals("grTpcd"))
                            oldData.setGrTpcd(newData.getGrTpcd());
                        if (strKey.equals("bzmno"))
                            oldData.setBzmno(newData.getBzmno());
                        if (strKey.equals("crpTpcd"))
                            oldData.setCrpTpcd(newData.getCrpTpcd());
                        if (strKey.equals("wdgYn"))
                            oldData.setWdgYn(newData.getWdgYn());
                        if (strKey.equals("relgnCd"))
                            oldData.setRelgnCd(newData.getRelgnCd());
                        if (strKey.equals("fnlEdbcd"))
                            oldData.setFnlEdbcd(newData.getFnlEdbcd());
                        if (strKey.equals("hndpsYn"))
                            oldData.setHndpsYn(newData.getHndpsYn());
                        if (strKey.equals("hndGrdcd"))
                            oldData.setHndGrdcd(newData.getHndGrdcd());
                        if (strKey.equals("hndGrdValdTrm"))
                            oldData.setHndGrdValdTrm(newData.getHndGrdValdTrm());
                        if (strKey.equals("hndnm"))
                            oldData.setHndnm(newData.getHndnm());
                        if (strKey.equals("hndGrdpaCd"))
                            oldData.setHndGrdpaCd(newData.getHndGrdpaCd());
                        if (strKey.equals("ntnMrtmnYn"))
                            oldData.setNtnMrtmnYn(newData.getNtnMrtmnYn());
                        if (strKey.equals("rwxno"))
                            oldData.setRwxno(newData.getRwxno());
                        if (strKey.equals("btplcCd"))
                            oldData.setBtplcCd(newData.getBtplcCd());
                        if (strKey.equals("grduSch"))
                            oldData.setGrduSch(newData.getGrduSch());
                        if (strKey.equals("slcrFlgcd"))
                            oldData.setSlcrFlgcd(newData.getSlcrFlgcd());
                        if (strKey.equals("rlBrtyrMndy"))
                            oldData.setRlBrtyrMndy(newData.getRlBrtyrMndy());
                        if (strKey.equals("rhTycd"))
                            oldData.setRhTycd(newData.getRhTycd());
                        if (strKey.equals("bldtyCd"))
                            oldData.setBldtyCd(newData.getBldtyCd());
                        if (strKey.equals("wpcnm"))
                            oldData.setWpcnm(newData.getWpcnm());
                        if (strKey.equals("depnm"))
                            oldData.setDepnm(newData.getDepnm());
                        if (strKey.equals("ptn"))
                            oldData.setPtn(newData.getPtn());
                        if (strKey.equals("bdt"))
                            oldData.setBdt(newData.getBdt());
                        if (strKey.equals("bnnm"))
                            oldData.setBnnm(newData.getBnnm());
                        if (strKey.equals("jbDt"))
                            oldData.setJbDt(newData.getJbDt());
                        if (strKey.equals("empTycd"))
                            oldData.setEmpTycd(newData.getEmpTycd());
                        if (strKey.equals("wrkArecd"))
                            oldData.setWrkArecd(newData.getWrkArecd());
                        if (strKey.equals("sexcd"))
                            oldData.setSexcd(newData.getSexcd());
                        if (strKey.equals("baLifeSadpsYn"))
                            oldData.setBaLifeSadpsYn(newData.getBaLifeSadpsYn());
                        if (strKey.equals("smokYn"))
                            oldData.setSmokYn(newData.getSmokYn());
                        if (strKey.equals("deYn"))
                            oldData.setDeYn(newData.getDeYn());
                        if (strKey.equals("htn"))
                            oldData.setHtn(newData.getHtn());
                        if (strKey.equals("wotYn"))
                            oldData.setWotYn(newData.getWotYn());
                        if (strKey.equals("frgRlnmCtfctFlgcd"))
                            oldData.setFrgRlnmCtfctFlgcd(newData.getFrgRlnmCtfctFlgcd());
                        if (strKey.equals("ntlcd"))
                            oldData.setNtlcd(newData.getNtlcd());
                        if (strKey.equals("pspno"))
                            oldData.setPspno(newData.getPspno());
                        if (strKey.equals("jbChSeqno"))
                            oldData.setJbChSeqno(newData.getJbChSeqno());
                        if (strKey.equals("jbcd"))
                            oldData.setJbcd(newData.getJbcd());
                        if (strKey.equals("injrRnkcd"))
                            oldData.setInjrRnkcd(newData.getInjrRnkcd());
                        if (strKey.equals("onwJbCnfFlgcd"))
                            oldData.setOnwJbCnfFlgcd(newData.getOnwJbCnfFlgcd());
                        if (strKey.equals("rltnBzwplPstdt"))
                            oldData.setRltnBzwplPstdt(newData.getRltnBzwplPstdt());
                        if (strKey.equals("rltnBzwplRgtrFlgcd"))
                            oldData.setRltnBzwplRgtrFlgcd(newData.getRltnBzwplRgtrFlgcd());
                        if (strKey.equals("rlnmCnfFlgcd"))
                            oldData.setRlnmCnfFlgcd(newData.getRlnmCnfFlgcd());
                        if (strKey.equals("cnvHpTmstCd"))
                            oldData.setCnvHpTmstCd(newData.getCnvHpTmstCd());
                        if (strKey.equals("bornYr"))
                            oldData.setBornYr(newData.getBornYr());
                        if (strKey.equals("bornMndy"))
                            oldData.setBornMndy(newData.getBornMndy());
                        if (strKey.equals("rlBornMndy"))
                            oldData.setRlBornMndy(newData.getRlBornMndy());
                        if (strKey.equals("mktgAgreYn"))
                            oldData.setMktgAgreYn(newData.getMktgAgreYn());
                        if (strKey.equals("gdintCrdioAgreYn"))
                            oldData.setGdintCrdioAgreYn(newData.getGdintCrdioAgreYn());
                        if (strKey.equals("donclYn"))
                            oldData.setDonclYn(newData.getDonclYn());
                        if (strKey.equals("dmRcvYn"))
                            oldData.setDmRcvYn(newData.getDmRcvYn());
                        if (strKey.equals("mktgSmsRcvYn"))
                            oldData.setMktgSmsRcvYn(newData.getMktgSmsRcvYn());
                        if (strKey.equals("mktgTlRcvYn"))
                            oldData.setMktgTlRcvYn(newData.getMktgTlRcvYn());
                        if (strKey.equals("mktgMailRcvYn"))
                            oldData.setMktgMailRcvYn(newData.getMktgMailRcvYn());
                        if (strKey.equals("mktgDmRcvYn"))
                            oldData.setMktgDmRcvYn(newData.getMktgDmRcvYn());
                        if (strKey.equals("cerOfAgreYn"))
                            oldData.setCerOfAgreYn(newData.getCerOfAgreYn());
                        if (strKey.equals("drveLicno"))
                            oldData.setDrveLicno(newData.getDrveLicno());
                        if (strKey.equals("carno"))
                            oldData.setCarno(newData.getCarno());
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
