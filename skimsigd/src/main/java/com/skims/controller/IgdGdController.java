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
    public ResponseEntity<Page<IgdGd>> getAll(Pageable pageable) {
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
                    newData.setGdcd(oldData.getGdcd());
                    newData.setApNddt(oldData.getApNddt());
                    newData.setApStrdt(oldData.getApStrdt());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "insImcd" : oldData.setInsImcd(newData.getInsImcd()); break;
						    case "claLngFlgcd" : oldData.setClaLngFlgcd(newData.getClaLngFlgcd()); break;
						    case "gdTyFlgcd" : oldData.setGdTyFlgcd(newData.getGdTyFlgcd()); break;
						    case "gdSlnm" : oldData.setGdSlnm(newData.getGdSlnm()); break;
						    case "gdShtnm" : oldData.setGdShtnm(newData.getGdShtnm()); break;
						    case "gdKornm" : oldData.setGdKornm(newData.getGdKornm()); break;
						    case "gdEnnm" : oldData.setGdEnnm(newData.getGdEnnm()); break;
						    case "gdXpnm" : oldData.setGdXpnm(newData.getGdXpnm()); break;
						    case "gdPerYn" : oldData.setGdPerYn(newData.getGdPerYn()); break;
						    case "gdPernm" : oldData.setGdPernm(newData.getGdPernm()); break;
						    case "gdPerTpcd" : oldData.setGdPerTpcd(newData.getGdPerTpcd()); break;
						    case "gdPerdt" : oldData.setGdPerdt(newData.getGdPerdt()); break;
						    case "gdSlTpcd" : oldData.setGdSlTpcd(newData.getGdSlTpcd()); break;
						    case "crOpnBaHms" : oldData.setCrOpnBaHms(newData.getCrOpnBaHms()); break;
						    case "crNdBaHms" : oldData.setCrNdBaHms(newData.getCrNdBaHms()); break;
						    case "fcDhYn" : oldData.setFcDhYn(newData.getFcDhYn()); break;
						    case "reUntFlgcd" : oldData.setReUntFlgcd(newData.getReUntFlgcd()); break;
						    case "pymXmpUntFlgcd" : oldData.setPymXmpUntFlgcd(newData.getPymXmpUntFlgcd()); break;
						    case "ppyPrmPrmYn" : oldData.setPpyPrmPrmYn(newData.getPpyPrmPrmYn()); break;
						    case "ppyPrmMxpsbMc" : oldData.setPpyPrmMxpsbMc(newData.getPpyPrmMxpsbMc()); break;
						    case "psnclDbinsPrmYn" : oldData.setPsnclDbinsPrmYn(newData.getPsnclDbinsPrmYn()); break;
						    case "cvInsAvYn" : oldData.setCvInsAvYn(newData.getCvInsAvYn()); break;
						    case "autoTfDcYn" : oldData.setAutoTfDcYn(newData.getAutoTfDcYn()); break;
						    case "typeFlgcd" : oldData.setTypeFlgcd(newData.getTypeFlgcd()); break;
						    case "typeCnFlgcd" : oldData.setTypeCnFlgcd(newData.getTypeCnFlgcd()); break;
						    case "speScrRnwYn" : oldData.setSpeScrRnwYn(newData.getSpeScrRnwYn()); break;
						    case "dvTpcd" : oldData.setDvTpcd(newData.getDvTpcd()); break;
						    case "prmStrFlgcd" : oldData.setPrmStrFlgcd(newData.getPrmStrFlgcd()); break;
						    case "mwRtamtCrFlgcd" : oldData.setMwRtamtCrFlgcd(newData.getMwRtamtCrFlgcd()); break;
						    case "ndRtamtCrYn" : oldData.setNdRtamtCrYn(newData.getNdRtamtCrYn()); break;
						    case "dgnGdYn" : oldData.setDgnGdYn(newData.getDgnGdYn()); break;
						    case "autoRnwAvYn" : oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn()); break;
						    case "prmInpFlgcd" : oldData.setPrmInpFlgcd(newData.getPrmInpFlgcd()); break;
						    case "cuPrmOcpymYn" : oldData.setCuPrmOcpymYn(newData.getCuPrmOcpymYn()); break;
						    case "ctuCrdtfAvYn" : oldData.setCtuCrdtfAvYn(newData.getCtuCrdtfAvYn()); break;
						    case "claLnAvYn" : oldData.setClaLnAvYn(newData.getClaLnAvYn()); break;
						    case "sbPymFlgcd" : oldData.setSbPymFlgcd(newData.getSbPymFlgcd()); break;
						    case "sbPymTpcd" : oldData.setSbPymTpcd(newData.getSbPymTpcd()); break;
						    case "ageCcStFlgcd" : oldData.setAgeCcStFlgcd(newData.getAgeCcStFlgcd()); break;
						    case "bzMtdrpCsfcd" : oldData.setBzMtdrpCsfcd(newData.getBzMtdrpCsfcd()); break;
						    case "isPlChtWrtyn" : oldData.setIsPlChtWrtyn(newData.getIsPlChtWrtyn()); break;
						    case "xtnTpcd" : oldData.setXtnTpcd(newData.getXtnTpcd()); break;
						    case "xtntmRtamtFlgcd" : oldData.setXtntmRtamtFlgcd(newData.getXtntmRtamtFlgcd()); break;
						    case "trmclExplNtcMntct" : oldData.setTrmclExplNtcMntct(newData.getTrmclExplNtcMntct()); break;
						    case "rmimcFlgcd" : oldData.setRmimcFlgcd(newData.getRmimcFlgcd()); break;
						    case "grIsFlgcd" : oldData.setGrIsFlgcd(newData.getGrIsFlgcd()); break;
						    case "grDcAvYn" : oldData.setGrDcAvYn(newData.getGrDcAvYn()); break;
						    case "grMnIsPsct" : oldData.setGrMnIsPsct(newData.getGrMnIsPsct()); break;
						    case "avgRtUsYn" : oldData.setAvgRtUsYn(newData.getAvgRtUsYn()); break;
						    case "prEsPrmYn" : oldData.setPrEsPrmYn(newData.getPrEsPrmYn()); break;
						    case "lowtPrmMncd" : oldData.setLowtPrmMncd(newData.getLowtPrmMncd()); break;
						    case "lowtPrm" : oldData.setLowtPrm(newData.getLowtPrm()); break;
						    case "cvrPrmSgdlgFlgcd" : oldData.setCvrPrmSgdlgFlgcd(newData.getCvrPrmSgdlgFlgcd()); break;
						    case "apprmSglrDlFlgcd" : oldData.setApprmSglrDlFlgcd(newData.getApprmSglrDlFlgcd()); break;
						    case "slPlAdmYn" : oldData.setSlPlAdmYn(newData.getSlPlAdmYn()); break;
						    case "crLogflPstInfo" : oldData.setCrLogflPstInfo(newData.getCrLogflPstInfo()); break;
						    case "opEnvrCvYn" : oldData.setOpEnvrCvYn(newData.getOpEnvrCvYn()); break;
						    case "insTrmBavl" : oldData.setInsTrmBavl(newData.getInsTrmBavl()); break;
						    case "insTrmLm" : oldData.setInsTrmLm(newData.getInsTrmLm()); break;
						    case "pymGrcTrm" : oldData.setPymGrcTrm(newData.getPymGrcTrm()); break;
						    case "txPfGdCsfcd" : oldData.setTxPfGdCsfcd(newData.getTxPfGdCsfcd()); break;
						    case "slPlOpTpcd" : oldData.setSlPlOpTpcd(newData.getSlPlOpTpcd()); break;
						    case "plyOutTpFlgcd" : oldData.setPlyOutTpFlgcd(newData.getPlyOutTpFlgcd()); break;
						    case "typeChAvYn" : oldData.setTypeChAvYn(newData.getTypeChAvYn()); break;
						    case "gdDtScrYn" : oldData.setGdDtScrYn(newData.getGdDtScrYn()); break;
						    case "dtScrId" : oldData.setDtScrId(newData.getDtScrId()); break;
						    case "dcApFlgcd" : oldData.setDcApFlgcd(newData.getDcApFlgcd()); break;
						    case "dtInpscXstnYn" : oldData.setDtInpscXstnYn(newData.getDtInpscXstnYn()); break;
						    case "dtInpscId" : oldData.setDtInpscId(newData.getDtInpscId()); break;
						    case "mwWdraAvRt" : oldData.setMwWdraAvRt(newData.getMwWdraAvRt()); break;
						    case "mwWdraStrRndcd" : oldData.setMwWdraStrRndcd(newData.getMwWdraStrRndcd()); break;
						    case "mwWdraCrCyccd" : oldData.setMwWdraCrCyccd(newData.getMwWdraCrCyccd()); break;
						    case "mwWdraCrCaseq" : oldData.setMwWdraCrCaseq(newData.getMwWdraCrCaseq()); break;
						    case "dvpnsRprIkdcd" : oldData.setDvpnsRprIkdcd(newData.getDvpnsRprIkdcd()); break;
						    case "gdExpprOutYn" : oldData.setGdExpprOutYn(newData.getGdExpprOutYn()); break;
						    case "marneNelpCalMetcd" : oldData.setMarneNelpCalMetcd(newData.getMarneNelpCalMetcd()); break;
						    case "pectSlMntrBjpcd" : oldData.setPectSlMntrBjpcd(newData.getPectSlMntrBjpcd()); break;
						    case "prmInpTpcd" : oldData.setPrmInpTpcd(newData.getPrmInpTpcd()); break;
						    case "rntclDscrtApYn" : oldData.setRntclDscrtApYn(newData.getRntclDscrtApYn()); break;
						    case "gdsMxDcLmrt" : oldData.setGdsMxDcLmrt(newData.getGdsMxDcLmrt()); break;
						    case "prmSbPymTpcd" : oldData.setPrmSbPymTpcd(newData.getPrmSbPymTpcd()); break;
						    case "prmNpySbFlgcd" : oldData.setPrmNpySbFlgcd(newData.getPrmNpySbFlgcd()); break;
						    case "scrIdcOrdr" : oldData.setScrIdcOrdr(newData.getScrIdcOrdr()); break;
						    case "mxMnCcTpcd" : oldData.setMxMnCcTpcd(newData.getMxMnCcTpcd()); break;
						    case "rnwdcFundChekYn" : oldData.setRnwdcFundChekYn(newData.getRnwdcFundChekYn()); break;
						    case "rmimcRkrtDclYn" : oldData.setRmimcRkrtDclYn(newData.getRmimcRkrtDclYn()); break;
						    case "anulBzprmRtAdtm" : oldData.setAnulBzprmRtAdtm(newData.getAnulBzprmRtAdtm()); break;
						    case "ccXcptDlcd" : oldData.setCcXcptDlcd(newData.getCcXcptDlcd()); break;
						    case "indpdTrtTpcd" : oldData.setIndpdTrtTpcd(newData.getIndpdTrtTpcd()); break;
						    case "indpdTrtIncldYn" : oldData.setIndpdTrtIncldYn(newData.getIndpdTrtIncldYn()); break;
						    case "gdMxIsAge" : oldData.setGdMxIsAge(newData.getGdMxIsAge()); break;
						    case "mxRnwTrm" : oldData.setMxRnwTrm(newData.getMxRnwTrm()); break;
						    case "smPrmMnYn" : oldData.setSmPrmMnYn(newData.getSmPrmMnYn()); break;
						    case "rlpmiMdInsCsfcd" : oldData.setRlpmiMdInsCsfcd(newData.getRlpmiMdInsCsfcd()); break;
						    case "psvnBjGdYn" : oldData.setPsvnBjGdYn(newData.getPsvnBjGdYn()); break;
						    case "reIsgdTpcd" : oldData.setReIsgdTpcd(newData.getReIsgdTpcd()); break;
						    case "adpymPrmLmFlgcd" : oldData.setAdpymPrmLmFlgcd(newData.getAdpymPrmLmFlgcd()); break;
						    case "irtCnGdYn" : oldData.setIrtCnGdYn(newData.getIrtCnGdYn()); break;
						    case "ltrmGdGrpCsfcd" : oldData.setLtrmGdGrpCsfcd(newData.getLtrmGdGrpCsfcd()); break;
						    case "sofGdCsfcd" : oldData.setSofGdCsfcd(newData.getSofGdCsfcd()); break;
						    case "crycd" : oldData.setCrycd(newData.getCrycd()); break;
						    case "isAvOjTpcd" : oldData.setIsAvOjTpcd(newData.getIsAvOjTpcd()); break;
						    case "rtnTpInfoCd" : oldData.setRtnTpInfoCd(newData.getRtnTpInfoCd()); break;
						    case "adpymAvFlgcd" : oldData.setAdpymAvFlgcd(newData.getAdpymAvFlgcd()); break;
						    case "mwwdrAvFlgcd" : oldData.setMwwdrAvFlgcd(newData.getMwwdrAvFlgcd()); break;
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
