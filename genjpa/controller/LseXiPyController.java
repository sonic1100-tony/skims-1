/**
 * LseXiPy Entity Controller 클래스
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
import com.skims.domain.entity.LseXiPy;
import com.skims.domain.repository.LseXiPyRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseXiPy 추산지급 Controller")
@Slf4j
public class LseXiPyController {

    @Autowired
    LseXiPyRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "추산지급 전체조회" , summary = "추산지급 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lsexipys", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPy.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lsexipys")
    public ResponseEntity<Page<LseXiPy>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "추산지급 Key조회" , description = "추산지급 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseXiPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPy.class)) }),
            @ApiResponse(responseCode = "404", description = "LseXiPy not found", content = @Content) })
    @GetMapping("/lsexipys/{aid}")
    public ResponseEntity<LseXiPy> getById(@PathVariable("aid") Long aid) {
        Optional<LseXiPy> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "추산지급 등록" , description = "추산지급 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseXiPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPy.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lsexipys")
    ResponseEntity<LseXiPy> postData(@RequestBody LseXiPy newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "추산지급 수정" , description = "추산지급 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseXiPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPy.class)) }),
            @ApiResponse(responseCode = "404", description = "LseXiPy not found", content = @Content) })
    @PutMapping("/lsexipys/{aid}")
    ResponseEntity<LseXiPy> putData(@RequestBody LseXiPy newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setCcSeq(newData.getCcSeq());
                    oldData.setDmSeqno(newData.getDmSeqno());
                    oldData.setChrpsStfno(newData.getChrpsStfno());
                    oldData.setChrpsOrgcd(newData.getChrpsOrgcd());
                    oldData.setUdrtkTycd(newData.getUdrtkTycd());
                    oldData.setIbnfCsFlgcd(newData.getIbnfCsFlgcd());
                    oldData.setClmNvSeqno(newData.getClmNvSeqno());
                    oldData.setPrvFlgcd(newData.getPrvFlgcd());
                    oldData.setCmpKyYr(newData.getCmpKyYr());
                    oldData.setCmpKySeqno(newData.getCmpKySeqno());
                    oldData.setPrvdt(newData.getPrvdt());
                    oldData.setCsSeqno(newData.getCsSeqno());
                    oldData.setEndYn(newData.getEndYn());
                    oldData.setPayaoYn(newData.getPayaoYn());
                    oldData.setPpdt(newData.getPpdt());
                    oldData.setLtrmRert(newData.getLtrmRert());
                    oldData.setLtrmReIbamt(newData.getLtrmReIbamt());
                    oldData.setLtrmReRemnXiamt(newData.getLtrmReRemnXiamt());
                    oldData.setGuXiPyno(newData.getGuXiPyno());
                    oldData.setPyafStcd(newData.getPyafStcd());
                    oldData.setCclCcSeq(newData.getCclCcSeq());
                    oldData.setCmpPyRltno(newData.getCmpPyRltno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setSepPyYn(newData.getSepPyYn());
                    oldData.setLtrmReAcTfdt(newData.getLtrmReAcTfdt());
                    oldData.setOtcmPpdt(newData.getOtcmPpdt());
                    oldData.setFnlDcuRcpdt(newData.getFnlDcuRcpdt());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setPrpnCmpYn(newData.getPrpnCmpYn());
                    oldData.setMncd(newData.getMncd());
                    oldData.setXcrt(newData.getXcrt());
                    oldData.setXcrtApdt(newData.getXcrtApdt());
                    oldData.setPyamt(newData.getPyamt());
                    oldData.setWoncrCvPyamt(newData.getWoncrCvPyamt());
                    oldData.setRemnXiMncd(newData.getRemnXiMncd());
                    oldData.setRemnXiAmt(newData.getRemnXiAmt());
                    oldData.setCsMncd(newData.getCsMncd());
                    oldData.setCsAmt(newData.getCsAmt());
                    oldData.setReNvcs(newData.getReNvcs());
                    oldData.setWoncrCvCsamt(newData.getWoncrCvCsamt());
                    oldData.setCondtCsamt(newData.getCondtCsamt());
                    oldData.setCondtWoncvCsamt(newData.getCondtWoncvCsamt());
                    oldData.setCondtRemnXiCsamt(newData.getCondtRemnXiCsamt());
                    oldData.setRemnXiCsMncd(newData.getRemnXiCsMncd());
                    oldData.setRemnXiCsamt(newData.getRemnXiCsamt());
                    oldData.setFrCcXiamt(newData.getFrCcXiamt());
                    oldData.setCondtPyamt(newData.getCondtPyamt());
                    oldData.setCondtWoncrCvPyamt(newData.getCondtWoncrCvPyamt());
                    oldData.setCondtRemnXiamt(newData.getCondtRemnXiamt());
                    oldData.setXiPyFlgcd(newData.getXiPyFlgcd());
                    oldData.setXiPyFlgRscd(newData.getXiPyFlgRscd());
                    oldData.setXiPyDtRscd(newData.getXiPyDtRscd());
                    oldData.setStdt(newData.getStdt());
                    oldData.setPyPrdt(newData.getPyPrdt());
                    oldData.setDlayNtrt(newData.getDlayNtrt());
                    oldData.setDlayNt(newData.getDlayNt());
                    oldData.setDlayNtPyYn(newData.getDlayNtPyYn());
                    oldData.setDlayNtNpRscd(newData.getDlayNtNpRscd());
                    oldData.setDlayNtCalMetcd(newData.getDlayNtCalMetcd());
                    oldData.setDlayNtPoutMtt(newData.getDlayNtPoutMtt());
                    oldData.setWoncvIbnfDlayNt(newData.getWoncvIbnfDlayNt());
                    oldData.setPyCclYn(newData.getPyCclYn());
                    oldData.setBndSzYn(newData.getBndSzYn());
                    oldData.setClaLnYn(newData.getClaLnYn());
                    oldData.setGnLnYn(newData.getGnLnYn());
                    oldData.setPrEsYn(newData.getPrEsYn());
                    oldData.setUcPrmYn(newData.getUcPrmYn());
                    oldData.setNvLwCsYn(newData.getNvLwCsYn());
                    oldData.setIdmBjYn(newData.getIdmBjYn());
                    oldData.setBsnsDlAlarmYn(newData.getBsnsDlAlarmYn());
                    oldData.setChrpsCtn(newData.getChrpsCtn());
                    oldData.setCondtPayaoYn(newData.getCondtPayaoYn());
                    oldData.setClcSpc(newData.getClcSpc());
                    oldData.setOpccsUdRqYn(newData.getOpccsUdRqYn());
                    oldData.setTrpaUdRqYn(newData.getTrpaUdRqYn());
                    oldData.setClaLnArNt(newData.getClaLnArNt());
                    oldData.setClaLnamt(newData.getClaLnamt());
                    oldData.setCdamt(newData.getCdamt());
                    oldData.setDmDmamt(newData.getDmDmamt());
                    oldData.setImuRdRscd(newData.getImuRdRscd());
                    oldData.setImuRdRsDtcd(newData.getImuRdRsDtcd());
                    oldData.setImuRdDtCtn(newData.getImuRdDtCtn());
                    oldData.setImuRprdt(newData.getImuRprdt());
                    oldData.setSocAutoSndYn(newData.getSocAutoSndYn());
                    oldData.setReXiIbamt(newData.getReXiIbamt());
                    oldData.setLmsSndYn(newData.getLmsSndYn());
                    oldData.setAutoCcDgre(newData.getAutoCcDgre());
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

    // @Operation(summary = "추산지급 수정" , description = "추산지급 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseXiPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPy.class)) }),
            @ApiResponse(responseCode = "404", description = "LseXiPy not found", content = @Content) })
	@PatchMapping("/lsexipys/{aid}")
    ResponseEntity<LseXiPy> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseXiPy newData = mapper.convertValue(newMap, LseXiPy.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rcpYymm"))
                            oldData.setRcpYymm(newData.getRcpYymm());
                        if (strKey.equals("rcpNvSeqno"))
                            oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                        if (strKey.equals("clmpsSeqno"))
                            oldData.setClmpsSeqno(newData.getClmpsSeqno());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("ccSeq"))
                            oldData.setCcSeq(newData.getCcSeq());
                        if (strKey.equals("dmSeqno"))
                            oldData.setDmSeqno(newData.getDmSeqno());
                        if (strKey.equals("chrpsStfno"))
                            oldData.setChrpsStfno(newData.getChrpsStfno());
                        if (strKey.equals("chrpsOrgcd"))
                            oldData.setChrpsOrgcd(newData.getChrpsOrgcd());
                        if (strKey.equals("udrtkTycd"))
                            oldData.setUdrtkTycd(newData.getUdrtkTycd());
                        if (strKey.equals("ibnfCsFlgcd"))
                            oldData.setIbnfCsFlgcd(newData.getIbnfCsFlgcd());
                        if (strKey.equals("clmNvSeqno"))
                            oldData.setClmNvSeqno(newData.getClmNvSeqno());
                        if (strKey.equals("prvFlgcd"))
                            oldData.setPrvFlgcd(newData.getPrvFlgcd());
                        if (strKey.equals("cmpKyYr"))
                            oldData.setCmpKyYr(newData.getCmpKyYr());
                        if (strKey.equals("cmpKySeqno"))
                            oldData.setCmpKySeqno(newData.getCmpKySeqno());
                        if (strKey.equals("prvdt"))
                            oldData.setPrvdt(newData.getPrvdt());
                        if (strKey.equals("csSeqno"))
                            oldData.setCsSeqno(newData.getCsSeqno());
                        if (strKey.equals("endYn"))
                            oldData.setEndYn(newData.getEndYn());
                        if (strKey.equals("payaoYn"))
                            oldData.setPayaoYn(newData.getPayaoYn());
                        if (strKey.equals("ppdt"))
                            oldData.setPpdt(newData.getPpdt());
                        if (strKey.equals("ltrmRert"))
                            oldData.setLtrmRert(newData.getLtrmRert());
                        if (strKey.equals("ltrmReIbamt"))
                            oldData.setLtrmReIbamt(newData.getLtrmReIbamt());
                        if (strKey.equals("ltrmReRemnXiamt"))
                            oldData.setLtrmReRemnXiamt(newData.getLtrmReRemnXiamt());
                        if (strKey.equals("guXiPyno"))
                            oldData.setGuXiPyno(newData.getGuXiPyno());
                        if (strKey.equals("pyafStcd"))
                            oldData.setPyafStcd(newData.getPyafStcd());
                        if (strKey.equals("cclCcSeq"))
                            oldData.setCclCcSeq(newData.getCclCcSeq());
                        if (strKey.equals("cmpPyRltno"))
                            oldData.setCmpPyRltno(newData.getCmpPyRltno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("sepPyYn"))
                            oldData.setSepPyYn(newData.getSepPyYn());
                        if (strKey.equals("ltrmReAcTfdt"))
                            oldData.setLtrmReAcTfdt(newData.getLtrmReAcTfdt());
                        if (strKey.equals("otcmPpdt"))
                            oldData.setOtcmPpdt(newData.getOtcmPpdt());
                        if (strKey.equals("fnlDcuRcpdt"))
                            oldData.setFnlDcuRcpdt(newData.getFnlDcuRcpdt());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("prpnCmpYn"))
                            oldData.setPrpnCmpYn(newData.getPrpnCmpYn());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("xcrt"))
                            oldData.setXcrt(newData.getXcrt());
                        if (strKey.equals("xcrtApdt"))
                            oldData.setXcrtApdt(newData.getXcrtApdt());
                        if (strKey.equals("pyamt"))
                            oldData.setPyamt(newData.getPyamt());
                        if (strKey.equals("woncrCvPyamt"))
                            oldData.setWoncrCvPyamt(newData.getWoncrCvPyamt());
                        if (strKey.equals("remnXiMncd"))
                            oldData.setRemnXiMncd(newData.getRemnXiMncd());
                        if (strKey.equals("remnXiAmt"))
                            oldData.setRemnXiAmt(newData.getRemnXiAmt());
                        if (strKey.equals("csMncd"))
                            oldData.setCsMncd(newData.getCsMncd());
                        if (strKey.equals("csAmt"))
                            oldData.setCsAmt(newData.getCsAmt());
                        if (strKey.equals("reNvcs"))
                            oldData.setReNvcs(newData.getReNvcs());
                        if (strKey.equals("woncrCvCsamt"))
                            oldData.setWoncrCvCsamt(newData.getWoncrCvCsamt());
                        if (strKey.equals("condtCsamt"))
                            oldData.setCondtCsamt(newData.getCondtCsamt());
                        if (strKey.equals("condtWoncvCsamt"))
                            oldData.setCondtWoncvCsamt(newData.getCondtWoncvCsamt());
                        if (strKey.equals("condtRemnXiCsamt"))
                            oldData.setCondtRemnXiCsamt(newData.getCondtRemnXiCsamt());
                        if (strKey.equals("remnXiCsMncd"))
                            oldData.setRemnXiCsMncd(newData.getRemnXiCsMncd());
                        if (strKey.equals("remnXiCsamt"))
                            oldData.setRemnXiCsamt(newData.getRemnXiCsamt());
                        if (strKey.equals("frCcXiamt"))
                            oldData.setFrCcXiamt(newData.getFrCcXiamt());
                        if (strKey.equals("condtPyamt"))
                            oldData.setCondtPyamt(newData.getCondtPyamt());
                        if (strKey.equals("condtWoncrCvPyamt"))
                            oldData.setCondtWoncrCvPyamt(newData.getCondtWoncrCvPyamt());
                        if (strKey.equals("condtRemnXiamt"))
                            oldData.setCondtRemnXiamt(newData.getCondtRemnXiamt());
                        if (strKey.equals("xiPyFlgcd"))
                            oldData.setXiPyFlgcd(newData.getXiPyFlgcd());
                        if (strKey.equals("xiPyFlgRscd"))
                            oldData.setXiPyFlgRscd(newData.getXiPyFlgRscd());
                        if (strKey.equals("xiPyDtRscd"))
                            oldData.setXiPyDtRscd(newData.getXiPyDtRscd());
                        if (strKey.equals("stdt"))
                            oldData.setStdt(newData.getStdt());
                        if (strKey.equals("pyPrdt"))
                            oldData.setPyPrdt(newData.getPyPrdt());
                        if (strKey.equals("dlayNtrt"))
                            oldData.setDlayNtrt(newData.getDlayNtrt());
                        if (strKey.equals("dlayNt"))
                            oldData.setDlayNt(newData.getDlayNt());
                        if (strKey.equals("dlayNtPyYn"))
                            oldData.setDlayNtPyYn(newData.getDlayNtPyYn());
                        if (strKey.equals("dlayNtNpRscd"))
                            oldData.setDlayNtNpRscd(newData.getDlayNtNpRscd());
                        if (strKey.equals("dlayNtCalMetcd"))
                            oldData.setDlayNtCalMetcd(newData.getDlayNtCalMetcd());
                        if (strKey.equals("dlayNtPoutMtt"))
                            oldData.setDlayNtPoutMtt(newData.getDlayNtPoutMtt());
                        if (strKey.equals("woncvIbnfDlayNt"))
                            oldData.setWoncvIbnfDlayNt(newData.getWoncvIbnfDlayNt());
                        if (strKey.equals("pyCclYn"))
                            oldData.setPyCclYn(newData.getPyCclYn());
                        if (strKey.equals("bndSzYn"))
                            oldData.setBndSzYn(newData.getBndSzYn());
                        if (strKey.equals("claLnYn"))
                            oldData.setClaLnYn(newData.getClaLnYn());
                        if (strKey.equals("gnLnYn"))
                            oldData.setGnLnYn(newData.getGnLnYn());
                        if (strKey.equals("prEsYn"))
                            oldData.setPrEsYn(newData.getPrEsYn());
                        if (strKey.equals("ucPrmYn"))
                            oldData.setUcPrmYn(newData.getUcPrmYn());
                        if (strKey.equals("nvLwCsYn"))
                            oldData.setNvLwCsYn(newData.getNvLwCsYn());
                        if (strKey.equals("idmBjYn"))
                            oldData.setIdmBjYn(newData.getIdmBjYn());
                        if (strKey.equals("bsnsDlAlarmYn"))
                            oldData.setBsnsDlAlarmYn(newData.getBsnsDlAlarmYn());
                        if (strKey.equals("chrpsCtn"))
                            oldData.setChrpsCtn(newData.getChrpsCtn());
                        if (strKey.equals("condtPayaoYn"))
                            oldData.setCondtPayaoYn(newData.getCondtPayaoYn());
                        if (strKey.equals("clcSpc"))
                            oldData.setClcSpc(newData.getClcSpc());
                        if (strKey.equals("opccsUdRqYn"))
                            oldData.setOpccsUdRqYn(newData.getOpccsUdRqYn());
                        if (strKey.equals("trpaUdRqYn"))
                            oldData.setTrpaUdRqYn(newData.getTrpaUdRqYn());
                        if (strKey.equals("claLnArNt"))
                            oldData.setClaLnArNt(newData.getClaLnArNt());
                        if (strKey.equals("claLnamt"))
                            oldData.setClaLnamt(newData.getClaLnamt());
                        if (strKey.equals("cdamt"))
                            oldData.setCdamt(newData.getCdamt());
                        if (strKey.equals("dmDmamt"))
                            oldData.setDmDmamt(newData.getDmDmamt());
                        if (strKey.equals("imuRdRscd"))
                            oldData.setImuRdRscd(newData.getImuRdRscd());
                        if (strKey.equals("imuRdRsDtcd"))
                            oldData.setImuRdRsDtcd(newData.getImuRdRsDtcd());
                        if (strKey.equals("imuRdDtCtn"))
                            oldData.setImuRdDtCtn(newData.getImuRdDtCtn());
                        if (strKey.equals("imuRprdt"))
                            oldData.setImuRprdt(newData.getImuRprdt());
                        if (strKey.equals("socAutoSndYn"))
                            oldData.setSocAutoSndYn(newData.getSocAutoSndYn());
                        if (strKey.equals("reXiIbamt"))
                            oldData.setReXiIbamt(newData.getReXiIbamt());
                        if (strKey.equals("lmsSndYn"))
                            oldData.setLmsSndYn(newData.getLmsSndYn());
                        if (strKey.equals("autoCcDgre"))
                            oldData.setAutoCcDgre(newData.getAutoCcDgre());
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
	
    // @Operation(summary = "추산지급 삭제" , description = "추산지급 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseXiPy", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPy.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lsexipys/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
