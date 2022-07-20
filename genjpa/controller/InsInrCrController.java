/**
 * InsInrCr Entity Controller 클래스
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
import com.skims.domain.entity.InsInrCr;
import com.skims.domain.repository.InsInrCrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsInrCr 통합계약 Controller")
@Slf4j
public class InsInrCrController {

    @Autowired
    InsInrCrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "통합계약 전체조회" , summary = "통합계약 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insinrcrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insinrcrs")
    public ResponseEntity<Page<InsInrCr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "통합계약 Key조회" , description = "통합계약 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInrCr not found", content = @Content) })
    @GetMapping("/insinrcrs/{aid}")
    public ResponseEntity<InsInrCr> getById(@PathVariable("aid") Long aid) {
        Optional<InsInrCr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "통합계약 등록" , description = "통합계약 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insinrcrs")
    ResponseEntity<InsInrCr> postData(@RequestBody InsInrCr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "통합계약 수정" , description = "통합계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInrCr not found", content = @Content) })
    @PutMapping("/insinrcrs/{aid}")
    ResponseEntity<InsInrCr> putData(@RequestBody InsInrCr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setStYymm(newData.getStYymm());
                    oldData.setInrCrDaFlgcd(newData.getInrCrDaFlgcd());
                    oldData.setInsSt(newData.getInsSt());
                    oldData.setInsClstr(newData.getInsClstr());
                    oldData.setCrtCtmno(newData.getCrtCtmno());
                    oldData.setCrStcd(newData.getCrStcd());
                    oldData.setCrDtStcd(newData.getCrDtStcd());
                    oldData.setStChdt(newData.getStChdt());
                    oldData.setHdqtOrgcd(newData.getHdqtOrgcd());
                    oldData.setAregpOrgcd(newData.getAregpOrgcd());
                    oldData.setDhOrgcd(newData.getDhOrgcd());
                    oldData.setDhStfcd(newData.getDhStfcd());
                    oldData.setUsrno(newData.getUsrno());
                    oldData.setInrNaamt(newData.getInrNaamt());
                    oldData.setInrCrDlYn(newData.getInrCrDlYn());
                    oldData.setInrCrNt(newData.getInrCrNt());
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

    // @Operation(summary = "통합계약 수정" , description = "통합계약 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsInrCr not found", content = @Content) })
	@PatchMapping("/insinrcrs/{aid}")
    ResponseEntity<InsInrCr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsInrCr newData = mapper.convertValue(newMap, InsInrCr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("stYymm"))
                            oldData.setStYymm(newData.getStYymm());
                        if (strKey.equals("inrCrDaFlgcd"))
                            oldData.setInrCrDaFlgcd(newData.getInrCrDaFlgcd());
                        if (strKey.equals("insSt"))
                            oldData.setInsSt(newData.getInsSt());
                        if (strKey.equals("insClstr"))
                            oldData.setInsClstr(newData.getInsClstr());
                        if (strKey.equals("crtCtmno"))
                            oldData.setCrtCtmno(newData.getCrtCtmno());
                        if (strKey.equals("crStcd"))
                            oldData.setCrStcd(newData.getCrStcd());
                        if (strKey.equals("crDtStcd"))
                            oldData.setCrDtStcd(newData.getCrDtStcd());
                        if (strKey.equals("stChdt"))
                            oldData.setStChdt(newData.getStChdt());
                        if (strKey.equals("hdqtOrgcd"))
                            oldData.setHdqtOrgcd(newData.getHdqtOrgcd());
                        if (strKey.equals("aregpOrgcd"))
                            oldData.setAregpOrgcd(newData.getAregpOrgcd());
                        if (strKey.equals("dhOrgcd"))
                            oldData.setDhOrgcd(newData.getDhOrgcd());
                        if (strKey.equals("dhStfcd"))
                            oldData.setDhStfcd(newData.getDhStfcd());
                        if (strKey.equals("usrno"))
                            oldData.setUsrno(newData.getUsrno());
                        if (strKey.equals("inrNaamt"))
                            oldData.setInrNaamt(newData.getInrNaamt());
                        if (strKey.equals("inrCrDlYn"))
                            oldData.setInrCrDlYn(newData.getInrCrDlYn());
                        if (strKey.equals("inrCrNt"))
                            oldData.setInrCrNt(newData.getInrCrNt());
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
	
    // @Operation(summary = "통합계약 삭제" , description = "통합계약 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsInrCr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsInrCr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insinrcrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
