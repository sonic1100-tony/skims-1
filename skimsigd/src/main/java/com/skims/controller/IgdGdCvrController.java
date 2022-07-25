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
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "gdcd" : oldData.setGdcd(newData.getGdcd()); break;
						    case "cvrcd" : oldData.setCvrcd(newData.getCvrcd()); break;
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "apStrdt" : oldData.setApStrdt(newData.getApStrdt()); break;
						    case "cvrPrsnm" : oldData.setCvrPrsnm(newData.getCvrPrsnm()); break;
						    case "cvrKornm" : oldData.setCvrKornm(newData.getCvrKornm()); break;
						    case "cvrHnglShtnm" : oldData.setCvrHnglShtnm(newData.getCvrHnglShtnm()); break;
						    case "cvrEnnm" : oldData.setCvrEnnm(newData.getCvrEnnm()); break;
						    case "cvrEngShtnm" : oldData.setCvrEngShtnm(newData.getCvrEngShtnm()); break;
						    case "cvrPerdt" : oldData.setCvrPerdt(newData.getCvrPerdt()); break;
						    case "cvrClaCn" : oldData.setCvrClaCn(newData.getCvrClaCn()); break;
						    case "cvrBaTrtFlgcd" : oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd()); break;
						    case "isBjYn" : oldData.setIsBjYn(newData.getIsBjYn()); break;
						    case "isamtNeedYn" : oldData.setIsamtNeedYn(newData.getIsamtNeedYn()); break;
						    case "prmAdmYn" : oldData.setPrmAdmYn(newData.getPrmAdmYn()); break;
						    case "prmSumBjYn" : oldData.setPrmSumBjYn(newData.getPrmSumBjYn()); break;
						    case "crLvlCvrYn" : oldData.setCrLvlCvrYn(newData.getCrLvlCvrYn()); break;
						    case "pblctOutYn" : oldData.setPblctOutYn(newData.getPblctOutYn()); break;
						    case "scrIdcCvrGpcd" : oldData.setScrIdcCvrGpcd(newData.getScrIdcCvrGpcd()); break;
						    case "pymXmpAvYn" : oldData.setPymXmpAvYn(newData.getPymXmpAvYn()); break;
						    case "xtnAvYn" : oldData.setXtnAvYn(newData.getXtnAvYn()); break;
						    case "dtInpscXstnYn" : oldData.setDtInpscXstnYn(newData.getDtInpscXstnYn()); break;
						    case "ageWkctFlgcd" : oldData.setAgeWkctFlgcd(newData.getAgeWkctFlgcd()); break;
						    case "mnIsAge" : oldData.setMnIsAge(newData.getMnIsAge()); break;
						    case "mxIsAge" : oldData.setMxIsAge(newData.getMxIsAge()); break;
						    case "isAvSexcd" : oldData.setIsAvSexcd(newData.getIsAvSexcd()); break;
						    case "mrrdBjCvrYn" : oldData.setMrrdBjCvrYn(newData.getMrrdBjCvrYn()); break;
						    case "onwClaFlgcd" : oldData.setOnwClaFlgcd(newData.getOnwClaFlgcd()); break;
						    case "invcOutPrg" : oldData.setInvcOutPrg(newData.getInvcOutPrg()); break;
						    case "plyOutPrg1" : oldData.setPlyOutPrg1(newData.getPlyOutPrg1()); break;
						    case "plyOutPrg2" : oldData.setPlyOutPrg2(newData.getPlyOutPrg2()); break;
						    case "inpRtYn" : oldData.setInpRtYn(newData.getInpRtYn()); break;
						    case "lowtInpRt" : oldData.setLowtInpRt(newData.getLowtInpRt()); break;
						    case "mxInpRt" : oldData.setMxInpRt(newData.getMxInpRt()); break;
						    case "mdcsRgtBjYn" : oldData.setMdcsRgtBjYn(newData.getMdcsRgtBjYn()); break;
						    case "autoRnwAvYn" : oldData.setAutoRnwAvYn(newData.getAutoRnwAvYn()); break;
						    case "cvrDbisFlgcd" : oldData.setCvrDbisFlgcd(newData.getCvrDbisFlgcd()); break;
						    case "rnwAfCvrcd" : oldData.setRnwAfCvrcd(newData.getRnwAfCvrcd()); break;
						    case "isAvDrveTycd" : oldData.setIsAvDrveTycd(newData.getIsAvDrveTycd()); break;
						    case "isAvRelFlgcd" : oldData.setIsAvRelFlgcd(newData.getIsAvRelFlgcd()); break;
						    case "pymCyccd" : oldData.setPymCyccd(newData.getPymCyccd()); break;
						    case "slStrdt" : oldData.setSlStrdt(newData.getSlStrdt()); break;
						    case "slNddt" : oldData.setSlNddt(newData.getSlNddt()); break;
						    case "dtScrId" : oldData.setDtScrId(newData.getDtScrId()); break;
						    case "rnwXcCvrYn" : oldData.setRnwXcCvrYn(newData.getRnwXcCvrYn()); break;
						    case "rlSlOpndt" : oldData.setRlSlOpndt(newData.getRlSlOpndt()); break;
						    case "rlSlNddt" : oldData.setRlSlNddt(newData.getRlSlNddt()); break;
						    case "coobjIsAvYn" : oldData.setCoobjIsAvYn(newData.getCoobjIsAvYn()); break;
						    case "pymtmAtndMtt" : oldData.setPymtmAtndMtt(newData.getPymtmAtndMtt()); break;
						    case "nrdpsSlStrdt" : oldData.setNrdpsSlStrdt(newData.getNrdpsSlStrdt()); break;
						    case "nrdpsSlNddt" : oldData.setNrdpsSlNddt(newData.getNrdpsSlNddt()); break;
						    case "rlpmiCvrYn" : oldData.setRlpmiCvrYn(newData.getRlpmiCvrYn()); break;
						    case "cvrTrtGpFlgcd" : oldData.setCvrTrtGpFlgcd(newData.getCvrTrtGpFlgcd()); break;
						    case "rnwCvrNclmDscrt" : oldData.setRnwCvrNclmDscrt(newData.getRnwCvrNclmDscrt()); break;
						    case "rwcvrNclmAdDscrt" : oldData.setRwcvrNclmAdDscrt(newData.getRwcvrNclmAdDscrt()); break;
						    case "rwcvrNclmAdDctrm" : oldData.setRwcvrNclmAdDctrm(newData.getRwcvrNclmAdDctrm()); break;
						    case "rmimcXcptPrmexBjyn" : oldData.setRmimcXcptPrmexBjyn(newData.getRmimcXcptPrmexBjyn()); break;
						    case "prsClmCvrcd" : oldData.setPrsClmCvrcd(newData.getPrsClmCvrcd()); break;
						    case "cvrXcptDlcd" : oldData.setCvrXcptDlcd(newData.getCvrXcptDlcd()); break;
						    case "ndsXcFlgcd" : oldData.setNdsXcFlgcd(newData.getNdsXcFlgcd()); break;
						    case "clmNdsXcCvrcd" : oldData.setClmNdsXcCvrcd(newData.getClmNdsXcCvrcd()); break;
						    case "cvrDcFlgcd" : oldData.setCvrDcFlgcd(newData.getCvrDcFlgcd()); break;
						    case "indpdTrtYn" : oldData.setIndpdTrtYn(newData.getIndpdTrtYn()); break;
						    case "indpdTrtGdcd" : oldData.setIndpdTrtGdcd(newData.getIndpdTrtGdcd()); break;
						    case "gdCvrDscrt" : oldData.setGdCvrDscrt(newData.getGdCvrDscrt()); break;
						    case "sbPymTpcd" : oldData.setSbPymTpcd(newData.getSbPymTpcd()); break;
						    case "cvrXtnDlFlgcd" : oldData.setCvrXtnDlFlgcd(newData.getCvrXtnDlFlgcd()); break;
						    case "claSeqno" : oldData.setClaSeqno(newData.getClaSeqno()); break;
						    case "ibnrFlgcd" : oldData.setIbnrFlgcd(newData.getIbnrFlgcd()); break;
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
