/**
 * IgdLtrmPrm Entity Controller 클래스
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
import com.skims.domain.entity.IgdLtrmPrm;
import com.skims.domain.repository.IgdLtrmPrmRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdLtrmPrm 장기보험료 Controller")
@Slf4j
public class IgdLtrmPrmController {

    @Autowired
    IgdLtrmPrmRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "장기보험료 전체조회" , summary = "장기보험료 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdltrmprms", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdltrmprms")
    public ResponseEntity<Page<IgdLtrmPrm>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "장기보험료 Key조회" , description = "장기보험료 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdLtrmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmPrm not found", content = @Content) })
    @GetMapping("/igdltrmprms/{aid}")
    public ResponseEntity<IgdLtrmPrm> getById(@PathVariable("aid") Long aid) {
        Optional<IgdLtrmPrm> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "장기보험료 등록" , description = "장기보험료 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdLtrmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdltrmprms")
    ResponseEntity<IgdLtrmPrm> postData(@RequestBody IgdLtrmPrm newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "장기보험료 수정" , description = "장기보험료 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmPrm not found", content = @Content) })
    @PutMapping("/igdltrmprms/{aid}")
    ResponseEntity<IgdLtrmPrm> putData(@RequestBody IgdLtrmPrm newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setGdcd(newData.getGdcd());
                    oldData.setCvrcd(newData.getCvrcd());
                    oldData.setRtKeyAssmbCd(newData.getRtKeyAssmbCd());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setNdFlgcd(newData.getNdFlgcd());
                    oldData.setInsTrm(newData.getInsTrm());
                    oldData.setNwRnwFlgcd(newData.getNwRnwFlgcd());
                    oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd());
                    oldData.setPymTrm(newData.getPymTrm());
                    oldData.setSexcd(newData.getSexcd());
                    oldData.setInjrRnkcd(newData.getInjrRnkcd());
                    oldData.setDrveTycd(newData.getDrveTycd());
                    oldData.setSustdYn(newData.getSustdYn());
                    oldData.setCmpLmcd(newData.getCmpLmcd());
                    oldData.setIsAge(newData.getIsAge());
                    oldData.setRtFlgVl1(newData.getRtFlgVl1());
                    oldData.setRtFlgVl2(newData.getRtFlgVl2());
                    oldData.setRtFlgVl3(newData.getRtFlgVl3());
                    oldData.setRtFlgVl4(newData.getRtFlgVl4());
                    oldData.setRtFlgVl5(newData.getRtFlgVl5());
                    oldData.setRtFlgVl6(newData.getRtFlgVl6());
                    oldData.setRtFlgVl7(newData.getRtFlgVl7());
                    oldData.setRtFlgVl8(newData.getRtFlgVl8());
                    oldData.setRtFlgVl9(newData.getRtFlgVl9());
                    oldData.setRtFlgVl10(newData.getRtFlgVl10());
                    oldData.setPymCyccd(newData.getPymCyccd());
                    oldData.setStIsamt(newData.getStIsamt());
                    oldData.setBzPrm(newData.getBzPrm());
                    oldData.setMdfUsrId(newData.getMdfUsrId());
                    oldData.setInpDthms(newData.getInpDthms());
                    oldData.setMdfDthms(newData.getMdfDthms());
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "장기보험료 수정" , description = "장기보험료 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmPrm not found", content = @Content) })
	@PatchMapping("/igdltrmprms/{aid}")
    ResponseEntity<IgdLtrmPrm> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        IgdLtrmPrm newData = mapper.convertValue(newMap, IgdLtrmPrm.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("gdcd"))
                            oldData.setGdcd(newData.getGdcd());
                        if (strKey.equals("cvrcd"))
                            oldData.setCvrcd(newData.getCvrcd());
                        if (strKey.equals("rtKeyAssmbCd"))
                            oldData.setRtKeyAssmbCd(newData.getRtKeyAssmbCd());
                        if (strKey.equals("apStrdt"))
                            oldData.setApStrdt(newData.getApStrdt());
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("ndFlgcd"))
                            oldData.setNdFlgcd(newData.getNdFlgcd());
                        if (strKey.equals("insTrm"))
                            oldData.setInsTrm(newData.getInsTrm());
                        if (strKey.equals("nwRnwFlgcd"))
                            oldData.setNwRnwFlgcd(newData.getNwRnwFlgcd());
                        if (strKey.equals("pymTrmFlgcd"))
                            oldData.setPymTrmFlgcd(newData.getPymTrmFlgcd());
                        if (strKey.equals("pymTrm"))
                            oldData.setPymTrm(newData.getPymTrm());
                        if (strKey.equals("sexcd"))
                            oldData.setSexcd(newData.getSexcd());
                        if (strKey.equals("injrRnkcd"))
                            oldData.setInjrRnkcd(newData.getInjrRnkcd());
                        if (strKey.equals("drveTycd"))
                            oldData.setDrveTycd(newData.getDrveTycd());
                        if (strKey.equals("sustdYn"))
                            oldData.setSustdYn(newData.getSustdYn());
                        if (strKey.equals("cmpLmcd"))
                            oldData.setCmpLmcd(newData.getCmpLmcd());
                        if (strKey.equals("isAge"))
                            oldData.setIsAge(newData.getIsAge());
                        if (strKey.equals("rtFlgVl1"))
                            oldData.setRtFlgVl1(newData.getRtFlgVl1());
                        if (strKey.equals("rtFlgVl2"))
                            oldData.setRtFlgVl2(newData.getRtFlgVl2());
                        if (strKey.equals("rtFlgVl3"))
                            oldData.setRtFlgVl3(newData.getRtFlgVl3());
                        if (strKey.equals("rtFlgVl4"))
                            oldData.setRtFlgVl4(newData.getRtFlgVl4());
                        if (strKey.equals("rtFlgVl5"))
                            oldData.setRtFlgVl5(newData.getRtFlgVl5());
                        if (strKey.equals("rtFlgVl6"))
                            oldData.setRtFlgVl6(newData.getRtFlgVl6());
                        if (strKey.equals("rtFlgVl7"))
                            oldData.setRtFlgVl7(newData.getRtFlgVl7());
                        if (strKey.equals("rtFlgVl8"))
                            oldData.setRtFlgVl8(newData.getRtFlgVl8());
                        if (strKey.equals("rtFlgVl9"))
                            oldData.setRtFlgVl9(newData.getRtFlgVl9());
                        if (strKey.equals("rtFlgVl10"))
                            oldData.setRtFlgVl10(newData.getRtFlgVl10());
                        if (strKey.equals("pymCyccd"))
                            oldData.setPymCyccd(newData.getPymCyccd());
                        if (strKey.equals("stIsamt"))
                            oldData.setStIsamt(newData.getStIsamt());
                        if (strKey.equals("bzPrm"))
                            oldData.setBzPrm(newData.getBzPrm());
                        if (strKey.equals("mdfUsrId"))
                            oldData.setMdfUsrId(newData.getMdfUsrId());
                        if (strKey.equals("inpDthms"))
                            oldData.setInpDthms(newData.getInpDthms());
                        if (strKey.equals("mdfDthms"))
                            oldData.setMdfDthms(newData.getMdfDthms());
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "장기보험료 삭제" , description = "장기보험료 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the IgdLtrmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdltrmprms/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
