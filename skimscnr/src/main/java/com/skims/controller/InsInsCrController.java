/**
 * InsInsCr Entity Controller 클래스
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
import com.skims.domain.entity.InsInsCr;
import com.skims.domain.repository.InsInsCrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsInsCr 보험계약 Controller")
@Slf4j
public class InsInsCrController {

    @Autowired
    InsInsCrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "보험계약 전체조회" , summary = "보험계약 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insinscrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInsCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insinscrs")
    public ResponseEntity<Page<InsInsCr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "보험계약 Key조회" , description = "보험계약 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsInsCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInsCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInsCr not found", content = @Content) })
    @GetMapping("/insinscrs/{aid}")
    public ResponseEntity<InsInsCr> getById(@PathVariable("aid") Long aid) {
        Optional<InsInsCr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "보험계약 등록" , description = "보험계약 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsInsCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInsCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insinscrs")
    ResponseEntity<InsInsCr> postData(@RequestBody InsInsCr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "보험계약 수정" , description = "보험계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInsCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInsCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInsCr not found", content = @Content) })
    @PutMapping("/insinscrs/{aid}")
    ResponseEntity<InsInsCr> putData(@RequestBody InsInsCr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "보험계약 수정" , description = "보험계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInsCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInsCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInsCr not found", content = @Content) })
	@PatchMapping("/insinscrs/{aid}")
    ResponseEntity<InsInsCr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsInsCr newData = mapper.convertValue(newMap, InsInsCr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "apStrdt" : oldData.setApStrdt(newData.getApStrdt()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "valdNdsYn" : oldData.setValdNdsYn(newData.getValdNdsYn()); break;
						    case "ndsApStrDthms" : oldData.setNdsApStrDthms(newData.getNdsApStrDthms()); break;
						    case "ndsApNdDthms" : oldData.setNdsApNdDthms(newData.getNdsApNdDthms()); break;
						    case "fnlCrStcd" : oldData.setFnlCrStcd(newData.getFnlCrStcd()); break;
						    case "fnlCrDtStcd" : oldData.setFnlCrDtStcd(newData.getFnlCrDtStcd()); break;
						    case "fnlPartCvrStcd" : oldData.setFnlPartCvrStcd(newData.getFnlPartCvrStcd()); break;
						    case "fnlCrStChdt" : oldData.setFnlCrStChdt(newData.getFnlCrStChdt()); break;
						    case "cnrdt" : oldData.setCnrdt(newData.getCnrdt()); break;
						    case "plno" : oldData.setPlno(newData.getPlno()); break;
						    case "cgafChSeqno" : oldData.setCgafChSeqno(newData.getCgafChSeqno()); break;
						    case "fnlPymSeq" : oldData.setFnlPymSeq(newData.getFnlPymSeq()); break;
						    case "fnlPymYymm" : oldData.setFnlPymYymm(newData.getFnlPymYymm()); break;
						    case "plyLvlFlgcd" : oldData.setPlyLvlFlgcd(newData.getPlyLvlFlgcd()); break;
						    case "gdcd" : oldData.setGdcd(newData.getGdcd()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "insImcd" : oldData.setInsImcd(newData.getInsImcd()); break;
						    case "nwRnwFlgcd" : oldData.setNwRnwFlgcd(newData.getNwRnwFlgcd()); break;
						    case "apldt" : oldData.setApldt(newData.getApldt()); break;
						    case "trmSctFlgcd" : oldData.setTrmSctFlgcd(newData.getTrmSctFlgcd()); break;
						    case "insSt" : oldData.setInsSt(newData.getInsSt()); break;
						    case "insStHms" : oldData.setInsStHms(newData.getInsStHms()); break;
						    case "insClstr" : oldData.setInsClstr(newData.getInsClstr()); break;
						    case "insClstrHms" : oldData.setInsClstrHms(newData.getInsClstrHms()); break;
						    case "insDays" : oldData.setInsDays(newData.getInsDays()); break;
						    case "instrMc" : oldData.setInstrMc(newData.getInstrMc()); break;
						    case "instrYyct" : oldData.setInstrYyct(newData.getInstrYyct()); break;
						    case "condtTApPrm" : oldData.setCondtTApPrm(newData.getCondtTApPrm()); break;
						    case "pymMtdcd" : oldData.setPymMtdcd(newData.getPymMtdcd()); break;
						    case "ceRowcd" : oldData.setCeRowcd(newData.getCeRowcd()); break;
						    case "plyRcMtdcd" : oldData.setPlyRcMtdcd(newData.getPlyRcMtdcd()); break;
						    case "holoSignYn" : oldData.setHoloSignYn(newData.getHoloSignYn()); break;
						    case "grCrYn" : oldData.setGrCrYn(newData.getGrCrYn()); break;
						    case "crChncd" : oldData.setCrChncd(newData.getCrChncd()); break;
						    case "cprtbAdmno" : oldData.setCprtbAdmno(newData.getCprtbAdmno()); break;
						    case "cmpgBjYn" : oldData.setCmpgBjYn(newData.getCmpgBjYn()); break;
						    case "nrdct" : oldData.setNrdct(newData.getNrdct()); break;
						    case "udrtkTycd" : oldData.setUdrtkTycd(newData.getUdrtkTycd()); break;
						    case "crycd" : oldData.setCrycd(newData.getCrycd()); break;
						    case "otcmMgCmpcd" : oldData.setOtcmMgCmpcd(newData.getOtcmMgCmpcd()); break;
						    case "otcmPlyno" : oldData.setOtcmPlyno(newData.getOtcmPlyno()); break;
						    case "otcmPlySsdt" : oldData.setOtcmPlySsdt(newData.getOtcmPlySsdt()); break;
						    case "agmtAqrRtFlgcd" : oldData.setAgmtAqrRtFlgcd(newData.getAgmtAqrRtFlgcd()); break;
						    case "nscYn" : oldData.setNscYn(newData.getNscYn()); break;
						    case "bkAdmno" : oldData.setBkAdmno(newData.getBkAdmno()); break;
						    case "bkBrcd" : oldData.setBkBrcd(newData.getBkBrcd()); break;
						    case "bkExtnQfp" : oldData.setBkExtnQfp(newData.getBkExtnQfp()); break;
						    case "bkIpps" : oldData.setBkIpps(newData.getBkIpps()); break;
						    case "hscsHsFlgcd" : oldData.setHscsHsFlgcd(newData.getHscsHsFlgcd()); break;
						    case "psCstYn" : oldData.setPsCstYn(newData.getPsCstYn()); break;
						    case "rtAqrRqno" : oldData.setRtAqrRqno(newData.getRtAqrRqno()); break;
						    case "onwCrFlgcd" : oldData.setOnwCrFlgcd(newData.getOnwCrFlgcd()); break;
						    case "rvCcldt" : oldData.setRvCcldt(newData.getRvCcldt()); break;
						    case "fmlct" : oldData.setFmlct(newData.getFmlct()); break;
						    case "bzcsQtrtApYn" : oldData.setBzcsQtrtApYn(newData.getBzcsQtrtApYn()); break;
						    case "prortShtmFlgcd" : oldData.setPrortShtmFlgcd(newData.getPrortShtmFlgcd()); break;
						    case "samePlyFlgcd" : oldData.setSamePlyFlgcd(newData.getSamePlyFlgcd()); break;
						    case "dcXcApFlgcd" : oldData.setDcXcApFlgcd(newData.getDcXcApFlgcd()); break;
						    case "pypofSymb" : oldData.setPypofSymb(newData.getPypofSymb()); break;
						    case "rgltVltct" : oldData.setRgltVltct(newData.getRgltVltct()); break;
						    case "rgltVltPoct" : oldData.setRgltVltPoct(newData.getRgltVltPoct()); break;
						    case "rgltVltcd" : oldData.setRgltVltcd(newData.getRgltVltcd()); break;
						    case "isCrrcd" : oldData.setIsCrrcd(newData.getIsCrrcd()); break;
						    case "spcXccd" : oldData.setSpcXccd(newData.getSpcXccd()); break;
						    case "dtyPymMtdcd" : oldData.setDtyPymMtdcd(newData.getDtyPymMtdcd()); break;
						    case "pstRpblIsYn" : oldData.setPstRpblIsYn(newData.getPstRpblIsYn()); break;
						    case "gnCoObjFlgcd" : oldData.setGnCoObjFlgcd(newData.getGnCoObjFlgcd()); break;
						    case "coObjAsno" : oldData.setCoObjAsno(newData.getCoObjAsno()); break;
						    case "bfcrIscmp" : oldData.setBfcrIscmp(newData.getBfcrIscmp()); break;
						    case "bfcrIkdcd" : oldData.setBfcrIkdcd(newData.getBfcrIkdcd()); break;
						    case "bfcrYear" : oldData.setBfcrYear(newData.getBfcrYear()); break;
						    case "bfcrNo" : oldData.setBfcrNo(newData.getBfcrNo()); break;
						    case "bfcrInsSt" : oldData.setBfcrInsSt(newData.getBfcrInsSt()); break;
						    case "bfcrInsClstr" : oldData.setBfcrInsClstr(newData.getBfcrInsClstr()); break;
						    case "bfcrAprt" : oldData.setBfcrAprt(newData.getBfcrAprt()); break;
						    case "dvpnsPlyno" : oldData.setDvpnsPlyno(newData.getDvpnsPlyno()); break;
						    case "dvpnsJbcd" : oldData.setDvpnsJbcd(newData.getDvpnsJbcd()); break;
						    case "udrtkGuArecd" : oldData.setUdrtkGuArecd(newData.getUdrtkGuArecd()); break;
						    case "udrtkGrdcd" : oldData.setUdrtkGrdcd(newData.getUdrtkGrdcd()); break;
						    case "sngCrFlgcd" : oldData.setSngCrFlgcd(newData.getSngCrFlgcd()); break;
						    case "insItmSmccd" : oldData.setInsItmSmccd(newData.getInsItmSmccd()); break;
						    case "fstiRpPrm" : oldData.setFstiRpPrm(newData.getFstiRpPrm()); break;
						    case "dcXcGrdcd" : oldData.setDcXcGrdcd(newData.getDcXcGrdcd()); break;
						    case "aSctCt" : oldData.setASctCt(newData.getASctCt()); break;
						    case "bSctCt" : oldData.setBSctCt(newData.getBSctCt()); break;
						    case "bfcrDcXcGrdcd" : oldData.setBfcrDcXcGrdcd(newData.getBfcrDcXcGrdcd()); break;
						    case "dcXcSameGrdyn" : oldData.setDcXcSameGrdyn(newData.getDcXcSameGrdyn()); break;
						    case "rpblInsPlyno" : oldData.setRpblInsPlyno(newData.getRpblInsPlyno()); break;
						    case "repyNtRcpdt" : oldData.setRepyNtRcpdt(newData.getRepyNtRcpdt()); break;
						    case "repyNtRcpSeqno" : oldData.setRepyNtRcpSeqno(newData.getRepyNtRcpSeqno()); break;
						    case "xwpyRtntmNtpyYn" : oldData.setXwpyRtntmNtpyYn(newData.getXwpyRtntmNtpyYn()); break;
						    case "y1ClmCt" : oldData.setY1ClmCt(newData.getY1ClmCt()); break;
						    case "y1ClmYn" : oldData.setY1ClmYn(newData.getY1ClmYn()); break;
						    case "y3ClmCt" : oldData.setY3ClmCt(newData.getY3ClmCt()); break;
						    case "vltSpcXccd" : oldData.setVltSpcXccd(newData.getVltSpcXccd()); break;
						    case "xacd" : oldData.setXacd(newData.getXacd()); break;
						    case "xcCyccd" : oldData.setXcCyccd(newData.getXcCyccd()); break;
						    case "crTpcd" : oldData.setCrTpcd(newData.getCrTpcd()); break;
						    case "hltInsIsYn" : oldData.setHltInsIsYn(newData.getHltInsIsYn()); break;
						    case "unfRtApYn" : oldData.setUnfRtApYn(newData.getUnfRtApYn()); break;
						    case "avgAgeFlgcd" : oldData.setAvgAgeFlgcd(newData.getAvgAgeFlgcd()); break;
						    case "dpsrt" : oldData.setDpsrt(newData.getDpsrt()); break;
						    case "dpstPrmCcFlgcd" : oldData.setDpstPrmCcFlgcd(newData.getDpstPrmCcFlgcd()); break;
						    case "xcPrdy" : oldData.setXcPrdy(newData.getXcPrdy()); break;
						    case "isTpcd" : oldData.setIsTpcd(newData.getIsTpcd()); break;
						    case "ssngArecd" : oldData.setSsngArecd(newData.getSsngArecd()); break;
						    case "ssst" : oldData.setSsst(newData.getSsst()); break;
						    case "ssngOjccd" : oldData.setSsngOjccd(newData.getSsngOjccd()); break;
						    case "trfRidcd" : oldData.setTrfRidcd(newData.getTrfRidcd()); break;
						    case "ssngCmpnm" : oldData.setSsngCmpnm(newData.getSsngCmpnm()); break;
						    case "nrdpsAdmMtdcd" : oldData.setNrdpsAdmMtdcd(newData.getNrdpsAdmMtdcd()); break;
						    case "stdsbRkGrdcd" : oldData.setStdsbRkGrdcd(newData.getStdsbRkGrdcd()); break;
						    case "stdsbFlgcd" : oldData.setStdsbFlgcd(newData.getStdsbFlgcd()); break;
						    case "rlStdsb" : oldData.setRlStdsb(newData.getRlStdsb()); break;
						    case "prctcPln" : oldData.setPrctcPln(newData.getPrctcPln()); break;
						    case "prctcNm" : oldData.setPrctcNm(newData.getPrctcNm()); break;
						    case "prctcMntct" : oldData.setPrctcMntct(newData.getPrctcMntct()); break;
						    case "dmgrtMdCfcapBzmno" : oldData.setDmgrtMdCfcapBzmno(newData.getDmgrtMdCfcapBzmno()); break;
						    case "dmgrtMdCfcCrpno" : oldData.setDmgrtMdCfcCrpno(newData.getDmgrtMdCfcCrpno()); break;
						    case "dmgrtMdCfcapYn" : oldData.setDmgrtMdCfcapYn(newData.getDmgrtMdCfcapYn()); break;
						    case "fcntrDmgrt" : oldData.setFcntrDmgrt(newData.getFcntrDmgrt()); break;
						    case "dmgrtMdCfc" : oldData.setDmgrtMdCfc(newData.getDmgrtMdCfc()); break;
						    case "fcntrSclcd" : oldData.setFcntrSclcd(newData.getFcntrSclcd()); break;
						    case "ccPrm" : oldData.setCcPrm(newData.getCcPrm()); break;
						    case "nkorRsYn" : oldData.setNkorRsYn(newData.getNkorRsYn()); break;
						    case "insRtFlgcd" : oldData.setInsRtFlgcd(newData.getInsRtFlgcd()); break;
						    case "apCvrFlgcd" : oldData.setApCvrFlgcd(newData.getApCvrFlgcd()); break;
						    case "chafAnnuApprm" : oldData.setChafAnnuApprm(newData.getChafAnnuApprm()); break;
						    case "rtAqrUntFlgcd" : oldData.setRtAqrUntFlgcd(newData.getRtAqrUntFlgcd()); break;
						    case "rtAqrStncd" : oldData.setRtAqrStncd(newData.getRtAqrStncd()); break;
						    case "bsnsChrpsStfno" : oldData.setBsnsChrpsStfno(newData.getBsnsChrpsStfno()); break;
						    case "intnRltno" : oldData.setIntnRltno(newData.getIntnRltno()); break;
						    case "cstcpFlgcd" : oldData.setCstcpFlgcd(newData.getCstcpFlgcd()); break;
						    case "chrAdmrStfno" : oldData.setChrAdmrStfno(newData.getChrAdmrStfno()); break;
						    case "nvgtnArecd" : oldData.setNvgtnArecd(newData.getNvgtnArecd()); break;
						    case "etNvgtnArenm" : oldData.setEtNvgtnArenm(newData.getEtNvgtnArenm()); break;
						    case "condtQtrtFrcapYn" : oldData.setCondtQtrtFrcapYn(newData.getCondtQtrtFrcapYn()); break;
						    case "ssPlyct" : oldData.setSsPlyct(newData.getSsPlyct()); break;
						    case "trsprCmpnm" : oldData.setTrsprCmpnm(newData.getTrsprCmpnm()); break;
						    case "dstcd" : oldData.setDstcd(newData.getDstcd()); break;
						    case "spclTrDst" : oldData.setSpclTrDst(newData.getSpclTrDst()); break;
						    case "trDays" : oldData.setTrDays(newData.getTrDays()); break;
						    case "snddt" : oldData.setSnddt(newData.getSnddt()); break;
						    case "arvdt" : oldData.setArvdt(newData.getArvdt()); break;
						    case "lowtPrmApYn" : oldData.setLowtPrmApYn(newData.getLowtPrmApYn()); break;
						    case "slfdt" : oldData.setSlfdt(newData.getSlfdt()); break;
						    case "outusMncd" : oldData.setOutusMncd(newData.getOutusMncd()); break;
						    case "ivamtPrtYn" : oldData.setIvamtPrtYn(newData.getIvamtPrtYn()); break;
						    case "blYn" : oldData.setBlYn(newData.getBlYn()); break;
						    case "vpClm" : oldData.setVpClm(newData.getVpClm()); break;
						    case "dcMtdcd" : oldData.setDcMtdcd(newData.getDcMtdcd()); break;
						    case "dvdldCt" : oldData.setDvdldCt(newData.getDvdldCt()); break;
						    case "xpiptOpFlgcd" : oldData.setXpiptOpFlgcd(newData.getXpiptOpFlgcd()); break;
						    case "cargDtFlgcd" : oldData.setCargDtFlgcd(newData.getCargDtFlgcd()); break;
						    case "trtYymm" : oldData.setTrtYymm(newData.getTrtYymm()); break;
						    case "fltno" : oldData.setFltno(newData.getFltno()); break;
						    case "fltDcYn" : oldData.setFltDcYn(newData.getFltDcYn()); break;
						    case "shtmXcYn" : oldData.setShtmXcYn(newData.getShtmXcYn()); break;
						    case "annuShtmFlgcd" : oldData.setAnnuShtmFlgcd(newData.getAnnuShtmFlgcd()); break;
						    case "opCrano" : oldData.setOpCrano(newData.getOpCrano()); break;
						    case "opCrChSeq" : oldData.setOpCrChSeq(newData.getOpCrChSeq()); break;
						    case "opCrNapcYn" : oldData.setOpCrNapcYn(newData.getOpCrNapcYn()); break;
						    case "nvCtmno" : oldData.setNvCtmno(newData.getNvCtmno()); break;
						    case "nvCprtEntpSeqno" : oldData.setNvCprtEntpSeqno(newData.getNvCprtEntpSeqno()); break;
						    case "xcCtmno" : oldData.setXcCtmno(newData.getXcCtmno()); break;
						    case "xcCprtEntpSeqno" : oldData.setXcCprtEntpSeqno(newData.getXcCprtEntpSeqno()); break;
						    case "marneOndsNo" : oldData.setMarneOndsNo(newData.getMarneOndsNo()); break;
						    case "nvgtnSctDstcd" : oldData.setNvgtnSctDstcd(newData.getNvgtnSctDstcd()); break;
						    case "inlwtSlngYn" : oldData.setInlwtSlngYn(newData.getInlwtSlngYn()); break;
						    case "cmpxTrYn" : oldData.setCmpxTrYn(newData.getCmpxTrYn()); break;
						    case "prvsnDcnFlgcd" : oldData.setPrvsnDcnFlgcd(newData.getPrvsnDcnFlgcd()); break;
						    case "crObjnm" : oldData.setCrObjnm(newData.getCrObjnm()); break;
						    case "pymTrmFlgcd" : oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd()); break;
						    case "pymTrm" : oldData.setPymTrm(newData.getPymTrm()); break;
						    case "pymTrmcd" : oldData.setPymTrmcd(newData.getPymTrmcd()); break;
						    case "rlPymTrm" : oldData.setRlPymTrm(newData.getRlPymTrm()); break;
						    case "ndFlgcd" : oldData.setNdFlgcd(newData.getNdFlgcd()); break;
						    case "nd" : oldData.setNd(newData.getNd()); break;
						    case "ndcd" : oldData.setNdcd(newData.getNdcd()); break;
						    case "rlNdTrm" : oldData.setRlNdTrm(newData.getRlNdTrm()); break;
						    case "ndRtamtPyTpcd" : oldData.setNdRtamtPyTpcd(newData.getNdRtamtPyTpcd()); break;
						    case "inrInsCrStrdt" : oldData.setInrInsCrStrdt(newData.getInrInsCrStrdt()); break;
						    case "inrInsCrNddt" : oldData.setInrInsCrNddt(newData.getInrInsCrNddt()); break;
						    case "pymCyccd" : oldData.setPymCyccd(newData.getPymCyccd()); break;
						    case "typeFlgcd" : oldData.setTypeFlgcd(newData.getTypeFlgcd()); break;
						    case "dfrTrm" : oldData.setDfrTrm(newData.getDfrTrm()); break;
						    case "mwPyMtdcd" : oldData.setMwPyMtdcd(newData.getMwPyMtdcd()); break;
						    case "rviNt" : oldData.setRviNt(newData.getRviNt()); break;
						    case "rviNtCrdt" : oldData.setRviNtCrdt(newData.getRviNtCrdt()); break;
						    case "anPyStdt" : oldData.setAnPyStdt(newData.getAnPyStdt()); break;
						    case "anPyAge" : oldData.setAnPyAge(newData.getAnPyAge()); break;
						    case "anPyTrm" : oldData.setAnPyTrm(newData.getAnPyTrm()); break;
						    case "annuAnPyCt" : oldData.setAnnuAnPyCt(newData.getAnnuAnPyCt()); break;
						    case "anPytcd" : oldData.setAnPytcd(newData.getAnPytcd()); break;
						    case "anPyGirt" : oldData.setAnPyGirt(newData.getAnPyGirt()); break;
						    case "txPfFlgcd" : oldData.setTxPfFlgcd(newData.getTxPfFlgcd()); break;
						    case "ihtYn" : oldData.setIhtYn(newData.getIhtYn()); break;
						    case "txPfamt" : oldData.setTxPfamt(newData.getTxPfamt()); break;
						    case "txPfRgtFlgcd" : oldData.setTxPfRgtFlgcd(newData.getTxPfRgtFlgcd()); break;
						    case "txPfCncd" : oldData.setTxPfCncd(newData.getTxPfCncd()); break;
						    case "txPfCnldt" : oldData.setTxPfCnldt(newData.getTxPfCnldt()); break;
						    case "txPfGdCsfcd" : oldData.setTxPfGdCsfcd(newData.getTxPfGdCsfcd()); break;
						    case "crCvrIsYn" : oldData.setCrCvrIsYn(newData.getCrCvrIsYn()); break;
						    case "cvYn" : oldData.setCvYn(newData.getCvYn()); break;
						    case "grCrFlgcd" : oldData.setGrCrFlgcd(newData.getGrCrFlgcd()); break;
						    case "grDscrt" : oldData.setGrDscrt(newData.getGrDscrt()); break;
						    case "pymXmpStdt" : oldData.setPymXmpStdt(newData.getPymXmpStdt()); break;
						    case "avgRtApYn" : oldData.setAvgRtApYn(newData.getAvgRtApYn()); break;
						    case "manAvgApAge" : oldData.setManAvgApAge(newData.getManAvgApAge()); break;
						    case "fmlAvgApAge" : oldData.setFmlAvgApAge(newData.getFmlAvgApAge()); break;
						    case "manAvgInjrRnkcd" : oldData.setManAvgInjrRnkcd(newData.getManAvgInjrRnkcd()); break;
						    case "fmlAvgInjrRnkcd" : oldData.setFmlAvgInjrRnkcd(newData.getFmlAvgInjrRnkcd()); break;
						    case "manAvgDrveTycd" : oldData.setManAvgDrveTycd(newData.getManAvgDrveTycd()); break;
						    case "fmlAvgDrveTycd" : oldData.setFmlAvgDrveTycd(newData.getFmlAvgDrveTycd()); break;
						    case "plcd" : oldData.setPlcd(newData.getPlcd()); break;
						    case "ibnfPyTpcd" : oldData.setIbnfPyTpcd(newData.getIbnfPyTpcd()); break;
						    case "drveTycd" : oldData.setDrveTycd(newData.getDrveTycd()); break;
						    case "drveCrUsecd" : oldData.setDrveCrUsecd(newData.getDrveCrUsecd()); break;
						    case "embrMinsrYn" : oldData.setEmbrMinsrYn(newData.getEmbrMinsrYn()); break;
						    case "sbPymRqYn" : oldData.setSbPymRqYn(newData.getSbPymRqYn()); break;
						    case "dcStFlgcd" : oldData.setDcStFlgcd(newData.getDcStFlgcd()); break;
						    case "aplTycd" : oldData.setAplTycd(newData.getAplTycd()); break;
						    case "sepCrFlgcd" : oldData.setSepCrFlgcd(newData.getSepCrFlgcd()); break;
						    case "ibnfSbPymYn" : oldData.setIbnfSbPymYn(newData.getIbnfSbPymYn()); break;
						    case "ibnfSbPymSt" : oldData.setIbnfSbPymSt(newData.getIbnfSbPymSt()); break;
						    case "rnwNddt" : oldData.setRnwNddt(newData.getRnwNddt()); break;
						    case "signMtdcd" : oldData.setSignMtdcd(newData.getSignMtdcd()); break;
						    case "ndSepRtnTycd" : oldData.setNdSepRtnTycd(newData.getNdSepRtnTycd()); break;
						    case "ndSepPyMtdcd" : oldData.setNdSepPyMtdcd(newData.getNdSepPyMtdcd()); break;
						    case "baPrm" : oldData.setBaPrm(newData.getBaPrm()); break;
						    case "apPrm" : oldData.setApPrm(newData.getApPrm()); break;
						    case "stdbdPrm" : oldData.setStdbdPrm(newData.getStdbdPrm()); break;
						    case "sustdPrm" : oldData.setSustdPrm(newData.getSustdPrm()); break;
						    case "befoPlyno" : oldData.setBefoPlyno(newData.getBefoPlyno()); break;
						    case "fnlDhStfno" : oldData.setFnlDhStfno(newData.getFnlDhStfno()); break;
						    case "gdxpnSsBjYn" : oldData.setGdxpnSsBjYn(newData.getGdxpnSsBjYn()); break;
						    case "selfCrYn" : oldData.setSelfCrYn(newData.getSelfCrYn()); break;
						    case "rdchCrYn" : oldData.setRdchCrYn(newData.getRdchCrYn()); break;
						    case "crInfoCvapYn" : oldData.setCrInfoCvapYn(newData.getCrInfoCvapYn()); break;
						    case "gdxpnTrnmYn" : oldData.setGdxpnTrnmYn(newData.getGdxpnTrnmYn()); break;
						    case "nwcrScanBjYn" : oldData.setNwcrScanBjYn(newData.getNwcrScanBjYn()); break;
						    case "nwcrScanCpltYn" : oldData.setNwcrScanCpltYn(newData.getNwcrScanCpltYn()); break;
						    case "nwcrScanCpltDthms" : oldData.setNwcrScanCpltDthms(newData.getNwcrScanCpltDthms()); break;
						    case "guPlyno" : oldData.setGuPlyno(newData.getGuPlyno()); break;
						    case "guFireGdcd" : oldData.setGuFireGdcd(newData.getGuFireGdcd()); break;
						    case "guFireGdnm" : oldData.setGuFireGdnm(newData.getGuFireGdnm()); break;
						    case "dcPlyno" : oldData.setDcPlyno(newData.getDcPlyno()); break;
						    case "pprPlyno" : oldData.setPprPlyno(newData.getPprPlyno()); break;
						    case "grCtmno" : oldData.setGrCtmno(newData.getGrCtmno()); break;
						    case "bdlPymYn" : oldData.setBdlPymYn(newData.getBdlPymYn()); break;
						    case "rltnPlyno" : oldData.setRltnPlyno(newData.getRltnPlyno()); break;
						    case "fnDlRlOwnrFlgcd" : oldData.setFnDlRlOwnrFlgcd(newData.getFnDlRlOwnrFlgcd()); break;
						    case "mgCmpcd" : oldData.setMgCmpcd(newData.getMgCmpcd()); break;
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
	
    // @Operation(summary = "보험계약 삭제" , description = "보험계약 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsInsCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInsCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insinscrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
