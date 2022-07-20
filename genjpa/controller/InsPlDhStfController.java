/**
 * InsPlDhStf Entity Controller 클래스
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
import com.skims.domain.entity.InsPlDhStf;
import com.skims.domain.repository.InsPlDhStfRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlDhStf 설계취급직원 Controller")
@Slf4j
public class InsPlDhStfController {

    @Autowired
    InsPlDhStfRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계취급직원 전체조회" , summary = "설계취급직원 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inspldhstfs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inspldhstfs")
    public ResponseEntity<Page<InsPlDhStf>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계취급직원 Key조회" , description = "설계취급직원 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlDhStf not found", content = @Content) })
    @GetMapping("/inspldhstfs/{aid}")
    public ResponseEntity<InsPlDhStf> getById(@PathVariable("aid") Long aid) {
        Optional<InsPlDhStf> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계취급직원 등록" , description = "설계취급직원 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inspldhstfs")
    ResponseEntity<InsPlDhStf> postData(@RequestBody InsPlDhStf newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계취급직원 수정" , description = "설계취급직원 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlDhStf not found", content = @Content) })
    @PutMapping("/inspldhstfs/{aid}")
    ResponseEntity<InsPlDhStf> putData(@RequestBody InsPlDhStf newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlno(newData.getPlno());
                    oldData.setCgafChSeqno(newData.getCgafChSeqno());
                    oldData.setDhStfTpcd(newData.getDhStfTpcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setUsrno(newData.getUsrno());
                    oldData.setPrsDhStfYn(newData.getPrsDhStfYn());
                    oldData.setQtrt(newData.getQtrt());
                    oldData.setBzcsQtrt(newData.getBzcsQtrt());
                    oldData.setCnrdt(newData.getCnrdt());
                    oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
                    oldData.setDmgrtRkStfYn(newData.getDmgrtRkStfYn());
                    oldData.setNwcrChekListDcuno(newData.getNwcrChekListDcuno());
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

    // @Operation(summary = "설계취급직원 수정" , description = "설계취급직원 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlDhStf not found", content = @Content) })
	@PatchMapping("/inspldhstfs/{aid}")
    ResponseEntity<InsPlDhStf> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPlDhStf newData = mapper.convertValue(newMap, InsPlDhStf.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("cgafChSeqno"))
                            oldData.setCgafChSeqno(newData.getCgafChSeqno());
                        if (strKey.equals("dhStfTpcd"))
                            oldData.setDhStfTpcd(newData.getDhStfTpcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("usrno"))
                            oldData.setUsrno(newData.getUsrno());
                        if (strKey.equals("prsDhStfYn"))
                            oldData.setPrsDhStfYn(newData.getPrsDhStfYn());
                        if (strKey.equals("qtrt"))
                            oldData.setQtrt(newData.getQtrt());
                        if (strKey.equals("bzcsQtrt"))
                            oldData.setBzcsQtrt(newData.getBzcsQtrt());
                        if (strKey.equals("cnrdt"))
                            oldData.setCnrdt(newData.getCnrdt());
                        if (strKey.equals("ltrmNdsDlFlgcd"))
                            oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
                        if (strKey.equals("dmgrtRkStfYn"))
                            oldData.setDmgrtRkStfYn(newData.getDmgrtRkStfYn());
                        if (strKey.equals("nwcrChekListDcuno"))
                            oldData.setNwcrChekListDcuno(newData.getNwcrChekListDcuno());
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
	
    // @Operation(summary = "설계취급직원 삭제" , description = "설계취급직원 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlDhStf", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlDhStf.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inspldhstfs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
