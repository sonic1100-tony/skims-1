/**
 * InsPlCvr Entity Controller 클래스
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
import com.skims.domain.entity.InsPlCvr;
import com.skims.domain.repository.InsPlCvrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlCvr 설계담보 Controller")
@Slf4j
public class InsPlCvrController {

    @Autowired
    InsPlCvrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계담보 전체조회" , summary = "설계담보 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insplcvrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insplcvrs")
    public ResponseEntity<Page<InsPlCvr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계담보 Key조회" , description = "설계담보 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlCvr not found", content = @Content) })
    @GetMapping("/insplcvrs/{aid}")
    public ResponseEntity<InsPlCvr> getById(@PathVariable("aid") Long aid) {
        Optional<InsPlCvr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계담보 등록" , description = "설계담보 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insplcvrs")
    ResponseEntity<InsPlCvr> postData(@RequestBody InsPlCvr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계담보 수정" , description = "설계담보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlCvr not found", content = @Content) })
    @PutMapping("/insplcvrs/{aid}")
    ResponseEntity<InsPlCvr> putData(@RequestBody InsPlCvr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "설계담보 수정" , description = "설계담보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlCvr not found", content = @Content) })
	@PatchMapping("/insplcvrs/{aid}")
    ResponseEntity<InsPlCvr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPlCvr newData = mapper.convertValue(newMap, InsPlCvr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plno" : oldData.setPlno(newData.getPlno()); break;
						    case "cgafChSeqno" : oldData.setCgafChSeqno(newData.getCgafChSeqno()); break;
						    case "cvrcd" : oldData.setCvrcd(newData.getCvrcd()); break;
						    case "cvrSeqno" : oldData.setCvrSeqno(newData.getCvrSeqno()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "cvrBjFlgcd" : oldData.setCvrBjFlgcd(newData.getCvrBjFlgcd()); break;
						    case "relpcOjSeqno" : oldData.setRelpcOjSeqno(newData.getRelpcOjSeqno()); break;
						    case "relpcSeqno" : oldData.setRelpcSeqno(newData.getRelpcSeqno()); break;
						    case "cvrBaTrtFlgcd" : oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd()); break;
						    case "cvrSuboLvlFlgcd" : oldData.setCvrSuboLvlFlgcd(newData.getCvrSuboLvlFlgcd()); break;
						    case "cvrStcd" : oldData.setCvrStcd(newData.getCvrStcd()); break;
						    case "cvrStChdt" : oldData.setCvrStChdt(newData.getCvrStChdt()); break;
						    case "isamt" : oldData.setIsamt(newData.getIsamt()); break;
						    case "ndsIsamt" : oldData.setNdsIsamt(newData.getNdsIsamt()); break;
						    case "baPrm" : oldData.setBaPrm(newData.getBaPrm()); break;
						    case "ndsBaPrm" : oldData.setNdsBaPrm(newData.getNdsBaPrm()); break;
						    case "apPrm" : oldData.setApPrm(newData.getApPrm()); break;
						    case "ndsApPrm" : oldData.setNdsApPrm(newData.getNdsApPrm()); break;
						    case "scdInsTrmApprm" : oldData.setScdInsTrmApprm(newData.getScdInsTrmApprm()); break;
						    case "insSt" : oldData.setInsSt(newData.getInsSt()); break;
						    case "insStHms" : oldData.setInsStHms(newData.getInsStHms()); break;
						    case "insClstr" : oldData.setInsClstr(newData.getInsClstr()); break;
						    case "insClstrHms" : oldData.setInsClstrHms(newData.getInsClstrHms()); break;
						    case "selfChamtMncd" : oldData.setSelfChamtMncd(newData.getSelfChamtMncd()); break;
						    case "selfChamt" : oldData.setSelfChamt(newData.getSelfChamt()); break;
						    case "agmtAqrRtFlgcd" : oldData.setAgmtAqrRtFlgcd(newData.getAgmtAqrRtFlgcd()); break;
						    case "nrdpsLvlcd" : oldData.setNrdpsLvlcd(newData.getNrdpsLvlcd()); break;
						    case "rkTpcd" : oldData.setRkTpcd(newData.getRkTpcd()); break;
						    case "rnwTpcd" : oldData.setRnwTpcd(newData.getRnwTpcd()); break;
						    case "chbfApPrm" : oldData.setChbfApPrm(newData.getChbfApPrm()); break;
						    case "chafApPrm" : oldData.setChafApPrm(newData.getChafApPrm()); break;
						    case "dscrt" : oldData.setDscrt(newData.getDscrt()); break;
						    case "dcbfPrm" : oldData.setDcbfPrm(newData.getDcbfPrm()); break;
						    case "nrdpsDcamt" : oldData.setNrdpsDcamt(newData.getNrdpsDcamt()); break;
						    case "sccKdsSpcDcamt" : oldData.setSccKdsSpcDcamt(newData.getSccKdsSpcDcamt()); break;
						    case "fstiPrmDcamt" : oldData.setFstiPrmDcamt(newData.getFstiPrmDcamt()); break;
						    case "pymCyccd" : oldData.setPymCyccd(newData.getPymCyccd()); break;
						    case "pymTrmcd" : oldData.setPymTrmcd(newData.getPymTrmcd()); break;
						    case "cvrStStYymm" : oldData.setCvrStStYymm(newData.getCvrStStYymm()); break;
						    case "pymXmpYn" : oldData.setPymXmpYn(newData.getPymXmpYn()); break;
						    case "pymXmpStrYymm" : oldData.setPymXmpStrYymm(newData.getPymXmpStrYymm()); break;
						    case "rfamtClcInsSt" : oldData.setRfamtClcInsSt(newData.getRfamtClcInsSt()); break;
						    case "rfamtClcInsClstr" : oldData.setRfamtClcInsClstr(newData.getRfamtClcInsClstr()); break;
						    case "autoRnwAvYn" : oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn()); break;
						    case "autoRnwCvrCnldt" : oldData.setAutoRnwCvrCnldt(newData.getAutoRnwCvrCnldt()); break;
						    case "cvrFnlPymYymm" : oldData.setCvrFnlPymYymm(newData.getCvrFnlPymYymm()); break;
						    case "cvrFnlPymSeq" : oldData.setCvrFnlPymSeq(newData.getCvrFnlPymSeq()); break;
						    case "ndFlgcd" : oldData.setNdFlgcd(newData.getNdFlgcd()); break;
						    case "nd" : oldData.setNd(newData.getNd()); break;
						    case "ndcd" : oldData.setNdcd(newData.getNdcd()); break;
						    case "rlNdTrm" : oldData.setRlNdTrm(newData.getRlNdTrm()); break;
						    case "pymTrmFlgcd" : oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd()); break;
						    case "pymTrm" : oldData.setPymTrm(newData.getPymTrm()); break;
						    case "rlPymTrm" : oldData.setRlPymTrm(newData.getRlPymTrm()); break;
						    case "nrdpsApAge" : oldData.setNrdpsApAge(newData.getNrdpsApAge()); break;
						    case "bfrnwCvrsn" : oldData.setBfrnwCvrsn(newData.getBfrnwCvrsn()); break;
						    case "bfrnwCvrcd" : oldData.setBfrnwCvrcd(newData.getBfrnwCvrcd()); break;
						    case "trtPregRndWkct" : oldData.setTrtPregRndWkct(newData.getTrtPregRndWkct()); break;
						    case "dbCvrFlgcd" : oldData.setDbCvrFlgcd(newData.getDbCvrFlgcd()); break;
						    case "cvrIsTpcd" : oldData.setCvrIsTpcd(newData.getCvrIsTpcd()); break;
						    case "afgstPrmCcbjYn" : oldData.setAfgstPrmCcbjYn(newData.getAfgstPrmCcbjYn()); break;
						    case "sepCrCnYn" : oldData.setSepCrCnYn(newData.getSepCrCnYn()); break;
						    case "flpyCvrfsSbYn" : oldData.setFlpyCvrfsSbYn(newData.getFlpyCvrfsSbYn()); break;
						    case "rnwNddt" : oldData.setRnwNddt(newData.getRnwNddt()); break;
						    case "rnwCvrNclmDcamt" : oldData.setRnwCvrNclmDcamt(newData.getRnwCvrNclmDcamt()); break;
						    case "rwcvrNclmAdDcamt" : oldData.setRwcvrNclmAdDcamt(newData.getRwcvrNclmAdDcamt()); break;
						    case "sustdXcRkNdx" : oldData.setSustdXcRkNdx(newData.getSustdXcRkNdx()); break;
						    case "stdbdPrm" : oldData.setStdbdPrm(newData.getStdbdPrm()); break;
						    case "sustdPrm" : oldData.setSustdPrm(newData.getSustdPrm()); break;
						    case "dcamt" : oldData.setDcamt(newData.getDcamt()); break;
						    case "sustdRwcvrNclmDcamt" : oldData.setSustdRwcvrNclmDcamt(newData.getSustdRwcvrNclmDcamt()); break;
						    case "stdbdRwcvrNclmDcamt" : oldData.setStdbdRwcvrNclmDcamt(newData.getStdbdRwcvrNclmDcamt()); break;
						    case "clmrlNdsApcd" : oldData.setClmrlNdsApcd(newData.getClmrlNdsApcd()); break;
						    case "rmimcStbzDcamt" : oldData.setRmimcStbzDcamt(newData.getRmimcStbzDcamt()); break;
						    case "sbCscd" : oldData.setSbCscd(newData.getSbCscd()); break;
						    case "isamtCd" : oldData.setIsamtCd(newData.getIsamtCd()); break;
						    case "xpDmamt" : oldData.setXpDmamt(newData.getXpDmamt()); break;
						    case "mdDmamt" : oldData.setMdDmamt(newData.getMdDmamt()); break;
						    case "trtApCvrPrmsm" : oldData.setTrtApCvrPrmsm(newData.getTrtApCvrPrmsm()); break;
						    case "sysMpvDt" : oldData.setSysMpvDt(newData.getSysMpvDt()); break;
						    case "trtApCvrcd" : oldData.setTrtApCvrcd(newData.getTrtApCvrcd()); break;
						    case "mstrCarPlyno" : oldData.setMstrCarPlyno(newData.getMstrCarPlyno()); break;
						    case "clmp1IsAmtcd" : oldData.setClmp1IsAmtcd(newData.getClmp1IsAmtcd()); break;
						    case "emegMvoCeStfno" : oldData.setEmegMvoCeStfno(newData.getEmegMvoCeStfno()); break;
						    case "emegMvoCnrdt" : oldData.setEmegMvoCnrdt(newData.getEmegMvoCnrdt()); break;
						    case "cvrSpquFlgcd" : oldData.setCvrSpquFlgcd(newData.getCvrSpquFlgcd()); break;
						    case "ndsPrdt" : oldData.setNdsPrdt(newData.getNdsPrdt()); break;
						    case "prortShtmFlgcd" : oldData.setPrortShtmFlgcd(newData.getPrortShtmFlgcd()); break;
						    case "prortShtrt" : oldData.setPrortShtrt(newData.getPrortShtrt()); break;
						    case "xpSumAmt" : oldData.setXpSumAmt(newData.getXpSumAmt()); break;
						    case "mdSumAmt" : oldData.setMdSumAmt(newData.getMdSumAmt()); break;
						    case "deSelObsFlgcd" : oldData.setDeSelObsFlgcd(newData.getDeSelObsFlgcd()); break;
						    case "itmCvrRkRnk" : oldData.setItmCvrRkRnk(newData.getItmCvrRkRnk()); break;
						    case "imuTrmcd" : oldData.setImuTrmcd(newData.getImuTrmcd()); break;
						    case "agrRt" : oldData.setAgrRt(newData.getAgrRt()); break;
						    case "abscTrmFlgcd" : oldData.setAbscTrmFlgcd(newData.getAbscTrmFlgcd()); break;
						    case "agrRestTrmcd" : oldData.setAgrRestTrmcd(newData.getAgrRestTrmcd()); break;
						    case "isamtSpc" : oldData.setIsamtSpc(newData.getIsamtSpc()); break;
						    case "esrct" : oldData.setEsrct(newData.getEsrct()); break;
						    case "bdDlbrRpblBtpcd" : oldData.setBdDlbrRpblBtpcd(newData.getBdDlbrRpblBtpcd()); break;
						    case "woncrCvSelfChamt" : oldData.setWoncrCvSelfChamt(newData.getWoncrCvSelfChamt()); break;
						    case "dcRt" : oldData.setDcRt(newData.getDcRt()); break;
						    case "actOrActct" : oldData.setActOrActct(newData.getActOrActct()); break;
						    case "frcRtApYn" : oldData.setFrcRtApYn(newData.getFrcRtApYn()); break;
						    case "adSelfChamt" : oldData.setAdSelfChamt(newData.getAdSelfChamt()); break;
						    case "prgcsPrtYn" : oldData.setPrgcsPrtYn(newData.getPrgcsPrtYn()); break;
						    case "ltrmNdsDlFlgcd" : oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd()); break;
						    case "mpyCvNprm" : oldData.setMpyCvNprm(newData.getMpyCvNprm()); break;
						    case "rfdDscno" : oldData.setRfdDscno(newData.getRfdDscno()); break;
						    case "remnAmt" : oldData.setRemnAmt(newData.getRemnAmt()); break;
						    case "rtKeyAssmbCd" : oldData.setRtKeyAssmbCd(newData.getRtKeyAssmbCd()); break;
						    case "bzcsRtKeyAssmbCd" : oldData.setBzcsRtKeyAssmbCd(newData.getBzcsRtKeyAssmbCd()); break;
						    case "prmApStrdt" : oldData.setPrmApStrdt(newData.getPrmApStrdt()); break;
						    case "prmApNddt" : oldData.setPrmApNddt(newData.getPrmApNddt()); break;
						    case "slCvrcd" : oldData.setSlCvrcd(newData.getSlCvrcd()); break;
						    case "slCvrsn" : oldData.setSlCvrsn(newData.getSlCvrsn()); break;
						    case "cmpLmcd" : oldData.setCmpLmcd(newData.getCmpLmcd()); break;
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
	
    // @Operation(summary = "설계담보 삭제" , description = "설계담보 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insplcvrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
