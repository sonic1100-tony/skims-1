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
import com.skims.domain.entity.InsPlCvr;
import com.skims.domain.repository.InsPlCvrRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<InsPlCvr>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setPlno(newData.getPlno());
                    oldData.setCgafChSeqno(newData.getCgafChSeqno());
                    oldData.setCvrcd(newData.getCvrcd());
                    oldData.setCvrSeqno(newData.getCvrSeqno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setCvrBjFlgcd(newData.getCvrBjFlgcd());
                    oldData.setRelpcOjSeqno(newData.getRelpcOjSeqno());
                    oldData.setRelpcSeqno(newData.getRelpcSeqno());
                    oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd());
                    oldData.setCvrSuboLvlFlgcd(newData.getCvrSuboLvlFlgcd());
                    oldData.setCvrStcd(newData.getCvrStcd());
                    oldData.setCvrStChdt(newData.getCvrStChdt());
                    oldData.setIsamt(newData.getIsamt());
                    oldData.setNdsIsamt(newData.getNdsIsamt());
                    oldData.setBaPrm(newData.getBaPrm());
                    oldData.setNdsBaPrm(newData.getNdsBaPrm());
                    oldData.setApPrm(newData.getApPrm());
                    oldData.setNdsApPrm(newData.getNdsApPrm());
                    oldData.setScdInsTrmApprm(newData.getScdInsTrmApprm());
                    oldData.setInsSt(newData.getInsSt());
                    oldData.setInsStHms(newData.getInsStHms());
                    oldData.setInsClstr(newData.getInsClstr());
                    oldData.setInsClstrHms(newData.getInsClstrHms());
                    oldData.setSelfChamtMncd(newData.getSelfChamtMncd());
                    oldData.setSelfChamt(newData.getSelfChamt());
                    oldData.setAgmtAqrRtFlgcd(newData.getAgmtAqrRtFlgcd());
                    oldData.setNrdpsLvlcd(newData.getNrdpsLvlcd());
                    oldData.setRkTpcd(newData.getRkTpcd());
                    oldData.setRnwTpcd(newData.getRnwTpcd());
                    oldData.setChbfApPrm(newData.getChbfApPrm());
                    oldData.setChafApPrm(newData.getChafApPrm());
                    oldData.setDscrt(newData.getDscrt());
                    oldData.setDcbfPrm(newData.getDcbfPrm());
                    oldData.setNrdpsDcamt(newData.getNrdpsDcamt());
                    oldData.setSccKdsSpcDcamt(newData.getSccKdsSpcDcamt());
                    oldData.setFstiPrmDcamt(newData.getFstiPrmDcamt());
                    oldData.setPymCyccd(newData.getPymCyccd());
                    oldData.setPymTrmcd(newData.getPymTrmcd());
                    oldData.setCvrStStYymm(newData.getCvrStStYymm());
                    oldData.setPymXmpYn(newData.getPymXmpYn());
                    oldData.setPymXmpStrYymm(newData.getPymXmpStrYymm());
                    oldData.setRfamtClcInsSt(newData.getRfamtClcInsSt());
                    oldData.setRfamtClcInsClstr(newData.getRfamtClcInsClstr());
                    oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn());
                    oldData.setAutoRnwCvrCnldt(newData.getAutoRnwCvrCnldt());
                    oldData.setCvrFnlPymYymm(newData.getCvrFnlPymYymm());
                    oldData.setCvrFnlPymSeq(newData.getCvrFnlPymSeq());
                    oldData.setNdFlgcd(newData.getNdFlgcd());
                    oldData.setNd(newData.getNd());
                    oldData.setNdcd(newData.getNdcd());
                    oldData.setRlNdTrm(newData.getRlNdTrm());
                    oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd());
                    oldData.setPymTrm(newData.getPymTrm());
                    oldData.setRlPymTrm(newData.getRlPymTrm());
                    oldData.setNrdpsApAge(newData.getNrdpsApAge());
                    oldData.setBfrnwCvrsn(newData.getBfrnwCvrsn());
                    oldData.setBfrnwCvrcd(newData.getBfrnwCvrcd());
                    oldData.setTrtPregRndWkct(newData.getTrtPregRndWkct());
                    oldData.setDbCvrFlgcd(newData.getDbCvrFlgcd());
                    oldData.setCvrIsTpcd(newData.getCvrIsTpcd());
                    oldData.setAfgstPrmCcbjYn(newData.getAfgstPrmCcbjYn());
                    oldData.setSepCrCnYn(newData.getSepCrCnYn());
                    oldData.setFlpyCvrfsSbYn(newData.getFlpyCvrfsSbYn());
                    oldData.setRnwNddt(newData.getRnwNddt());
                    oldData.setRnwCvrNclmDcamt(newData.getRnwCvrNclmDcamt());
                    oldData.setRwcvrNclmAdDcamt(newData.getRwcvrNclmAdDcamt());
                    oldData.setSustdXcRkNdx(newData.getSustdXcRkNdx());
                    oldData.setStdbdPrm(newData.getStdbdPrm());
                    oldData.setSustdPrm(newData.getSustdPrm());
                    oldData.setDcamt(newData.getDcamt());
                    oldData.setSustdRwcvrNclmDcamt(newData.getSustdRwcvrNclmDcamt());
                    oldData.setStdbdRwcvrNclmDcamt(newData.getStdbdRwcvrNclmDcamt());
                    oldData.setClmrlNdsApcd(newData.getClmrlNdsApcd());
                    oldData.setRmimcStbzDcamt(newData.getRmimcStbzDcamt());
                    oldData.setSbCscd(newData.getSbCscd());
                    oldData.setIsamtCd(newData.getIsamtCd());
                    oldData.setXpDmamt(newData.getXpDmamt());
                    oldData.setMdDmamt(newData.getMdDmamt());
                    oldData.setTrtApCvrPrmsm(newData.getTrtApCvrPrmsm());
                    oldData.setSysMpvDt(newData.getSysMpvDt());
                    oldData.setTrtApCvrcd(newData.getTrtApCvrcd());
                    oldData.setMstrCarPlyno(newData.getMstrCarPlyno());
                    oldData.setClmp1IsAmtcd(newData.getClmp1IsAmtcd());
                    oldData.setEmegMvoCeStfno(newData.getEmegMvoCeStfno());
                    oldData.setEmegMvoCnrdt(newData.getEmegMvoCnrdt());
                    oldData.setCvrSpquFlgcd(newData.getCvrSpquFlgcd());
                    oldData.setNdsPrdt(newData.getNdsPrdt());
                    oldData.setPrortShtmFlgcd(newData.getPrortShtmFlgcd());
                    oldData.setPrortShtrt(newData.getPrortShtrt());
                    oldData.setXpSumAmt(newData.getXpSumAmt());
                    oldData.setMdSumAmt(newData.getMdSumAmt());
                    oldData.setDeSelObsFlgcd(newData.getDeSelObsFlgcd());
                    oldData.setItmCvrRkRnk(newData.getItmCvrRkRnk());
                    oldData.setImuTrmcd(newData.getImuTrmcd());
                    oldData.setAgrRt(newData.getAgrRt());
                    oldData.setAbscTrmFlgcd(newData.getAbscTrmFlgcd());
                    oldData.setAgrRestTrmcd(newData.getAgrRestTrmcd());
                    oldData.setIsamtSpc(newData.getIsamtSpc());
                    oldData.setEsrct(newData.getEsrct());
                    oldData.setBdDlbrRpblBtpcd(newData.getBdDlbrRpblBtpcd());
                    oldData.setWoncrCvSelfChamt(newData.getWoncrCvSelfChamt());
                    oldData.setDcRt(newData.getDcRt());
                    oldData.setActOrActct(newData.getActOrActct());
                    oldData.setFrcRtApYn(newData.getFrcRtApYn());
                    oldData.setAdSelfChamt(newData.getAdSelfChamt());
                    oldData.setPrgcsPrtYn(newData.getPrgcsPrtYn());
                    oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
                    oldData.setMpyCvNprm(newData.getMpyCvNprm());
                    oldData.setRfdDscno(newData.getRfdDscno());
                    oldData.setRemnAmt(newData.getRemnAmt());
                    oldData.setRtKeyAssmbCd(newData.getRtKeyAssmbCd());
                    oldData.setBzcsRtKeyAssmbCd(newData.getBzcsRtKeyAssmbCd());
                    oldData.setPrmApStrdt(newData.getPrmApStrdt());
                    oldData.setPrmApNddt(newData.getPrmApNddt());
                    oldData.setSlCvrcd(newData.getSlCvrcd());
                    oldData.setSlCvrsn(newData.getSlCvrsn());
                    oldData.setCmpLmcd(newData.getCmpLmcd());
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
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("cgafChSeqno"))
                            oldData.setCgafChSeqno(newData.getCgafChSeqno());
                        if (strKey.equals("cvrcd"))
                            oldData.setCvrcd(newData.getCvrcd());
                        if (strKey.equals("cvrSeqno"))
                            oldData.setCvrSeqno(newData.getCvrSeqno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("cvrBjFlgcd"))
                            oldData.setCvrBjFlgcd(newData.getCvrBjFlgcd());
                        if (strKey.equals("relpcOjSeqno"))
                            oldData.setRelpcOjSeqno(newData.getRelpcOjSeqno());
                        if (strKey.equals("relpcSeqno"))
                            oldData.setRelpcSeqno(newData.getRelpcSeqno());
                        if (strKey.equals("cvrBaTrtFlgcd"))
                            oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd());
                        if (strKey.equals("cvrSuboLvlFlgcd"))
                            oldData.setCvrSuboLvlFlgcd(newData.getCvrSuboLvlFlgcd());
                        if (strKey.equals("cvrStcd"))
                            oldData.setCvrStcd(newData.getCvrStcd());
                        if (strKey.equals("cvrStChdt"))
                            oldData.setCvrStChdt(newData.getCvrStChdt());
                        if (strKey.equals("isamt"))
                            oldData.setIsamt(newData.getIsamt());
                        if (strKey.equals("ndsIsamt"))
                            oldData.setNdsIsamt(newData.getNdsIsamt());
                        if (strKey.equals("baPrm"))
                            oldData.setBaPrm(newData.getBaPrm());
                        if (strKey.equals("ndsBaPrm"))
                            oldData.setNdsBaPrm(newData.getNdsBaPrm());
                        if (strKey.equals("apPrm"))
                            oldData.setApPrm(newData.getApPrm());
                        if (strKey.equals("ndsApPrm"))
                            oldData.setNdsApPrm(newData.getNdsApPrm());
                        if (strKey.equals("scdInsTrmApprm"))
                            oldData.setScdInsTrmApprm(newData.getScdInsTrmApprm());
                        if (strKey.equals("insSt"))
                            oldData.setInsSt(newData.getInsSt());
                        if (strKey.equals("insStHms"))
                            oldData.setInsStHms(newData.getInsStHms());
                        if (strKey.equals("insClstr"))
                            oldData.setInsClstr(newData.getInsClstr());
                        if (strKey.equals("insClstrHms"))
                            oldData.setInsClstrHms(newData.getInsClstrHms());
                        if (strKey.equals("selfChamtMncd"))
                            oldData.setSelfChamtMncd(newData.getSelfChamtMncd());
                        if (strKey.equals("selfChamt"))
                            oldData.setSelfChamt(newData.getSelfChamt());
                        if (strKey.equals("agmtAqrRtFlgcd"))
                            oldData.setAgmtAqrRtFlgcd(newData.getAgmtAqrRtFlgcd());
                        if (strKey.equals("nrdpsLvlcd"))
                            oldData.setNrdpsLvlcd(newData.getNrdpsLvlcd());
                        if (strKey.equals("rkTpcd"))
                            oldData.setRkTpcd(newData.getRkTpcd());
                        if (strKey.equals("rnwTpcd"))
                            oldData.setRnwTpcd(newData.getRnwTpcd());
                        if (strKey.equals("chbfApPrm"))
                            oldData.setChbfApPrm(newData.getChbfApPrm());
                        if (strKey.equals("chafApPrm"))
                            oldData.setChafApPrm(newData.getChafApPrm());
                        if (strKey.equals("dscrt"))
                            oldData.setDscrt(newData.getDscrt());
                        if (strKey.equals("dcbfPrm"))
                            oldData.setDcbfPrm(newData.getDcbfPrm());
                        if (strKey.equals("nrdpsDcamt"))
                            oldData.setNrdpsDcamt(newData.getNrdpsDcamt());
                        if (strKey.equals("sccKdsSpcDcamt"))
                            oldData.setSccKdsSpcDcamt(newData.getSccKdsSpcDcamt());
                        if (strKey.equals("fstiPrmDcamt"))
                            oldData.setFstiPrmDcamt(newData.getFstiPrmDcamt());
                        if (strKey.equals("pymCyccd"))
                            oldData.setPymCyccd(newData.getPymCyccd());
                        if (strKey.equals("pymTrmcd"))
                            oldData.setPymTrmcd(newData.getPymTrmcd());
                        if (strKey.equals("cvrStStYymm"))
                            oldData.setCvrStStYymm(newData.getCvrStStYymm());
                        if (strKey.equals("pymXmpYn"))
                            oldData.setPymXmpYn(newData.getPymXmpYn());
                        if (strKey.equals("pymXmpStrYymm"))
                            oldData.setPymXmpStrYymm(newData.getPymXmpStrYymm());
                        if (strKey.equals("rfamtClcInsSt"))
                            oldData.setRfamtClcInsSt(newData.getRfamtClcInsSt());
                        if (strKey.equals("rfamtClcInsClstr"))
                            oldData.setRfamtClcInsClstr(newData.getRfamtClcInsClstr());
                        if (strKey.equals("autoRnwAvYn"))
                            oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn());
                        if (strKey.equals("autoRnwCvrCnldt"))
                            oldData.setAutoRnwCvrCnldt(newData.getAutoRnwCvrCnldt());
                        if (strKey.equals("cvrFnlPymYymm"))
                            oldData.setCvrFnlPymYymm(newData.getCvrFnlPymYymm());
                        if (strKey.equals("cvrFnlPymSeq"))
                            oldData.setCvrFnlPymSeq(newData.getCvrFnlPymSeq());
                        if (strKey.equals("ndFlgcd"))
                            oldData.setNdFlgcd(newData.getNdFlgcd());
                        if (strKey.equals("nd"))
                            oldData.setNd(newData.getNd());
                        if (strKey.equals("ndcd"))
                            oldData.setNdcd(newData.getNdcd());
                        if (strKey.equals("rlNdTrm"))
                            oldData.setRlNdTrm(newData.getRlNdTrm());
                        if (strKey.equals("pymTrmFlgcd"))
                            oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd());
                        if (strKey.equals("pymTrm"))
                            oldData.setPymTrm(newData.getPymTrm());
                        if (strKey.equals("rlPymTrm"))
                            oldData.setRlPymTrm(newData.getRlPymTrm());
                        if (strKey.equals("nrdpsApAge"))
                            oldData.setNrdpsApAge(newData.getNrdpsApAge());
                        if (strKey.equals("bfrnwCvrsn"))
                            oldData.setBfrnwCvrsn(newData.getBfrnwCvrsn());
                        if (strKey.equals("bfrnwCvrcd"))
                            oldData.setBfrnwCvrcd(newData.getBfrnwCvrcd());
                        if (strKey.equals("trtPregRndWkct"))
                            oldData.setTrtPregRndWkct(newData.getTrtPregRndWkct());
                        if (strKey.equals("dbCvrFlgcd"))
                            oldData.setDbCvrFlgcd(newData.getDbCvrFlgcd());
                        if (strKey.equals("cvrIsTpcd"))
                            oldData.setCvrIsTpcd(newData.getCvrIsTpcd());
                        if (strKey.equals("afgstPrmCcbjYn"))
                            oldData.setAfgstPrmCcbjYn(newData.getAfgstPrmCcbjYn());
                        if (strKey.equals("sepCrCnYn"))
                            oldData.setSepCrCnYn(newData.getSepCrCnYn());
                        if (strKey.equals("flpyCvrfsSbYn"))
                            oldData.setFlpyCvrfsSbYn(newData.getFlpyCvrfsSbYn());
                        if (strKey.equals("rnwNddt"))
                            oldData.setRnwNddt(newData.getRnwNddt());
                        if (strKey.equals("rnwCvrNclmDcamt"))
                            oldData.setRnwCvrNclmDcamt(newData.getRnwCvrNclmDcamt());
                        if (strKey.equals("rwcvrNclmAdDcamt"))
                            oldData.setRwcvrNclmAdDcamt(newData.getRwcvrNclmAdDcamt());
                        if (strKey.equals("sustdXcRkNdx"))
                            oldData.setSustdXcRkNdx(newData.getSustdXcRkNdx());
                        if (strKey.equals("stdbdPrm"))
                            oldData.setStdbdPrm(newData.getStdbdPrm());
                        if (strKey.equals("sustdPrm"))
                            oldData.setSustdPrm(newData.getSustdPrm());
                        if (strKey.equals("dcamt"))
                            oldData.setDcamt(newData.getDcamt());
                        if (strKey.equals("sustdRwcvrNclmDcamt"))
                            oldData.setSustdRwcvrNclmDcamt(newData.getSustdRwcvrNclmDcamt());
                        if (strKey.equals("stdbdRwcvrNclmDcamt"))
                            oldData.setStdbdRwcvrNclmDcamt(newData.getStdbdRwcvrNclmDcamt());
                        if (strKey.equals("clmrlNdsApcd"))
                            oldData.setClmrlNdsApcd(newData.getClmrlNdsApcd());
                        if (strKey.equals("rmimcStbzDcamt"))
                            oldData.setRmimcStbzDcamt(newData.getRmimcStbzDcamt());
                        if (strKey.equals("sbCscd"))
                            oldData.setSbCscd(newData.getSbCscd());
                        if (strKey.equals("isamtCd"))
                            oldData.setIsamtCd(newData.getIsamtCd());
                        if (strKey.equals("xpDmamt"))
                            oldData.setXpDmamt(newData.getXpDmamt());
                        if (strKey.equals("mdDmamt"))
                            oldData.setMdDmamt(newData.getMdDmamt());
                        if (strKey.equals("trtApCvrPrmsm"))
                            oldData.setTrtApCvrPrmsm(newData.getTrtApCvrPrmsm());
                        if (strKey.equals("sysMpvDt"))
                            oldData.setSysMpvDt(newData.getSysMpvDt());
                        if (strKey.equals("trtApCvrcd"))
                            oldData.setTrtApCvrcd(newData.getTrtApCvrcd());
                        if (strKey.equals("mstrCarPlyno"))
                            oldData.setMstrCarPlyno(newData.getMstrCarPlyno());
                        if (strKey.equals("clmp1IsAmtcd"))
                            oldData.setClmp1IsAmtcd(newData.getClmp1IsAmtcd());
                        if (strKey.equals("emegMvoCeStfno"))
                            oldData.setEmegMvoCeStfno(newData.getEmegMvoCeStfno());
                        if (strKey.equals("emegMvoCnrdt"))
                            oldData.setEmegMvoCnrdt(newData.getEmegMvoCnrdt());
                        if (strKey.equals("cvrSpquFlgcd"))
                            oldData.setCvrSpquFlgcd(newData.getCvrSpquFlgcd());
                        if (strKey.equals("ndsPrdt"))
                            oldData.setNdsPrdt(newData.getNdsPrdt());
                        if (strKey.equals("prortShtmFlgcd"))
                            oldData.setPrortShtmFlgcd(newData.getPrortShtmFlgcd());
                        if (strKey.equals("prortShtrt"))
                            oldData.setPrortShtrt(newData.getPrortShtrt());
                        if (strKey.equals("xpSumAmt"))
                            oldData.setXpSumAmt(newData.getXpSumAmt());
                        if (strKey.equals("mdSumAmt"))
                            oldData.setMdSumAmt(newData.getMdSumAmt());
                        if (strKey.equals("deSelObsFlgcd"))
                            oldData.setDeSelObsFlgcd(newData.getDeSelObsFlgcd());
                        if (strKey.equals("itmCvrRkRnk"))
                            oldData.setItmCvrRkRnk(newData.getItmCvrRkRnk());
                        if (strKey.equals("imuTrmcd"))
                            oldData.setImuTrmcd(newData.getImuTrmcd());
                        if (strKey.equals("agrRt"))
                            oldData.setAgrRt(newData.getAgrRt());
                        if (strKey.equals("abscTrmFlgcd"))
                            oldData.setAbscTrmFlgcd(newData.getAbscTrmFlgcd());
                        if (strKey.equals("agrRestTrmcd"))
                            oldData.setAgrRestTrmcd(newData.getAgrRestTrmcd());
                        if (strKey.equals("isamtSpc"))
                            oldData.setIsamtSpc(newData.getIsamtSpc());
                        if (strKey.equals("esrct"))
                            oldData.setEsrct(newData.getEsrct());
                        if (strKey.equals("bdDlbrRpblBtpcd"))
                            oldData.setBdDlbrRpblBtpcd(newData.getBdDlbrRpblBtpcd());
                        if (strKey.equals("woncrCvSelfChamt"))
                            oldData.setWoncrCvSelfChamt(newData.getWoncrCvSelfChamt());
                        if (strKey.equals("dcRt"))
                            oldData.setDcRt(newData.getDcRt());
                        if (strKey.equals("actOrActct"))
                            oldData.setActOrActct(newData.getActOrActct());
                        if (strKey.equals("frcRtApYn"))
                            oldData.setFrcRtApYn(newData.getFrcRtApYn());
                        if (strKey.equals("adSelfChamt"))
                            oldData.setAdSelfChamt(newData.getAdSelfChamt());
                        if (strKey.equals("prgcsPrtYn"))
                            oldData.setPrgcsPrtYn(newData.getPrgcsPrtYn());
                        if (strKey.equals("ltrmNdsDlFlgcd"))
                            oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
                        if (strKey.equals("mpyCvNprm"))
                            oldData.setMpyCvNprm(newData.getMpyCvNprm());
                        if (strKey.equals("rfdDscno"))
                            oldData.setRfdDscno(newData.getRfdDscno());
                        if (strKey.equals("remnAmt"))
                            oldData.setRemnAmt(newData.getRemnAmt());
                        if (strKey.equals("rtKeyAssmbCd"))
                            oldData.setRtKeyAssmbCd(newData.getRtKeyAssmbCd());
                        if (strKey.equals("bzcsRtKeyAssmbCd"))
                            oldData.setBzcsRtKeyAssmbCd(newData.getBzcsRtKeyAssmbCd());
                        if (strKey.equals("prmApStrdt"))
                            oldData.setPrmApStrdt(newData.getPrmApStrdt());
                        if (strKey.equals("prmApNddt"))
                            oldData.setPrmApNddt(newData.getPrmApNddt());
                        if (strKey.equals("slCvrcd"))
                            oldData.setSlCvrcd(newData.getSlCvrcd());
                        if (strKey.equals("slCvrsn"))
                            oldData.setSlCvrsn(newData.getSlCvrsn());
                        if (strKey.equals("cmpLmcd"))
                            oldData.setCmpLmcd(newData.getCmpLmcd());
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
