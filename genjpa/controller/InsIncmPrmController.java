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
import com.skims.domain.entity.InsIncmPrm;
import com.skims.domain.repository.InsIncmPrmRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<InsIncmPrm>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                    oldData.setPymSeq(newData.getPymSeq());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setFnlPymYymm(newData.getFnlPymYymm());
                    oldData.setPypTSeq(newData.getPypTSeq());
                    oldData.setRpPrm(newData.getRpPrm());
                    oldData.setApPrm(newData.getApPrm());
                    oldData.setDpCascd(newData.getDpCascd());
                    oldData.setDpDtCascd(newData.getDpDtCascd());
                    oldData.setRvSbno(newData.getRvSbno());
                    oldData.setCcldt(newData.getCcldt());
                    oldData.setCclFlgcd(newData.getCclFlgcd());
                    oldData.setPpdt(newData.getPpdt());
                    oldData.setPymCyccd(newData.getPymCyccd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setUsrno(newData.getUsrno());
                    oldData.setRpAdmno(newData.getRpAdmno());
                    oldData.setMncd(newData.getMncd());
                    oldData.setFcApPrm(newData.getFcApPrm());
                    oldData.setUsdCvApPrm(newData.getUsdCvApPrm());
                    oldData.setXcrtFlgcd(newData.getXcrtFlgcd());
                    oldData.setFcApXcrt(newData.getFcApXcrt());
                    oldData.setUsdApXcrt(newData.getUsdApXcrt());
                    oldData.setFcCondtTPrm(newData.getFcCondtTPrm());
                    oldData.setCondtTPrm(newData.getCondtTPrm());
                    oldData.setUdrtkTycd(newData.getUdrtkTycd());
                    oldData.setOtcmMgCmpcd(newData.getOtcmMgCmpcd());
                    oldData.setCnnIncmPrmcrSeqno(newData.getCnnIncmPrmcrSeqno());
                    oldData.setHscsHsFlgcd(newData.getHscsHsFlgcd());
                    oldData.setPypAdCs(newData.getPypAdCs());
                    oldData.setBaCvrPrm(newData.getBaCvrPrm());
                    oldData.setTrtPrm(newData.getTrtPrm());
                    oldData.setCuPrm(newData.getCuPrm());
                    oldData.setFlpyCvrTrtPrm(newData.getFlpyCvrTrtPrm());
                    oldData.setDcbfCuPrm(newData.getDcbfCuPrm());
                    oldData.setCuNprm(newData.getCuNprm());
                    oldData.setPpyYn(newData.getPpyYn());
                    oldData.setPpyDcYn(newData.getPpyDcYn());
                    oldData.setNwfsqFlgcd(newData.getNwfsqFlgcd());
                    oldData.setAutoTfDcYn(newData.getAutoTfDcYn());
                    oldData.setRviNt(newData.getRviNt());
                    oldData.setDuArFlgcd(newData.getDuArFlgcd());
                    oldData.setPrmDissYn(newData.getPrmDissYn());
                    oldData.setCvrPrmDisbjYn(newData.getCvrPrmDisbjYn());
                    oldData.setDcbfPrm(newData.getDcbfPrm());
                    oldData.setSbFlgcd(newData.getSbFlgcd());
                    oldData.setOndsDpTpcd(newData.getOndsDpTpcd());
                    oldData.setRtnFlgcd(newData.getRtnFlgcd());
                    oldData.setPrmFlgcd(newData.getPrmFlgcd());
                    oldData.setPrmEfctNddt(newData.getPrmEfctNddt());
                    oldData.setBkcd(newData.getBkcd());
                    oldData.setBkBrcd(newData.getBkBrcd());
                    oldData.setBkExtnQfp(newData.getBkExtnQfp());
                    oldData.setBkIpps(newData.getBkIpps());
                    oldData.setBncAdmr(newData.getBncAdmr());
                    oldData.setPymDudt(newData.getPymDudt());
                    oldData.setDblPaymYn(newData.getDblPaymYn());
                    oldData.setAcTfYn(newData.getAcTfYn());
                    oldData.setUcPrmYn(newData.getUcPrmYn());
                    oldData.setCoCrtRvFlgcd(newData.getCoCrtRvFlgcd());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setCclWdrRtnNt(newData.getCclWdrRtnNt());
                    oldData.setPayaoYn(newData.getPayaoYn());
                    oldData.setAmtNdscd(newData.getAmtNdscd());
                    oldData.setCrtRelpcSeqno(newData.getCrtRelpcSeqno());
                    oldData.setTincmPrmCrSeqno(newData.getTincmPrmCrSeqno());
                    oldData.setPynoWhpyBjno(newData.getPynoWhpyBjno());
                    oldData.setCoCrtYn(newData.getCoCrtYn());
                    oldData.setCuStRpdt(newData.getCuStRpdt());
                    oldData.setSelfCrYn(newData.getSelfCrYn());
                    oldData.setRdchCrYn(newData.getRdchCrYn());
                    oldData.setRvDldt(newData.getRvDldt());
                    oldData.setLogorTpcd(newData.getLogorTpcd());
                    oldData.setAdpymBeloMwWlamt(newData.getAdpymBeloMwWlamt());
                    oldData.setPfPrm(newData.getPfPrm());
                    oldData.setNpAccLdgno(newData.getNpAccLdgno());
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
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("incmPrmCrSeqno"))
                            oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                        if (strKey.equals("pymSeq"))
                            oldData.setPymSeq(newData.getPymSeq());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("fnlPymYymm"))
                            oldData.setFnlPymYymm(newData.getFnlPymYymm());
                        if (strKey.equals("pypTSeq"))
                            oldData.setPypTSeq(newData.getPypTSeq());
                        if (strKey.equals("rpPrm"))
                            oldData.setRpPrm(newData.getRpPrm());
                        if (strKey.equals("apPrm"))
                            oldData.setApPrm(newData.getApPrm());
                        if (strKey.equals("dpCascd"))
                            oldData.setDpCascd(newData.getDpCascd());
                        if (strKey.equals("dpDtCascd"))
                            oldData.setDpDtCascd(newData.getDpDtCascd());
                        if (strKey.equals("rvSbno"))
                            oldData.setRvSbno(newData.getRvSbno());
                        if (strKey.equals("ccldt"))
                            oldData.setCcldt(newData.getCcldt());
                        if (strKey.equals("cclFlgcd"))
                            oldData.setCclFlgcd(newData.getCclFlgcd());
                        if (strKey.equals("ppdt"))
                            oldData.setPpdt(newData.getPpdt());
                        if (strKey.equals("pymCyccd"))
                            oldData.setPymCyccd(newData.getPymCyccd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("usrno"))
                            oldData.setUsrno(newData.getUsrno());
                        if (strKey.equals("rpAdmno"))
                            oldData.setRpAdmno(newData.getRpAdmno());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("fcApPrm"))
                            oldData.setFcApPrm(newData.getFcApPrm());
                        if (strKey.equals("usdCvApPrm"))
                            oldData.setUsdCvApPrm(newData.getUsdCvApPrm());
                        if (strKey.equals("xcrtFlgcd"))
                            oldData.setXcrtFlgcd(newData.getXcrtFlgcd());
                        if (strKey.equals("fcApXcrt"))
                            oldData.setFcApXcrt(newData.getFcApXcrt());
                        if (strKey.equals("usdApXcrt"))
                            oldData.setUsdApXcrt(newData.getUsdApXcrt());
                        if (strKey.equals("fcCondtTPrm"))
                            oldData.setFcCondtTPrm(newData.getFcCondtTPrm());
                        if (strKey.equals("condtTPrm"))
                            oldData.setCondtTPrm(newData.getCondtTPrm());
                        if (strKey.equals("udrtkTycd"))
                            oldData.setUdrtkTycd(newData.getUdrtkTycd());
                        if (strKey.equals("otcmMgCmpcd"))
                            oldData.setOtcmMgCmpcd(newData.getOtcmMgCmpcd());
                        if (strKey.equals("cnnIncmPrmcrSeqno"))
                            oldData.setCnnIncmPrmcrSeqno(newData.getCnnIncmPrmcrSeqno());
                        if (strKey.equals("hscsHsFlgcd"))
                            oldData.setHscsHsFlgcd(newData.getHscsHsFlgcd());
                        if (strKey.equals("pypAdCs"))
                            oldData.setPypAdCs(newData.getPypAdCs());
                        if (strKey.equals("baCvrPrm"))
                            oldData.setBaCvrPrm(newData.getBaCvrPrm());
                        if (strKey.equals("trtPrm"))
                            oldData.setTrtPrm(newData.getTrtPrm());
                        if (strKey.equals("cuPrm"))
                            oldData.setCuPrm(newData.getCuPrm());
                        if (strKey.equals("flpyCvrTrtPrm"))
                            oldData.setFlpyCvrTrtPrm(newData.getFlpyCvrTrtPrm());
                        if (strKey.equals("dcbfCuPrm"))
                            oldData.setDcbfCuPrm(newData.getDcbfCuPrm());
                        if (strKey.equals("cuNprm"))
                            oldData.setCuNprm(newData.getCuNprm());
                        if (strKey.equals("ppyYn"))
                            oldData.setPpyYn(newData.getPpyYn());
                        if (strKey.equals("ppyDcYn"))
                            oldData.setPpyDcYn(newData.getPpyDcYn());
                        if (strKey.equals("nwfsqFlgcd"))
                            oldData.setNwfsqFlgcd(newData.getNwfsqFlgcd());
                        if (strKey.equals("autoTfDcYn"))
                            oldData.setAutoTfDcYn(newData.getAutoTfDcYn());
                        if (strKey.equals("rviNt"))
                            oldData.setRviNt(newData.getRviNt());
                        if (strKey.equals("duArFlgcd"))
                            oldData.setDuArFlgcd(newData.getDuArFlgcd());
                        if (strKey.equals("prmDissYn"))
                            oldData.setPrmDissYn(newData.getPrmDissYn());
                        if (strKey.equals("cvrPrmDisbjYn"))
                            oldData.setCvrPrmDisbjYn(newData.getCvrPrmDisbjYn());
                        if (strKey.equals("dcbfPrm"))
                            oldData.setDcbfPrm(newData.getDcbfPrm());
                        if (strKey.equals("sbFlgcd"))
                            oldData.setSbFlgcd(newData.getSbFlgcd());
                        if (strKey.equals("ondsDpTpcd"))
                            oldData.setOndsDpTpcd(newData.getOndsDpTpcd());
                        if (strKey.equals("rtnFlgcd"))
                            oldData.setRtnFlgcd(newData.getRtnFlgcd());
                        if (strKey.equals("prmFlgcd"))
                            oldData.setPrmFlgcd(newData.getPrmFlgcd());
                        if (strKey.equals("prmEfctNddt"))
                            oldData.setPrmEfctNddt(newData.getPrmEfctNddt());
                        if (strKey.equals("bkcd"))
                            oldData.setBkcd(newData.getBkcd());
                        if (strKey.equals("bkBrcd"))
                            oldData.setBkBrcd(newData.getBkBrcd());
                        if (strKey.equals("bkExtnQfp"))
                            oldData.setBkExtnQfp(newData.getBkExtnQfp());
                        if (strKey.equals("bkIpps"))
                            oldData.setBkIpps(newData.getBkIpps());
                        if (strKey.equals("bncAdmr"))
                            oldData.setBncAdmr(newData.getBncAdmr());
                        if (strKey.equals("pymDudt"))
                            oldData.setPymDudt(newData.getPymDudt());
                        if (strKey.equals("dblPaymYn"))
                            oldData.setDblPaymYn(newData.getDblPaymYn());
                        if (strKey.equals("acTfYn"))
                            oldData.setAcTfYn(newData.getAcTfYn());
                        if (strKey.equals("ucPrmYn"))
                            oldData.setUcPrmYn(newData.getUcPrmYn());
                        if (strKey.equals("coCrtRvFlgcd"))
                            oldData.setCoCrtRvFlgcd(newData.getCoCrtRvFlgcd());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("cclWdrRtnNt"))
                            oldData.setCclWdrRtnNt(newData.getCclWdrRtnNt());
                        if (strKey.equals("payaoYn"))
                            oldData.setPayaoYn(newData.getPayaoYn());
                        if (strKey.equals("amtNdscd"))
                            oldData.setAmtNdscd(newData.getAmtNdscd());
                        if (strKey.equals("crtRelpcSeqno"))
                            oldData.setCrtRelpcSeqno(newData.getCrtRelpcSeqno());
                        if (strKey.equals("tincmPrmCrSeqno"))
                            oldData.setTincmPrmCrSeqno(newData.getTincmPrmCrSeqno());
                        if (strKey.equals("pynoWhpyBjno"))
                            oldData.setPynoWhpyBjno(newData.getPynoWhpyBjno());
                        if (strKey.equals("coCrtYn"))
                            oldData.setCoCrtYn(newData.getCoCrtYn());
                        if (strKey.equals("cuStRpdt"))
                            oldData.setCuStRpdt(newData.getCuStRpdt());
                        if (strKey.equals("selfCrYn"))
                            oldData.setSelfCrYn(newData.getSelfCrYn());
                        if (strKey.equals("rdchCrYn"))
                            oldData.setRdchCrYn(newData.getRdchCrYn());
                        if (strKey.equals("rvDldt"))
                            oldData.setRvDldt(newData.getRvDldt());
                        if (strKey.equals("logorTpcd"))
                            oldData.setLogorTpcd(newData.getLogorTpcd());
                        if (strKey.equals("adpymBeloMwWlamt"))
                            oldData.setAdpymBeloMwWlamt(newData.getAdpymBeloMwWlamt());
                        if (strKey.equals("pfPrm"))
                            oldData.setPfPrm(newData.getPfPrm());
                        if (strKey.equals("npAccLdgno"))
                            oldData.setNpAccLdgno(newData.getNpAccLdgno());
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
