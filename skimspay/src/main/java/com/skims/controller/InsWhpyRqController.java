/**
 * InsWhpyRq Entity Controller 클래스
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
import com.skims.domain.entity.InsWhpyRq;
import com.skims.domain.repository.InsWhpyRqRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsWhpyRq 제지급신청 Controller")
@Slf4j
public class InsWhpyRqController {

    @Autowired
    InsWhpyRqRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "제지급신청 전체조회" , summary = "제지급신청 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inswhpyrqs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inswhpyrqs")
    public ResponseEntity<Page<InsWhpyRq>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "제지급신청 Key조회" , description = "제지급신청 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsWhpyRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsWhpyRq not found", content = @Content) })
    @GetMapping("/inswhpyrqs/{aid}")
    public ResponseEntity<InsWhpyRq> getById(@PathVariable("aid") Long aid) {
        Optional<InsWhpyRq> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "제지급신청 등록" , description = "제지급신청 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsWhpyRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inswhpyrqs")
    ResponseEntity<InsWhpyRq> postData(@RequestBody InsWhpyRq newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "제지급신청 수정" , description = "제지급신청 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsWhpyRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsWhpyRq not found", content = @Content) })
    @PutMapping("/inswhpyrqs/{aid}")
    ResponseEntity<InsWhpyRq> putData(@RequestBody InsWhpyRq newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "제지급신청 수정" , description = "제지급신청 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsWhpyRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyRq.class)) }),
            @ApiResponse(responseCode = "404", description = "InsWhpyRq not found", content = @Content) })
	@PatchMapping("/inswhpyrqs/{aid}")
    ResponseEntity<InsWhpyRq> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsWhpyRq newData = mapper.convertValue(newMap, InsWhpyRq.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "whpyRqdt" : oldData.setWhpyRqdt(newData.getWhpyRqdt()); break;
						    case "ssno" : oldData.setSsno(newData.getSsno()); break;
						    case "ssDtno" : oldData.setSsDtno(newData.getSsDtno()); break;
						    case "crtRsno" : oldData.setCrtRsno(newData.getCrtRsno()); break;
						    case "crtName" : oldData.setCrtName(newData.getCrtName()); break;
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "ssdt" : oldData.setSsdt(newData.getSsdt()); break;
						    case "rqorCd" : oldData.setRqorCd(newData.getRqorCd()); break;
						    case "whpyRqDlStcd" : oldData.setWhpyRqDlStcd(newData.getWhpyRqDlStcd()); break;
						    case "rqValdYn" : oldData.setRqValdYn(newData.getRqValdYn()); break;
						    case "oldssNo" : oldData.setOldssNo(newData.getOldssNo()); break;
						    case "frcRqYn" : oldData.setFrcRqYn(newData.getFrcRqYn()); break;
						    case "pyDlStcd" : oldData.setPyDlStcd(newData.getPyDlStcd()); break;
						    case "pyRcpMtdcd" : oldData.setPyRcpMtdcd(newData.getPyRcpMtdcd()); break;
						    case "pyMtdcd" : oldData.setPyMtdcd(newData.getPyMtdcd()); break;
						    case "pfbRcpsRelcd" : oldData.setPfbRcpsRelcd(newData.getPfbRcpsRelcd()); break;
						    case "rqapsRsno" : oldData.setRqapsRsno(newData.getRqapsRsno()); break;
						    case "rqapsNm" : oldData.setRqapsNm(newData.getRqapsNm()); break;
						    case "dlgPyRscd" : oldData.setDlgPyRscd(newData.getDlgPyRscd()); break;
						    case "pyBjnm" : oldData.setPyBjnm(newData.getPyBjnm()); break;
						    case "pyBjRsBzmno" : oldData.setPyBjRsBzmno(newData.getPyBjRsBzmno()); break;
						    case "actno" : oldData.setActno(newData.getActno()); break;
						    case "bkcd" : oldData.setBkcd(newData.getBkcd()); break;
						    case "dpsrRsBzmno" : oldData.setDpsrRsBzmno(newData.getDpsrRsBzmno()); break;
						    case "dpsnm" : oldData.setDpsnm(newData.getDpsnm()); break;
						    case "pyBjDpsrRelcd" : oldData.setPyBjDpsrRelcd(newData.getPyBjDpsrRelcd()); break;
						    case "rcapmOrgcd" : oldData.setRcapmOrgcd(newData.getRcapmOrgcd()); break;
						    case "cnvYn" : oldData.setCnvYn(newData.getCnvYn()); break;
						    case "cnvpsNm" : oldData.setCnvpsNm(newData.getCnvpsNm()); break;
						    case "rqamt" : oldData.setRqamt(newData.getRqamt()); break;
						    case "uiamt" : oldData.setUiamt(newData.getUiamt()); break;
						    case "sbPyamt" : oldData.setSbPyamt(newData.getSbPyamt()); break;
						    case "rsvDlRstErcd" : oldData.setRsvDlRstErcd(newData.getRsvDlRstErcd()); break;
						    case "claLnApYn" : oldData.setClaLnApYn(newData.getClaLnApYn()); break;
						    case "lnFdUsecd" : oldData.setLnFdUsecd(newData.getLnFdUsecd()); break;
						    case "clnrfBkcd" : oldData.setClnrfBkcd(newData.getClnrfBkcd()); break;
						    case "clnrfActno" : oldData.setClnrfActno(newData.getClnrfActno()); break;
						    case "clnrfDpsrRsBzmno" : oldData.setClnrfDpsrRsBzmno(newData.getClnrfDpsrRsBzmno()); break;
						    case "clnrfDpsnm" : oldData.setClnrfDpsnm(newData.getClnrfDpsnm()); break;
						    case "clnrfTfHpdyCd" : oldData.setClnrfTfHpdyCd(newData.getClnrfTfHpdyCd()); break;
						    case "clnrfCrtRelcd" : oldData.setClnrfCrtRelcd(newData.getClnrfCrtRelcd()); break;
						    case "pyCrTpcd" : oldData.setPyCrTpcd(newData.getPyCrTpcd()); break;
						    case "pyRsCascd" : oldData.setPyRsCascd(newData.getPyRsCascd()); break;
						    case "pyRsMdccd" : oldData.setPyRsMdccd(newData.getPyRsMdccd()); break;
						    case "pyRsSmccd" : oldData.setPyRsSmccd(newData.getPyRsSmccd()); break;
						    case "anTfactTpcd" : oldData.setAnTfactTpcd(newData.getAnTfactTpcd()); break;
						    case "anTfactIsdyFlgcd" : oldData.setAnTfactIsdyFlgcd(newData.getAnTfactIsdyFlgcd()); break;
						    case "evdDaFlgcd" : oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd()); break;
						    case "evdDaDscVl" : oldData.setEvdDaDscVl(newData.getEvdDaDscVl()); break;
						    case "evdDaSavePtncd" : oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd()); break;
						    case "autoPyFlgcd" : oldData.setAutoPyFlgcd(newData.getAutoPyFlgcd()); break;
						    case "pyNt" : oldData.setPyNt(newData.getPyNt()); break;
						    case "rlDpsnm" : oldData.setRlDpsnm(newData.getRlDpsnm()); break;
						    case "befoChekRstcd" : oldData.setBefoChekRstcd(newData.getBefoChekRstcd()); break;
						    case "dlOrgAnscd" : oldData.setDlOrgAnscd(newData.getDlOrgAnscd()); break;
						    case "dpsrInqAnscd" : oldData.setDpsrInqAnscd(newData.getDpsrInqAnscd()); break;
						    case "pyRsCrdt" : oldData.setPyRsCrdt(newData.getPyRsCrdt()); break;
						    case "cmpRcgntDt" : oldData.setCmpRcgntDt(newData.getCmpRcgntDt()); break;
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
	
    // @Operation(summary = "제지급신청 삭제" , description = "제지급신청 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsWhpyRq", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsWhpyRq.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inswhpyrqs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
