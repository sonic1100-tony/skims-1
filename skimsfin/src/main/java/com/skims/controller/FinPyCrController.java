/**
 * FinPyCr Entity Controller 클래스
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
import com.skims.domain.entity.FinPyCr;
import com.skims.domain.repository.FinPyCrRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinPyCr 지급발생 Controller")
@Slf4j
public class FinPyCrController {

    @Autowired
    FinPyCrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "지급발생 전체조회" , summary = "지급발생 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finpycrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finpycrs")
    public ResponseEntity<Page<FinPyCr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "지급발생 Key조회" , description = "지급발생 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyCr not found", content = @Content) })
    @GetMapping("/finpycrs/{aid}")
    public ResponseEntity<FinPyCr> getById(@PathVariable("aid") Long aid) {
        Optional<FinPyCr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "지급발생 등록" , description = "지급발생 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finpycrs")
    ResponseEntity<FinPyCr> postData(@RequestBody FinPyCr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "지급발생 수정" , description = "지급발생 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyCr not found", content = @Content) })
    @PutMapping("/finpycrs/{aid}")
    ResponseEntity<FinPyCr> putData(@RequestBody FinPyCr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "지급발생 수정" , description = "지급발생 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "404", description = "FinPyCr not found", content = @Content) })
	@PatchMapping("/finpycrs/{aid}")
    ResponseEntity<FinPyCr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        FinPyCr newData = mapper.convertValue(newMap, FinPyCr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "pyCrno" : oldData.setPyCrno(newData.getPyCrno()); break;
						    case "ldgKndcd" : oldData.setLdgKndcd(newData.getLdgKndcd()); break;
						    case "ldgno" : oldData.setLdgno(newData.getLdgno()); break;
						    case "crdt" : oldData.setCrdt(newData.getCrdt()); break;
						    case "actOrgcd" : oldData.setActOrgcd(newData.getActOrgcd()); break;
						    case "rqogCd" : oldData.setRqogCd(newData.getRqogCd()); break;
						    case "rqfno" : oldData.setRqfno(newData.getRqfno()); break;
						    case "crSyscd" : oldData.setCrSyscd(newData.getCrSyscd()); break;
						    case "dlTpO1Csfcd" : oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd()); break;
						    case "dlTpO2Csfcd" : oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd()); break;
						    case "pylno" : oldData.setPylno(newData.getPylno()); break;
						    case "pyplFlgcd" : oldData.setPyplFlgcd(newData.getPyplFlgcd()); break;
						    case "pyplKndcd" : oldData.setPyplKndcd(newData.getPyplKndcd()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "pyplActno" : oldData.setPyplActno(newData.getPyplActno()); break;
						    case "dpsr" : oldData.setDpsr(newData.getDpsr()); break;
						    case "pylnm" : oldData.setPylnm(newData.getPylnm()); break;
						    case "pynctTpcd" : oldData.setPynctTpcd(newData.getPynctTpcd()); break;
						    case "dfpcd" : oldData.setDfpcd(newData.getDfpcd()); break;
						    case "pyMtdcd" : oldData.setPyMtdcd(newData.getPyMtdcd()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "pyPrdt" : oldData.setPyPrdt(newData.getPyPrdt()); break;
						    case "pyPrWoamt" : oldData.setPyPrWoamt(newData.getPyPrWoamt()); break;
						    case "pyPrFcamt" : oldData.setPyPrFcamt(newData.getPyPrFcamt()); break;
						    case "pyDcnWoamt" : oldData.setPyDcnWoamt(newData.getPyDcnWoamt()); break;
						    case "pyDcnFcamt" : oldData.setPyDcnFcamt(newData.getPyDcnFcamt()); break;
						    case "rlPyDcnWoamt" : oldData.setRlPyDcnWoamt(newData.getRlPyDcnWoamt()); break;
						    case "rlPyDcnFcamt" : oldData.setRlPyDcnFcamt(newData.getRlPyDcnFcamt()); break;
						    case "fxPldoqFlgcd" : oldData.setFxPldoqFlgcd(newData.getFxPldoqFlgcd()); break;
						    case "fxPqamt" : oldData.setFxPqamt(newData.getFxPqamt()); break;
						    case "apXcrt" : oldData.setApXcrt(newData.getApXcrt()); break;
						    case "fcDcndt" : oldData.setFcDcndt(newData.getFcDcndt()); break;
						    case "fcDcnStfno" : oldData.setFcDcnStfno(newData.getFcDcnStfno()); break;
						    case "fcDcnApXcrt" : oldData.setFcDcnApXcrt(newData.getFcDcnApXcrt()); break;
						    case "selfYn" : oldData.setSelfYn(newData.getSelfYn()); break;
						    case "rcrRsno" : oldData.setRcrRsno(newData.getRcrRsno()); break;
						    case "rcrNm" : oldData.setRcrNm(newData.getRcrNm()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "insImcd" : oldData.setInsImcd(newData.getInsImcd()); break;
						    case "invlnGdcd" : oldData.setInvlnGdcd(newData.getInvlnGdcd()); break;
						    case "bsnsCnnnoFlgcd" : oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd()); break;
						    case "bsnsCnnno" : oldData.setBsnsCnnno(newData.getBsnsCnnno()); break;
						    case "crtDscno" : oldData.setCrtDscno(newData.getCrtDscno()); break;
						    case "victmDscno" : oldData.setVictmDscno(newData.getVictmDscno()); break;
						    case "nrdpsDscno" : oldData.setNrdpsDscno(newData.getNrdpsDscno()); break;
						    case "dmgnm" : oldData.setDmgnm(newData.getDmgnm()); break;
						    case "udrtkTycd" : oldData.setUdrtkTycd(newData.getUdrtkTycd()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "fndcd" : oldData.setFndcd(newData.getFndcd()); break;
						    case "apdt" : oldData.setApdt(newData.getApdt()); break;
						    case "apOrgcd" : oldData.setApOrgcd(newData.getApOrgcd()); break;
						    case "apStfno" : oldData.setApStfno(newData.getApStfno()); break;
						    case "rpAdmcrNo" : oldData.setRpAdmcrNo(newData.getRpAdmcrNo()); break;
						    case "rpAdmcrOutdt" : oldData.setRpAdmcrOutdt(newData.getRpAdmcrOutdt()); break;
						    case "rpAdmcrOutbjYn" : oldData.setRpAdmcrOutbjYn(newData.getRpAdmcrOutbjYn()); break;
						    case "dsodt" : oldData.setDsodt(newData.getDsodt()); break;
						    case "bdgDpno" : oldData.setBdgDpno(newData.getBdgDpno()); break;
						    case "pydt" : oldData.setPydt(newData.getPydt()); break;
						    case "pyOrgcd" : oldData.setPyOrgcd(newData.getPyOrgcd()); break;
						    case "pyXcno" : oldData.setPyXcno(newData.getPyXcno()); break;
						    case "chbfCrno" : oldData.setChbfCrno(newData.getChbfCrno()); break;
						    case "pyDlO1Flgcd" : oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd()); break;
						    case "pyDlO2Flgcd" : oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd()); break;
						    case "frDpdt" : oldData.setFrDpdt(newData.getFrDpdt()); break;
						    case "frDhOrgcd" : oldData.setFrDhOrgcd(newData.getFrDhOrgcd()); break;
						    case "frDhStfno" : oldData.setFrDhStfno(newData.getFrDhStfno()); break;
						    case "pyCrRmTpcd" : oldData.setPyCrRmTpcd(newData.getPyCrRmTpcd()); break;
						    case "jonlYn" : oldData.setJonlYn(newData.getJonlYn()); break;
						    case "pyDlEryn" : oldData.setPyDlEryn(newData.getPyDlEryn()); break;
						    case "pyErNtMtdcd" : oldData.setPyErNtMtdcd(newData.getPyErNtMtdcd()); break;
						    case "fcByIptdt" : oldData.setFcByIptdt(newData.getFcByIptdt()); break;
						    case "fcByInpStfno" : oldData.setFcByInpStfno(newData.getFcByInpStfno()); break;
						    case "rmStcd" : oldData.setRmStcd(newData.getRmStcd()); break;
						    case "pyCrStcd" : oldData.setPyCrStcd(newData.getPyCrStcd()); break;
						    case "pyReqdt" : oldData.setPyReqdt(newData.getPyReqdt()); break;
						    case "repyReqdt" : oldData.setRepyReqdt(newData.getRepyReqdt()); break;
						    case "repyRqStfno" : oldData.setRepyRqStfno(newData.getRepyRqStfno()); break;
						    case "repyRqRscd" : oldData.setRepyRqRscd(newData.getRepyRqRscd()); break;
						    case "slpdt" : oldData.setSlpdt(newData.getSlpdt()); break;
						    case "slpno" : oldData.setSlpno(newData.getSlpno()); break;
						    case "pyStDvDldt" : oldData.setPyStDvDldt(newData.getPyStDvDldt()); break;
						    case "pystDvDlStfno" : oldData.setPystDvDlStfno(newData.getPystDvDlStfno()); break;
						    case "pystDvDlOrgcd" : oldData.setPystDvDlOrgcd(newData.getPystDvDlOrgcd()); break;
						    case "pyno" : oldData.setPyno(newData.getPyno()); break;
						    case "cclBjPyno" : oldData.setCclBjPyno(newData.getCclBjPyno()); break;
						    case "pyCstno" : oldData.setPyCstno(newData.getPyCstno()); break;
						    case "cclBjPyCstno" : oldData.setCclBjPyCstno(newData.getCclBjPyCstno()); break;
						    case "pyStDvDlno" : oldData.setPyStDvDlno(newData.getPyStDvDlno()); break;
						    case "cclBjNdsno" : oldData.setCclBjNdsno(newData.getCclBjNdsno()); break;
						    case "chrpsDsdt" : oldData.setChrpsDsdt(newData.getChrpsDsdt()); break;
						    case "chrpsAsmtOrgcd" : oldData.setChrpsAsmtOrgcd(newData.getChrpsAsmtOrgcd()); break;
						    case "chrpsAsmtStfno" : oldData.setChrpsAsmtStfno(newData.getChrpsAsmtStfno()); break;
						    case "wdraBkcd" : oldData.setWdraBkcd(newData.getWdraBkcd()); break;
						    case "wdraActno" : oldData.setWdraActno(newData.getWdraActno()); break;
						    case "stYymm" : oldData.setStYymm(newData.getStYymm()); break;
						    case "bdlTfBsnsFlgcd" : oldData.setBdlTfBsnsFlgcd(newData.getBdlTfBsnsFlgcd()); break;
						    case "bdlTfDlSeqno" : oldData.setBdlTfDlSeqno(newData.getBdlTfDlSeqno()); break;
						    case "notsMtt" : oldData.setNotsMtt(newData.getNotsMtt()); break;
						    case "pystDvDlSeqno" : oldData.setPystDvDlSeqno(newData.getPystDvDlSeqno()); break;
						    case "bdlRmYn" : oldData.setBdlRmYn(newData.getBdlRmYn()); break;
						    case "rcapmOrgDtFlgcd" : oldData.setRcapmOrgDtFlgcd(newData.getRcapmOrgDtFlgcd()); break;
						    case "smsPyTpcd" : oldData.setSmsPyTpcd(newData.getSmsPyTpcd()); break;
						    case "bsnsAdxFileDscno" : oldData.setBsnsAdxFileDscno(newData.getBsnsAdxFileDscno()); break;
						    case "elecEvdImgBsnno" : oldData.setElecEvdImgBsnno(newData.getElecEvdImgBsnno()); break;
						    case "elecPrvDcuId" : oldData.setElecPrvDcuId(newData.getElecPrvDcuId()); break;
						    case "fileEvdGpno" : oldData.setFileEvdGpno(newData.getFileEvdGpno()); break;
						    case "myctPyBjyn" : oldData.setMyctPyBjyn(newData.getMyctPyBjyn()); break;
						    case "dbAccSbjcd" : oldData.setDbAccSbjcd(newData.getDbAccSbjcd()); break;
						    case "crdtAccSbjcd" : oldData.setCrdtAccSbjcd(newData.getCrdtAccSbjcd()); break;
						    case "pyDlFlgcd" : oldData.setPyDlFlgcd(newData.getPyDlFlgcd()); break;
						    case "inrEdamtDldt" : oldData.setInrEdamtDldt(newData.getInrEdamtDldt()); break;
						    case "inrRtxno" : oldData.setInrRtxno(newData.getInrRtxno()); break;
						    case "smsBjYn" : oldData.setSmsBjYn(newData.getSmsBjYn()); break;
						    case "hpno" : oldData.setHpno(newData.getHpno()); break;
						    case "chrCn" : oldData.setChrCn(newData.getChrCn()); break;
						    case "finaDatVrfFlg1Vl" : oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl()); break;
						    case "finaDatVrfFlg2Vl" : oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl()); break;
						    case "finaDatVrfFlg3Vl" : oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl()); break;
						    case "kkoPayPyYn" : oldData.setKkoPayPyYn(newData.getKkoPayPyYn()); break;
						    case "kkoAccId" : oldData.setKkoAccId(newData.getKkoAccId()); break;
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
	
    // @Operation(summary = "지급발생 삭제" , description = "지급발생 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinPyCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinPyCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finpycrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
