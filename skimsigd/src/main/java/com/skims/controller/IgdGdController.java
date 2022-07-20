/**
 * IgdGd Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.sql.Date;

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
import com.skims.domain.entity.IgdGd;
import com.skims.domain.entity.IgdGdPK;
import com.skims.domain.repository.IgdGdRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdGd 상품 Controller")
@Slf4j
public class IgdGdController {

    @Autowired
    IgdGdRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "상품 전체조회" , summary = "상품 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdgds", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdgds")
    public ResponseEntity<Page<IgdGd>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "상품 Key조회" , description = "상품 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdGd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGd.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdGd not found", content = @Content) })
    @GetMapping("/igdgds/{gdcd}/{apNddt}/{apStrdt}")
    public ResponseEntity<IgdGd> getById(@PathVariable("gdcd") String gdcd, @PathVariable("apNddt") Date apNddt, @PathVariable("apStrdt") Date apStrdt) {
        Optional<IgdGd> data = repository.findById(new IgdGdPK(gdcd, apNddt, apStrdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "상품 등록" , description = "상품 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdGd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdgds")
    ResponseEntity<IgdGd> postData(@RequestBody IgdGd newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "상품 수정" , description = "상품 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdGd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGd.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdGd not found", content = @Content) })
    @PutMapping("/igdgds/{gdcd}/{apNddt}/{apStrdt}")
    ResponseEntity<IgdGd> putData(@RequestBody IgdGd newData, @PathVariable("gdcd") String gdcd, @PathVariable("apNddt") Date apNddt, @PathVariable("apStrdt") Date apStrdt) {
        return repository.findById(new IgdGdPK(gdcd, apNddt, apStrdt)) //
                .map(oldData -> {
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setClaLngFlgcd(newData.getClaLngFlgcd());
                    oldData.setGdTyFlgcd(newData.getGdTyFlgcd());
                    oldData.setGdSlnm(newData.getGdSlnm());
                    oldData.setGdShtnm(newData.getGdShtnm());
                    oldData.setGdKornm(newData.getGdKornm());
                    oldData.setGdEnnm(newData.getGdEnnm());
                    oldData.setGdXpnm(newData.getGdXpnm());
                    oldData.setGdPerYn(newData.getGdPerYn());
                    oldData.setGdPernm(newData.getGdPernm());
                    oldData.setGdPerTpcd(newData.getGdPerTpcd());
                    oldData.setGdPerdt(newData.getGdPerdt());
                    oldData.setGdSlTpcd(newData.getGdSlTpcd());
                    oldData.setCrOpnBaHms(newData.getCrOpnBaHms());
                    oldData.setCrNdBaHms(newData.getCrNdBaHms());
                    oldData.setFcDhYn(newData.getFcDhYn());
                    oldData.setReUntFlgcd(newData.getReUntFlgcd());
                    oldData.setPymXmpUntFlgcd(newData.getPymXmpUntFlgcd());
                    oldData.setPpyPrmPrmYn(newData.getPpyPrmPrmYn());
                    oldData.setPpyPrmMxpsbMc(newData.getPpyPrmMxpsbMc());
                    oldData.setPsnclDbinsPrmYn(newData.getPsnclDbinsPrmYn());
                    oldData.setCvInsAvYn(newData.getCvInsAvYn());
                    oldData.setAutoTfDcYn(newData.getAutoTfDcYn());
                    oldData.setTypeFlgcd(newData.getTypeFlgcd());
                    oldData.setTypeCnFlgcd(newData.getTypeCnFlgcd());
                    oldData.setSpeScrRnwYn(newData.getSpeScrRnwYn());
                    oldData.setDvTpcd(newData.getDvTpcd());
                    oldData.setPrmStrFlgcd(newData.getPrmStrFlgcd());
                    oldData.setMwRtamtCrFlgcd(newData.getMwRtamtCrFlgcd());
                    oldData.setNdRtamtCrYn(newData.getNdRtamtCrYn());
                    oldData.setDgnGdYn(newData.getDgnGdYn());
                    oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn());
                    oldData.setPrmInpFlgcd(newData.getPrmInpFlgcd());
                    oldData.setCuPrmOcpymYn(newData.getCuPrmOcpymYn());
                    oldData.setCtuCrdtfAvYn(newData.getCtuCrdtfAvYn());
                    oldData.setClaLnAvYn(newData.getClaLnAvYn());
                    oldData.setSbPymFlgcd(newData.getSbPymFlgcd());
                    oldData.setSbPymTpcd(newData.getSbPymTpcd());
                    oldData.setAgeCcStFlgcd(newData.getAgeCcStFlgcd());
                    oldData.setBzMtdrpCsfcd(newData.getBzMtdrpCsfcd());
                    oldData.setIsPlChtWrtyn(newData.getIsPlChtWrtyn());
                    oldData.setXtnTpcd(newData.getXtnTpcd());
                    oldData.setXtntmRtamtFlgcd(newData.getXtntmRtamtFlgcd());
                    oldData.setTrmclExplNtcMntct(newData.getTrmclExplNtcMntct());
                    oldData.setRmimcFlgcd(newData.getRmimcFlgcd());
                    oldData.setGrIsFlgcd(newData.getGrIsFlgcd());
                    oldData.setGrDcAvYn(newData.getGrDcAvYn());
                    oldData.setGrMnIsPsct(newData.getGrMnIsPsct());
                    oldData.setAvgRtUsYn(newData.getAvgRtUsYn());
                    oldData.setPrEsPrmYn(newData.getPrEsPrmYn());
                    oldData.setLowtPrmMncd(newData.getLowtPrmMncd());
                    oldData.setLowtPrm(newData.getLowtPrm());
                    oldData.setCvrPrmSgdlgFlgcd(newData.getCvrPrmSgdlgFlgcd());
                    oldData.setApprmSglrDlFlgcd(newData.getApprmSglrDlFlgcd());
                    oldData.setSlPlAdmYn(newData.getSlPlAdmYn());
                    oldData.setCrLogflPstInfo(newData.getCrLogflPstInfo());
                    oldData.setOpEnvrCvYn(newData.getOpEnvrCvYn());
                    oldData.setInsTrmBavl(newData.getInsTrmBavl());
                    oldData.setInsTrmLm(newData.getInsTrmLm());
                    oldData.setPymGrcTrm(newData.getPymGrcTrm());
                    oldData.setTxPfGdCsfcd(newData.getTxPfGdCsfcd());
                    oldData.setSlPlOpTpcd(newData.getSlPlOpTpcd());
                    oldData.setPlyOutTpFlgcd(newData.getPlyOutTpFlgcd());
                    oldData.setTypeChAvYn(newData.getTypeChAvYn());
                    oldData.setGdDtScrYn(newData.getGdDtScrYn());
                    oldData.setDtScrId(newData.getDtScrId());
                    oldData.setDcApFlgcd(newData.getDcApFlgcd());
                    oldData.setDtInpscXstnYn(newData.getDtInpscXstnYn());
                    oldData.setDtInpscId(newData.getDtInpscId());
                    oldData.setMwWdraAvRt(newData.getMwWdraAvRt());
                    oldData.setMwWdraStrRndcd(newData.getMwWdraStrRndcd());
                    oldData.setMwWdraCrCyccd(newData.getMwWdraCrCyccd());
                    oldData.setMwWdraCrCaseq(newData.getMwWdraCrCaseq());
                    oldData.setDvpnsRprIkdcd(newData.getDvpnsRprIkdcd());
                    oldData.setGdExpprOutYn(newData.getGdExpprOutYn());
                    oldData.setMarneNelpCalMetcd(newData.getMarneNelpCalMetcd());
                    oldData.setPectSlMntrBjpcd(newData.getPectSlMntrBjpcd());
                    oldData.setPrmInpTpcd(newData.getPrmInpTpcd());
                    oldData.setRntclDscrtApYn(newData.getRntclDscrtApYn());
                    oldData.setGdsMxDcLmrt(newData.getGdsMxDcLmrt());
                    oldData.setPrmSbPymTpcd(newData.getPrmSbPymTpcd());
                    oldData.setPrmNpySbFlgcd(newData.getPrmNpySbFlgcd());
                    oldData.setScrIdcOrdr(newData.getScrIdcOrdr());
                    oldData.setMxMnCcTpcd(newData.getMxMnCcTpcd());
                    oldData.setRnwdcFundChekYn(newData.getRnwdcFundChekYn());
                    oldData.setRmimcRkrtDclYn(newData.getRmimcRkrtDclYn());
                    oldData.setAnulBzprmRtAdtm(newData.getAnulBzprmRtAdtm());
                    oldData.setCcXcptDlcd(newData.getCcXcptDlcd());
                    oldData.setIndpdTrtTpcd(newData.getIndpdTrtTpcd());
                    oldData.setIndpdTrtIncldYn(newData.getIndpdTrtIncldYn());
                    oldData.setGdMxIsAge(newData.getGdMxIsAge());
                    oldData.setMxRnwTrm(newData.getMxRnwTrm());
                    oldData.setSmPrmMnYn(newData.getSmPrmMnYn());
                    oldData.setRlpmiMdInsCsfcd(newData.getRlpmiMdInsCsfcd());
                    oldData.setPsvnBjGdYn(newData.getPsvnBjGdYn());
                    oldData.setReIsgdTpcd(newData.getReIsgdTpcd());
                    oldData.setAdpymPrmLmFlgcd(newData.getAdpymPrmLmFlgcd());
                    oldData.setIrtCnGdYn(newData.getIrtCnGdYn());
                    oldData.setLtrmGdGrpCsfcd(newData.getLtrmGdGrpCsfcd());
                    oldData.setSofGdCsfcd(newData.getSofGdCsfcd());
                    oldData.setCrycd(newData.getCrycd());
                    oldData.setIsAvOjTpcd(newData.getIsAvOjTpcd());
                    oldData.setRtnTpInfoCd(newData.getRtnTpInfoCd());
                    oldData.setAdpymAvFlgcd(newData.getAdpymAvFlgcd());
                    oldData.setMwwdrAvFlgcd(newData.getMwwdrAvFlgcd());
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

    // @Operation(summary = "상품 수정" , description = "상품 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdGd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGd.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdGd not found", content = @Content) })
	@PatchMapping("/igdgds/{gdcd}/{apNddt}/{apStrdt}")
    ResponseEntity<IgdGd> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("gdcd") String gdcd, @PathVariable("apNddt") Date apNddt, @PathVariable("apStrdt") Date apStrdt) {
        IgdGd newData = mapper.convertValue(newMap, IgdGd.class);
        return repository.findById(new IgdGdPK(gdcd, apNddt, apStrdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("claLngFlgcd"))
                            oldData.setClaLngFlgcd(newData.getClaLngFlgcd());
                        if (strKey.equals("gdTyFlgcd"))
                            oldData.setGdTyFlgcd(newData.getGdTyFlgcd());
                        if (strKey.equals("gdSlnm"))
                            oldData.setGdSlnm(newData.getGdSlnm());
                        if (strKey.equals("gdShtnm"))
                            oldData.setGdShtnm(newData.getGdShtnm());
                        if (strKey.equals("gdKornm"))
                            oldData.setGdKornm(newData.getGdKornm());
                        if (strKey.equals("gdEnnm"))
                            oldData.setGdEnnm(newData.getGdEnnm());
                        if (strKey.equals("gdXpnm"))
                            oldData.setGdXpnm(newData.getGdXpnm());
                        if (strKey.equals("gdPerYn"))
                            oldData.setGdPerYn(newData.getGdPerYn());
                        if (strKey.equals("gdPernm"))
                            oldData.setGdPernm(newData.getGdPernm());
                        if (strKey.equals("gdPerTpcd"))
                            oldData.setGdPerTpcd(newData.getGdPerTpcd());
                        if (strKey.equals("gdPerdt"))
                            oldData.setGdPerdt(newData.getGdPerdt());
                        if (strKey.equals("gdSlTpcd"))
                            oldData.setGdSlTpcd(newData.getGdSlTpcd());
                        if (strKey.equals("crOpnBaHms"))
                            oldData.setCrOpnBaHms(newData.getCrOpnBaHms());
                        if (strKey.equals("crNdBaHms"))
                            oldData.setCrNdBaHms(newData.getCrNdBaHms());
                        if (strKey.equals("fcDhYn"))
                            oldData.setFcDhYn(newData.getFcDhYn());
                        if (strKey.equals("reUntFlgcd"))
                            oldData.setReUntFlgcd(newData.getReUntFlgcd());
                        if (strKey.equals("pymXmpUntFlgcd"))
                            oldData.setPymXmpUntFlgcd(newData.getPymXmpUntFlgcd());
                        if (strKey.equals("ppyPrmPrmYn"))
                            oldData.setPpyPrmPrmYn(newData.getPpyPrmPrmYn());
                        if (strKey.equals("ppyPrmMxpsbMc"))
                            oldData.setPpyPrmMxpsbMc(newData.getPpyPrmMxpsbMc());
                        if (strKey.equals("psnclDbinsPrmYn"))
                            oldData.setPsnclDbinsPrmYn(newData.getPsnclDbinsPrmYn());
                        if (strKey.equals("cvInsAvYn"))
                            oldData.setCvInsAvYn(newData.getCvInsAvYn());
                        if (strKey.equals("autoTfDcYn"))
                            oldData.setAutoTfDcYn(newData.getAutoTfDcYn());
                        if (strKey.equals("typeFlgcd"))
                            oldData.setTypeFlgcd(newData.getTypeFlgcd());
                        if (strKey.equals("typeCnFlgcd"))
                            oldData.setTypeCnFlgcd(newData.getTypeCnFlgcd());
                        if (strKey.equals("speScrRnwYn"))
                            oldData.setSpeScrRnwYn(newData.getSpeScrRnwYn());
                        if (strKey.equals("dvTpcd"))
                            oldData.setDvTpcd(newData.getDvTpcd());
                        if (strKey.equals("prmStrFlgcd"))
                            oldData.setPrmStrFlgcd(newData.getPrmStrFlgcd());
                        if (strKey.equals("mwRtamtCrFlgcd"))
                            oldData.setMwRtamtCrFlgcd(newData.getMwRtamtCrFlgcd());
                        if (strKey.equals("ndRtamtCrYn"))
                            oldData.setNdRtamtCrYn(newData.getNdRtamtCrYn());
                        if (strKey.equals("dgnGdYn"))
                            oldData.setDgnGdYn(newData.getDgnGdYn());
                        if (strKey.equals("autoRnwAvYn"))
                            oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn());
                        if (strKey.equals("prmInpFlgcd"))
                            oldData.setPrmInpFlgcd(newData.getPrmInpFlgcd());
                        if (strKey.equals("cuPrmOcpymYn"))
                            oldData.setCuPrmOcpymYn(newData.getCuPrmOcpymYn());
                        if (strKey.equals("ctuCrdtfAvYn"))
                            oldData.setCtuCrdtfAvYn(newData.getCtuCrdtfAvYn());
                        if (strKey.equals("claLnAvYn"))
                            oldData.setClaLnAvYn(newData.getClaLnAvYn());
                        if (strKey.equals("sbPymFlgcd"))
                            oldData.setSbPymFlgcd(newData.getSbPymFlgcd());
                        if (strKey.equals("sbPymTpcd"))
                            oldData.setSbPymTpcd(newData.getSbPymTpcd());
                        if (strKey.equals("ageCcStFlgcd"))
                            oldData.setAgeCcStFlgcd(newData.getAgeCcStFlgcd());
                        if (strKey.equals("bzMtdrpCsfcd"))
                            oldData.setBzMtdrpCsfcd(newData.getBzMtdrpCsfcd());
                        if (strKey.equals("isPlChtWrtyn"))
                            oldData.setIsPlChtWrtyn(newData.getIsPlChtWrtyn());
                        if (strKey.equals("xtnTpcd"))
                            oldData.setXtnTpcd(newData.getXtnTpcd());
                        if (strKey.equals("xtntmRtamtFlgcd"))
                            oldData.setXtntmRtamtFlgcd(newData.getXtntmRtamtFlgcd());
                        if (strKey.equals("trmclExplNtcMntct"))
                            oldData.setTrmclExplNtcMntct(newData.getTrmclExplNtcMntct());
                        if (strKey.equals("rmimcFlgcd"))
                            oldData.setRmimcFlgcd(newData.getRmimcFlgcd());
                        if (strKey.equals("grIsFlgcd"))
                            oldData.setGrIsFlgcd(newData.getGrIsFlgcd());
                        if (strKey.equals("grDcAvYn"))
                            oldData.setGrDcAvYn(newData.getGrDcAvYn());
                        if (strKey.equals("grMnIsPsct"))
                            oldData.setGrMnIsPsct(newData.getGrMnIsPsct());
                        if (strKey.equals("avgRtUsYn"))
                            oldData.setAvgRtUsYn(newData.getAvgRtUsYn());
                        if (strKey.equals("prEsPrmYn"))
                            oldData.setPrEsPrmYn(newData.getPrEsPrmYn());
                        if (strKey.equals("lowtPrmMncd"))
                            oldData.setLowtPrmMncd(newData.getLowtPrmMncd());
                        if (strKey.equals("lowtPrm"))
                            oldData.setLowtPrm(newData.getLowtPrm());
                        if (strKey.equals("cvrPrmSgdlgFlgcd"))
                            oldData.setCvrPrmSgdlgFlgcd(newData.getCvrPrmSgdlgFlgcd());
                        if (strKey.equals("apprmSglrDlFlgcd"))
                            oldData.setApprmSglrDlFlgcd(newData.getApprmSglrDlFlgcd());
                        if (strKey.equals("slPlAdmYn"))
                            oldData.setSlPlAdmYn(newData.getSlPlAdmYn());
                        if (strKey.equals("crLogflPstInfo"))
                            oldData.setCrLogflPstInfo(newData.getCrLogflPstInfo());
                        if (strKey.equals("opEnvrCvYn"))
                            oldData.setOpEnvrCvYn(newData.getOpEnvrCvYn());
                        if (strKey.equals("insTrmBavl"))
                            oldData.setInsTrmBavl(newData.getInsTrmBavl());
                        if (strKey.equals("insTrmLm"))
                            oldData.setInsTrmLm(newData.getInsTrmLm());
                        if (strKey.equals("pymGrcTrm"))
                            oldData.setPymGrcTrm(newData.getPymGrcTrm());
                        if (strKey.equals("txPfGdCsfcd"))
                            oldData.setTxPfGdCsfcd(newData.getTxPfGdCsfcd());
                        if (strKey.equals("slPlOpTpcd"))
                            oldData.setSlPlOpTpcd(newData.getSlPlOpTpcd());
                        if (strKey.equals("plyOutTpFlgcd"))
                            oldData.setPlyOutTpFlgcd(newData.getPlyOutTpFlgcd());
                        if (strKey.equals("typeChAvYn"))
                            oldData.setTypeChAvYn(newData.getTypeChAvYn());
                        if (strKey.equals("gdDtScrYn"))
                            oldData.setGdDtScrYn(newData.getGdDtScrYn());
                        if (strKey.equals("dtScrId"))
                            oldData.setDtScrId(newData.getDtScrId());
                        if (strKey.equals("dcApFlgcd"))
                            oldData.setDcApFlgcd(newData.getDcApFlgcd());
                        if (strKey.equals("dtInpscXstnYn"))
                            oldData.setDtInpscXstnYn(newData.getDtInpscXstnYn());
                        if (strKey.equals("dtInpscId"))
                            oldData.setDtInpscId(newData.getDtInpscId());
                        if (strKey.equals("mwWdraAvRt"))
                            oldData.setMwWdraAvRt(newData.getMwWdraAvRt());
                        if (strKey.equals("mwWdraStrRndcd"))
                            oldData.setMwWdraStrRndcd(newData.getMwWdraStrRndcd());
                        if (strKey.equals("mwWdraCrCyccd"))
                            oldData.setMwWdraCrCyccd(newData.getMwWdraCrCyccd());
                        if (strKey.equals("mwWdraCrCaseq"))
                            oldData.setMwWdraCrCaseq(newData.getMwWdraCrCaseq());
                        if (strKey.equals("dvpnsRprIkdcd"))
                            oldData.setDvpnsRprIkdcd(newData.getDvpnsRprIkdcd());
                        if (strKey.equals("gdExpprOutYn"))
                            oldData.setGdExpprOutYn(newData.getGdExpprOutYn());
                        if (strKey.equals("marneNelpCalMetcd"))
                            oldData.setMarneNelpCalMetcd(newData.getMarneNelpCalMetcd());
                        if (strKey.equals("pectSlMntrBjpcd"))
                            oldData.setPectSlMntrBjpcd(newData.getPectSlMntrBjpcd());
                        if (strKey.equals("prmInpTpcd"))
                            oldData.setPrmInpTpcd(newData.getPrmInpTpcd());
                        if (strKey.equals("rntclDscrtApYn"))
                            oldData.setRntclDscrtApYn(newData.getRntclDscrtApYn());
                        if (strKey.equals("gdsMxDcLmrt"))
                            oldData.setGdsMxDcLmrt(newData.getGdsMxDcLmrt());
                        if (strKey.equals("prmSbPymTpcd"))
                            oldData.setPrmSbPymTpcd(newData.getPrmSbPymTpcd());
                        if (strKey.equals("prmNpySbFlgcd"))
                            oldData.setPrmNpySbFlgcd(newData.getPrmNpySbFlgcd());
                        if (strKey.equals("scrIdcOrdr"))
                            oldData.setScrIdcOrdr(newData.getScrIdcOrdr());
                        if (strKey.equals("mxMnCcTpcd"))
                            oldData.setMxMnCcTpcd(newData.getMxMnCcTpcd());
                        if (strKey.equals("rnwdcFundChekYn"))
                            oldData.setRnwdcFundChekYn(newData.getRnwdcFundChekYn());
                        if (strKey.equals("rmimcRkrtDclYn"))
                            oldData.setRmimcRkrtDclYn(newData.getRmimcRkrtDclYn());
                        if (strKey.equals("anulBzprmRtAdtm"))
                            oldData.setAnulBzprmRtAdtm(newData.getAnulBzprmRtAdtm());
                        if (strKey.equals("ccXcptDlcd"))
                            oldData.setCcXcptDlcd(newData.getCcXcptDlcd());
                        if (strKey.equals("indpdTrtTpcd"))
                            oldData.setIndpdTrtTpcd(newData.getIndpdTrtTpcd());
                        if (strKey.equals("indpdTrtIncldYn"))
                            oldData.setIndpdTrtIncldYn(newData.getIndpdTrtIncldYn());
                        if (strKey.equals("gdMxIsAge"))
                            oldData.setGdMxIsAge(newData.getGdMxIsAge());
                        if (strKey.equals("mxRnwTrm"))
                            oldData.setMxRnwTrm(newData.getMxRnwTrm());
                        if (strKey.equals("smPrmMnYn"))
                            oldData.setSmPrmMnYn(newData.getSmPrmMnYn());
                        if (strKey.equals("rlpmiMdInsCsfcd"))
                            oldData.setRlpmiMdInsCsfcd(newData.getRlpmiMdInsCsfcd());
                        if (strKey.equals("psvnBjGdYn"))
                            oldData.setPsvnBjGdYn(newData.getPsvnBjGdYn());
                        if (strKey.equals("reIsgdTpcd"))
                            oldData.setReIsgdTpcd(newData.getReIsgdTpcd());
                        if (strKey.equals("adpymPrmLmFlgcd"))
                            oldData.setAdpymPrmLmFlgcd(newData.getAdpymPrmLmFlgcd());
                        if (strKey.equals("irtCnGdYn"))
                            oldData.setIrtCnGdYn(newData.getIrtCnGdYn());
                        if (strKey.equals("ltrmGdGrpCsfcd"))
                            oldData.setLtrmGdGrpCsfcd(newData.getLtrmGdGrpCsfcd());
                        if (strKey.equals("sofGdCsfcd"))
                            oldData.setSofGdCsfcd(newData.getSofGdCsfcd());
                        if (strKey.equals("crycd"))
                            oldData.setCrycd(newData.getCrycd());
                        if (strKey.equals("isAvOjTpcd"))
                            oldData.setIsAvOjTpcd(newData.getIsAvOjTpcd());
                        if (strKey.equals("rtnTpInfoCd"))
                            oldData.setRtnTpInfoCd(newData.getRtnTpInfoCd());
                        if (strKey.equals("adpymAvFlgcd"))
                            oldData.setAdpymAvFlgcd(newData.getAdpymAvFlgcd());
                        if (strKey.equals("mwwdrAvFlgcd"))
                            oldData.setMwwdrAvFlgcd(newData.getMwwdrAvFlgcd());
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
	
    // @Operation(summary = "상품 삭제" , description = "상품 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the IgdGd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdgds/{gdcd}/{apNddt}/{apStrdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("gdcd") String gdcd, @PathVariable("apNddt") Date apNddt, @PathVariable("apStrdt") Date apStrdt) {
        try {
            repository.deleteById(new IgdGdPK(gdcd, apNddt, apStrdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
