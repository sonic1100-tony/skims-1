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
import com.skims.domain.entity.InsInsCr;
import com.skims.domain.repository.InsInsCrRepository;

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setValdNdsYn(newData.getValdNdsYn());
                    oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                    oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                    oldData.setFnlCrStcd(newData.getFnlCrStcd());
                    oldData.setFnlCrDtStcd(newData.getFnlCrDtStcd());
                    oldData.setFnlPartCvrStcd(newData.getFnlPartCvrStcd());
                    oldData.setFnlCrStChdt(newData.getFnlCrStChdt());
                    oldData.setCnrdt(newData.getCnrdt());
                    oldData.setPlno(newData.getPlno());
                    oldData.setCgafChSeqno(newData.getCgafChSeqno());
                    oldData.setFnlPymSeq(newData.getFnlPymSeq());
                    oldData.setFnlPymYymm(newData.getFnlPymYymm());
                    oldData.setPlyLvlFlgcd(newData.getPlyLvlFlgcd());
                    oldData.setGdcd(newData.getGdcd());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setNwRnwFlgcd(newData.getNwRnwFlgcd());
                    oldData.setApldt(newData.getApldt());
                    oldData.setTrmSctFlgcd(newData.getTrmSctFlgcd());
                    oldData.setInsSt(newData.getInsSt());
                    oldData.setInsStHms(newData.getInsStHms());
                    oldData.setInsClstr(newData.getInsClstr());
                    oldData.setInsClstrHms(newData.getInsClstrHms());
                    oldData.setInsDays(newData.getInsDays());
                    oldData.setInstrMc(newData.getInstrMc());
                    oldData.setInstrYyct(newData.getInstrYyct());
                    oldData.setCondtTApPrm(newData.getCondtTApPrm());
                    oldData.setPymMtdcd(newData.getPymMtdcd());
                    oldData.setCeRowcd(newData.getCeRowcd());
                    oldData.setPlyRcMtdcd(newData.getPlyRcMtdcd());
                    oldData.setHoloSignYn(newData.getHoloSignYn());
                    oldData.setGrCrYn(newData.getGrCrYn());
                    oldData.setCrChncd(newData.getCrChncd());
                    oldData.setCprtbAdmno(newData.getCprtbAdmno());
                    oldData.setCmpgBjYn(newData.getCmpgBjYn());
                    oldData.setNrdct(newData.getNrdct());
                    oldData.setUdrtkTycd(newData.getUdrtkTycd());
                    oldData.setCrycd(newData.getCrycd());
                    oldData.setOtcmMgCmpcd(newData.getOtcmMgCmpcd());
                    oldData.setOtcmPlyno(newData.getOtcmPlyno());
                    oldData.setOtcmPlySsdt(newData.getOtcmPlySsdt());
                    oldData.setAgmtAqrRtFlgcd(newData.getAgmtAqrRtFlgcd());
                    oldData.setNscYn(newData.getNscYn());
                    oldData.setBkAdmno(newData.getBkAdmno());
                    oldData.setBkBrcd(newData.getBkBrcd());
                    oldData.setBkExtnQfp(newData.getBkExtnQfp());
                    oldData.setBkIpps(newData.getBkIpps());
                    oldData.setHscsHsFlgcd(newData.getHscsHsFlgcd());
                    oldData.setPsCstYn(newData.getPsCstYn());
                    oldData.setRtAqrRqno(newData.getRtAqrRqno());
                    oldData.setOnwCrFlgcd(newData.getOnwCrFlgcd());
                    oldData.setRvCcldt(newData.getRvCcldt());
                    oldData.setFmlct(newData.getFmlct());
                    oldData.setBzcsQtrtApYn(newData.getBzcsQtrtApYn());
                    oldData.setPrortShtmFlgcd(newData.getPrortShtmFlgcd());
                    oldData.setSamePlyFlgcd(newData.getSamePlyFlgcd());
                    oldData.setDcXcApFlgcd(newData.getDcXcApFlgcd());
                    oldData.setPypofSymb(newData.getPypofSymb());
                    oldData.setRgltVltct(newData.getRgltVltct());
                    oldData.setRgltVltPoct(newData.getRgltVltPoct());
                    oldData.setRgltVltcd(newData.getRgltVltcd());
                    oldData.setIsCrrcd(newData.getIsCrrcd());
                    oldData.setSpcXccd(newData.getSpcXccd());
                    oldData.setDtyPymMtdcd(newData.getDtyPymMtdcd());
                    oldData.setPstRpblIsYn(newData.getPstRpblIsYn());
                    oldData.setGnCoObjFlgcd(newData.getGnCoObjFlgcd());
                    oldData.setCoObjAsno(newData.getCoObjAsno());
                    oldData.setBfcrIscmp(newData.getBfcrIscmp());
                    oldData.setBfcrIkdcd(newData.getBfcrIkdcd());
                    oldData.setBfcrYear(newData.getBfcrYear());
                    oldData.setBfcrNo(newData.getBfcrNo());
                    oldData.setBfcrInsSt(newData.getBfcrInsSt());
                    oldData.setBfcrInsClstr(newData.getBfcrInsClstr());
                    oldData.setBfcrAprt(newData.getBfcrAprt());
                    oldData.setDvpnsPlyno(newData.getDvpnsPlyno());
                    oldData.setDvpnsJbcd(newData.getDvpnsJbcd());
                    oldData.setUdrtkGuArecd(newData.getUdrtkGuArecd());
                    oldData.setUdrtkGrdcd(newData.getUdrtkGrdcd());
                    oldData.setSngCrFlgcd(newData.getSngCrFlgcd());
                    oldData.setInsItmSmccd(newData.getInsItmSmccd());
                    oldData.setFstiRpPrm(newData.getFstiRpPrm());
                    oldData.setDcXcGrdcd(newData.getDcXcGrdcd());
                    oldData.setASctCt(newData.getASctCt());
                    oldData.setBSctCt(newData.getBSctCt());
                    oldData.setBfcrDcXcGrdcd(newData.getBfcrDcXcGrdcd());
                    oldData.setDcXcSameGrdyn(newData.getDcXcSameGrdyn());
                    oldData.setRpblInsPlyno(newData.getRpblInsPlyno());
                    oldData.setRepyNtRcpdt(newData.getRepyNtRcpdt());
                    oldData.setRepyNtRcpSeqno(newData.getRepyNtRcpSeqno());
                    oldData.setXwpyRtntmNtpyYn(newData.getXwpyRtntmNtpyYn());
                    oldData.setY1ClmCt(newData.getY1ClmCt());
                    oldData.setY1ClmYn(newData.getY1ClmYn());
                    oldData.setY3ClmCt(newData.getY3ClmCt());
                    oldData.setVltSpcXccd(newData.getVltSpcXccd());
                    oldData.setXacd(newData.getXacd());
                    oldData.setXcCyccd(newData.getXcCyccd());
                    oldData.setCrTpcd(newData.getCrTpcd());
                    oldData.setHltInsIsYn(newData.getHltInsIsYn());
                    oldData.setUnfRtApYn(newData.getUnfRtApYn());
                    oldData.setAvgAgeFlgcd(newData.getAvgAgeFlgcd());
                    oldData.setDpsrt(newData.getDpsrt());
                    oldData.setDpstPrmCcFlgcd(newData.getDpstPrmCcFlgcd());
                    oldData.setXcPrdy(newData.getXcPrdy());
                    oldData.setIsTpcd(newData.getIsTpcd());
                    oldData.setSsngArecd(newData.getSsngArecd());
                    oldData.setSsst(newData.getSsst());
                    oldData.setSsngOjccd(newData.getSsngOjccd());
                    oldData.setTrfRidcd(newData.getTrfRidcd());
                    oldData.setSsngCmpnm(newData.getSsngCmpnm());
                    oldData.setNrdpsAdmMtdcd(newData.getNrdpsAdmMtdcd());
                    oldData.setStdsbRkGrdcd(newData.getStdsbRkGrdcd());
                    oldData.setStdsbFlgcd(newData.getStdsbFlgcd());
                    oldData.setRlStdsb(newData.getRlStdsb());
                    oldData.setPrctcPln(newData.getPrctcPln());
                    oldData.setPrctcNm(newData.getPrctcNm());
                    oldData.setPrctcMntct(newData.getPrctcMntct());
                    oldData.setDmgrtMdCfcapBzmno(newData.getDmgrtMdCfcapBzmno());
                    oldData.setDmgrtMdCfcCrpno(newData.getDmgrtMdCfcCrpno());
                    oldData.setDmgrtMdCfcapYn(newData.getDmgrtMdCfcapYn());
                    oldData.setFcntrDmgrt(newData.getFcntrDmgrt());
                    oldData.setDmgrtMdCfc(newData.getDmgrtMdCfc());
                    oldData.setFcntrSclcd(newData.getFcntrSclcd());
                    oldData.setCcPrm(newData.getCcPrm());
                    oldData.setNkorRsYn(newData.getNkorRsYn());
                    oldData.setInsRtFlgcd(newData.getInsRtFlgcd());
                    oldData.setApCvrFlgcd(newData.getApCvrFlgcd());
                    oldData.setChafAnnuApprm(newData.getChafAnnuApprm());
                    oldData.setRtAqrUntFlgcd(newData.getRtAqrUntFlgcd());
                    oldData.setRtAqrStncd(newData.getRtAqrStncd());
                    oldData.setBsnsChrpsStfno(newData.getBsnsChrpsStfno());
                    oldData.setIntnRltno(newData.getIntnRltno());
                    oldData.setCstcpFlgcd(newData.getCstcpFlgcd());
                    oldData.setChrAdmrStfno(newData.getChrAdmrStfno());
                    oldData.setNvgtnArecd(newData.getNvgtnArecd());
                    oldData.setEtNvgtnArenm(newData.getEtNvgtnArenm());
                    oldData.setCondtQtrtFrcapYn(newData.getCondtQtrtFrcapYn());
                    oldData.setSsPlyct(newData.getSsPlyct());
                    oldData.setTrsprCmpnm(newData.getTrsprCmpnm());
                    oldData.setDstcd(newData.getDstcd());
                    oldData.setSpclTrDst(newData.getSpclTrDst());
                    oldData.setTrDays(newData.getTrDays());
                    oldData.setSnddt(newData.getSnddt());
                    oldData.setArvdt(newData.getArvdt());
                    oldData.setLowtPrmApYn(newData.getLowtPrmApYn());
                    oldData.setSlfdt(newData.getSlfdt());
                    oldData.setOutusMncd(newData.getOutusMncd());
                    oldData.setIvamtPrtYn(newData.getIvamtPrtYn());
                    oldData.setBlYn(newData.getBlYn());
                    oldData.setVpClm(newData.getVpClm());
                    oldData.setDcMtdcd(newData.getDcMtdcd());
                    oldData.setDvdldCt(newData.getDvdldCt());
                    oldData.setXpiptOpFlgcd(newData.getXpiptOpFlgcd());
                    oldData.setCargDtFlgcd(newData.getCargDtFlgcd());
                    oldData.setTrtYymm(newData.getTrtYymm());
                    oldData.setFltno(newData.getFltno());
                    oldData.setFltDcYn(newData.getFltDcYn());
                    oldData.setShtmXcYn(newData.getShtmXcYn());
                    oldData.setAnnuShtmFlgcd(newData.getAnnuShtmFlgcd());
                    oldData.setOpCrano(newData.getOpCrano());
                    oldData.setOpCrChSeq(newData.getOpCrChSeq());
                    oldData.setOpCrNapcYn(newData.getOpCrNapcYn());
                    oldData.setNvCtmno(newData.getNvCtmno());
                    oldData.setNvCprtEntpSeqno(newData.getNvCprtEntpSeqno());
                    oldData.setXcCtmno(newData.getXcCtmno());
                    oldData.setXcCprtEntpSeqno(newData.getXcCprtEntpSeqno());
                    oldData.setMarneOndsNo(newData.getMarneOndsNo());
                    oldData.setNvgtnSctDstcd(newData.getNvgtnSctDstcd());
                    oldData.setInlwtSlngYn(newData.getInlwtSlngYn());
                    oldData.setCmpxTrYn(newData.getCmpxTrYn());
                    oldData.setPrvsnDcnFlgcd(newData.getPrvsnDcnFlgcd());
                    oldData.setCrObjnm(newData.getCrObjnm());
                    oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd());
                    oldData.setPymTrm(newData.getPymTrm());
                    oldData.setPymTrmcd(newData.getPymTrmcd());
                    oldData.setRlPymTrm(newData.getRlPymTrm());
                    oldData.setNdFlgcd(newData.getNdFlgcd());
                    oldData.setNd(newData.getNd());
                    oldData.setNdcd(newData.getNdcd());
                    oldData.setRlNdTrm(newData.getRlNdTrm());
                    oldData.setNdRtamtPyTpcd(newData.getNdRtamtPyTpcd());
                    oldData.setInrInsCrStrdt(newData.getInrInsCrStrdt());
                    oldData.setInrInsCrNddt(newData.getInrInsCrNddt());
                    oldData.setPymCyccd(newData.getPymCyccd());
                    oldData.setTypeFlgcd(newData.getTypeFlgcd());
                    oldData.setDfrTrm(newData.getDfrTrm());
                    oldData.setMwPyMtdcd(newData.getMwPyMtdcd());
                    oldData.setRviNt(newData.getRviNt());
                    oldData.setRviNtCrdt(newData.getRviNtCrdt());
                    oldData.setAnPyStdt(newData.getAnPyStdt());
                    oldData.setAnPyAge(newData.getAnPyAge());
                    oldData.setAnPyTrm(newData.getAnPyTrm());
                    oldData.setAnnuAnPyCt(newData.getAnnuAnPyCt());
                    oldData.setAnPytcd(newData.getAnPytcd());
                    oldData.setAnPyGirt(newData.getAnPyGirt());
                    oldData.setTxPfFlgcd(newData.getTxPfFlgcd());
                    oldData.setIhtYn(newData.getIhtYn());
                    oldData.setTxPfamt(newData.getTxPfamt());
                    oldData.setTxPfRgtFlgcd(newData.getTxPfRgtFlgcd());
                    oldData.setTxPfCncd(newData.getTxPfCncd());
                    oldData.setTxPfCnldt(newData.getTxPfCnldt());
                    oldData.setTxPfGdCsfcd(newData.getTxPfGdCsfcd());
                    oldData.setCrCvrIsYn(newData.getCrCvrIsYn());
                    oldData.setCvYn(newData.getCvYn());
                    oldData.setGrCrFlgcd(newData.getGrCrFlgcd());
                    oldData.setGrDscrt(newData.getGrDscrt());
                    oldData.setPymXmpStdt(newData.getPymXmpStdt());
                    oldData.setAvgRtApYn(newData.getAvgRtApYn());
                    oldData.setManAvgApAge(newData.getManAvgApAge());
                    oldData.setFmlAvgApAge(newData.getFmlAvgApAge());
                    oldData.setManAvgInjrRnkcd(newData.getManAvgInjrRnkcd());
                    oldData.setFmlAvgInjrRnkcd(newData.getFmlAvgInjrRnkcd());
                    oldData.setManAvgDrveTycd(newData.getManAvgDrveTycd());
                    oldData.setFmlAvgDrveTycd(newData.getFmlAvgDrveTycd());
                    oldData.setPlcd(newData.getPlcd());
                    oldData.setIbnfPyTpcd(newData.getIbnfPyTpcd());
                    oldData.setDrveTycd(newData.getDrveTycd());
                    oldData.setDrveCrUsecd(newData.getDrveCrUsecd());
                    oldData.setEmbrMinsrYn(newData.getEmbrMinsrYn());
                    oldData.setSbPymRqYn(newData.getSbPymRqYn());
                    oldData.setDcStFlgcd(newData.getDcStFlgcd());
                    oldData.setAplTycd(newData.getAplTycd());
                    oldData.setSepCrFlgcd(newData.getSepCrFlgcd());
                    oldData.setIbnfSbPymYn(newData.getIbnfSbPymYn());
                    oldData.setIbnfSbPymSt(newData.getIbnfSbPymSt());
                    oldData.setRnwNddt(newData.getRnwNddt());
                    oldData.setSignMtdcd(newData.getSignMtdcd());
                    oldData.setNdSepRtnTycd(newData.getNdSepRtnTycd());
                    oldData.setNdSepPyMtdcd(newData.getNdSepPyMtdcd());
                    oldData.setBaPrm(newData.getBaPrm());
                    oldData.setApPrm(newData.getApPrm());
                    oldData.setStdbdPrm(newData.getStdbdPrm());
                    oldData.setSustdPrm(newData.getSustdPrm());
                    oldData.setBefoPlyno(newData.getBefoPlyno());
                    oldData.setFnlDhStfno(newData.getFnlDhStfno());
                    oldData.setGdxpnSsBjYn(newData.getGdxpnSsBjYn());
                    oldData.setSelfCrYn(newData.getSelfCrYn());
                    oldData.setRdchCrYn(newData.getRdchCrYn());
                    oldData.setCrInfoCvapYn(newData.getCrInfoCvapYn());
                    oldData.setGdxpnTrnmYn(newData.getGdxpnTrnmYn());
                    oldData.setNwcrScanBjYn(newData.getNwcrScanBjYn());
                    oldData.setNwcrScanCpltYn(newData.getNwcrScanCpltYn());
                    oldData.setNwcrScanCpltDthms(newData.getNwcrScanCpltDthms());
                    oldData.setGuPlyno(newData.getGuPlyno());
                    oldData.setGuFireGdcd(newData.getGuFireGdcd());
                    oldData.setGuFireGdnm(newData.getGuFireGdnm());
                    oldData.setDcPlyno(newData.getDcPlyno());
                    oldData.setPprPlyno(newData.getPprPlyno());
                    oldData.setGrCtmno(newData.getGrCtmno());
                    oldData.setBdlPymYn(newData.getBdlPymYn());
                    oldData.setRltnPlyno(newData.getRltnPlyno());
                    oldData.setFnDlRlOwnrFlgcd(newData.getFnDlRlOwnrFlgcd());
                    oldData.setMgCmpcd(newData.getMgCmpcd());
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
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
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
                        if (strKey.equals("fnlCrStcd"))
                            oldData.setFnlCrStcd(newData.getFnlCrStcd());
                        if (strKey.equals("fnlCrDtStcd"))
                            oldData.setFnlCrDtStcd(newData.getFnlCrDtStcd());
                        if (strKey.equals("fnlPartCvrStcd"))
                            oldData.setFnlPartCvrStcd(newData.getFnlPartCvrStcd());
                        if (strKey.equals("fnlCrStChdt"))
                            oldData.setFnlCrStChdt(newData.getFnlCrStChdt());
                        if (strKey.equals("cnrdt"))
                            oldData.setCnrdt(newData.getCnrdt());
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("cgafChSeqno"))
                            oldData.setCgafChSeqno(newData.getCgafChSeqno());
                        if (strKey.equals("fnlPymSeq"))
                            oldData.setFnlPymSeq(newData.getFnlPymSeq());
                        if (strKey.equals("fnlPymYymm"))
                            oldData.setFnlPymYymm(newData.getFnlPymYymm());
                        if (strKey.equals("plyLvlFlgcd"))
                            oldData.setPlyLvlFlgcd(newData.getPlyLvlFlgcd());
                        if (strKey.equals("gdcd"))
                            oldData.setGdcd(newData.getGdcd());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("nwRnwFlgcd"))
                            oldData.setNwRnwFlgcd(newData.getNwRnwFlgcd());
                        if (strKey.equals("apldt"))
                            oldData.setApldt(newData.getApldt());
                        if (strKey.equals("trmSctFlgcd"))
                            oldData.setTrmSctFlgcd(newData.getTrmSctFlgcd());
                        if (strKey.equals("insSt"))
                            oldData.setInsSt(newData.getInsSt());
                        if (strKey.equals("insStHms"))
                            oldData.setInsStHms(newData.getInsStHms());
                        if (strKey.equals("insClstr"))
                            oldData.setInsClstr(newData.getInsClstr());
                        if (strKey.equals("insClstrHms"))
                            oldData.setInsClstrHms(newData.getInsClstrHms());
                        if (strKey.equals("insDays"))
                            oldData.setInsDays(newData.getInsDays());
                        if (strKey.equals("instrMc"))
                            oldData.setInstrMc(newData.getInstrMc());
                        if (strKey.equals("instrYyct"))
                            oldData.setInstrYyct(newData.getInstrYyct());
                        if (strKey.equals("condtTApPrm"))
                            oldData.setCondtTApPrm(newData.getCondtTApPrm());
                        if (strKey.equals("pymMtdcd"))
                            oldData.setPymMtdcd(newData.getPymMtdcd());
                        if (strKey.equals("ceRowcd"))
                            oldData.setCeRowcd(newData.getCeRowcd());
                        if (strKey.equals("plyRcMtdcd"))
                            oldData.setPlyRcMtdcd(newData.getPlyRcMtdcd());
                        if (strKey.equals("holoSignYn"))
                            oldData.setHoloSignYn(newData.getHoloSignYn());
                        if (strKey.equals("grCrYn"))
                            oldData.setGrCrYn(newData.getGrCrYn());
                        if (strKey.equals("crChncd"))
                            oldData.setCrChncd(newData.getCrChncd());
                        if (strKey.equals("cprtbAdmno"))
                            oldData.setCprtbAdmno(newData.getCprtbAdmno());
                        if (strKey.equals("cmpgBjYn"))
                            oldData.setCmpgBjYn(newData.getCmpgBjYn());
                        if (strKey.equals("nrdct"))
                            oldData.setNrdct(newData.getNrdct());
                        if (strKey.equals("udrtkTycd"))
                            oldData.setUdrtkTycd(newData.getUdrtkTycd());
                        if (strKey.equals("crycd"))
                            oldData.setCrycd(newData.getCrycd());
                        if (strKey.equals("otcmMgCmpcd"))
                            oldData.setOtcmMgCmpcd(newData.getOtcmMgCmpcd());
                        if (strKey.equals("otcmPlyno"))
                            oldData.setOtcmPlyno(newData.getOtcmPlyno());
                        if (strKey.equals("otcmPlySsdt"))
                            oldData.setOtcmPlySsdt(newData.getOtcmPlySsdt());
                        if (strKey.equals("agmtAqrRtFlgcd"))
                            oldData.setAgmtAqrRtFlgcd(newData.getAgmtAqrRtFlgcd());
                        if (strKey.equals("nscYn"))
                            oldData.setNscYn(newData.getNscYn());
                        if (strKey.equals("bkAdmno"))
                            oldData.setBkAdmno(newData.getBkAdmno());
                        if (strKey.equals("bkBrcd"))
                            oldData.setBkBrcd(newData.getBkBrcd());
                        if (strKey.equals("bkExtnQfp"))
                            oldData.setBkExtnQfp(newData.getBkExtnQfp());
                        if (strKey.equals("bkIpps"))
                            oldData.setBkIpps(newData.getBkIpps());
                        if (strKey.equals("hscsHsFlgcd"))
                            oldData.setHscsHsFlgcd(newData.getHscsHsFlgcd());
                        if (strKey.equals("psCstYn"))
                            oldData.setPsCstYn(newData.getPsCstYn());
                        if (strKey.equals("rtAqrRqno"))
                            oldData.setRtAqrRqno(newData.getRtAqrRqno());
                        if (strKey.equals("onwCrFlgcd"))
                            oldData.setOnwCrFlgcd(newData.getOnwCrFlgcd());
                        if (strKey.equals("rvCcldt"))
                            oldData.setRvCcldt(newData.getRvCcldt());
                        if (strKey.equals("fmlct"))
                            oldData.setFmlct(newData.getFmlct());
                        if (strKey.equals("bzcsQtrtApYn"))
                            oldData.setBzcsQtrtApYn(newData.getBzcsQtrtApYn());
                        if (strKey.equals("prortShtmFlgcd"))
                            oldData.setPrortShtmFlgcd(newData.getPrortShtmFlgcd());
                        if (strKey.equals("samePlyFlgcd"))
                            oldData.setSamePlyFlgcd(newData.getSamePlyFlgcd());
                        if (strKey.equals("dcXcApFlgcd"))
                            oldData.setDcXcApFlgcd(newData.getDcXcApFlgcd());
                        if (strKey.equals("pypofSymb"))
                            oldData.setPypofSymb(newData.getPypofSymb());
                        if (strKey.equals("rgltVltct"))
                            oldData.setRgltVltct(newData.getRgltVltct());
                        if (strKey.equals("rgltVltPoct"))
                            oldData.setRgltVltPoct(newData.getRgltVltPoct());
                        if (strKey.equals("rgltVltcd"))
                            oldData.setRgltVltcd(newData.getRgltVltcd());
                        if (strKey.equals("isCrrcd"))
                            oldData.setIsCrrcd(newData.getIsCrrcd());
                        if (strKey.equals("spcXccd"))
                            oldData.setSpcXccd(newData.getSpcXccd());
                        if (strKey.equals("dtyPymMtdcd"))
                            oldData.setDtyPymMtdcd(newData.getDtyPymMtdcd());
                        if (strKey.equals("pstRpblIsYn"))
                            oldData.setPstRpblIsYn(newData.getPstRpblIsYn());
                        if (strKey.equals("gnCoObjFlgcd"))
                            oldData.setGnCoObjFlgcd(newData.getGnCoObjFlgcd());
                        if (strKey.equals("coObjAsno"))
                            oldData.setCoObjAsno(newData.getCoObjAsno());
                        if (strKey.equals("bfcrIscmp"))
                            oldData.setBfcrIscmp(newData.getBfcrIscmp());
                        if (strKey.equals("bfcrIkdcd"))
                            oldData.setBfcrIkdcd(newData.getBfcrIkdcd());
                        if (strKey.equals("bfcrYear"))
                            oldData.setBfcrYear(newData.getBfcrYear());
                        if (strKey.equals("bfcrNo"))
                            oldData.setBfcrNo(newData.getBfcrNo());
                        if (strKey.equals("bfcrInsSt"))
                            oldData.setBfcrInsSt(newData.getBfcrInsSt());
                        if (strKey.equals("bfcrInsClstr"))
                            oldData.setBfcrInsClstr(newData.getBfcrInsClstr());
                        if (strKey.equals("bfcrAprt"))
                            oldData.setBfcrAprt(newData.getBfcrAprt());
                        if (strKey.equals("dvpnsPlyno"))
                            oldData.setDvpnsPlyno(newData.getDvpnsPlyno());
                        if (strKey.equals("dvpnsJbcd"))
                            oldData.setDvpnsJbcd(newData.getDvpnsJbcd());
                        if (strKey.equals("udrtkGuArecd"))
                            oldData.setUdrtkGuArecd(newData.getUdrtkGuArecd());
                        if (strKey.equals("udrtkGrdcd"))
                            oldData.setUdrtkGrdcd(newData.getUdrtkGrdcd());
                        if (strKey.equals("sngCrFlgcd"))
                            oldData.setSngCrFlgcd(newData.getSngCrFlgcd());
                        if (strKey.equals("insItmSmccd"))
                            oldData.setInsItmSmccd(newData.getInsItmSmccd());
                        if (strKey.equals("fstiRpPrm"))
                            oldData.setFstiRpPrm(newData.getFstiRpPrm());
                        if (strKey.equals("dcXcGrdcd"))
                            oldData.setDcXcGrdcd(newData.getDcXcGrdcd());
                        if (strKey.equals("aSctCt"))
                            oldData.setASctCt(newData.getASctCt());
                        if (strKey.equals("bSctCt"))
                            oldData.setBSctCt(newData.getBSctCt());
                        if (strKey.equals("bfcrDcXcGrdcd"))
                            oldData.setBfcrDcXcGrdcd(newData.getBfcrDcXcGrdcd());
                        if (strKey.equals("dcXcSameGrdyn"))
                            oldData.setDcXcSameGrdyn(newData.getDcXcSameGrdyn());
                        if (strKey.equals("rpblInsPlyno"))
                            oldData.setRpblInsPlyno(newData.getRpblInsPlyno());
                        if (strKey.equals("repyNtRcpdt"))
                            oldData.setRepyNtRcpdt(newData.getRepyNtRcpdt());
                        if (strKey.equals("repyNtRcpSeqno"))
                            oldData.setRepyNtRcpSeqno(newData.getRepyNtRcpSeqno());
                        if (strKey.equals("xwpyRtntmNtpyYn"))
                            oldData.setXwpyRtntmNtpyYn(newData.getXwpyRtntmNtpyYn());
                        if (strKey.equals("y1ClmCt"))
                            oldData.setY1ClmCt(newData.getY1ClmCt());
                        if (strKey.equals("y1ClmYn"))
                            oldData.setY1ClmYn(newData.getY1ClmYn());
                        if (strKey.equals("y3ClmCt"))
                            oldData.setY3ClmCt(newData.getY3ClmCt());
                        if (strKey.equals("vltSpcXccd"))
                            oldData.setVltSpcXccd(newData.getVltSpcXccd());
                        if (strKey.equals("xacd"))
                            oldData.setXacd(newData.getXacd());
                        if (strKey.equals("xcCyccd"))
                            oldData.setXcCyccd(newData.getXcCyccd());
                        if (strKey.equals("crTpcd"))
                            oldData.setCrTpcd(newData.getCrTpcd());
                        if (strKey.equals("hltInsIsYn"))
                            oldData.setHltInsIsYn(newData.getHltInsIsYn());
                        if (strKey.equals("unfRtApYn"))
                            oldData.setUnfRtApYn(newData.getUnfRtApYn());
                        if (strKey.equals("avgAgeFlgcd"))
                            oldData.setAvgAgeFlgcd(newData.getAvgAgeFlgcd());
                        if (strKey.equals("dpsrt"))
                            oldData.setDpsrt(newData.getDpsrt());
                        if (strKey.equals("dpstPrmCcFlgcd"))
                            oldData.setDpstPrmCcFlgcd(newData.getDpstPrmCcFlgcd());
                        if (strKey.equals("xcPrdy"))
                            oldData.setXcPrdy(newData.getXcPrdy());
                        if (strKey.equals("isTpcd"))
                            oldData.setIsTpcd(newData.getIsTpcd());
                        if (strKey.equals("ssngArecd"))
                            oldData.setSsngArecd(newData.getSsngArecd());
                        if (strKey.equals("ssst"))
                            oldData.setSsst(newData.getSsst());
                        if (strKey.equals("ssngOjccd"))
                            oldData.setSsngOjccd(newData.getSsngOjccd());
                        if (strKey.equals("trfRidcd"))
                            oldData.setTrfRidcd(newData.getTrfRidcd());
                        if (strKey.equals("ssngCmpnm"))
                            oldData.setSsngCmpnm(newData.getSsngCmpnm());
                        if (strKey.equals("nrdpsAdmMtdcd"))
                            oldData.setNrdpsAdmMtdcd(newData.getNrdpsAdmMtdcd());
                        if (strKey.equals("stdsbRkGrdcd"))
                            oldData.setStdsbRkGrdcd(newData.getStdsbRkGrdcd());
                        if (strKey.equals("stdsbFlgcd"))
                            oldData.setStdsbFlgcd(newData.getStdsbFlgcd());
                        if (strKey.equals("rlStdsb"))
                            oldData.setRlStdsb(newData.getRlStdsb());
                        if (strKey.equals("prctcPln"))
                            oldData.setPrctcPln(newData.getPrctcPln());
                        if (strKey.equals("prctcNm"))
                            oldData.setPrctcNm(newData.getPrctcNm());
                        if (strKey.equals("prctcMntct"))
                            oldData.setPrctcMntct(newData.getPrctcMntct());
                        if (strKey.equals("dmgrtMdCfcapBzmno"))
                            oldData.setDmgrtMdCfcapBzmno(newData.getDmgrtMdCfcapBzmno());
                        if (strKey.equals("dmgrtMdCfcCrpno"))
                            oldData.setDmgrtMdCfcCrpno(newData.getDmgrtMdCfcCrpno());
                        if (strKey.equals("dmgrtMdCfcapYn"))
                            oldData.setDmgrtMdCfcapYn(newData.getDmgrtMdCfcapYn());
                        if (strKey.equals("fcntrDmgrt"))
                            oldData.setFcntrDmgrt(newData.getFcntrDmgrt());
                        if (strKey.equals("dmgrtMdCfc"))
                            oldData.setDmgrtMdCfc(newData.getDmgrtMdCfc());
                        if (strKey.equals("fcntrSclcd"))
                            oldData.setFcntrSclcd(newData.getFcntrSclcd());
                        if (strKey.equals("ccPrm"))
                            oldData.setCcPrm(newData.getCcPrm());
                        if (strKey.equals("nkorRsYn"))
                            oldData.setNkorRsYn(newData.getNkorRsYn());
                        if (strKey.equals("insRtFlgcd"))
                            oldData.setInsRtFlgcd(newData.getInsRtFlgcd());
                        if (strKey.equals("apCvrFlgcd"))
                            oldData.setApCvrFlgcd(newData.getApCvrFlgcd());
                        if (strKey.equals("chafAnnuApprm"))
                            oldData.setChafAnnuApprm(newData.getChafAnnuApprm());
                        if (strKey.equals("rtAqrUntFlgcd"))
                            oldData.setRtAqrUntFlgcd(newData.getRtAqrUntFlgcd());
                        if (strKey.equals("rtAqrStncd"))
                            oldData.setRtAqrStncd(newData.getRtAqrStncd());
                        if (strKey.equals("bsnsChrpsStfno"))
                            oldData.setBsnsChrpsStfno(newData.getBsnsChrpsStfno());
                        if (strKey.equals("intnRltno"))
                            oldData.setIntnRltno(newData.getIntnRltno());
                        if (strKey.equals("cstcpFlgcd"))
                            oldData.setCstcpFlgcd(newData.getCstcpFlgcd());
                        if (strKey.equals("chrAdmrStfno"))
                            oldData.setChrAdmrStfno(newData.getChrAdmrStfno());
                        if (strKey.equals("nvgtnArecd"))
                            oldData.setNvgtnArecd(newData.getNvgtnArecd());
                        if (strKey.equals("etNvgtnArenm"))
                            oldData.setEtNvgtnArenm(newData.getEtNvgtnArenm());
                        if (strKey.equals("condtQtrtFrcapYn"))
                            oldData.setCondtQtrtFrcapYn(newData.getCondtQtrtFrcapYn());
                        if (strKey.equals("ssPlyct"))
                            oldData.setSsPlyct(newData.getSsPlyct());
                        if (strKey.equals("trsprCmpnm"))
                            oldData.setTrsprCmpnm(newData.getTrsprCmpnm());
                        if (strKey.equals("dstcd"))
                            oldData.setDstcd(newData.getDstcd());
                        if (strKey.equals("spclTrDst"))
                            oldData.setSpclTrDst(newData.getSpclTrDst());
                        if (strKey.equals("trDays"))
                            oldData.setTrDays(newData.getTrDays());
                        if (strKey.equals("snddt"))
                            oldData.setSnddt(newData.getSnddt());
                        if (strKey.equals("arvdt"))
                            oldData.setArvdt(newData.getArvdt());
                        if (strKey.equals("lowtPrmApYn"))
                            oldData.setLowtPrmApYn(newData.getLowtPrmApYn());
                        if (strKey.equals("slfdt"))
                            oldData.setSlfdt(newData.getSlfdt());
                        if (strKey.equals("outusMncd"))
                            oldData.setOutusMncd(newData.getOutusMncd());
                        if (strKey.equals("ivamtPrtYn"))
                            oldData.setIvamtPrtYn(newData.getIvamtPrtYn());
                        if (strKey.equals("blYn"))
                            oldData.setBlYn(newData.getBlYn());
                        if (strKey.equals("vpClm"))
                            oldData.setVpClm(newData.getVpClm());
                        if (strKey.equals("dcMtdcd"))
                            oldData.setDcMtdcd(newData.getDcMtdcd());
                        if (strKey.equals("dvdldCt"))
                            oldData.setDvdldCt(newData.getDvdldCt());
                        if (strKey.equals("xpiptOpFlgcd"))
                            oldData.setXpiptOpFlgcd(newData.getXpiptOpFlgcd());
                        if (strKey.equals("cargDtFlgcd"))
                            oldData.setCargDtFlgcd(newData.getCargDtFlgcd());
                        if (strKey.equals("trtYymm"))
                            oldData.setTrtYymm(newData.getTrtYymm());
                        if (strKey.equals("fltno"))
                            oldData.setFltno(newData.getFltno());
                        if (strKey.equals("fltDcYn"))
                            oldData.setFltDcYn(newData.getFltDcYn());
                        if (strKey.equals("shtmXcYn"))
                            oldData.setShtmXcYn(newData.getShtmXcYn());
                        if (strKey.equals("annuShtmFlgcd"))
                            oldData.setAnnuShtmFlgcd(newData.getAnnuShtmFlgcd());
                        if (strKey.equals("opCrano"))
                            oldData.setOpCrano(newData.getOpCrano());
                        if (strKey.equals("opCrChSeq"))
                            oldData.setOpCrChSeq(newData.getOpCrChSeq());
                        if (strKey.equals("opCrNapcYn"))
                            oldData.setOpCrNapcYn(newData.getOpCrNapcYn());
                        if (strKey.equals("nvCtmno"))
                            oldData.setNvCtmno(newData.getNvCtmno());
                        if (strKey.equals("nvCprtEntpSeqno"))
                            oldData.setNvCprtEntpSeqno(newData.getNvCprtEntpSeqno());
                        if (strKey.equals("xcCtmno"))
                            oldData.setXcCtmno(newData.getXcCtmno());
                        if (strKey.equals("xcCprtEntpSeqno"))
                            oldData.setXcCprtEntpSeqno(newData.getXcCprtEntpSeqno());
                        if (strKey.equals("marneOndsNo"))
                            oldData.setMarneOndsNo(newData.getMarneOndsNo());
                        if (strKey.equals("nvgtnSctDstcd"))
                            oldData.setNvgtnSctDstcd(newData.getNvgtnSctDstcd());
                        if (strKey.equals("inlwtSlngYn"))
                            oldData.setInlwtSlngYn(newData.getInlwtSlngYn());
                        if (strKey.equals("cmpxTrYn"))
                            oldData.setCmpxTrYn(newData.getCmpxTrYn());
                        if (strKey.equals("prvsnDcnFlgcd"))
                            oldData.setPrvsnDcnFlgcd(newData.getPrvsnDcnFlgcd());
                        if (strKey.equals("crObjnm"))
                            oldData.setCrObjnm(newData.getCrObjnm());
                        if (strKey.equals("pymTrmFlgcd"))
                            oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd());
                        if (strKey.equals("pymTrm"))
                            oldData.setPymTrm(newData.getPymTrm());
                        if (strKey.equals("pymTrmcd"))
                            oldData.setPymTrmcd(newData.getPymTrmcd());
                        if (strKey.equals("rlPymTrm"))
                            oldData.setRlPymTrm(newData.getRlPymTrm());
                        if (strKey.equals("ndFlgcd"))
                            oldData.setNdFlgcd(newData.getNdFlgcd());
                        if (strKey.equals("nd"))
                            oldData.setNd(newData.getNd());
                        if (strKey.equals("ndcd"))
                            oldData.setNdcd(newData.getNdcd());
                        if (strKey.equals("rlNdTrm"))
                            oldData.setRlNdTrm(newData.getRlNdTrm());
                        if (strKey.equals("ndRtamtPyTpcd"))
                            oldData.setNdRtamtPyTpcd(newData.getNdRtamtPyTpcd());
                        if (strKey.equals("inrInsCrStrdt"))
                            oldData.setInrInsCrStrdt(newData.getInrInsCrStrdt());
                        if (strKey.equals("inrInsCrNddt"))
                            oldData.setInrInsCrNddt(newData.getInrInsCrNddt());
                        if (strKey.equals("pymCyccd"))
                            oldData.setPymCyccd(newData.getPymCyccd());
                        if (strKey.equals("typeFlgcd"))
                            oldData.setTypeFlgcd(newData.getTypeFlgcd());
                        if (strKey.equals("dfrTrm"))
                            oldData.setDfrTrm(newData.getDfrTrm());
                        if (strKey.equals("mwPyMtdcd"))
                            oldData.setMwPyMtdcd(newData.getMwPyMtdcd());
                        if (strKey.equals("rviNt"))
                            oldData.setRviNt(newData.getRviNt());
                        if (strKey.equals("rviNtCrdt"))
                            oldData.setRviNtCrdt(newData.getRviNtCrdt());
                        if (strKey.equals("anPyStdt"))
                            oldData.setAnPyStdt(newData.getAnPyStdt());
                        if (strKey.equals("anPyAge"))
                            oldData.setAnPyAge(newData.getAnPyAge());
                        if (strKey.equals("anPyTrm"))
                            oldData.setAnPyTrm(newData.getAnPyTrm());
                        if (strKey.equals("annuAnPyCt"))
                            oldData.setAnnuAnPyCt(newData.getAnnuAnPyCt());
                        if (strKey.equals("anPytcd"))
                            oldData.setAnPytcd(newData.getAnPytcd());
                        if (strKey.equals("anPyGirt"))
                            oldData.setAnPyGirt(newData.getAnPyGirt());
                        if (strKey.equals("txPfFlgcd"))
                            oldData.setTxPfFlgcd(newData.getTxPfFlgcd());
                        if (strKey.equals("ihtYn"))
                            oldData.setIhtYn(newData.getIhtYn());
                        if (strKey.equals("txPfamt"))
                            oldData.setTxPfamt(newData.getTxPfamt());
                        if (strKey.equals("txPfRgtFlgcd"))
                            oldData.setTxPfRgtFlgcd(newData.getTxPfRgtFlgcd());
                        if (strKey.equals("txPfCncd"))
                            oldData.setTxPfCncd(newData.getTxPfCncd());
                        if (strKey.equals("txPfCnldt"))
                            oldData.setTxPfCnldt(newData.getTxPfCnldt());
                        if (strKey.equals("txPfGdCsfcd"))
                            oldData.setTxPfGdCsfcd(newData.getTxPfGdCsfcd());
                        if (strKey.equals("crCvrIsYn"))
                            oldData.setCrCvrIsYn(newData.getCrCvrIsYn());
                        if (strKey.equals("cvYn"))
                            oldData.setCvYn(newData.getCvYn());
                        if (strKey.equals("grCrFlgcd"))
                            oldData.setGrCrFlgcd(newData.getGrCrFlgcd());
                        if (strKey.equals("grDscrt"))
                            oldData.setGrDscrt(newData.getGrDscrt());
                        if (strKey.equals("pymXmpStdt"))
                            oldData.setPymXmpStdt(newData.getPymXmpStdt());
                        if (strKey.equals("avgRtApYn"))
                            oldData.setAvgRtApYn(newData.getAvgRtApYn());
                        if (strKey.equals("manAvgApAge"))
                            oldData.setManAvgApAge(newData.getManAvgApAge());
                        if (strKey.equals("fmlAvgApAge"))
                            oldData.setFmlAvgApAge(newData.getFmlAvgApAge());
                        if (strKey.equals("manAvgInjrRnkcd"))
                            oldData.setManAvgInjrRnkcd(newData.getManAvgInjrRnkcd());
                        if (strKey.equals("fmlAvgInjrRnkcd"))
                            oldData.setFmlAvgInjrRnkcd(newData.getFmlAvgInjrRnkcd());
                        if (strKey.equals("manAvgDrveTycd"))
                            oldData.setManAvgDrveTycd(newData.getManAvgDrveTycd());
                        if (strKey.equals("fmlAvgDrveTycd"))
                            oldData.setFmlAvgDrveTycd(newData.getFmlAvgDrveTycd());
                        if (strKey.equals("plcd"))
                            oldData.setPlcd(newData.getPlcd());
                        if (strKey.equals("ibnfPyTpcd"))
                            oldData.setIbnfPyTpcd(newData.getIbnfPyTpcd());
                        if (strKey.equals("drveTycd"))
                            oldData.setDrveTycd(newData.getDrveTycd());
                        if (strKey.equals("drveCrUsecd"))
                            oldData.setDrveCrUsecd(newData.getDrveCrUsecd());
                        if (strKey.equals("embrMinsrYn"))
                            oldData.setEmbrMinsrYn(newData.getEmbrMinsrYn());
                        if (strKey.equals("sbPymRqYn"))
                            oldData.setSbPymRqYn(newData.getSbPymRqYn());
                        if (strKey.equals("dcStFlgcd"))
                            oldData.setDcStFlgcd(newData.getDcStFlgcd());
                        if (strKey.equals("aplTycd"))
                            oldData.setAplTycd(newData.getAplTycd());
                        if (strKey.equals("sepCrFlgcd"))
                            oldData.setSepCrFlgcd(newData.getSepCrFlgcd());
                        if (strKey.equals("ibnfSbPymYn"))
                            oldData.setIbnfSbPymYn(newData.getIbnfSbPymYn());
                        if (strKey.equals("ibnfSbPymSt"))
                            oldData.setIbnfSbPymSt(newData.getIbnfSbPymSt());
                        if (strKey.equals("rnwNddt"))
                            oldData.setRnwNddt(newData.getRnwNddt());
                        if (strKey.equals("signMtdcd"))
                            oldData.setSignMtdcd(newData.getSignMtdcd());
                        if (strKey.equals("ndSepRtnTycd"))
                            oldData.setNdSepRtnTycd(newData.getNdSepRtnTycd());
                        if (strKey.equals("ndSepPyMtdcd"))
                            oldData.setNdSepPyMtdcd(newData.getNdSepPyMtdcd());
                        if (strKey.equals("baPrm"))
                            oldData.setBaPrm(newData.getBaPrm());
                        if (strKey.equals("apPrm"))
                            oldData.setApPrm(newData.getApPrm());
                        if (strKey.equals("stdbdPrm"))
                            oldData.setStdbdPrm(newData.getStdbdPrm());
                        if (strKey.equals("sustdPrm"))
                            oldData.setSustdPrm(newData.getSustdPrm());
                        if (strKey.equals("befoPlyno"))
                            oldData.setBefoPlyno(newData.getBefoPlyno());
                        if (strKey.equals("fnlDhStfno"))
                            oldData.setFnlDhStfno(newData.getFnlDhStfno());
                        if (strKey.equals("gdxpnSsBjYn"))
                            oldData.setGdxpnSsBjYn(newData.getGdxpnSsBjYn());
                        if (strKey.equals("selfCrYn"))
                            oldData.setSelfCrYn(newData.getSelfCrYn());
                        if (strKey.equals("rdchCrYn"))
                            oldData.setRdchCrYn(newData.getRdchCrYn());
                        if (strKey.equals("crInfoCvapYn"))
                            oldData.setCrInfoCvapYn(newData.getCrInfoCvapYn());
                        if (strKey.equals("gdxpnTrnmYn"))
                            oldData.setGdxpnTrnmYn(newData.getGdxpnTrnmYn());
                        if (strKey.equals("nwcrScanBjYn"))
                            oldData.setNwcrScanBjYn(newData.getNwcrScanBjYn());
                        if (strKey.equals("nwcrScanCpltYn"))
                            oldData.setNwcrScanCpltYn(newData.getNwcrScanCpltYn());
                        if (strKey.equals("nwcrScanCpltDthms"))
                            oldData.setNwcrScanCpltDthms(newData.getNwcrScanCpltDthms());
                        if (strKey.equals("guPlyno"))
                            oldData.setGuPlyno(newData.getGuPlyno());
                        if (strKey.equals("guFireGdcd"))
                            oldData.setGuFireGdcd(newData.getGuFireGdcd());
                        if (strKey.equals("guFireGdnm"))
                            oldData.setGuFireGdnm(newData.getGuFireGdnm());
                        if (strKey.equals("dcPlyno"))
                            oldData.setDcPlyno(newData.getDcPlyno());
                        if (strKey.equals("pprPlyno"))
                            oldData.setPprPlyno(newData.getPprPlyno());
                        if (strKey.equals("grCtmno"))
                            oldData.setGrCtmno(newData.getGrCtmno());
                        if (strKey.equals("bdlPymYn"))
                            oldData.setBdlPymYn(newData.getBdlPymYn());
                        if (strKey.equals("rltnPlyno"))
                            oldData.setRltnPlyno(newData.getRltnPlyno());
                        if (strKey.equals("fnDlRlOwnrFlgcd"))
                            oldData.setFnDlRlOwnrFlgcd(newData.getFnDlRlOwnrFlgcd());
                        if (strKey.equals("mgCmpcd"))
                            oldData.setMgCmpcd(newData.getMgCmpcd());
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
