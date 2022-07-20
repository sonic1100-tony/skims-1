/**
 * IgdCvr Entity Controller 클래스
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
import com.skims.domain.entity.IgdCvr;
import com.skims.domain.repository.IgdCvrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdCvr 담보 Controller")
@Slf4j
public class IgdCvrController {

    @Autowired
    IgdCvrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "담보 전체조회" , summary = "담보 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdcvrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdcvrs")
    public ResponseEntity<Page<IgdCvr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "담보 Key조회" , description = "담보 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdCvr not found", content = @Content) })
    @GetMapping("/igdcvrs/{cvrcd}")
    public ResponseEntity<IgdCvr> getById(@PathVariable("cvrcd") String cvrcd) {
        Optional<IgdCvr> data = repository.findById(cvrcd);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "담보 등록" , description = "담보 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdcvrs")
    ResponseEntity<IgdCvr> postData(@RequestBody IgdCvr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "담보 수정" , description = "담보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdCvr not found", content = @Content) })
    @PutMapping("/igdcvrs/{cvrcd}")
    ResponseEntity<IgdCvr> putData(@RequestBody IgdCvr newData, @PathVariable("cvrcd") String cvrcd) {
        return repository.findById(cvrcd) //
                .map(oldData -> {
                    oldData.setCvrPrsnm(newData.getCvrPrsnm());
                    oldData.setCvrKornm(newData.getCvrKornm());
                    oldData.setCvrHnglShtnm(newData.getCvrHnglShtnm());
                    oldData.setCvrEnnm(newData.getCvrEnnm());
                    oldData.setCvrEngShtnm(newData.getCvrEngShtnm());
                    oldData.setIndpdTrtCvrYn(newData.getIndpdTrtCvrYn());
                    oldData.setCvrPerdt(newData.getCvrPerdt());
                    oldData.setCvrXpnm(newData.getCvrXpnm());
                    oldData.setFrGdcd(newData.getFrGdcd());
                    oldData.setValdStrdt(newData.getValdStrdt());
                    oldData.setValdNddt(newData.getValdNddt());
                    oldData.setPrstLclcd(newData.getPrstLclcd());
                    oldData.setPrstMdccd(newData.getPrstMdccd());
                    oldData.setPrstSmccd(newData.getPrstSmccd());
                    oldData.setRlpmiFxamtFlgcd(newData.getRlpmiFxamtFlgcd());
                    oldData.setGnCncd(newData.getGnCncd());
                    oldData.setCvrSpcd(newData.getCvrSpcd());
                    oldData.setCpytFlgcd(newData.getCpytFlgcd());
                    oldData.setUiamtStncd(newData.getUiamtStncd());
                    oldData.setCmpTrmcd(newData.getCmpTrmcd());
                    oldData.setWardDiamtFlgcd(newData.getWardDiamtFlgcd());
                    oldData.setNppHlprmNapcFlgcd(newData.getNppHlprmNapcFlgcd());
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

    // @Operation(summary = "담보 수정" , description = "담보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdCvr.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdCvr not found", content = @Content) })
	@PatchMapping("/igdcvrs/{cvrcd}")
    ResponseEntity<IgdCvr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("cvrcd") String cvrcd) {
        IgdCvr newData = mapper.convertValue(newMap, IgdCvr.class);
        return repository.findById(cvrcd) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
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
                        if (strKey.equals("indpdTrtCvrYn"))
                            oldData.setIndpdTrtCvrYn(newData.getIndpdTrtCvrYn());
                        if (strKey.equals("cvrPerdt"))
                            oldData.setCvrPerdt(newData.getCvrPerdt());
                        if (strKey.equals("cvrXpnm"))
                            oldData.setCvrXpnm(newData.getCvrXpnm());
                        if (strKey.equals("frGdcd"))
                            oldData.setFrGdcd(newData.getFrGdcd());
                        if (strKey.equals("valdStrdt"))
                            oldData.setValdStrdt(newData.getValdStrdt());
                        if (strKey.equals("valdNddt"))
                            oldData.setValdNddt(newData.getValdNddt());
                        if (strKey.equals("prstLclcd"))
                            oldData.setPrstLclcd(newData.getPrstLclcd());
                        if (strKey.equals("prstMdccd"))
                            oldData.setPrstMdccd(newData.getPrstMdccd());
                        if (strKey.equals("prstSmccd"))
                            oldData.setPrstSmccd(newData.getPrstSmccd());
                        if (strKey.equals("rlpmiFxamtFlgcd"))
                            oldData.setRlpmiFxamtFlgcd(newData.getRlpmiFxamtFlgcd());
                        if (strKey.equals("gnCncd"))
                            oldData.setGnCncd(newData.getGnCncd());
                        if (strKey.equals("cvrSpcd"))
                            oldData.setCvrSpcd(newData.getCvrSpcd());
                        if (strKey.equals("cpytFlgcd"))
                            oldData.setCpytFlgcd(newData.getCpytFlgcd());
                        if (strKey.equals("uiamtStncd"))
                            oldData.setUiamtStncd(newData.getUiamtStncd());
                        if (strKey.equals("cmpTrmcd"))
                            oldData.setCmpTrmcd(newData.getCmpTrmcd());
                        if (strKey.equals("wardDiamtFlgcd"))
                            oldData.setWardDiamtFlgcd(newData.getWardDiamtFlgcd());
                        if (strKey.equals("nppHlprmNapcFlgcd"))
                            oldData.setNppHlprmNapcFlgcd(newData.getNppHlprmNapcFlgcd());
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
	
    // @Operation(summary = "담보 삭제" , description = "담보 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the IgdCvr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdCvr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdcvrs/{cvrcd}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("cvrcd") String cvrcd) {
        try {
            repository.deleteById(cvrcd);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
