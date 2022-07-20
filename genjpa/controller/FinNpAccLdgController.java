/**
 * FinNpAccLdg Entity Controller 클래스
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
import com.skims.domain.entity.FinNpAccLdg;
import com.skims.domain.repository.FinNpAccLdgRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinNpAccLdg 미지급계정원장 Controller")
@Slf4j
public class FinNpAccLdgController {

    @Autowired
    FinNpAccLdgRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "미지급계정원장 전체조회" , summary = "미지급계정원장 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finnpaccldgs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finnpaccldgs")
    public ResponseEntity<Page<FinNpAccLdg>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "미지급계정원장 Key조회" , description = "미지급계정원장 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "404", description = "FinNpAccLdg not found", content = @Content) })
    @GetMapping("/finnpaccldgs/{aid}")
    public ResponseEntity<FinNpAccLdg> getById(@PathVariable("aid") Long aid) {
        Optional<FinNpAccLdg> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "미지급계정원장 등록" , description = "미지급계정원장 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finnpaccldgs")
    ResponseEntity<FinNpAccLdg> postData(@RequestBody FinNpAccLdg newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "미지급계정원장 수정" , description = "미지급계정원장 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "404", description = "FinNpAccLdg not found", content = @Content) })
    @PutMapping("/finnpaccldgs/{aid}")
    ResponseEntity<FinNpAccLdg> putData(@RequestBody FinNpAccLdg newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setNpAccLdgno(newData.getNpAccLdgno());
                    oldData.setCrdt(newData.getCrdt());
                    oldData.setNtaccCd(newData.getNtaccCd());
                    oldData.setCrSyscd(newData.getCrSyscd());
                    oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                    oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                    oldData.setActOrgcd(newData.getActOrgcd());
                    oldData.setDhOrgcd(newData.getDhOrgcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd());
                    oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd());
                    oldData.setMncd(newData.getMncd());
                    oldData.setCrWoamt(newData.getCrWoamt());
                    oldData.setCrFcamt(newData.getCrFcamt());
                    oldData.setApXcrt(newData.getApXcrt());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setInvlnGdcd(newData.getInvlnGdcd());
                    oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd());
                    oldData.setBsnsCnnno(newData.getBsnsCnnno());
                    oldData.setRvdt(newData.getRvdt());
                    oldData.setRvOrgcd(newData.getRvOrgcd());
                    oldData.setRvXcno(newData.getRvXcno());
                    oldData.setPyCrno(newData.getPyCrno());
                    oldData.setPyBjno(newData.getPyBjno());
                    oldData.setRmStcd(newData.getRmStcd());
                    oldData.setFnlRmdt(newData.getFnlRmdt());
                    oldData.setNotsMtt(newData.getNotsMtt());
                    oldData.setNoteMtt(newData.getNoteMtt());
                    oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                    oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                    oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
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

    // @Operation(summary = "미지급계정원장 수정" , description = "미지급계정원장 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "404", description = "FinNpAccLdg not found", content = @Content) })
	@PatchMapping("/finnpaccldgs/{aid}")
    ResponseEntity<FinNpAccLdg> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        FinNpAccLdg newData = mapper.convertValue(newMap, FinNpAccLdg.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("npAccLdgno"))
                            oldData.setNpAccLdgno(newData.getNpAccLdgno());
                        if (strKey.equals("crdt"))
                            oldData.setCrdt(newData.getCrdt());
                        if (strKey.equals("ntaccCd"))
                            oldData.setNtaccCd(newData.getNtaccCd());
                        if (strKey.equals("crSyscd"))
                            oldData.setCrSyscd(newData.getCrSyscd());
                        if (strKey.equals("dlTpO1Csfcd"))
                            oldData.setDlTpO1Csfcd(newData.getDlTpO1Csfcd());
                        if (strKey.equals("dlTpO2Csfcd"))
                            oldData.setDlTpO2Csfcd(newData.getDlTpO2Csfcd());
                        if (strKey.equals("actOrgcd"))
                            oldData.setActOrgcd(newData.getActOrgcd());
                        if (strKey.equals("dhOrgcd"))
                            oldData.setDhOrgcd(newData.getDhOrgcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("pyDlO1Flgcd"))
                            oldData.setPyDlO1Flgcd(newData.getPyDlO1Flgcd());
                        if (strKey.equals("pyDlO2Flgcd"))
                            oldData.setPyDlO2Flgcd(newData.getPyDlO2Flgcd());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("crWoamt"))
                            oldData.setCrWoamt(newData.getCrWoamt());
                        if (strKey.equals("crFcamt"))
                            oldData.setCrFcamt(newData.getCrFcamt());
                        if (strKey.equals("apXcrt"))
                            oldData.setApXcrt(newData.getApXcrt());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("invlnGdcd"))
                            oldData.setInvlnGdcd(newData.getInvlnGdcd());
                        if (strKey.equals("bsnsCnnnoFlgcd"))
                            oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd());
                        if (strKey.equals("bsnsCnnno"))
                            oldData.setBsnsCnnno(newData.getBsnsCnnno());
                        if (strKey.equals("rvdt"))
                            oldData.setRvdt(newData.getRvdt());
                        if (strKey.equals("rvOrgcd"))
                            oldData.setRvOrgcd(newData.getRvOrgcd());
                        if (strKey.equals("rvXcno"))
                            oldData.setRvXcno(newData.getRvXcno());
                        if (strKey.equals("pyCrno"))
                            oldData.setPyCrno(newData.getPyCrno());
                        if (strKey.equals("pyBjno"))
                            oldData.setPyBjno(newData.getPyBjno());
                        if (strKey.equals("rmStcd"))
                            oldData.setRmStcd(newData.getRmStcd());
                        if (strKey.equals("fnlRmdt"))
                            oldData.setFnlRmdt(newData.getFnlRmdt());
                        if (strKey.equals("notsMtt"))
                            oldData.setNotsMtt(newData.getNotsMtt());
                        if (strKey.equals("noteMtt"))
                            oldData.setNoteMtt(newData.getNoteMtt());
                        if (strKey.equals("finaDatVrfFlg1Vl"))
                            oldData.setFinaDatVrfFlg1Vl(newData.getFinaDatVrfFlg1Vl());
                        if (strKey.equals("finaDatVrfFlg2Vl"))
                            oldData.setFinaDatVrfFlg2Vl(newData.getFinaDatVrfFlg2Vl());
                        if (strKey.equals("finaDatVrfFlg3Vl"))
                            oldData.setFinaDatVrfFlg3Vl(newData.getFinaDatVrfFlg3Vl());
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
	
    // @Operation(summary = "미지급계정원장 삭제" , description = "미지급계정원장 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinNpAccLdg", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinNpAccLdg.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finnpaccldgs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
