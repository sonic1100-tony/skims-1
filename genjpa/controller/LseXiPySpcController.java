/**
 * LseXiPySpc Entity Controller 클래스
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
import com.skims.domain.entity.LseXiPySpc;
import com.skims.domain.repository.LseXiPySpcRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "LseXiPySpc 추산지급내역 Controller")
@Slf4j
public class LseXiPySpcController {

    @Autowired
    LseXiPySpcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "추산지급내역 전체조회" , summary = "추산지급내역 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the lsexipyspcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPySpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/lsexipyspcs")
    public ResponseEntity<Page<LseXiPySpc>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "추산지급내역 Key조회" , description = "추산지급내역 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the LseXiPySpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPySpc.class)) }),
            @ApiResponse(responseCode = "404", description = "LseXiPySpc not found", content = @Content) })
    @GetMapping("/lsexipyspcs/{aid}")
    public ResponseEntity<LseXiPySpc> getById(@PathVariable("aid") Long aid) {
        Optional<LseXiPySpc> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "추산지급내역 등록" , description = "추산지급내역 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the LseXiPySpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPySpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/lsexipyspcs")
    ResponseEntity<LseXiPySpc> postData(@RequestBody LseXiPySpc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "추산지급내역 수정" , description = "추산지급내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseXiPySpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPySpc.class)) }),
            @ApiResponse(responseCode = "404", description = "LseXiPySpc not found", content = @Content) })
    @PutMapping("/lsexipyspcs/{aid}")
    ResponseEntity<LseXiPySpc> putData(@RequestBody LseXiPySpc newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRcpYymm(newData.getRcpYymm());
                    oldData.setRcpNvSeqno(newData.getRcpNvSeqno());
                    oldData.setClmpsSeqno(newData.getClmpsSeqno());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setCcSeq(newData.getCcSeq());
                    oldData.setXiPySpcSeqno(newData.getXiPySpcSeqno());
                    oldData.setMncd(newData.getMncd());
                    oldData.setPyamt(newData.getPyamt());
                    oldData.setWoncrCvPyamt(newData.getWoncrCvPyamt());
                    oldData.setRemnXiMncd(newData.getRemnXiMncd());
                    oldData.setRemnXiAmt(newData.getRemnXiAmt());
                    oldData.setFrCcXiamt(newData.getFrCcXiamt());
                    oldData.setRkTpcd(newData.getRkTpcd());
                    oldData.setCmpPyRltno(newData.getCmpPyRltno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setDlayNt(newData.getDlayNt());
                    oldData.setWoncvIbnfDlayNt(newData.getWoncvIbnfDlayNt());
                    oldData.setXcrt(newData.getXcrt());
                    oldData.setXcrtApdt(newData.getXcrtApdt());
                    oldData.setPySpcFlgcd(newData.getPySpcFlgcd());
                    oldData.setCvrStcd(newData.getCvrStcd());
                    oldData.setClmCvrcd(newData.getClmCvrcd());
                    oldData.setOjTpcd(newData.getOjTpcd());
                    oldData.setOjnm(newData.getOjnm());
                    oldData.setOjDtCn(newData.getOjDtCn());
                    oldData.setCrCvrcd(newData.getCrCvrcd());
                    oldData.setSelfChamt(newData.getSelfChamt());
                    oldData.setIsamt(newData.getIsamt());
                    oldData.setIsamtMncd(newData.getIsamtMncd());
                    oldData.setOjSeqno(newData.getOjSeqno());
                    oldData.setLctcd(newData.getLctcd());
                    oldData.setIvamtFlgcd(newData.getIvamtFlgcd());
                    oldData.setIvamt(newData.getIvamt());
                    oldData.setCdamt(newData.getCdamt());
                    oldData.setSbamt(newData.getSbamt());
                    oldData.setNdamt(newData.getNdamt());
                    oldData.setWoncrCvIsamt(newData.getWoncrCvIsamt());
                    oldData.setLtcvrReIbamt(newData.getLtcvrReIbamt());
                    oldData.setLtcvrReRemnXiamt(newData.getLtcvrReRemnXiamt());
                    oldData.setLtrmRert(newData.getLtrmRert());
                    oldData.setOdclmCvrcd(newData.getOdclmCvrcd());
                    oldData.setCvrSeqno(newData.getCvrSeqno());
                    oldData.setNdcd(newData.getNdcd());
                    oldData.setCmpLmamt(newData.getCmpLmamt());
                    oldData.setLtinsPstcd(newData.getLtinsPstcd());
                    oldData.setLtinsRinsPs(newData.getLtinsRinsPs());
                    oldData.setImuCvrYn(newData.getImuCvrYn());
                    oldData.setIbnfCcAmt(newData.getIbnfCcAmt());
                    oldData.setChcAmt(newData.getChcAmt());
                    oldData.setNormClaDcMetcd(newData.getNormClaDcMetcd());
                    oldData.setSpcClaDcMetcd(newData.getSpcClaDcMetcd());
                    oldData.setAutoSlcYn(newData.getAutoSlcYn());
                    oldData.setPrpnCmpYn(newData.getPrpnCmpYn());
                    oldData.setIvamtCoinsRtCd(newData.getIvamtCoinsRtCd());
                    oldData.setSpclSlfchAmt(newData.getSpclSlfchAmt());
                    oldData.setMdudSeq(newData.getMdudSeq());
                    oldData.setAcrcMdudApamt(newData.getAcrcMdudApamt());
                    oldData.setAcrcMdudPyTpcd(newData.getAcrcMdudPyTpcd());
                    oldData.setReTrtFlgcd(newData.getReTrtFlgcd());
                    oldData.setOpccsUdamt(newData.getOpccsUdamt());
                    oldData.setOpccsUdApFlgcd(newData.getOpccsUdApFlgcd());
                    oldData.setOpccsUdCpmtTpcd(newData.getOpccsUdCpmtTpcd());
                    oldData.setOpccsUdCtn(newData.getOpccsUdCtn());
                    oldData.setReSplyVlamt(newData.getReSplyVlamt());
                    oldData.setRlpmiCvrDbIsyn(newData.getRlpmiCvrDbIsyn());
                    oldData.setCvrclDmDmamt(newData.getCvrclDmDmamt());
                    oldData.setReDlayNtamt(newData.getReDlayNtamt());
                    oldData.setNtPpcpYn(newData.getNtPpcpYn());
                    oldData.setTmppyQckPyFlgcd(newData.getTmppyQckPyFlgcd());
                    oldData.setRsRlvDt(newData.getRsRlvDt());
                    oldData.setLtrmDlyntReIbamt(newData.getLtrmDlyntReIbamt());
                    oldData.setIbnfMdFlgcd(newData.getIbnfMdFlgcd());
                    oldData.setIbnfMdFlgDtcd(newData.getIbnfMdFlgDtcd());
                    oldData.setIbnfMdamt(newData.getIbnfMdamt());
                    oldData.setLsetmPyplRelFlgcd(newData.getLsetmPyplRelFlgcd());
                    oldData.setDmDmamt(newData.getDmDmamt());
                    oldData.setCcDmamt(newData.getCcDmamt());
                    oldData.setXiAmt(newData.getXiAmt());
                    oldData.setPvpyAmt(newData.getPvpyAmt());
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

    // @Operation(summary = "추산지급내역 수정" , description = "추산지급내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the LseXiPySpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPySpc.class)) }),
            @ApiResponse(responseCode = "404", description = "LseXiPySpc not found", content = @Content) })
	@PatchMapping("/lsexipyspcs/{aid}")
    ResponseEntity<LseXiPySpc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        LseXiPySpc newData = mapper.convertValue(newMap, LseXiPySpc.class);
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
                        if (strKey.equals("xiPySpcSeqno"))
                            oldData.setXiPySpcSeqno(newData.getXiPySpcSeqno());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("pyamt"))
                            oldData.setPyamt(newData.getPyamt());
                        if (strKey.equals("woncrCvPyamt"))
                            oldData.setWoncrCvPyamt(newData.getWoncrCvPyamt());
                        if (strKey.equals("remnXiMncd"))
                            oldData.setRemnXiMncd(newData.getRemnXiMncd());
                        if (strKey.equals("remnXiAmt"))
                            oldData.setRemnXiAmt(newData.getRemnXiAmt());
                        if (strKey.equals("frCcXiamt"))
                            oldData.setFrCcXiamt(newData.getFrCcXiamt());
                        if (strKey.equals("rkTpcd"))
                            oldData.setRkTpcd(newData.getRkTpcd());
                        if (strKey.equals("cmpPyRltno"))
                            oldData.setCmpPyRltno(newData.getCmpPyRltno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("dlayNt"))
                            oldData.setDlayNt(newData.getDlayNt());
                        if (strKey.equals("woncvIbnfDlayNt"))
                            oldData.setWoncvIbnfDlayNt(newData.getWoncvIbnfDlayNt());
                        if (strKey.equals("xcrt"))
                            oldData.setXcrt(newData.getXcrt());
                        if (strKey.equals("xcrtApdt"))
                            oldData.setXcrtApdt(newData.getXcrtApdt());
                        if (strKey.equals("pySpcFlgcd"))
                            oldData.setPySpcFlgcd(newData.getPySpcFlgcd());
                        if (strKey.equals("cvrStcd"))
                            oldData.setCvrStcd(newData.getCvrStcd());
                        if (strKey.equals("clmCvrcd"))
                            oldData.setClmCvrcd(newData.getClmCvrcd());
                        if (strKey.equals("ojTpcd"))
                            oldData.setOjTpcd(newData.getOjTpcd());
                        if (strKey.equals("ojnm"))
                            oldData.setOjnm(newData.getOjnm());
                        if (strKey.equals("ojDtCn"))
                            oldData.setOjDtCn(newData.getOjDtCn());
                        if (strKey.equals("crCvrcd"))
                            oldData.setCrCvrcd(newData.getCrCvrcd());
                        if (strKey.equals("selfChamt"))
                            oldData.setSelfChamt(newData.getSelfChamt());
                        if (strKey.equals("isamt"))
                            oldData.setIsamt(newData.getIsamt());
                        if (strKey.equals("isamtMncd"))
                            oldData.setIsamtMncd(newData.getIsamtMncd());
                        if (strKey.equals("ojSeqno"))
                            oldData.setOjSeqno(newData.getOjSeqno());
                        if (strKey.equals("lctcd"))
                            oldData.setLctcd(newData.getLctcd());
                        if (strKey.equals("ivamtFlgcd"))
                            oldData.setIvamtFlgcd(newData.getIvamtFlgcd());
                        if (strKey.equals("ivamt"))
                            oldData.setIvamt(newData.getIvamt());
                        if (strKey.equals("cdamt"))
                            oldData.setCdamt(newData.getCdamt());
                        if (strKey.equals("sbamt"))
                            oldData.setSbamt(newData.getSbamt());
                        if (strKey.equals("ndamt"))
                            oldData.setNdamt(newData.getNdamt());
                        if (strKey.equals("woncrCvIsamt"))
                            oldData.setWoncrCvIsamt(newData.getWoncrCvIsamt());
                        if (strKey.equals("ltcvrReIbamt"))
                            oldData.setLtcvrReIbamt(newData.getLtcvrReIbamt());
                        if (strKey.equals("ltcvrReRemnXiamt"))
                            oldData.setLtcvrReRemnXiamt(newData.getLtcvrReRemnXiamt());
                        if (strKey.equals("ltrmRert"))
                            oldData.setLtrmRert(newData.getLtrmRert());
                        if (strKey.equals("odclmCvrcd"))
                            oldData.setOdclmCvrcd(newData.getOdclmCvrcd());
                        if (strKey.equals("cvrSeqno"))
                            oldData.setCvrSeqno(newData.getCvrSeqno());
                        if (strKey.equals("ndcd"))
                            oldData.setNdcd(newData.getNdcd());
                        if (strKey.equals("cmpLmamt"))
                            oldData.setCmpLmamt(newData.getCmpLmamt());
                        if (strKey.equals("ltinsPstcd"))
                            oldData.setLtinsPstcd(newData.getLtinsPstcd());
                        if (strKey.equals("ltinsRinsPs"))
                            oldData.setLtinsRinsPs(newData.getLtinsRinsPs());
                        if (strKey.equals("imuCvrYn"))
                            oldData.setImuCvrYn(newData.getImuCvrYn());
                        if (strKey.equals("ibnfCcAmt"))
                            oldData.setIbnfCcAmt(newData.getIbnfCcAmt());
                        if (strKey.equals("chcAmt"))
                            oldData.setChcAmt(newData.getChcAmt());
                        if (strKey.equals("normClaDcMetcd"))
                            oldData.setNormClaDcMetcd(newData.getNormClaDcMetcd());
                        if (strKey.equals("spcClaDcMetcd"))
                            oldData.setSpcClaDcMetcd(newData.getSpcClaDcMetcd());
                        if (strKey.equals("autoSlcYn"))
                            oldData.setAutoSlcYn(newData.getAutoSlcYn());
                        if (strKey.equals("prpnCmpYn"))
                            oldData.setPrpnCmpYn(newData.getPrpnCmpYn());
                        if (strKey.equals("ivamtCoinsRtCd"))
                            oldData.setIvamtCoinsRtCd(newData.getIvamtCoinsRtCd());
                        if (strKey.equals("spclSlfchAmt"))
                            oldData.setSpclSlfchAmt(newData.getSpclSlfchAmt());
                        if (strKey.equals("mdudSeq"))
                            oldData.setMdudSeq(newData.getMdudSeq());
                        if (strKey.equals("acrcMdudApamt"))
                            oldData.setAcrcMdudApamt(newData.getAcrcMdudApamt());
                        if (strKey.equals("acrcMdudPyTpcd"))
                            oldData.setAcrcMdudPyTpcd(newData.getAcrcMdudPyTpcd());
                        if (strKey.equals("reTrtFlgcd"))
                            oldData.setReTrtFlgcd(newData.getReTrtFlgcd());
                        if (strKey.equals("opccsUdamt"))
                            oldData.setOpccsUdamt(newData.getOpccsUdamt());
                        if (strKey.equals("opccsUdApFlgcd"))
                            oldData.setOpccsUdApFlgcd(newData.getOpccsUdApFlgcd());
                        if (strKey.equals("opccsUdCpmtTpcd"))
                            oldData.setOpccsUdCpmtTpcd(newData.getOpccsUdCpmtTpcd());
                        if (strKey.equals("opccsUdCtn"))
                            oldData.setOpccsUdCtn(newData.getOpccsUdCtn());
                        if (strKey.equals("reSplyVlamt"))
                            oldData.setReSplyVlamt(newData.getReSplyVlamt());
                        if (strKey.equals("rlpmiCvrDbIsyn"))
                            oldData.setRlpmiCvrDbIsyn(newData.getRlpmiCvrDbIsyn());
                        if (strKey.equals("cvrclDmDmamt"))
                            oldData.setCvrclDmDmamt(newData.getCvrclDmDmamt());
                        if (strKey.equals("reDlayNtamt"))
                            oldData.setReDlayNtamt(newData.getReDlayNtamt());
                        if (strKey.equals("ntPpcpYn"))
                            oldData.setNtPpcpYn(newData.getNtPpcpYn());
                        if (strKey.equals("tmppyQckPyFlgcd"))
                            oldData.setTmppyQckPyFlgcd(newData.getTmppyQckPyFlgcd());
                        if (strKey.equals("rsRlvDt"))
                            oldData.setRsRlvDt(newData.getRsRlvDt());
                        if (strKey.equals("ltrmDlyntReIbamt"))
                            oldData.setLtrmDlyntReIbamt(newData.getLtrmDlyntReIbamt());
                        if (strKey.equals("ibnfMdFlgcd"))
                            oldData.setIbnfMdFlgcd(newData.getIbnfMdFlgcd());
                        if (strKey.equals("ibnfMdFlgDtcd"))
                            oldData.setIbnfMdFlgDtcd(newData.getIbnfMdFlgDtcd());
                        if (strKey.equals("ibnfMdamt"))
                            oldData.setIbnfMdamt(newData.getIbnfMdamt());
                        if (strKey.equals("lsetmPyplRelFlgcd"))
                            oldData.setLsetmPyplRelFlgcd(newData.getLsetmPyplRelFlgcd());
                        if (strKey.equals("dmDmamt"))
                            oldData.setDmDmamt(newData.getDmDmamt());
                        if (strKey.equals("ccDmamt"))
                            oldData.setCcDmamt(newData.getCcDmamt());
                        if (strKey.equals("xiAmt"))
                            oldData.setXiAmt(newData.getXiAmt());
                        if (strKey.equals("pvpyAmt"))
                            oldData.setPvpyAmt(newData.getPvpyAmt());
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
	
    // @Operation(summary = "추산지급내역 삭제" , description = "추산지급내역 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the LseXiPySpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = LseXiPySpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/lsexipyspcs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
