/**
 * InsIncmPrm Entity Controller 클래스
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
import com.skims.domain.entity.InsIncmPrm;
import com.skims.domain.repository.InsIncmPrmRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsIncmPrm 수입보험료 Controller")
@Slf4j
public class InsIncmPrmController {

    @Autowired
    InsIncmPrmRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "수입보험료 전체조회" , summary = "수입보험료 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insincmprms", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsIncmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insincmprms")
    public ResponseEntity<Page<InsIncmPrm>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "수입보험료 Key조회" , description = "수입보험료 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsIncmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsIncmPrm not found", content = @Content) })
    @GetMapping("/insincmprms/{aid}")
    public ResponseEntity<InsIncmPrm> getById(@PathVariable("aid") Long aid) {
        Optional<InsIncmPrm> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "수입보험료 등록" , description = "수입보험료 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsIncmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insincmprms")
    ResponseEntity<InsIncmPrm> postData(@RequestBody InsIncmPrm newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "수입보험료 수정" , description = "수입보험료 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsIncmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsIncmPrm not found", content = @Content) })
    @PutMapping("/insincmprms/{aid}")
    ResponseEntity<InsIncmPrm> putData(@RequestBody InsIncmPrm newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "수입보험료 수정" , description = "수입보험료 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsIncmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsIncmPrm not found", content = @Content) })
	@PatchMapping("/insincmprms/{aid}")
    ResponseEntity<InsIncmPrm> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsIncmPrm newData = mapper.convertValue(newMap, InsIncmPrm.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "incmPrmCrSeqno" : oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno()); break;
						    case "pymSeq" : oldData.setPymSeq(newData.getPymSeq()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "fnlPymYymm" : oldData.setFnlPymYymm(newData.getFnlPymYymm()); break;
						    case "pypTSeq" : oldData.setPypTSeq(newData.getPypTSeq()); break;
						    case "rpPrm" : oldData.setRpPrm(newData.getRpPrm()); break;
						    case "apPrm" : oldData.setApPrm(newData.getApPrm()); break;
						    case "dpCascd" : oldData.setDpCascd(newData.getDpCascd()); break;
						    case "dpDtCascd" : oldData.setDpDtCascd(newData.getDpDtCascd()); break;
						    case "rvSbno" : oldData.setRvSbno(newData.getRvSbno()); break;
						    case "ccldt" : oldData.setCcldt(newData.getCcldt()); break;
						    case "cclFlgcd" : oldData.setCclFlgcd(newData.getCclFlgcd()); break;
						    case "ppdt" : oldData.setPpdt(newData.getPpdt()); break;
						    case "pymCyccd" : oldData.setPymCyccd(newData.getPymCyccd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "usrno" : oldData.setUsrno(newData.getUsrno()); break;
						    case "rpAdmno" : oldData.setRpAdmno(newData.getRpAdmno()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "fcApPrm" : oldData.setFcApPrm(newData.getFcApPrm()); break;
						    case "usdCvApPrm" : oldData.setUsdCvApPrm(newData.getUsdCvApPrm()); break;
						    case "xcrtFlgcd" : oldData.setXcrtFlgcd(newData.getXcrtFlgcd()); break;
						    case "fcApXcrt" : oldData.setFcApXcrt(newData.getFcApXcrt()); break;
						    case "usdApXcrt" : oldData.setUsdApXcrt(newData.getUsdApXcrt()); break;
						    case "fcCondtTPrm" : oldData.setFcCondtTPrm(newData.getFcCondtTPrm()); break;
						    case "condtTPrm" : oldData.setCondtTPrm(newData.getCondtTPrm()); break;
						    case "udrtkTycd" : oldData.setUdrtkTycd(newData.getUdrtkTycd()); break;
						    case "otcmMgCmpcd" : oldData.setOtcmMgCmpcd(newData.getOtcmMgCmpcd()); break;
						    case "cnnIncmPrmcrSeqno" : oldData.setCnnIncmPrmcrSeqno(newData.getCnnIncmPrmcrSeqno()); break;
						    case "hscsHsFlgcd" : oldData.setHscsHsFlgcd(newData.getHscsHsFlgcd()); break;
						    case "pypAdCs" : oldData.setPypAdCs(newData.getPypAdCs()); break;
						    case "baCvrPrm" : oldData.setBaCvrPrm(newData.getBaCvrPrm()); break;
						    case "trtPrm" : oldData.setTrtPrm(newData.getTrtPrm()); break;
						    case "cuPrm" : oldData.setCuPrm(newData.getCuPrm()); break;
						    case "flpyCvrTrtPrm" : oldData.setFlpyCvrTrtPrm(newData.getFlpyCvrTrtPrm()); break;
						    case "dcbfCuPrm" : oldData.setDcbfCuPrm(newData.getDcbfCuPrm()); break;
						    case "cuNprm" : oldData.setCuNprm(newData.getCuNprm()); break;
						    case "ppyYn" : oldData.setPpyYn(newData.getPpyYn()); break;
						    case "ppyDcYn" : oldData.setPpyDcYn(newData.getPpyDcYn()); break;
						    case "nwfsqFlgcd" : oldData.setNwfsqFlgcd(newData.getNwfsqFlgcd()); break;
						    case "autoTfDcYn" : oldData.setAutoTfDcYn(newData.getAutoTfDcYn()); break;
						    case "rviNt" : oldData.setRviNt(newData.getRviNt()); break;
						    case "duArFlgcd" : oldData.setDuArFlgcd(newData.getDuArFlgcd()); break;
						    case "prmDissYn" : oldData.setPrmDissYn(newData.getPrmDissYn()); break;
						    case "cvrPrmDisbjYn" : oldData.setCvrPrmDisbjYn(newData.getCvrPrmDisbjYn()); break;
						    case "dcbfPrm" : oldData.setDcbfPrm(newData.getDcbfPrm()); break;
						    case "sbFlgcd" : oldData.setSbFlgcd(newData.getSbFlgcd()); break;
						    case "ondsDpTpcd" : oldData.setOndsDpTpcd(newData.getOndsDpTpcd()); break;
						    case "rtnFlgcd" : oldData.setRtnFlgcd(newData.getRtnFlgcd()); break;
						    case "prmFlgcd" : oldData.setPrmFlgcd(newData.getPrmFlgcd()); break;
						    case "prmEfctNddt" : oldData.setPrmEfctNddt(newData.getPrmEfctNddt()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "bkBrcd" : oldData.setBkBrcd(newData.getBkBrcd()); break;
						    case "bkExtnQfp" : oldData.setBkExtnQfp(newData.getBkExtnQfp()); break;
						    case "bkIpps" : oldData.setBkIpps(newData.getBkIpps()); break;
						    case "bncAdmr" : oldData.setBncAdmr(newData.getBncAdmr()); break;
						    case "pymDudt" : oldData.setPymDudt(newData.getPymDudt()); break;
						    case "dblPaymYn" : oldData.setDblPaymYn(newData.getDblPaymYn()); break;
						    case "acTfYn" : oldData.setAcTfYn(newData.getAcTfYn()); break;
						    case "ucPrmYn" : oldData.setUcPrmYn(newData.getUcPrmYn()); break;
						    case "coCrtRvFlgcd" : oldData.setCoCrtRvFlgcd(newData.getCoCrtRvFlgcd()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "cclWdrRtnNt" : oldData.setCclWdrRtnNt(newData.getCclWdrRtnNt()); break;
						    case "payaoYn" : oldData.setPayaoYn(newData.getPayaoYn()); break;
						    case "amtNdscd" : oldData.setAmtNdscd(newData.getAmtNdscd()); break;
						    case "crtRelpcSeqno" : oldData.setCrtRelpcSeqno(newData.getCrtRelpcSeqno()); break;
						    case "tincmPrmCrSeqno" : oldData.setTincmPrmCrSeqno(newData.getTincmPrmCrSeqno()); break;
						    case "pynoWhpyBjno" : oldData.setPynoWhpyBjno(newData.getPynoWhpyBjno()); break;
						    case "coCrtYn" : oldData.setCoCrtYn(newData.getCoCrtYn()); break;
						    case "cuStRpdt" : oldData.setCuStRpdt(newData.getCuStRpdt()); break;
						    case "selfCrYn" : oldData.setSelfCrYn(newData.getSelfCrYn()); break;
						    case "rdchCrYn" : oldData.setRdchCrYn(newData.getRdchCrYn()); break;
						    case "rvDldt" : oldData.setRvDldt(newData.getRvDldt()); break;
						    case "logorTpcd" : oldData.setLogorTpcd(newData.getLogorTpcd()); break;
						    case "adpymBeloMwWlamt" : oldData.setAdpymBeloMwWlamt(newData.getAdpymBeloMwWlamt()); break;
						    case "pfPrm" : oldData.setPfPrm(newData.getPfPrm()); break;
						    case "npAccLdgno" : oldData.setNpAccLdgno(newData.getNpAccLdgno()); break;
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
	
    // @Operation(summary = "수입보험료 삭제" , description = "수입보험료 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsIncmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insincmprms/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
