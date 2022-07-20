/**
 * IgdGdCvr Entity Controller 클래스
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
import com.skims.domain.entity.IgdGdCvr;
import com.skims.domain.repository.IgdGdCvrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdGdCvr 상품담보 Controller")
@Slf4j
public class IgdGdCvrController {

    @Autowired
    IgdGdCvrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "상품담보 전체조회" , summary = "상품담보 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdgdcvrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGdCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdgdcvrs")
    public ResponseEntity<Page<IgdGdCvr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "상품담보 Key조회" , description = "상품담보 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdGdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGdCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdGdCvr not found", content = @Content) })
    @GetMapping("/igdgdcvrs/{aid}")
    public ResponseEntity<IgdGdCvr> getById(@PathVariable("aid") Long aid) {
        Optional<IgdGdCvr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "상품담보 등록" , description = "상품담보 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdGdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGdCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdgdcvrs")
    ResponseEntity<IgdGdCvr> postData(@RequestBody IgdGdCvr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "상품담보 수정" , description = "상품담보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdGdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGdCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdGdCvr not found", content = @Content) })
    @PutMapping("/igdgdcvrs/{aid}")
    ResponseEntity<IgdGdCvr> putData(@RequestBody IgdGdCvr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setGdcd(newData.getGdcd());
                    oldData.setCvrcd(newData.getCvrcd());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setCvrPrsnm(newData.getCvrPrsnm());
                    oldData.setCvrKornm(newData.getCvrKornm());
                    oldData.setCvrHnglShtnm(newData.getCvrHnglShtnm());
                    oldData.setCvrEnnm(newData.getCvrEnnm());
                    oldData.setCvrEngShtnm(newData.getCvrEngShtnm());
                    oldData.setCvrPerdt(newData.getCvrPerdt());
                    oldData.setCvrClaCn(newData.getCvrClaCn());
                    oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd());
                    oldData.setIsBjYn(newData.getIsBjYn());
                    oldData.setIsamtNeedYn(newData.getIsamtNeedYn());
                    oldData.setPrmAdmYn(newData.getPrmAdmYn());
                    oldData.setPrmSumBjYn(newData.getPrmSumBjYn());
                    oldData.setCrLvlCvrYn(newData.getCrLvlCvrYn());
                    oldData.setPblctOutYn(newData.getPblctOutYn());
                    oldData.setScrIdcCvrGpcd(newData.getScrIdcCvrGpcd());
                    oldData.setPymXmpAvYn(newData.getPymXmpAvYn());
                    oldData.setXtnAvYn(newData.getXtnAvYn());
                    oldData.setDtInpscXstnYn(newData.getDtInpscXstnYn());
                    oldData.setAgeWkctFlgcd(newData.getAgeWkctFlgcd());
                    oldData.setMnIsAge(newData.getMnIsAge());
                    oldData.setMxIsAge(newData.getMxIsAge());
                    oldData.setIsAvSexcd(newData.getIsAvSexcd());
                    oldData.setMrrdBjCvrYn(newData.getMrrdBjCvrYn());
                    oldData.setOnwClaFlgcd(newData.getOnwClaFlgcd());
                    oldData.setInvcOutPrg(newData.getInvcOutPrg());
                    oldData.setPlyOutPrg1(newData.getPlyOutPrg1());
                    oldData.setPlyOutPrg2(newData.getPlyOutPrg2());
                    oldData.setInpRtYn(newData.getInpRtYn());
                    oldData.setLowtInpRt(newData.getLowtInpRt());
                    oldData.setMxInpRt(newData.getMxInpRt());
                    oldData.setMdcsRgtBjYn(newData.getMdcsRgtBjYn());
                    oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn());
                    oldData.setCvrDbisFlgcd(newData.getCvrDbisFlgcd());
                    oldData.setRnwAfCvrcd(newData.getRnwAfCvrcd());
                    oldData.setIsAvDrveTycd(newData.getIsAvDrveTycd());
                    oldData.setIsAvRelFlgcd(newData.getIsAvRelFlgcd());
                    oldData.setPymCyccd(newData.getPymCyccd());
                    oldData.setSlStrdt(newData.getSlStrdt());
                    oldData.setSlNddt(newData.getSlNddt());
                    oldData.setDtScrId(newData.getDtScrId());
                    oldData.setRnwXcCvrYn(newData.getRnwXcCvrYn());
                    oldData.setRlSlOpndt(newData.getRlSlOpndt());
                    oldData.setRlSlNddt(newData.getRlSlNddt());
                    oldData.setCoobjIsAvYn(newData.getCoobjIsAvYn());
                    oldData.setPymtmAtndMtt(newData.getPymtmAtndMtt());
                    oldData.setNrdpsSlStrdt(newData.getNrdpsSlStrdt());
                    oldData.setNrdpsSlNddt(newData.getNrdpsSlNddt());
                    oldData.setRlpmiCvrYn(newData.getRlpmiCvrYn());
                    oldData.setCvrTrtGpFlgcd(newData.getCvrTrtGpFlgcd());
                    oldData.setRnwCvrNclmDscrt(newData.getRnwCvrNclmDscrt());
                    oldData.setRwcvrNclmAdDscrt(newData.getRwcvrNclmAdDscrt());
                    oldData.setRwcvrNclmAdDctrm(newData.getRwcvrNclmAdDctrm());
                    oldData.setRmimcXcptPrmexBjyn(newData.getRmimcXcptPrmexBjyn());
                    oldData.setPrsClmCvrcd(newData.getPrsClmCvrcd());
                    oldData.setCvrXcptDlcd(newData.getCvrXcptDlcd());
                    oldData.setNdsXcFlgcd(newData.getNdsXcFlgcd());
                    oldData.setClmNdsXcCvrcd(newData.getClmNdsXcCvrcd());
                    oldData.setCvrDcFlgcd(newData.getCvrDcFlgcd());
                    oldData.setIndpdTrtYn(newData.getIndpdTrtYn());
                    oldData.setIndpdTrtGdcd(newData.getIndpdTrtGdcd());
                    oldData.setGdCvrDscrt(newData.getGdCvrDscrt());
                    oldData.setSbPymTpcd(newData.getSbPymTpcd());
                    oldData.setCvrXtnDlFlgcd(newData.getCvrXtnDlFlgcd());
                    oldData.setClaSeqno(newData.getClaSeqno());
                    oldData.setIbnrFlgcd(newData.getIbnrFlgcd());
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

    // @Operation(summary = "상품담보 수정" , description = "상품담보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdGdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGdCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdGdCvr not found", content = @Content) })
	@PatchMapping("/igdgdcvrs/{aid}")
    ResponseEntity<IgdGdCvr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        IgdGdCvr newData = mapper.convertValue(newMap, IgdGdCvr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("gdcd"))
                            oldData.setGdcd(newData.getGdcd());
                        if (strKey.equals("cvrcd"))
                            oldData.setCvrcd(newData.getCvrcd());
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("apStrdt"))
                            oldData.setApStrdt(newData.getApStrdt());
                        if (strKey.equals("cvrPrsnm"))
                            oldData.setCvrPrsnm(newData.getCvrPrsnm());
                        if (strKey.equals("cvrKornm"))
                            oldData.setCvrKornm(newData.getCvrKornm());
                        if (strKey.equals("cvrHnglShtnm"))
                            oldData.setCvrHnglShtnm(newData.getCvrHnglShtnm());
                        if (strKey.equals("cvrEnnm"))
                            oldData.setCvrEnnm(newData.getCvrEnnm());
                        if (strKey.equals("cvrEngShtnm"))
                            oldData.setCvrEngShtnm(newData.getCvrEngShtnm());
                        if (strKey.equals("cvrPerdt"))
                            oldData.setCvrPerdt(newData.getCvrPerdt());
                        if (strKey.equals("cvrClaCn"))
                            oldData.setCvrClaCn(newData.getCvrClaCn());
                        if (strKey.equals("cvrBaTrtFlgcd"))
                            oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd());
                        if (strKey.equals("isBjYn"))
                            oldData.setIsBjYn(newData.getIsBjYn());
                        if (strKey.equals("isamtNeedYn"))
                            oldData.setIsamtNeedYn(newData.getIsamtNeedYn());
                        if (strKey.equals("prmAdmYn"))
                            oldData.setPrmAdmYn(newData.getPrmAdmYn());
                        if (strKey.equals("prmSumBjYn"))
                            oldData.setPrmSumBjYn(newData.getPrmSumBjYn());
                        if (strKey.equals("crLvlCvrYn"))
                            oldData.setCrLvlCvrYn(newData.getCrLvlCvrYn());
                        if (strKey.equals("pblctOutYn"))
                            oldData.setPblctOutYn(newData.getPblctOutYn());
                        if (strKey.equals("scrIdcCvrGpcd"))
                            oldData.setScrIdcCvrGpcd(newData.getScrIdcCvrGpcd());
                        if (strKey.equals("pymXmpAvYn"))
                            oldData.setPymXmpAvYn(newData.getPymXmpAvYn());
                        if (strKey.equals("xtnAvYn"))
                            oldData.setXtnAvYn(newData.getXtnAvYn());
                        if (strKey.equals("dtInpscXstnYn"))
                            oldData.setDtInpscXstnYn(newData.getDtInpscXstnYn());
                        if (strKey.equals("ageWkctFlgcd"))
                            oldData.setAgeWkctFlgcd(newData.getAgeWkctFlgcd());
                        if (strKey.equals("mnIsAge"))
                            oldData.setMnIsAge(newData.getMnIsAge());
                        if (strKey.equals("mxIsAge"))
                            oldData.setMxIsAge(newData.getMxIsAge());
                        if (strKey.equals("isAvSexcd"))
                            oldData.setIsAvSexcd(newData.getIsAvSexcd());
                        if (strKey.equals("mrrdBjCvrYn"))
                            oldData.setMrrdBjCvrYn(newData.getMrrdBjCvrYn());
                        if (strKey.equals("onwClaFlgcd"))
                            oldData.setOnwClaFlgcd(newData.getOnwClaFlgcd());
                        if (strKey.equals("invcOutPrg"))
                            oldData.setInvcOutPrg(newData.getInvcOutPrg());
                        if (strKey.equals("plyOutPrg1"))
                            oldData.setPlyOutPrg1(newData.getPlyOutPrg1());
                        if (strKey.equals("plyOutPrg2"))
                            oldData.setPlyOutPrg2(newData.getPlyOutPrg2());
                        if (strKey.equals("inpRtYn"))
                            oldData.setInpRtYn(newData.getInpRtYn());
                        if (strKey.equals("lowtInpRt"))
                            oldData.setLowtInpRt(newData.getLowtInpRt());
                        if (strKey.equals("mxInpRt"))
                            oldData.setMxInpRt(newData.getMxInpRt());
                        if (strKey.equals("mdcsRgtBjYn"))
                            oldData.setMdcsRgtBjYn(newData.getMdcsRgtBjYn());
                        if (strKey.equals("autoRnwAvYn"))
                            oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn());
                        if (strKey.equals("cvrDbisFlgcd"))
                            oldData.setCvrDbisFlgcd(newData.getCvrDbisFlgcd());
                        if (strKey.equals("rnwAfCvrcd"))
                            oldData.setRnwAfCvrcd(newData.getRnwAfCvrcd());
                        if (strKey.equals("isAvDrveTycd"))
                            oldData.setIsAvDrveTycd(newData.getIsAvDrveTycd());
                        if (strKey.equals("isAvRelFlgcd"))
                            oldData.setIsAvRelFlgcd(newData.getIsAvRelFlgcd());
                        if (strKey.equals("pymCyccd"))
                            oldData.setPymCyccd(newData.getPymCyccd());
                        if (strKey.equals("slStrdt"))
                            oldData.setSlStrdt(newData.getSlStrdt());
                        if (strKey.equals("slNddt"))
                            oldData.setSlNddt(newData.getSlNddt());
                        if (strKey.equals("dtScrId"))
                            oldData.setDtScrId(newData.getDtScrId());
                        if (strKey.equals("rnwXcCvrYn"))
                            oldData.setRnwXcCvrYn(newData.getRnwXcCvrYn());
                        if (strKey.equals("rlSlOpndt"))
                            oldData.setRlSlOpndt(newData.getRlSlOpndt());
                        if (strKey.equals("rlSlNddt"))
                            oldData.setRlSlNddt(newData.getRlSlNddt());
                        if (strKey.equals("coobjIsAvYn"))
                            oldData.setCoobjIsAvYn(newData.getCoobjIsAvYn());
                        if (strKey.equals("pymtmAtndMtt"))
                            oldData.setPymtmAtndMtt(newData.getPymtmAtndMtt());
                        if (strKey.equals("nrdpsSlStrdt"))
                            oldData.setNrdpsSlStrdt(newData.getNrdpsSlStrdt());
                        if (strKey.equals("nrdpsSlNddt"))
                            oldData.setNrdpsSlNddt(newData.getNrdpsSlNddt());
                        if (strKey.equals("rlpmiCvrYn"))
                            oldData.setRlpmiCvrYn(newData.getRlpmiCvrYn());
                        if (strKey.equals("cvrTrtGpFlgcd"))
                            oldData.setCvrTrtGpFlgcd(newData.getCvrTrtGpFlgcd());
                        if (strKey.equals("rnwCvrNclmDscrt"))
                            oldData.setRnwCvrNclmDscrt(newData.getRnwCvrNclmDscrt());
                        if (strKey.equals("rwcvrNclmAdDscrt"))
                            oldData.setRwcvrNclmAdDscrt(newData.getRwcvrNclmAdDscrt());
                        if (strKey.equals("rwcvrNclmAdDctrm"))
                            oldData.setRwcvrNclmAdDctrm(newData.getRwcvrNclmAdDctrm());
                        if (strKey.equals("rmimcXcptPrmexBjyn"))
                            oldData.setRmimcXcptPrmexBjyn(newData.getRmimcXcptPrmexBjyn());
                        if (strKey.equals("prsClmCvrcd"))
                            oldData.setPrsClmCvrcd(newData.getPrsClmCvrcd());
                        if (strKey.equals("cvrXcptDlcd"))
                            oldData.setCvrXcptDlcd(newData.getCvrXcptDlcd());
                        if (strKey.equals("ndsXcFlgcd"))
                            oldData.setNdsXcFlgcd(newData.getNdsXcFlgcd());
                        if (strKey.equals("clmNdsXcCvrcd"))
                            oldData.setClmNdsXcCvrcd(newData.getClmNdsXcCvrcd());
                        if (strKey.equals("cvrDcFlgcd"))
                            oldData.setCvrDcFlgcd(newData.getCvrDcFlgcd());
                        if (strKey.equals("indpdTrtYn"))
                            oldData.setIndpdTrtYn(newData.getIndpdTrtYn());
                        if (strKey.equals("indpdTrtGdcd"))
                            oldData.setIndpdTrtGdcd(newData.getIndpdTrtGdcd());
                        if (strKey.equals("gdCvrDscrt"))
                            oldData.setGdCvrDscrt(newData.getGdCvrDscrt());
                        if (strKey.equals("sbPymTpcd"))
                            oldData.setSbPymTpcd(newData.getSbPymTpcd());
                        if (strKey.equals("cvrXtnDlFlgcd"))
                            oldData.setCvrXtnDlFlgcd(newData.getCvrXtnDlFlgcd());
                        if (strKey.equals("claSeqno"))
                            oldData.setClaSeqno(newData.getClaSeqno());
                        if (strKey.equals("ibnrFlgcd"))
                            oldData.setIbnrFlgcd(newData.getIbnrFlgcd());
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
	
    // @Operation(summary = "상품담보 삭제" , description = "상품담보 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the IgdGdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdGdCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdgdcvrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
