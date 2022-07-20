/**
 * LseClmNv Entity Controller 클래스
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
import com.skims.domain.entity.LseClmNv;
import com.skims.domain.repository.LseClmNvRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseClmNv 사고조사 Controller")
@Slf4j
public class LseClmNvController {

    @Autowired
    LseClmNvRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "사고조사 전체조회" , summary = "사고조사 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lseclmnvs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNv.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lseclmnvs")
    public ResponseEntity<Page<LseClmNv>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "사고조사 Key조회" , description = "사고조사 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseClmNv", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNv.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmNv not found", content = @Content) })
    @GetMapping("/lseclmnvs/{aid}")
    public ResponseEntity<LseClmNv> getById(@PathVariable("aid") Long aid) {
        Optional<LseClmNv> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "사고조사 등록" , description = "사고조사 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseClmNv", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNv.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lseclmnvs")
    ResponseEntity<LseClmNv> postData(@RequestBody LseClmNv newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "사고조사 수정" , description = "사고조사 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmNv", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNv.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmNv not found", content = @Content) })
    @PutMapping("/lseclmnvs/{aid}")
    ResponseEntity<LseClmNv> putData(@RequestBody LseClmNv newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setClmNvSeqno(newData.getClmNvSeqno());
                    oldData.setDmStrSeqno(newData.getDmStrSeqno());
                    oldData.setDmNdSeqno(newData.getDmNdSeqno());
                    oldData.setClmNvdt(newData.getClmNvdt());
                    oldData.setClmNvHhmm(newData.getClmNvHhmm());
                    oldData.setClmTpcd(newData.getClmTpcd());
                    oldData.setClmCascd(newData.getClmCascd());
                    oldData.setClm2Cascd(newData.getClm2Cascd());
                    oldData.setClm3Cascd(newData.getClm3Cascd());
                    oldData.setClmdt(newData.getClmdt());
                    oldData.setClmHhmm(newData.getClmHhmm());
                    oldData.setNvCn(newData.getNvCn());
                    oldData.setPoutMtt(newData.getPoutMtt());
                    oldData.setMncd(newData.getMncd());
                    oldData.setXcrtApdt(newData.getXcrtApdt());
                    oldData.setXcrt(newData.getXcrt());
                    oldData.setClmNvKndcd(newData.getClmNvKndcd());
                    oldData.setPrvFlgcd(newData.getPrvFlgcd());
                    oldData.setPrvdt(newData.getPrvdt());
                    oldData.setCmpKyYr(newData.getCmpKyYr());
                    oldData.setCmpKySeqno(newData.getCmpKySeqno());
                    oldData.setLctnFlgcd(newData.getLctnFlgcd());
                    oldData.setDtadr(newData.getDtadr());
                    oldData.setIdmXpYn(newData.getIdmXpYn());
                    oldData.setLwXpYn(newData.getLwXpYn());
                    oldData.setSiuXpYn(newData.getSiuXpYn());
                    oldData.setCvapXpYn(newData.getCvapXpYn());
                    oldData.setUdrtkAtpsYn(newData.getUdrtkAtpsYn());
                    oldData.setObsYn(newData.getObsYn());
                    oldData.setDmSyCtn(newData.getDmSyCtn());
                    oldData.setDeYn(newData.getDeYn());
                    oldData.setDrctDersDeCas(newData.getDrctDersDeCas());
                    oldData.setMidPrcgDeCas(newData.getMidPrcgDeCas());
                    oldData.setPrcgDersDeCas(newData.getPrcgDersDeCas());
                    oldData.setEtDeCas(newData.getEtDeCas());
                    oldData.setDePlcPstno(newData.getDePlcPstno());
                    oldData.setDePlcSd(newData.getDePlcSd());
                    oldData.setDePlcSgng(newData.getDePlcSgng());
                    oldData.setDePlcTwmd(newData.getDePlcTwmd());
                    oldData.setDeplcRiOrLrdlp(newData.getDeplcRiOrLrdlp());
                    oldData.setDePlcDtadr(newData.getDePlcDtadr());
                    oldData.setDeplcRefIt(newData.getDeplcRefIt());
                    oldData.setDeplcRoadNm(newData.getDeplcRoadNm());
                    oldData.setDeplcUndgFlgcd(newData.getDeplcUndgFlgcd());
                    oldData.setDeplcMnBldno(newData.getDeplcMnBldno());
                    oldData.setDeplcSubBldno(newData.getDeplcSubBldno());
                    oldData.setDeplcNwAdrFlgcd(newData.getDeplcNwAdrFlgcd());
                    oldData.setDeKndcd(newData.getDeKndcd());
                    oldData.setDeDtKndcd(newData.getDeDtKndcd());
                    oldData.setDeFlgcd(newData.getDeFlgcd());
                    oldData.setDedt(newData.getDedt());
                    oldData.setDeHhmm(newData.getDeHhmm());
                    oldData.setDeDgnHspcd(newData.getDeDgnHspcd());
                    oldData.setDeDgnHspBzmno(newData.getDeDgnHspBzmno());
                    oldData.setDeDgnHspnm(newData.getDeDgnHspnm());
                    oldData.setDeDgnHspFlgcd(newData.getDeDgnHspFlgcd());
                    oldData.setDeDgnDrnm(newData.getDeDgnDrnm());
                    oldData.setDeDgnIntnsLicno(newData.getDeDgnIntnsLicno());
                    oldData.setPvspCnbrt(newData.getPvspCnbrt());
                    oldData.setPvspYn(newData.getPvspYn());
                    oldData.setHspTdy(newData.getHspTdy());
                    oldData.setHspTsm(newData.getHspTsm());
                    oldData.setWoncvHspTsm(newData.getWoncvHspTsm());
                    oldData.setHspSlfchTsm(newData.getHspSlfchTsm());
                    oldData.setWoncvHspSlfchTsm(newData.getWoncvHspSlfchTsm());
                    oldData.setOtpTdy(newData.getOtpTdy());
                    oldData.setOtpTsm(newData.getOtpTsm());
                    oldData.setWoncvOtpTsm(newData.getWoncvOtpTsm());
                    oldData.setOtpSlfchTsm(newData.getOtpSlfchTsm());
                    oldData.setWoncvOtpSlfchTsm(newData.getWoncvOtpSlfchTsm());
                    oldData.setHspApprDmamt(newData.getHspApprDmamt());
                    oldData.setOtpApprDmamt(newData.getOtpApprDmamt());
                    oldData.setHagthYn(newData.getHagthYn());
                    oldData.setOpYn(newData.getOpYn());
                    oldData.setOtcmCrIsYn(newData.getOtcmCrIsYn());
                    oldData.setDlalzCnfCn(newData.getDlalzCnfCn());
                    oldData.setDlalzCnfFlgcd(newData.getDlalzCnfFlgcd());
                    oldData.setClmCrUsecd(newData.getClmCrUsecd());
                    oldData.setClmOperCrcd(newData.getClmOperCrcd());
                    oldData.setJbChSeqno(newData.getJbChSeqno());
                    oldData.setNvJbcd(newData.getNvJbcd());
                    oldData.setDgndt(newData.getDgndt());
                    oldData.setDgnHhmm(newData.getDgnHhmm());
                    oldData.setAtkdt(newData.getAtkdt());
                    oldData.setAtkHhmm(newData.getAtkHhmm());
                    oldData.setNsDgndt(newData.getNsDgndt());
                    oldData.setCancrDcnDgndt(newData.getCancrDcnDgndt());
                    oldData.setNvOrgcd(newData.getNvOrgcd());
                    oldData.setNwTthSupmCt(newData.getNwTthSupmCt());
                    oldData.setPrevTthSupmCt(newData.getPrevTthSupmCt());
                    oldData.setMnthIcamt(newData.getMnthIcamt());
                    oldData.setMnthIcEvdcd(newData.getMnthIcEvdcd());
                    oldData.setFltrt(newData.getFltrt());
                    oldData.setNsamt(newData.getNsamt());
                    oldData.setNextMdcf(newData.getNextMdcf());
                    oldData.setCslmnTamt(newData.getCslmnTamt());
                    oldData.setIdacDlYn(newData.getIdacDlYn());
                    oldData.setIdark(newData.getIdark());
                    oldData.setIdacl(newData.getIdacl());
                    oldData.setObsdt(newData.getObsdt());
                    oldData.setPsbsnSlamt(newData.getPsbsnSlamt());
                    oldData.setObsSlamt(newData.getObsSlamt());
                    oldData.setRcprSlamt(newData.getRcprSlamt());
                    oldData.setSrvfmSlamt(newData.getSrvfmSlamt());
                    oldData.setFnrcs(newData.getFnrcs());
                    oldData.setEtSlamt(newData.getEtSlamt());
                    oldData.setIdacDlPoutMtt(newData.getIdacDlPoutMtt());
                    oldData.setDlOrg(newData.getDlOrg());
                    oldData.setChrpsNm(newData.getChrpsNm());
                    oldData.setChrpsTlano(newData.getChrpsTlano());
                    oldData.setChrpsTltno(newData.getChrpsTltno());
                    oldData.setChrpsTlsno(newData.getChrpsTlsno());
                    oldData.setMdCnstYn(newData.getMdCnstYn());
                    oldData.setLawCnstYn(newData.getLawCnstYn());
                    oldData.setIcStFlgcd(newData.getIcStFlgcd());
                    oldData.setCcpcd(newData.getCcpcd());
                    oldData.setStIcSeqno(newData.getStIcSeqno());
                    oldData.setStIcApStrdt(newData.getStIcApStrdt());
                    oldData.setActvtNddt(newData.getActvtNddt());
                    oldData.setMergObsrt(newData.getMergObsrt());
                    oldData.setAgAmt(newData.getAgAmt());
                    oldData.setOwrnm(newData.getOwrnm());
                    oldData.setOwnrCmpBjpsRelcd(newData.getOwnrCmpBjpsRelcd());
                    oldData.setRpairDays(newData.getRpairDays());
                    oldData.setDmCrccd(newData.getDmCrccd());
                    oldData.setPrgMoralNdx(newData.getPrgMoralNdx());
                    oldData.setWrkTycd(newData.getWrkTycd());
                    oldData.setBtpcd(newData.getBtpcd());
                    oldData.setRtApMngmCcpcd(newData.getRtApMngmCcpcd());
                    oldData.setBnnm(newData.getBnnm());
                    oldData.setBnCsfcd(newData.getBnCsfcd());
                    oldData.setNvOrgKndcd(newData.getNvOrgKndcd());
                    oldData.setTndPlc(newData.getTndPlc());
                    oldData.setTndCntTlano(newData.getTndCntTlano());
                    oldData.setTndCntTltno(newData.getTndCntTltno());
                    oldData.setTndCntTlsno(newData.getTndCntTlsno());
                    oldData.setTndTpcd(newData.getTndTpcd());
                    oldData.setPsbsnDays(newData.getPsbsnDays());
                    oldData.setVictmFltrt(newData.getVictmFltrt());
                    oldData.setDrctDmamt(newData.getDrctDmamt());
                    oldData.setDrtDmamt(newData.getDrtDmamt());
                    oldData.setEtDmamt(newData.getEtDmamt());
                    oldData.setTrFlgcd(newData.getTrFlgcd());
                    oldData.setClmPlc(newData.getClmPlc());
                    oldData.setSngCoSeadmFlgcd(newData.getSngCoSeadmFlgcd());
                    oldData.setCoSeadmNm(newData.getCoSeadmNm());
                    oldData.setLttdFlgcd(newData.getLttdFlgcd());
                    oldData.setLttdDgr(newData.getLttdDgr());
                    oldData.setLttdMin(newData.getLttdMin());
                    oldData.setLttdSec(newData.getLttdSec());
                    oldData.setHdnFlgcd(newData.getHdnFlgcd());
                    oldData.setHdnDgr(newData.getHdnDgr());
                    oldData.setHdnMin(newData.getHdnMin());
                    oldData.setHdnSec(newData.getHdnSec());
                    oldData.setLossCas(newData.getLossCas());
                    oldData.setPstno(newData.getPstno());
                    oldData.setSd(newData.getSd());
                    oldData.setSgng(newData.getSgng());
                    oldData.setTwmd(newData.getTwmd());
                    oldData.setRiOrLrdlp(newData.getRiOrLrdlp());
                    oldData.setNtncd(newData.getNtncd());
                    oldData.setCtycd(newData.getCtycd());
                    oldData.setRefIt(newData.getRefIt());
                    oldData.setRoadNm(newData.getRoadNm());
                    oldData.setUndgFlgcd(newData.getUndgFlgcd());
                    oldData.setMnBldno(newData.getMnBldno());
                    oldData.setSubBldno(newData.getSubBldno());
                    oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                    oldData.setTempSaveYn(newData.getTempSaveYn());
                    oldData.setClmInfoInpCd(newData.getClmInfoInpCd());
                    oldData.setNmlInpImprRscd(newData.getNmlInpImprRscd());
                    oldData.setNmlInpImprRs(newData.getNmlInpImprRs());
                    oldData.setChrpsRqDtMtt(newData.getChrpsRqDtMtt());
                    oldData.setChrpsInpCnfFlgcd(newData.getChrpsInpCnfFlgcd());
                    oldData.setInpErChekRscd(newData.getInpErChekRscd());
                    oldData.setInpErChekRs(newData.getInpErChekRs());
                    oldData.setInpErCnfmStfno(newData.getInpErCnfmStfno());
                    oldData.setXpDmamt(newData.getXpDmamt());
                    oldData.setSelfChamt(newData.getSelfChamt());
                    oldData.setReRequFlgcd(newData.getReRequFlgcd());
                    oldData.setPyBkcd(newData.getPyBkcd());
                    oldData.setPyDpsnm(newData.getPyDpsnm());
                    oldData.setPyActno(newData.getPyActno());
                    oldData.setDpsrDscno(newData.getDpsrDscno());
                    oldData.setPyActCnfyn(newData.getPyActCnfyn());
                    oldData.setDrctDersDeCascd(newData.getDrctDersDeCascd());
                    oldData.setPyMtdcd(newData.getPyMtdcd());
                    oldData.setDpsrCtmno(newData.getDpsrCtmno());
                    oldData.setLsetmRtxDbDmYn(newData.getLsetmRtxDbDmYn());
                    oldData.setLsetmRtxNinptYn(newData.getLsetmRtxNinptYn());
                    oldData.setClmRcpInpCnfCd(newData.getClmRcpInpCnfCd());
                    oldData.setClmRcpInpErcd(newData.getClmRcpInpErcd());
                    oldData.setClmRcpInpErRs(newData.getClmRcpInpErRs());
                    oldData.setClmRcpInpRetnDt(newData.getClmRcpInpRetnDt());
                    oldData.setClmRcpInpCpmtDt(newData.getClmRcpInpCpmtDt());
                    oldData.setThrpsInvtnYn(newData.getThrpsInvtnYn());
                    oldData.setCarno(newData.getCarno());
                    oldData.setInfoInpRstcd(newData.getInfoInpRstcd());
                    oldData.setInfoInpRstErcd(newData.getInfoInpRstErcd());
                    oldData.setInfoInpRstErRs(newData.getInfoInpRstErRs());
                    oldData.setInfoInpCnfCd(newData.getInfoInpCnfCd());
                    oldData.setInfoInpCnfErcd(newData.getInfoInpCnfErcd());
                    oldData.setInfoInpCnfErRs(newData.getInfoInpCnfErRs());
                    oldData.setCnfStfno(newData.getCnfStfno());
                    oldData.setClmFlgcd(newData.getClmFlgcd());
                    oldData.setSlfchDcFlgcd(newData.getSlfchDcFlgcd());
                    oldData.setTempSaveDthms(newData.getTempSaveDthms());
                    oldData.setTempSaveStfno(newData.getTempSaveStfno());
                    oldData.setRcpRetnStcd(newData.getRcpRetnStcd());
                    oldData.setMnDgncd(newData.getMnDgncd());
                    oldData.setRtxChYncd(newData.getRtxChYncd());
                    oldData.setNtPrpnCrYncd(newData.getNtPrpnCrYncd());
                    oldData.setDtspcInpCnfdt(newData.getDtspcInpCnfdt());
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

    // @Operation(summary = "사고조사 수정" , description = "사고조사 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseClmNv", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNv.class)) }),
            @ApiResponse(responseCode = "404", description = "LseClmNv not found", content = @Content) })
	@PatchMapping("/lseclmnvs/{aid}")
    ResponseEntity<LseClmNv> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseClmNv newData = mapper.convertValue(newMap, LseClmNv.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rcpYymm"))
                            oldData.setRcpYymm(newData.getRcpYymm());
                        if (strKey.equals("rcpNvSeqno"))
                            oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                        if (strKey.equals("clmpsSeqno"))
                            oldData.setClmpsSeqno(newData.getClmpsSeqno());
                        if (strKey.equals("clmNvSeqno"))
                            oldData.setClmNvSeqno(newData.getClmNvSeqno());
                        if (strKey.equals("dmStrSeqno"))
                            oldData.setDmStrSeqno(newData.getDmStrSeqno());
                        if (strKey.equals("dmNdSeqno"))
                            oldData.setDmNdSeqno(newData.getDmNdSeqno());
                        if (strKey.equals("clmNvdt"))
                            oldData.setClmNvdt(newData.getClmNvdt());
                        if (strKey.equals("clmNvHhmm"))
                            oldData.setClmNvHhmm(newData.getClmNvHhmm());
                        if (strKey.equals("clmTpcd"))
                            oldData.setClmTpcd(newData.getClmTpcd());
                        if (strKey.equals("clmCascd"))
                            oldData.setClmCascd(newData.getClmCascd());
                        if (strKey.equals("clm2Cascd"))
                            oldData.setClm2Cascd(newData.getClm2Cascd());
                        if (strKey.equals("clm3Cascd"))
                            oldData.setClm3Cascd(newData.getClm3Cascd());
                        if (strKey.equals("clmdt"))
                            oldData.setClmdt(newData.getClmdt());
                        if (strKey.equals("clmHhmm"))
                            oldData.setClmHhmm(newData.getClmHhmm());
                        if (strKey.equals("nvCn"))
                            oldData.setNvCn(newData.getNvCn());
                        if (strKey.equals("poutMtt"))
                            oldData.setPoutMtt(newData.getPoutMtt());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("xcrtApdt"))
                            oldData.setXcrtApdt(newData.getXcrtApdt());
                        if (strKey.equals("xcrt"))
                            oldData.setXcrt(newData.getXcrt());
                        if (strKey.equals("clmNvKndcd"))
                            oldData.setClmNvKndcd(newData.getClmNvKndcd());
                        if (strKey.equals("prvFlgcd"))
                            oldData.setPrvFlgcd(newData.getPrvFlgcd());
                        if (strKey.equals("prvdt"))
                            oldData.setPrvdt(newData.getPrvdt());
                        if (strKey.equals("cmpKyYr"))
                            oldData.setCmpKyYr(newData.getCmpKyYr());
                        if (strKey.equals("cmpKySeqno"))
                            oldData.setCmpKySeqno(newData.getCmpKySeqno());
                        if (strKey.equals("lctnFlgcd"))
                            oldData.setLctnFlgcd(newData.getLctnFlgcd());
                        if (strKey.equals("dtadr"))
                            oldData.setDtadr(newData.getDtadr());
                        if (strKey.equals("idmXpYn"))
                            oldData.setIdmXpYn(newData.getIdmXpYn());
                        if (strKey.equals("lwXpYn"))
                            oldData.setLwXpYn(newData.getLwXpYn());
                        if (strKey.equals("siuXpYn"))
                            oldData.setSiuXpYn(newData.getSiuXpYn());
                        if (strKey.equals("cvapXpYn"))
                            oldData.setCvapXpYn(newData.getCvapXpYn());
                        if (strKey.equals("udrtkAtpsYn"))
                            oldData.setUdrtkAtpsYn(newData.getUdrtkAtpsYn());
                        if (strKey.equals("obsYn"))
                            oldData.setObsYn(newData.getObsYn());
                        if (strKey.equals("dmSyCtn"))
                            oldData.setDmSyCtn(newData.getDmSyCtn());
                        if (strKey.equals("deYn"))
                            oldData.setDeYn(newData.getDeYn());
                        if (strKey.equals("drctDersDeCas"))
                            oldData.setDrctDersDeCas(newData.getDrctDersDeCas());
                        if (strKey.equals("midPrcgDeCas"))
                            oldData.setMidPrcgDeCas(newData.getMidPrcgDeCas());
                        if (strKey.equals("prcgDersDeCas"))
                            oldData.setPrcgDersDeCas(newData.getPrcgDersDeCas());
                        if (strKey.equals("etDeCas"))
                            oldData.setEtDeCas(newData.getEtDeCas());
                        if (strKey.equals("dePlcPstno"))
                            oldData.setDePlcPstno(newData.getDePlcPstno());
                        if (strKey.equals("dePlcSd"))
                            oldData.setDePlcSd(newData.getDePlcSd());
                        if (strKey.equals("dePlcSgng"))
                            oldData.setDePlcSgng(newData.getDePlcSgng());
                        if (strKey.equals("dePlcTwmd"))
                            oldData.setDePlcTwmd(newData.getDePlcTwmd());
                        if (strKey.equals("deplcRiOrLrdlp"))
                            oldData.setDeplcRiOrLrdlp(newData.getDeplcRiOrLrdlp());
                        if (strKey.equals("dePlcDtadr"))
                            oldData.setDePlcDtadr(newData.getDePlcDtadr());
                        if (strKey.equals("deplcRefIt"))
                            oldData.setDeplcRefIt(newData.getDeplcRefIt());
                        if (strKey.equals("deplcRoadNm"))
                            oldData.setDeplcRoadNm(newData.getDeplcRoadNm());
                        if (strKey.equals("deplcUndgFlgcd"))
                            oldData.setDeplcUndgFlgcd(newData.getDeplcUndgFlgcd());
                        if (strKey.equals("deplcMnBldno"))
                            oldData.setDeplcMnBldno(newData.getDeplcMnBldno());
                        if (strKey.equals("deplcSubBldno"))
                            oldData.setDeplcSubBldno(newData.getDeplcSubBldno());
                        if (strKey.equals("deplcNwAdrFlgcd"))
                            oldData.setDeplcNwAdrFlgcd(newData.getDeplcNwAdrFlgcd());
                        if (strKey.equals("deKndcd"))
                            oldData.setDeKndcd(newData.getDeKndcd());
                        if (strKey.equals("deDtKndcd"))
                            oldData.setDeDtKndcd(newData.getDeDtKndcd());
                        if (strKey.equals("deFlgcd"))
                            oldData.setDeFlgcd(newData.getDeFlgcd());
                        if (strKey.equals("dedt"))
                            oldData.setDedt(newData.getDedt());
                        if (strKey.equals("deHhmm"))
                            oldData.setDeHhmm(newData.getDeHhmm());
                        if (strKey.equals("deDgnHspcd"))
                            oldData.setDeDgnHspcd(newData.getDeDgnHspcd());
                        if (strKey.equals("deDgnHspBzmno"))
                            oldData.setDeDgnHspBzmno(newData.getDeDgnHspBzmno());
                        if (strKey.equals("deDgnHspnm"))
                            oldData.setDeDgnHspnm(newData.getDeDgnHspnm());
                        if (strKey.equals("deDgnHspFlgcd"))
                            oldData.setDeDgnHspFlgcd(newData.getDeDgnHspFlgcd());
                        if (strKey.equals("deDgnDrnm"))
                            oldData.setDeDgnDrnm(newData.getDeDgnDrnm());
                        if (strKey.equals("deDgnIntnsLicno"))
                            oldData.setDeDgnIntnsLicno(newData.getDeDgnIntnsLicno());
                        if (strKey.equals("pvspCnbrt"))
                            oldData.setPvspCnbrt(newData.getPvspCnbrt());
                        if (strKey.equals("pvspYn"))
                            oldData.setPvspYn(newData.getPvspYn());
                        if (strKey.equals("hspTdy"))
                            oldData.setHspTdy(newData.getHspTdy());
                        if (strKey.equals("hspTsm"))
                            oldData.setHspTsm(newData.getHspTsm());
                        if (strKey.equals("woncvHspTsm"))
                            oldData.setWoncvHspTsm(newData.getWoncvHspTsm());
                        if (strKey.equals("hspSlfchTsm"))
                            oldData.setHspSlfchTsm(newData.getHspSlfchTsm());
                        if (strKey.equals("woncvHspSlfchTsm"))
                            oldData.setWoncvHspSlfchTsm(newData.getWoncvHspSlfchTsm());
                        if (strKey.equals("otpTdy"))
                            oldData.setOtpTdy(newData.getOtpTdy());
                        if (strKey.equals("otpTsm"))
                            oldData.setOtpTsm(newData.getOtpTsm());
                        if (strKey.equals("woncvOtpTsm"))
                            oldData.setWoncvOtpTsm(newData.getWoncvOtpTsm());
                        if (strKey.equals("otpSlfchTsm"))
                            oldData.setOtpSlfchTsm(newData.getOtpSlfchTsm());
                        if (strKey.equals("woncvOtpSlfchTsm"))
                            oldData.setWoncvOtpSlfchTsm(newData.getWoncvOtpSlfchTsm());
                        if (strKey.equals("hspApprDmamt"))
                            oldData.setHspApprDmamt(newData.getHspApprDmamt());
                        if (strKey.equals("otpApprDmamt"))
                            oldData.setOtpApprDmamt(newData.getOtpApprDmamt());
                        if (strKey.equals("hagthYn"))
                            oldData.setHagthYn(newData.getHagthYn());
                        if (strKey.equals("opYn"))
                            oldData.setOpYn(newData.getOpYn());
                        if (strKey.equals("otcmCrIsYn"))
                            oldData.setOtcmCrIsYn(newData.getOtcmCrIsYn());
                        if (strKey.equals("dlalzCnfCn"))
                            oldData.setDlalzCnfCn(newData.getDlalzCnfCn());
                        if (strKey.equals("dlalzCnfFlgcd"))
                            oldData.setDlalzCnfFlgcd(newData.getDlalzCnfFlgcd());
                        if (strKey.equals("clmCrUsecd"))
                            oldData.setClmCrUsecd(newData.getClmCrUsecd());
                        if (strKey.equals("clmOperCrcd"))
                            oldData.setClmOperCrcd(newData.getClmOperCrcd());
                        if (strKey.equals("jbChSeqno"))
                            oldData.setJbChSeqno(newData.getJbChSeqno());
                        if (strKey.equals("nvJbcd"))
                            oldData.setNvJbcd(newData.getNvJbcd());
                        if (strKey.equals("dgndt"))
                            oldData.setDgndt(newData.getDgndt());
                        if (strKey.equals("dgnHhmm"))
                            oldData.setDgnHhmm(newData.getDgnHhmm());
                        if (strKey.equals("atkdt"))
                            oldData.setAtkdt(newData.getAtkdt());
                        if (strKey.equals("atkHhmm"))
                            oldData.setAtkHhmm(newData.getAtkHhmm());
                        if (strKey.equals("nsDgndt"))
                            oldData.setNsDgndt(newData.getNsDgndt());
                        if (strKey.equals("cancrDcnDgndt"))
                            oldData.setCancrDcnDgndt(newData.getCancrDcnDgndt());
                        if (strKey.equals("nvOrgcd"))
                            oldData.setNvOrgcd(newData.getNvOrgcd());
                        if (strKey.equals("nwTthSupmCt"))
                            oldData.setNwTthSupmCt(newData.getNwTthSupmCt());
                        if (strKey.equals("prevTthSupmCt"))
                            oldData.setPrevTthSupmCt(newData.getPrevTthSupmCt());
                        if (strKey.equals("mnthIcamt"))
                            oldData.setMnthIcamt(newData.getMnthIcamt());
                        if (strKey.equals("mnthIcEvdcd"))
                            oldData.setMnthIcEvdcd(newData.getMnthIcEvdcd());
                        if (strKey.equals("fltrt"))
                            oldData.setFltrt(newData.getFltrt());
                        if (strKey.equals("nsamt"))
                            oldData.setNsamt(newData.getNsamt());
                        if (strKey.equals("nextMdcf"))
                            oldData.setNextMdcf(newData.getNextMdcf());
                        if (strKey.equals("cslmnTamt"))
                            oldData.setCslmnTamt(newData.getCslmnTamt());
                        if (strKey.equals("idacDlYn"))
                            oldData.setIdacDlYn(newData.getIdacDlYn());
                        if (strKey.equals("idark"))
                            oldData.setIdark(newData.getIdark());
                        if (strKey.equals("idacl"))
                            oldData.setIdacl(newData.getIdacl());
                        if (strKey.equals("obsdt"))
                            oldData.setObsdt(newData.getObsdt());
                        if (strKey.equals("psbsnSlamt"))
                            oldData.setPsbsnSlamt(newData.getPsbsnSlamt());
                        if (strKey.equals("obsSlamt"))
                            oldData.setObsSlamt(newData.getObsSlamt());
                        if (strKey.equals("rcprSlamt"))
                            oldData.setRcprSlamt(newData.getRcprSlamt());
                        if (strKey.equals("srvfmSlamt"))
                            oldData.setSrvfmSlamt(newData.getSrvfmSlamt());
                        if (strKey.equals("fnrcs"))
                            oldData.setFnrcs(newData.getFnrcs());
                        if (strKey.equals("etSlamt"))
                            oldData.setEtSlamt(newData.getEtSlamt());
                        if (strKey.equals("idacDlPoutMtt"))
                            oldData.setIdacDlPoutMtt(newData.getIdacDlPoutMtt());
                        if (strKey.equals("dlOrg"))
                            oldData.setDlOrg(newData.getDlOrg());
                        if (strKey.equals("chrpsNm"))
                            oldData.setChrpsNm(newData.getChrpsNm());
                        if (strKey.equals("chrpsTlano"))
                            oldData.setChrpsTlano(newData.getChrpsTlano());
                        if (strKey.equals("chrpsTltno"))
                            oldData.setChrpsTltno(newData.getChrpsTltno());
                        if (strKey.equals("chrpsTlsno"))
                            oldData.setChrpsTlsno(newData.getChrpsTlsno());
                        if (strKey.equals("mdCnstYn"))
                            oldData.setMdCnstYn(newData.getMdCnstYn());
                        if (strKey.equals("lawCnstYn"))
                            oldData.setLawCnstYn(newData.getLawCnstYn());
                        if (strKey.equals("icStFlgcd"))
                            oldData.setIcStFlgcd(newData.getIcStFlgcd());
                        if (strKey.equals("ccpcd"))
                            oldData.setCcpcd(newData.getCcpcd());
                        if (strKey.equals("stIcSeqno"))
                            oldData.setStIcSeqno(newData.getStIcSeqno());
                        if (strKey.equals("stIcApStrdt"))
                            oldData.setStIcApStrdt(newData.getStIcApStrdt());
                        if (strKey.equals("actvtNddt"))
                            oldData.setActvtNddt(newData.getActvtNddt());
                        if (strKey.equals("mergObsrt"))
                            oldData.setMergObsrt(newData.getMergObsrt());
                        if (strKey.equals("agAmt"))
                            oldData.setAgAmt(newData.getAgAmt());
                        if (strKey.equals("owrnm"))
                            oldData.setOwrnm(newData.getOwrnm());
                        if (strKey.equals("ownrCmpBjpsRelcd"))
                            oldData.setOwnrCmpBjpsRelcd(newData.getOwnrCmpBjpsRelcd());
                        if (strKey.equals("rpairDays"))
                            oldData.setRpairDays(newData.getRpairDays());
                        if (strKey.equals("dmCrccd"))
                            oldData.setDmCrccd(newData.getDmCrccd());
                        if (strKey.equals("prgMoralNdx"))
                            oldData.setPrgMoralNdx(newData.getPrgMoralNdx());
                        if (strKey.equals("wrkTycd"))
                            oldData.setWrkTycd(newData.getWrkTycd());
                        if (strKey.equals("btpcd"))
                            oldData.setBtpcd(newData.getBtpcd());
                        if (strKey.equals("rtApMngmCcpcd"))
                            oldData.setRtApMngmCcpcd(newData.getRtApMngmCcpcd());
                        if (strKey.equals("bnnm"))
                            oldData.setBnnm(newData.getBnnm());
                        if (strKey.equals("bnCsfcd"))
                            oldData.setBnCsfcd(newData.getBnCsfcd());
                        if (strKey.equals("nvOrgKndcd"))
                            oldData.setNvOrgKndcd(newData.getNvOrgKndcd());
                        if (strKey.equals("tndPlc"))
                            oldData.setTndPlc(newData.getTndPlc());
                        if (strKey.equals("tndCntTlano"))
                            oldData.setTndCntTlano(newData.getTndCntTlano());
                        if (strKey.equals("tndCntTltno"))
                            oldData.setTndCntTltno(newData.getTndCntTltno());
                        if (strKey.equals("tndCntTlsno"))
                            oldData.setTndCntTlsno(newData.getTndCntTlsno());
                        if (strKey.equals("tndTpcd"))
                            oldData.setTndTpcd(newData.getTndTpcd());
                        if (strKey.equals("psbsnDays"))
                            oldData.setPsbsnDays(newData.getPsbsnDays());
                        if (strKey.equals("victmFltrt"))
                            oldData.setVictmFltrt(newData.getVictmFltrt());
                        if (strKey.equals("drctDmamt"))
                            oldData.setDrctDmamt(newData.getDrctDmamt());
                        if (strKey.equals("drtDmamt"))
                            oldData.setDrtDmamt(newData.getDrtDmamt());
                        if (strKey.equals("etDmamt"))
                            oldData.setEtDmamt(newData.getEtDmamt());
                        if (strKey.equals("trFlgcd"))
                            oldData.setTrFlgcd(newData.getTrFlgcd());
                        if (strKey.equals("clmPlc"))
                            oldData.setClmPlc(newData.getClmPlc());
                        if (strKey.equals("sngCoSeadmFlgcd"))
                            oldData.setSngCoSeadmFlgcd(newData.getSngCoSeadmFlgcd());
                        if (strKey.equals("coSeadmNm"))
                            oldData.setCoSeadmNm(newData.getCoSeadmNm());
                        if (strKey.equals("lttdFlgcd"))
                            oldData.setLttdFlgcd(newData.getLttdFlgcd());
                        if (strKey.equals("lttdDgr"))
                            oldData.setLttdDgr(newData.getLttdDgr());
                        if (strKey.equals("lttdMin"))
                            oldData.setLttdMin(newData.getLttdMin());
                        if (strKey.equals("lttdSec"))
                            oldData.setLttdSec(newData.getLttdSec());
                        if (strKey.equals("hdnFlgcd"))
                            oldData.setHdnFlgcd(newData.getHdnFlgcd());
                        if (strKey.equals("hdnDgr"))
                            oldData.setHdnDgr(newData.getHdnDgr());
                        if (strKey.equals("hdnMin"))
                            oldData.setHdnMin(newData.getHdnMin());
                        if (strKey.equals("hdnSec"))
                            oldData.setHdnSec(newData.getHdnSec());
                        if (strKey.equals("lossCas"))
                            oldData.setLossCas(newData.getLossCas());
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
                        if (strKey.equals("ntncd"))
                            oldData.setNtncd(newData.getNtncd());
                        if (strKey.equals("ctycd"))
                            oldData.setCtycd(newData.getCtycd());
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
                        if (strKey.equals("tempSaveYn"))
                            oldData.setTempSaveYn(newData.getTempSaveYn());
                        if (strKey.equals("clmInfoInpCd"))
                            oldData.setClmInfoInpCd(newData.getClmInfoInpCd());
                        if (strKey.equals("nmlInpImprRscd"))
                            oldData.setNmlInpImprRscd(newData.getNmlInpImprRscd());
                        if (strKey.equals("nmlInpImprRs"))
                            oldData.setNmlInpImprRs(newData.getNmlInpImprRs());
                        if (strKey.equals("chrpsRqDtMtt"))
                            oldData.setChrpsRqDtMtt(newData.getChrpsRqDtMtt());
                        if (strKey.equals("chrpsInpCnfFlgcd"))
                            oldData.setChrpsInpCnfFlgcd(newData.getChrpsInpCnfFlgcd());
                        if (strKey.equals("inpErChekRscd"))
                            oldData.setInpErChekRscd(newData.getInpErChekRscd());
                        if (strKey.equals("inpErChekRs"))
                            oldData.setInpErChekRs(newData.getInpErChekRs());
                        if (strKey.equals("inpErCnfmStfno"))
                            oldData.setInpErCnfmStfno(newData.getInpErCnfmStfno());
                        if (strKey.equals("xpDmamt"))
                            oldData.setXpDmamt(newData.getXpDmamt());
                        if (strKey.equals("selfChamt"))
                            oldData.setSelfChamt(newData.getSelfChamt());
                        if (strKey.equals("reRequFlgcd"))
                            oldData.setReRequFlgcd(newData.getReRequFlgcd());
                        if (strKey.equals("pyBkcd"))
                            oldData.setPyBkcd(newData.getPyBkcd());
                        if (strKey.equals("pyDpsnm"))
                            oldData.setPyDpsnm(newData.getPyDpsnm());
                        if (strKey.equals("pyActno"))
                            oldData.setPyActno(newData.getPyActno());
                        if (strKey.equals("dpsrDscno"))
                            oldData.setDpsrDscno(newData.getDpsrDscno());
                        if (strKey.equals("pyActCnfyn"))
                            oldData.setPyActCnfyn(newData.getPyActCnfyn());
                        if (strKey.equals("drctDersDeCascd"))
                            oldData.setDrctDersDeCascd(newData.getDrctDersDeCascd());
                        if (strKey.equals("pyMtdcd"))
                            oldData.setPyMtdcd(newData.getPyMtdcd());
                        if (strKey.equals("dpsrCtmno"))
                            oldData.setDpsrCtmno(newData.getDpsrCtmno());
                        if (strKey.equals("lsetmRtxDbDmYn"))
                            oldData.setLsetmRtxDbDmYn(newData.getLsetmRtxDbDmYn());
                        if (strKey.equals("lsetmRtxNinptYn"))
                            oldData.setLsetmRtxNinptYn(newData.getLsetmRtxNinptYn());
                        if (strKey.equals("clmRcpInpCnfCd"))
                            oldData.setClmRcpInpCnfCd(newData.getClmRcpInpCnfCd());
                        if (strKey.equals("clmRcpInpErcd"))
                            oldData.setClmRcpInpErcd(newData.getClmRcpInpErcd());
                        if (strKey.equals("clmRcpInpErRs"))
                            oldData.setClmRcpInpErRs(newData.getClmRcpInpErRs());
                        if (strKey.equals("clmRcpInpRetnDt"))
                            oldData.setClmRcpInpRetnDt(newData.getClmRcpInpRetnDt());
                        if (strKey.equals("clmRcpInpCpmtDt"))
                            oldData.setClmRcpInpCpmtDt(newData.getClmRcpInpCpmtDt());
                        if (strKey.equals("thrpsInvtnYn"))
                            oldData.setThrpsInvtnYn(newData.getThrpsInvtnYn());
                        if (strKey.equals("carno"))
                            oldData.setCarno(newData.getCarno());
                        if (strKey.equals("infoInpRstcd"))
                            oldData.setInfoInpRstcd(newData.getInfoInpRstcd());
                        if (strKey.equals("infoInpRstErcd"))
                            oldData.setInfoInpRstErcd(newData.getInfoInpRstErcd());
                        if (strKey.equals("infoInpRstErRs"))
                            oldData.setInfoInpRstErRs(newData.getInfoInpRstErRs());
                        if (strKey.equals("infoInpCnfCd"))
                            oldData.setInfoInpCnfCd(newData.getInfoInpCnfCd());
                        if (strKey.equals("infoInpCnfErcd"))
                            oldData.setInfoInpCnfErcd(newData.getInfoInpCnfErcd());
                        if (strKey.equals("infoInpCnfErRs"))
                            oldData.setInfoInpCnfErRs(newData.getInfoInpCnfErRs());
                        if (strKey.equals("cnfStfno"))
                            oldData.setCnfStfno(newData.getCnfStfno());
                        if (strKey.equals("clmFlgcd"))
                            oldData.setClmFlgcd(newData.getClmFlgcd());
                        if (strKey.equals("slfchDcFlgcd"))
                            oldData.setSlfchDcFlgcd(newData.getSlfchDcFlgcd());
                        if (strKey.equals("tempSaveDthms"))
                            oldData.setTempSaveDthms(newData.getTempSaveDthms());
                        if (strKey.equals("tempSaveStfno"))
                            oldData.setTempSaveStfno(newData.getTempSaveStfno());
                        if (strKey.equals("rcpRetnStcd"))
                            oldData.setRcpRetnStcd(newData.getRcpRetnStcd());
                        if (strKey.equals("mnDgncd"))
                            oldData.setMnDgncd(newData.getMnDgncd());
                        if (strKey.equals("rtxChYncd"))
                            oldData.setRtxChYncd(newData.getRtxChYncd());
                        if (strKey.equals("ntPrpnCrYncd"))
                            oldData.setNtPrpnCrYncd(newData.getNtPrpnCrYncd());
                        if (strKey.equals("dtspcInpCnfdt"))
                            oldData.setDtspcInpCnfdt(newData.getDtspcInpCnfdt());
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
	
    // @Operation(summary = "사고조사 삭제" , description = "사고조사 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseClmNv", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseClmNv.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lseclmnvs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
