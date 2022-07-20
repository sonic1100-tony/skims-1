/**
 * LseClmRcp Entity Controller 클래스
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
import com.skims.domain.entity.LseClmRcp;
import com.skims.domain.repository.LseClmRcpRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseClmRcp 사고접수 Controller")
@Slf4j
public class LseClmRcpController {

    @Autowired
    LseClmRcpRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "사고접수 전체조회" , summary = "사고접수 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lseclmrcps", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmRcp.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lseclmrcps")
    public ResponseEntity<Page<LseClmRcp>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "사고접수 Key조회" , description = "사고접수 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseClmRcp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmRcp.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmRcp not found", content = @Content) })
    @GetMapping("/lseclmrcps/{aid}")
    public ResponseEntity<LseClmRcp> getById(@PathVariable("aid") Long aid) {
        Optional<LseClmRcp> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "사고접수 등록" , description = "사고접수 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseClmRcp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmRcp.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lseclmrcps")
    ResponseEntity<LseClmRcp> postData(@RequestBody LseClmRcp newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "사고접수 수정" , description = "사고접수 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmRcp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmRcp.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmRcp not found", content = @Content) })
    @PutMapping("/lseclmrcps/{aid}")
    ResponseEntity<LseClmRcp> putData(@RequestBody LseClmRcp newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setRcpCrrSeqno(newData.getRcpCrrSeqno());
                    oldData.setDmSeqno(newData.getDmSeqno());
                    oldData.setApStrDthms(newData.getApStrDthms());
                    oldData.setApNdDthms(newData.getApNdDthms());
                    oldData.setRcpdt(newData.getRcpdt());
                    oldData.setRcpHhmm(newData.getRcpHhmm());
                    oldData.setXpDmamt(newData.getXpDmamt());
                    oldData.setClmRcpStcd(newData.getClmRcpStcd());
                    oldData.setClmdt(newData.getClmdt());
                    oldData.setClmHhmm(newData.getClmHhmm());
                    oldData.setDmosFlgcd(newData.getDmosFlgcd());
                    oldData.setPoutMtt(newData.getPoutMtt());
                    oldData.setClmCn(newData.getClmCn());
                    oldData.setRcpPthFlgcd(newData.getRcpPthFlgcd());
                    oldData.setClmRcpTpcd(newData.getClmRcpTpcd());
                    oldData.setAgntCtmno(newData.getAgntCtmno());
                    oldData.setRprnm(newData.getRprnm());
                    oldData.setRprtrCmpnm(newData.getRprtrCmpnm());
                    oldData.setRprtrTlNtncd(newData.getRprtrTlNtncd());
                    oldData.setRprtrTlano1(newData.getRprtrTlano1());
                    oldData.setRprtrTltno1(newData.getRprtrTltno1());
                    oldData.setRprtrTlsno1(newData.getRprtrTlsno1());
                    oldData.setRprtrTlano2(newData.getRprtrTlano2());
                    oldData.setRprtrTltno2(newData.getRprtrTltno2());
                    oldData.setRprtrTlsno2(newData.getRprtrTlsno2());
                    oldData.setRcprStfno(newData.getRcprStfno());
                    oldData.setAdDmcd(newData.getAdDmcd());
                    oldData.setRcpCcldt(newData.getRcpCcldt());
                    oldData.setRcpCclRscd(newData.getRcpCclRscd());
                    oldData.setClmpsRelcd(newData.getClmpsRelcd());
                    oldData.setRcpCclNote(newData.getRcpCclNote());
                    oldData.setRcpCclStfno(newData.getRcpCclStfno());
                    oldData.setOlclmRcpno(newData.getOlclmRcpno());
                    oldData.setInrClmYn(newData.getInrClmYn());
                    oldData.setCrClmRcpYymm(newData.getCrClmRcpYymm());
                    oldData.setCrRcpNvSeqno(newData.getCrRcpNvSeqno());
                    oldData.setOtcmMgYn(newData.getOtcmMgYn());
                    oldData.setMarneYn(newData.getMarneYn());
                    oldData.setEndYn(newData.getEndYn());
                    oldData.setEnddt(newData.getEnddt());
                    oldData.setPrvFlgcd(newData.getPrvFlgcd());
                    oldData.setPrvdt(newData.getPrvdt());
                    oldData.setCmpKyYr(newData.getCmpKyYr());
                    oldData.setCmpKySeqno(newData.getCmpKySeqno());
                    oldData.setDlgYn(newData.getDlgYn());
                    oldData.setMailId(newData.getMailId());
                    oldData.setMailDomn(newData.getMailDomn());
                    oldData.setPyMtdcd(newData.getPyMtdcd());
                    oldData.setPyBkcd(newData.getPyBkcd());
                    oldData.setPyDpsnm(newData.getPyDpsnm());
                    oldData.setPyActno(newData.getPyActno());
                    oldData.setDpsrDscno(newData.getDpsrDscno());
                    oldData.setDpsrCtmno(newData.getDpsrCtmno());
                    oldData.setXpDmamtFlgcd(newData.getXpDmamtFlgcd());
                    oldData.setNtcMttOfMtdcd(newData.getNtcMttOfMtdcd());
                    oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn());
                    oldData.setClmRcpCclNo(newData.getClmRcpCclNo());
                    oldData.setTrpaDtspcClrqYn(newData.getTrpaDtspcClrqYn());
                    oldData.setOgcyClrqYn(newData.getOgcyClrqYn());
                    oldData.setRcpVcrAgreYn(newData.getRcpVcrAgreYn());
                    oldData.setAgreInscpCd(newData.getAgreInscpCd());
                    oldData.setAgreInscpNm(newData.getAgreInscpNm());
                    oldData.setChrpsRqDtMtt(newData.getChrpsRqDtMtt());
                    oldData.setIbnfRigtDlgYn(newData.getIbnfRigtDlgYn());
                    oldData.setDmDcuDlgYn(newData.getDmDcuDlgYn());
                    oldData.setClmNvPassYn(newData.getClmNvPassYn());
                    oldData.setPstno(newData.getPstno());
                    oldData.setSd(newData.getSd());
                    oldData.setSgng(newData.getSgng());
                    oldData.setTwmd(newData.getTwmd());
                    oldData.setRiOrLrdlp(newData.getRiOrLrdlp());
                    oldData.setDtadr(newData.getDtadr());
                    oldData.setRefIt(newData.getRefIt());
                    oldData.setRoadNm(newData.getRoadNm());
                    oldData.setUndgFlgcd(newData.getUndgFlgcd());
                    oldData.setMnBldno(newData.getMnBldno());
                    oldData.setSubBldno(newData.getSubBldno());
                    oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                    oldData.setNtncd(newData.getNtncd());
                    oldData.setCtycd(newData.getCtycd());
                    oldData.setClmPlc(newData.getClmPlc());
                    oldData.setMgClmno(newData.getMgClmno());
                    oldData.setCtmCnrRcpStcd(newData.getCtmCnrRcpStcd());
                    oldData.setShPrntFlgcd(newData.getShPrntFlgcd());
                    oldData.setPyMttOfMtdcd(newData.getPyMttOfMtdcd());
                    oldData.setBefoNtcltSndYn(newData.getBefoNtcltSndYn());
                    oldData.setHspDmYn(newData.getHspDmYn());
                    oldData.setOtpDmYn(newData.getOtpDmYn());
                    oldData.setRlpmiJointRpblYn(newData.getRlpmiJointRpblYn());
                    oldData.setRlpmiJointDcnYn(newData.getRlpmiJointDcnYn());
                    oldData.setMdSlrSadrpYn(newData.getMdSlrSadrpYn());
                    oldData.setInsDlFlgcd(newData.getInsDlFlgcd());
                    oldData.setRcpInsCmpcd(newData.getRcpInsCmpcd());
                    oldData.setNvOrgKndcd(newData.getNvOrgKndcd());
                    oldData.setHwrkDvYn(newData.getHwrkDvYn());
                    oldData.setJbcd(newData.getJbcd());
                    oldData.setJbnm(newData.getJbnm());
                    oldData.setInjrRnkcd(newData.getInjrRnkcd());
                    oldData.setNrdpsAdrApyn(newData.getNrdpsAdrApyn());
                    oldData.setSelfDvYn(newData.getSelfDvYn());
                    oldData.setRprtrRelcd(newData.getRprtrRelcd());
                    oldData.setDcuRcpdt(newData.getDcuRcpdt());
                    oldData.setRcpTlMailCntad(newData.getRcpTlMailCntad());
                    oldData.setCarno(newData.getCarno());
                    oldData.setOrgRcpDvChrpsId(newData.getOrgRcpDvChrpsId());
                    oldData.setDvDthms(newData.getDvDthms());
                    oldData.setAcciPsFlgcd(newData.getAcciPsFlgcd());
                    oldData.setAcciPsNm(newData.getAcciPsNm());
                    oldData.setActCnfYn(newData.getActCnfYn());
                    oldData.setTmpRcpDvStfno(newData.getTmpRcpDvStfno());
                    oldData.setDlayMttOfMtdcd(newData.getDlayMttOfMtdcd());
                    oldData.setChrpsMttOfMtdcd(newData.getChrpsMttOfMtdcd());
                    oldData.setRcpCclMttOfMtdcd(newData.getRcpCclMttOfMtdcd());
                    oldData.setRcpCclRelnClmRcpno(newData.getRcpCclRelnClmRcpno());
                    oldData.setRcpMdfUsrId(newData.getRcpMdfUsrId());
                    oldData.setRcpMdfDthms(newData.getRcpMdfDthms());
                    oldData.setNrdpsJbChYn(newData.getNrdpsJbChYn());
                    oldData.setNrdpsJbcd(newData.getNrdpsJbcd());
                    oldData.setNrdpsInjrRnkcd(newData.getNrdpsInjrRnkcd());
                    oldData.setNrdpsJbnm(newData.getNrdpsJbnm());
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

    // @Operation(summary = "사고접수 수정" , description = "사고접수 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmRcp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmRcp.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmRcp not found", content = @Content) })
	@PatchMapping("/lseclmrcps/{aid}")
    ResponseEntity<LseClmRcp> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseClmRcp newData = mapper.convertValue(newMap, LseClmRcp.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rcpYymm"))
                            oldData.setRcpYymm(newData.getRcpYymm());
                        if (strKey.equals("rcpNvSeqno"))
                            oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                        if (strKey.equals("rcpCrrSeqno"))
                            oldData.setRcpCrrSeqno(newData.getRcpCrrSeqno());
                        if (strKey.equals("dmSeqno"))
                            oldData.setDmSeqno(newData.getDmSeqno());
                        if (strKey.equals("apStrDthms"))
                            oldData.setApStrDthms(newData.getApStrDthms());
                        if (strKey.equals("apNdDthms"))
                            oldData.setApNdDthms(newData.getApNdDthms());
                        if (strKey.equals("rcpdt"))
                            oldData.setRcpdt(newData.getRcpdt());
                        if (strKey.equals("rcpHhmm"))
                            oldData.setRcpHhmm(newData.getRcpHhmm());
                        if (strKey.equals("xpDmamt"))
                            oldData.setXpDmamt(newData.getXpDmamt());
                        if (strKey.equals("clmRcpStcd"))
                            oldData.setClmRcpStcd(newData.getClmRcpStcd());
                        if (strKey.equals("clmdt"))
                            oldData.setClmdt(newData.getClmdt());
                        if (strKey.equals("clmHhmm"))
                            oldData.setClmHhmm(newData.getClmHhmm());
                        if (strKey.equals("dmosFlgcd"))
                            oldData.setDmosFlgcd(newData.getDmosFlgcd());
                        if (strKey.equals("poutMtt"))
                            oldData.setPoutMtt(newData.getPoutMtt());
                        if (strKey.equals("clmCn"))
                            oldData.setClmCn(newData.getClmCn());
                        if (strKey.equals("rcpPthFlgcd"))
                            oldData.setRcpPthFlgcd(newData.getRcpPthFlgcd());
                        if (strKey.equals("clmRcpTpcd"))
                            oldData.setClmRcpTpcd(newData.getClmRcpTpcd());
                        if (strKey.equals("agntCtmno"))
                            oldData.setAgntCtmno(newData.getAgntCtmno());
                        if (strKey.equals("rprnm"))
                            oldData.setRprnm(newData.getRprnm());
                        if (strKey.equals("rprtrCmpnm"))
                            oldData.setRprtrCmpnm(newData.getRprtrCmpnm());
                        if (strKey.equals("rprtrTlNtncd"))
                            oldData.setRprtrTlNtncd(newData.getRprtrTlNtncd());
                        if (strKey.equals("rprtrTlano1"))
                            oldData.setRprtrTlano1(newData.getRprtrTlano1());
                        if (strKey.equals("rprtrTltno1"))
                            oldData.setRprtrTltno1(newData.getRprtrTltno1());
                        if (strKey.equals("rprtrTlsno1"))
                            oldData.setRprtrTlsno1(newData.getRprtrTlsno1());
                        if (strKey.equals("rprtrTlano2"))
                            oldData.setRprtrTlano2(newData.getRprtrTlano2());
                        if (strKey.equals("rprtrTltno2"))
                            oldData.setRprtrTltno2(newData.getRprtrTltno2());
                        if (strKey.equals("rprtrTlsno2"))
                            oldData.setRprtrTlsno2(newData.getRprtrTlsno2());
                        if (strKey.equals("rcprStfno"))
                            oldData.setRcprStfno(newData.getRcprStfno());
                        if (strKey.equals("adDmcd"))
                            oldData.setAdDmcd(newData.getAdDmcd());
                        if (strKey.equals("rcpCcldt"))
                            oldData.setRcpCcldt(newData.getRcpCcldt());
                        if (strKey.equals("rcpCclRscd"))
                            oldData.setRcpCclRscd(newData.getRcpCclRscd());
                        if (strKey.equals("clmpsRelcd"))
                            oldData.setClmpsRelcd(newData.getClmpsRelcd());
                        if (strKey.equals("rcpCclNote"))
                            oldData.setRcpCclNote(newData.getRcpCclNote());
                        if (strKey.equals("rcpCclStfno"))
                            oldData.setRcpCclStfno(newData.getRcpCclStfno());
                        if (strKey.equals("olclmRcpno"))
                            oldData.setOlclmRcpno(newData.getOlclmRcpno());
                        if (strKey.equals("inrClmYn"))
                            oldData.setInrClmYn(newData.getInrClmYn());
                        if (strKey.equals("crClmRcpYymm"))
                            oldData.setCrClmRcpYymm(newData.getCrClmRcpYymm());
                        if (strKey.equals("crRcpNvSeqno"))
                            oldData.setCrRcpNvSeqno(newData.getCrRcpNvSeqno());
                        if (strKey.equals("otcmMgYn"))
                            oldData.setOtcmMgYn(newData.getOtcmMgYn());
                        if (strKey.equals("marneYn"))
                            oldData.setMarneYn(newData.getMarneYn());
                        if (strKey.equals("endYn"))
                            oldData.setEndYn(newData.getEndYn());
                        if (strKey.equals("enddt"))
                            oldData.setEnddt(newData.getEnddt());
                        if (strKey.equals("prvFlgcd"))
                            oldData.setPrvFlgcd(newData.getPrvFlgcd());
                        if (strKey.equals("prvdt"))
                            oldData.setPrvdt(newData.getPrvdt());
                        if (strKey.equals("cmpKyYr"))
                            oldData.setCmpKyYr(newData.getCmpKyYr());
                        if (strKey.equals("cmpKySeqno"))
                            oldData.setCmpKySeqno(newData.getCmpKySeqno());
                        if (strKey.equals("dlgYn"))
                            oldData.setDlgYn(newData.getDlgYn());
                        if (strKey.equals("mailId"))
                            oldData.setMailId(newData.getMailId());
                        if (strKey.equals("mailDomn"))
                            oldData.setMailDomn(newData.getMailDomn());
                        if (strKey.equals("pyMtdcd"))
                            oldData.setPyMtdcd(newData.getPyMtdcd());
                        if (strKey.equals("pyBkcd"))
                            oldData.setPyBkcd(newData.getPyBkcd());
                        if (strKey.equals("pyDpsnm"))
                            oldData.setPyDpsnm(newData.getPyDpsnm());
                        if (strKey.equals("pyActno"))
                            oldData.setPyActno(newData.getPyActno());
                        if (strKey.equals("dpsrDscno"))
                            oldData.setDpsrDscno(newData.getDpsrDscno());
                        if (strKey.equals("dpsrCtmno"))
                            oldData.setDpsrCtmno(newData.getDpsrCtmno());
                        if (strKey.equals("xpDmamtFlgcd"))
                            oldData.setXpDmamtFlgcd(newData.getXpDmamtFlgcd());
                        if (strKey.equals("ntcMttOfMtdcd"))
                            oldData.setNtcMttOfMtdcd(newData.getNtcMttOfMtdcd());
                        if (strKey.equals("crdifUtlAgreYn"))
                            oldData.setCrdifUtlAgreYn(newData.getCrdifUtlAgreYn());
                        if (strKey.equals("clmRcpCclNo"))
                            oldData.setClmRcpCclNo(newData.getClmRcpCclNo());
                        if (strKey.equals("trpaDtspcClrqYn"))
                            oldData.setTrpaDtspcClrqYn(newData.getTrpaDtspcClrqYn());
                        if (strKey.equals("ogcyClrqYn"))
                            oldData.setOgcyClrqYn(newData.getOgcyClrqYn());
                        if (strKey.equals("rcpVcrAgreYn"))
                            oldData.setRcpVcrAgreYn(newData.getRcpVcrAgreYn());
                        if (strKey.equals("agreInscpCd"))
                            oldData.setAgreInscpCd(newData.getAgreInscpCd());
                        if (strKey.equals("agreInscpNm"))
                            oldData.setAgreInscpNm(newData.getAgreInscpNm());
                        if (strKey.equals("chrpsRqDtMtt"))
                            oldData.setChrpsRqDtMtt(newData.getChrpsRqDtMtt());
                        if (strKey.equals("ibnfRigtDlgYn"))
                            oldData.setIbnfRigtDlgYn(newData.getIbnfRigtDlgYn());
                        if (strKey.equals("dmDcuDlgYn"))
                            oldData.setDmDcuDlgYn(newData.getDmDcuDlgYn());
                        if (strKey.equals("clmNvPassYn"))
                            oldData.setClmNvPassYn(newData.getClmNvPassYn());
                        if (strKey.equals("pstno"))
                            oldData.setPstno(newData.getPstno());
                        if (strKey.equals("sd"))
                            oldData.setSd(newData.getSd());
                        if (strKey.equals("sgng"))
                            oldData.setSgng(newData.getSgng());
                        if (strKey.equals("twmd"))
                            oldData.setTwmd(newData.getTwmd());
                        if (strKey.equals("riOrLrdlp"))
                            oldData.setRiOrLrdlp(newData.getRiOrLrdlp());
                        if (strKey.equals("dtadr"))
                            oldData.setDtadr(newData.getDtadr());
                        if (strKey.equals("refIt"))
                            oldData.setRefIt(newData.getRefIt());
                        if (strKey.equals("roadNm"))
                            oldData.setRoadNm(newData.getRoadNm());
                        if (strKey.equals("undgFlgcd"))
                            oldData.setUndgFlgcd(newData.getUndgFlgcd());
                        if (strKey.equals("mnBldno"))
                            oldData.setMnBldno(newData.getMnBldno());
                        if (strKey.equals("subBldno"))
                            oldData.setSubBldno(newData.getSubBldno());
                        if (strKey.equals("nwAdrFlgcd"))
                            oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                        if (strKey.equals("ntncd"))
                            oldData.setNtncd(newData.getNtncd());
                        if (strKey.equals("ctycd"))
                            oldData.setCtycd(newData.getCtycd());
                        if (strKey.equals("clmPlc"))
                            oldData.setClmPlc(newData.getClmPlc());
                        if (strKey.equals("mgClmno"))
                            oldData.setMgClmno(newData.getMgClmno());
                        if (strKey.equals("ctmCnrRcpStcd"))
                            oldData.setCtmCnrRcpStcd(newData.getCtmCnrRcpStcd());
                        if (strKey.equals("shPrntFlgcd"))
                            oldData.setShPrntFlgcd(newData.getShPrntFlgcd());
                        if (strKey.equals("pyMttOfMtdcd"))
                            oldData.setPyMttOfMtdcd(newData.getPyMttOfMtdcd());
                        if (strKey.equals("befoNtcltSndYn"))
                            oldData.setBefoNtcltSndYn(newData.getBefoNtcltSndYn());
                        if (strKey.equals("hspDmYn"))
                            oldData.setHspDmYn(newData.getHspDmYn());
                        if (strKey.equals("otpDmYn"))
                            oldData.setOtpDmYn(newData.getOtpDmYn());
                        if (strKey.equals("rlpmiJointRpblYn"))
                            oldData.setRlpmiJointRpblYn(newData.getRlpmiJointRpblYn());
                        if (strKey.equals("rlpmiJointDcnYn"))
                            oldData.setRlpmiJointDcnYn(newData.getRlpmiJointDcnYn());
                        if (strKey.equals("mdSlrSadrpYn"))
                            oldData.setMdSlrSadrpYn(newData.getMdSlrSadrpYn());
                        if (strKey.equals("insDlFlgcd"))
                            oldData.setInsDlFlgcd(newData.getInsDlFlgcd());
                        if (strKey.equals("rcpInsCmpcd"))
                            oldData.setRcpInsCmpcd(newData.getRcpInsCmpcd());
                        if (strKey.equals("nvOrgKndcd"))
                            oldData.setNvOrgKndcd(newData.getNvOrgKndcd());
                        if (strKey.equals("hwrkDvYn"))
                            oldData.setHwrkDvYn(newData.getHwrkDvYn());
                        if (strKey.equals("jbcd"))
                            oldData.setJbcd(newData.getJbcd());
                        if (strKey.equals("jbnm"))
                            oldData.setJbnm(newData.getJbnm());
                        if (strKey.equals("injrRnkcd"))
                            oldData.setInjrRnkcd(newData.getInjrRnkcd());
                        if (strKey.equals("nrdpsAdrApyn"))
                            oldData.setNrdpsAdrApyn(newData.getNrdpsAdrApyn());
                        if (strKey.equals("selfDvYn"))
                            oldData.setSelfDvYn(newData.getSelfDvYn());
                        if (strKey.equals("rprtrRelcd"))
                            oldData.setRprtrRelcd(newData.getRprtrRelcd());
                        if (strKey.equals("dcuRcpdt"))
                            oldData.setDcuRcpdt(newData.getDcuRcpdt());
                        if (strKey.equals("rcpTlMailCntad"))
                            oldData.setRcpTlMailCntad(newData.getRcpTlMailCntad());
                        if (strKey.equals("carno"))
                            oldData.setCarno(newData.getCarno());
                        if (strKey.equals("orgRcpDvChrpsId"))
                            oldData.setOrgRcpDvChrpsId(newData.getOrgRcpDvChrpsId());
                        if (strKey.equals("dvDthms"))
                            oldData.setDvDthms(newData.getDvDthms());
                        if (strKey.equals("acciPsFlgcd"))
                            oldData.setAcciPsFlgcd(newData.getAcciPsFlgcd());
                        if (strKey.equals("acciPsNm"))
                            oldData.setAcciPsNm(newData.getAcciPsNm());
                        if (strKey.equals("actCnfYn"))
                            oldData.setActCnfYn(newData.getActCnfYn());
                        if (strKey.equals("tmpRcpDvStfno"))
                            oldData.setTmpRcpDvStfno(newData.getTmpRcpDvStfno());
                        if (strKey.equals("dlayMttOfMtdcd"))
                            oldData.setDlayMttOfMtdcd(newData.getDlayMttOfMtdcd());
                        if (strKey.equals("chrpsMttOfMtdcd"))
                            oldData.setChrpsMttOfMtdcd(newData.getChrpsMttOfMtdcd());
                        if (strKey.equals("rcpCclMttOfMtdcd"))
                            oldData.setRcpCclMttOfMtdcd(newData.getRcpCclMttOfMtdcd());
                        if (strKey.equals("rcpCclRelnClmRcpno"))
                            oldData.setRcpCclRelnClmRcpno(newData.getRcpCclRelnClmRcpno());
                        if (strKey.equals("rcpMdfUsrId"))
                            oldData.setRcpMdfUsrId(newData.getRcpMdfUsrId());
                        if (strKey.equals("rcpMdfDthms"))
                            oldData.setRcpMdfDthms(newData.getRcpMdfDthms());
                        if (strKey.equals("nrdpsJbChYn"))
                            oldData.setNrdpsJbChYn(newData.getNrdpsJbChYn());
                        if (strKey.equals("nrdpsJbcd"))
                            oldData.setNrdpsJbcd(newData.getNrdpsJbcd());
                        if (strKey.equals("nrdpsInjrRnkcd"))
                            oldData.setNrdpsInjrRnkcd(newData.getNrdpsInjrRnkcd());
                        if (strKey.equals("nrdpsJbnm"))
                            oldData.setNrdpsJbnm(newData.getNrdpsJbnm());
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
	
    // @Operation(summary = "사고접수 삭제" , description = "사고접수 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseClmRcp", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmRcp.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lseclmrcps/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
