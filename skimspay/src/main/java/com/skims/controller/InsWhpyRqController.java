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

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setWhpyRqdt(newData.getWhpyRqdt());
                    oldData.setSsno(newData.getSsno());
                    oldData.setSsDtno(newData.getSsDtno());
                    oldData.setCrtRsno(newData.getCrtRsno());
                    oldData.setCrtName(newData.getCrtName());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setSsdt(newData.getSsdt());
                    oldData.setRqorCd(newData.getRqorCd());
                    oldData.setWhpyRqDlStcd(newData.getWhpyRqDlStcd());
                    oldData.setRqValdYn(newData.getRqValdYn());
                    oldData.setOldssNo(newData.getOldssNo());
                    oldData.setFrcRqYn(newData.getFrcRqYn());
                    oldData.setPyDlStcd(newData.getPyDlStcd());
                    oldData.setPyRcpMtdcd(newData.getPyRcpMtdcd());
                    oldData.setPyMtdcd(newData.getPyMtdcd());
                    oldData.setPfbRcpsRelcd(newData.getPfbRcpsRelcd());
                    oldData.setRqapsRsno(newData.getRqapsRsno());
                    oldData.setRqapsNm(newData.getRqapsNm());
                    oldData.setDlgPyRscd(newData.getDlgPyRscd());
                    oldData.setPyBjnm(newData.getPyBjnm());
                    oldData.setPyBjRsBzmno(newData.getPyBjRsBzmno());
                    oldData.setActno(newData.getActno());
                    oldData.setBkcd(newData.getBkcd());
                    oldData.setDpsrRsBzmno(newData.getDpsrRsBzmno());
                    oldData.setDpsnm(newData.getDpsnm());
                    oldData.setPyBjDpsrRelcd(newData.getPyBjDpsrRelcd());
                    oldData.setRcapmOrgcd(newData.getRcapmOrgcd());
                    oldData.setCnvYn(newData.getCnvYn());
                    oldData.setCnvpsNm(newData.getCnvpsNm());
                    oldData.setRqamt(newData.getRqamt());
                    oldData.setUiamt(newData.getUiamt());
                    oldData.setSbPyamt(newData.getSbPyamt());
                    oldData.setRsvDlRstErcd(newData.getRsvDlRstErcd());
                    oldData.setClaLnApYn(newData.getClaLnApYn());
                    oldData.setLnFdUsecd(newData.getLnFdUsecd());
                    oldData.setClnrfBkcd(newData.getClnrfBkcd());
                    oldData.setClnrfActno(newData.getClnrfActno());
                    oldData.setClnrfDpsrRsBzmno(newData.getClnrfDpsrRsBzmno());
                    oldData.setClnrfDpsnm(newData.getClnrfDpsnm());
                    oldData.setClnrfTfHpdyCd(newData.getClnrfTfHpdyCd());
                    oldData.setClnrfCrtRelcd(newData.getClnrfCrtRelcd());
                    oldData.setPyCrTpcd(newData.getPyCrTpcd());
                    oldData.setPyRsCascd(newData.getPyRsCascd());
                    oldData.setPyRsMdccd(newData.getPyRsMdccd());
                    oldData.setPyRsSmccd(newData.getPyRsSmccd());
                    oldData.setAnTfactTpcd(newData.getAnTfactTpcd());
                    oldData.setAnTfactIsdyFlgcd(newData.getAnTfactIsdyFlgcd());
                    oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd());
                    oldData.setEvdDaDscVl(newData.getEvdDaDscVl());
                    oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd());
                    oldData.setAutoPyFlgcd(newData.getAutoPyFlgcd());
                    oldData.setPyNt(newData.getPyNt());
                    oldData.setRlDpsnm(newData.getRlDpsnm());
                    oldData.setBefoChekRstcd(newData.getBefoChekRstcd());
                    oldData.setDlOrgAnscd(newData.getDlOrgAnscd());
                    oldData.setDpsrInqAnscd(newData.getDpsrInqAnscd());
                    oldData.setPyRsCrdt(newData.getPyRsCrdt());
                    oldData.setCmpRcgntDt(newData.getCmpRcgntDt());
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
                        if (strKey.equals("whpyRqdt"))
                            oldData.setWhpyRqdt(newData.getWhpyRqdt());
                        if (strKey.equals("ssno"))
                            oldData.setSsno(newData.getSsno());
                        if (strKey.equals("ssDtno"))
                            oldData.setSsDtno(newData.getSsDtno());
                        if (strKey.equals("crtRsno"))
                            oldData.setCrtRsno(newData.getCrtRsno());
                        if (strKey.equals("crtName"))
                            oldData.setCrtName(newData.getCrtName());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("ssdt"))
                            oldData.setSsdt(newData.getSsdt());
                        if (strKey.equals("rqorCd"))
                            oldData.setRqorCd(newData.getRqorCd());
                        if (strKey.equals("whpyRqDlStcd"))
                            oldData.setWhpyRqDlStcd(newData.getWhpyRqDlStcd());
                        if (strKey.equals("rqValdYn"))
                            oldData.setRqValdYn(newData.getRqValdYn());
                        if (strKey.equals("oldssNo"))
                            oldData.setOldssNo(newData.getOldssNo());
                        if (strKey.equals("frcRqYn"))
                            oldData.setFrcRqYn(newData.getFrcRqYn());
                        if (strKey.equals("pyDlStcd"))
                            oldData.setPyDlStcd(newData.getPyDlStcd());
                        if (strKey.equals("pyRcpMtdcd"))
                            oldData.setPyRcpMtdcd(newData.getPyRcpMtdcd());
                        if (strKey.equals("pyMtdcd"))
                            oldData.setPyMtdcd(newData.getPyMtdcd());
                        if (strKey.equals("pfbRcpsRelcd"))
                            oldData.setPfbRcpsRelcd(newData.getPfbRcpsRelcd());
                        if (strKey.equals("rqapsRsno"))
                            oldData.setRqapsRsno(newData.getRqapsRsno());
                        if (strKey.equals("rqapsNm"))
                            oldData.setRqapsNm(newData.getRqapsNm());
                        if (strKey.equals("dlgPyRscd"))
                            oldData.setDlgPyRscd(newData.getDlgPyRscd());
                        if (strKey.equals("pyBjnm"))
                            oldData.setPyBjnm(newData.getPyBjnm());
                        if (strKey.equals("pyBjRsBzmno"))
                            oldData.setPyBjRsBzmno(newData.getPyBjRsBzmno());
                        if (strKey.equals("actno"))
                            oldData.setActno(newData.getActno());
                        if (strKey.equals("bkcd"))
                            oldData.setBkcd(newData.getBkcd());
                        if (strKey.equals("dpsrRsBzmno"))
                            oldData.setDpsrRsBzmno(newData.getDpsrRsBzmno());
                        if (strKey.equals("dpsnm"))
                            oldData.setDpsnm(newData.getDpsnm());
                        if (strKey.equals("pyBjDpsrRelcd"))
                            oldData.setPyBjDpsrRelcd(newData.getPyBjDpsrRelcd());
                        if (strKey.equals("rcapmOrgcd"))
                            oldData.setRcapmOrgcd(newData.getRcapmOrgcd());
                        if (strKey.equals("cnvYn"))
                            oldData.setCnvYn(newData.getCnvYn());
                        if (strKey.equals("cnvpsNm"))
                            oldData.setCnvpsNm(newData.getCnvpsNm());
                        if (strKey.equals("rqamt"))
                            oldData.setRqamt(newData.getRqamt());
                        if (strKey.equals("uiamt"))
                            oldData.setUiamt(newData.getUiamt());
                        if (strKey.equals("sbPyamt"))
                            oldData.setSbPyamt(newData.getSbPyamt());
                        if (strKey.equals("rsvDlRstErcd"))
                            oldData.setRsvDlRstErcd(newData.getRsvDlRstErcd());
                        if (strKey.equals("claLnApYn"))
                            oldData.setClaLnApYn(newData.getClaLnApYn());
                        if (strKey.equals("lnFdUsecd"))
                            oldData.setLnFdUsecd(newData.getLnFdUsecd());
                        if (strKey.equals("clnrfBkcd"))
                            oldData.setClnrfBkcd(newData.getClnrfBkcd());
                        if (strKey.equals("clnrfActno"))
                            oldData.setClnrfActno(newData.getClnrfActno());
                        if (strKey.equals("clnrfDpsrRsBzmno"))
                            oldData.setClnrfDpsrRsBzmno(newData.getClnrfDpsrRsBzmno());
                        if (strKey.equals("clnrfDpsnm"))
                            oldData.setClnrfDpsnm(newData.getClnrfDpsnm());
                        if (strKey.equals("clnrfTfHpdyCd"))
                            oldData.setClnrfTfHpdyCd(newData.getClnrfTfHpdyCd());
                        if (strKey.equals("clnrfCrtRelcd"))
                            oldData.setClnrfCrtRelcd(newData.getClnrfCrtRelcd());
                        if (strKey.equals("pyCrTpcd"))
                            oldData.setPyCrTpcd(newData.getPyCrTpcd());
                        if (strKey.equals("pyRsCascd"))
                            oldData.setPyRsCascd(newData.getPyRsCascd());
                        if (strKey.equals("pyRsMdccd"))
                            oldData.setPyRsMdccd(newData.getPyRsMdccd());
                        if (strKey.equals("pyRsSmccd"))
                            oldData.setPyRsSmccd(newData.getPyRsSmccd());
                        if (strKey.equals("anTfactTpcd"))
                            oldData.setAnTfactTpcd(newData.getAnTfactTpcd());
                        if (strKey.equals("anTfactIsdyFlgcd"))
                            oldData.setAnTfactIsdyFlgcd(newData.getAnTfactIsdyFlgcd());
                        if (strKey.equals("evdDaFlgcd"))
                            oldData.setEvdDaFlgcd(newData.getEvdDaFlgcd());
                        if (strKey.equals("evdDaDscVl"))
                            oldData.setEvdDaDscVl(newData.getEvdDaDscVl());
                        if (strKey.equals("evdDaSavePtncd"))
                            oldData.setEvdDaSavePtncd(newData.getEvdDaSavePtncd());
                        if (strKey.equals("autoPyFlgcd"))
                            oldData.setAutoPyFlgcd(newData.getAutoPyFlgcd());
                        if (strKey.equals("pyNt"))
                            oldData.setPyNt(newData.getPyNt());
                        if (strKey.equals("rlDpsnm"))
                            oldData.setRlDpsnm(newData.getRlDpsnm());
                        if (strKey.equals("befoChekRstcd"))
                            oldData.setBefoChekRstcd(newData.getBefoChekRstcd());
                        if (strKey.equals("dlOrgAnscd"))
                            oldData.setDlOrgAnscd(newData.getDlOrgAnscd());
                        if (strKey.equals("dpsrInqAnscd"))
                            oldData.setDpsrInqAnscd(newData.getDpsrInqAnscd());
                        if (strKey.equals("pyRsCrdt"))
                            oldData.setPyRsCrdt(newData.getPyRsCrdt());
                        if (strKey.equals("cmpRcgntDt"))
                            oldData.setCmpRcgntDt(newData.getCmpRcgntDt());
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
