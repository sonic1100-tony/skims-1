/**
 * InsCvrIncmPrm Entity Controller 클래스
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
import com.skims.domain.entity.InsCvrIncmPrm;
import com.skims.domain.repository.InsCvrIncmPrmRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCvrIncmPrm 담보수입보험료 Controller")
@Slf4j
public class InsCvrIncmPrmController {

    @Autowired
    InsCvrIncmPrmRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "담보수입보험료 전체조회" , summary = "담보수입보험료 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscvrincmprms", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCvrIncmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscvrincmprms")
    public ResponseEntity<Page<InsCvrIncmPrm>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "담보수입보험료 Key조회" , description = "담보수입보험료 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCvrIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCvrIncmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCvrIncmPrm not found", content = @Content) })
    @GetMapping("/inscvrincmprms/{aid}")
    public ResponseEntity<InsCvrIncmPrm> getById(@PathVariable("aid") Long aid) {
        Optional<InsCvrIncmPrm> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "담보수입보험료 등록" , description = "담보수입보험료 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCvrIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCvrIncmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscvrincmprms")
    ResponseEntity<InsCvrIncmPrm> postData(@RequestBody InsCvrIncmPrm newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "담보수입보험료 수정" , description = "담보수입보험료 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCvrIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCvrIncmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCvrIncmPrm not found", content = @Content) })
    @PutMapping("/inscvrincmprms/{aid}")
    ResponseEntity<InsCvrIncmPrm> putData(@RequestBody InsCvrIncmPrm newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                    oldData.setCvrcd(newData.getCvrcd());
                    oldData.setCvrSeqno(newData.getCvrSeqno());
                    oldData.setCvrPymSeq(newData.getCvrPymSeq());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setCrCvrNdsno(newData.getCrCvrNdsno());
                    oldData.setCvrPymYymm(newData.getCvrPymYymm());
                    oldData.setBaPrm(newData.getBaPrm());
                    oldData.setApPrm(newData.getApPrm());
                    oldData.setRpPrm(newData.getRpPrm());
                    oldData.setNwfsqFlgcd(newData.getNwfsqFlgcd());
                    oldData.setCvrStStSeq(newData.getCvrStStSeq());
                    oldData.setCvrStNwfsqFlgcd(newData.getCvrStNwfsqFlgcd());
                    oldData.setPpyYn(newData.getPpyYn());
                    oldData.setPpyDcYn(newData.getPpyDcYn());
                    oldData.setPymDudt(newData.getPymDudt());
                    oldData.setValdStdt(newData.getValdStdt());
                    oldData.setValdClsdt(newData.getValdClsdt());
                    oldData.setTrtApCvrPrmsm(newData.getTrtApCvrPrmsm());
                    oldData.setPsNdstnShamt(newData.getPsNdstnShamt());
                    oldData.setXwpyPrmNt(newData.getXwpyPrmNt());
                    oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd());
                    oldData.setTrtApCvrcd(newData.getTrtApCvrcd());
                    oldData.setCvrSpquFlgcd(newData.getCvrSpquFlgcd());
                    oldData.setStdbdBaPrm(newData.getStdbdBaPrm());
                    oldData.setStdbdApPrm(newData.getStdbdApPrm());
                    oldData.setStdbdRpPrm(newData.getStdbdRpPrm());
                    oldData.setSustdBaPrm(newData.getSustdBaPrm());
                    oldData.setSustdApPrm(newData.getSustdApPrm());
                    oldData.setSustdRpPrm(newData.getSustdRpPrm());
                    oldData.setSbPrm(newData.getSbPrm());
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

    // @Operation(summary = "담보수입보험료 수정" , description = "담보수입보험료 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCvrIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCvrIncmPrm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCvrIncmPrm not found", content = @Content) })
	@PatchMapping("/inscvrincmprms/{aid}")
    ResponseEntity<InsCvrIncmPrm> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCvrIncmPrm newData = mapper.convertValue(newMap, InsCvrIncmPrm.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("incmPrmCrSeqno"))
                            oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno());
                        if (strKey.equals("cvrcd"))
                            oldData.setCvrcd(newData.getCvrcd());
                        if (strKey.equals("cvrSeqno"))
                            oldData.setCvrSeqno(newData.getCvrSeqno());
                        if (strKey.equals("cvrPymSeq"))
                            oldData.setCvrPymSeq(newData.getCvrPymSeq());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("crCvrNdsno"))
                            oldData.setCrCvrNdsno(newData.getCrCvrNdsno());
                        if (strKey.equals("cvrPymYymm"))
                            oldData.setCvrPymYymm(newData.getCvrPymYymm());
                        if (strKey.equals("baPrm"))
                            oldData.setBaPrm(newData.getBaPrm());
                        if (strKey.equals("apPrm"))
                            oldData.setApPrm(newData.getApPrm());
                        if (strKey.equals("rpPrm"))
                            oldData.setRpPrm(newData.getRpPrm());
                        if (strKey.equals("nwfsqFlgcd"))
                            oldData.setNwfsqFlgcd(newData.getNwfsqFlgcd());
                        if (strKey.equals("cvrStStSeq"))
                            oldData.setCvrStStSeq(newData.getCvrStStSeq());
                        if (strKey.equals("cvrStNwfsqFlgcd"))
                            oldData.setCvrStNwfsqFlgcd(newData.getCvrStNwfsqFlgcd());
                        if (strKey.equals("ppyYn"))
                            oldData.setPpyYn(newData.getPpyYn());
                        if (strKey.equals("ppyDcYn"))
                            oldData.setPpyDcYn(newData.getPpyDcYn());
                        if (strKey.equals("pymDudt"))
                            oldData.setPymDudt(newData.getPymDudt());
                        if (strKey.equals("valdStdt"))
                            oldData.setValdStdt(newData.getValdStdt());
                        if (strKey.equals("valdClsdt"))
                            oldData.setValdClsdt(newData.getValdClsdt());
                        if (strKey.equals("trtApCvrPrmsm"))
                            oldData.setTrtApCvrPrmsm(newData.getTrtApCvrPrmsm());
                        if (strKey.equals("psNdstnShamt"))
                            oldData.setPsNdstnShamt(newData.getPsNdstnShamt());
                        if (strKey.equals("xwpyPrmNt"))
                            oldData.setXwpyPrmNt(newData.getXwpyPrmNt());
                        if (strKey.equals("cvrBaTrtFlgcd"))
                            oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd());
                        if (strKey.equals("trtApCvrcd"))
                            oldData.setTrtApCvrcd(newData.getTrtApCvrcd());
                        if (strKey.equals("cvrSpquFlgcd"))
                            oldData.setCvrSpquFlgcd(newData.getCvrSpquFlgcd());
                        if (strKey.equals("stdbdBaPrm"))
                            oldData.setStdbdBaPrm(newData.getStdbdBaPrm());
                        if (strKey.equals("stdbdApPrm"))
                            oldData.setStdbdApPrm(newData.getStdbdApPrm());
                        if (strKey.equals("stdbdRpPrm"))
                            oldData.setStdbdRpPrm(newData.getStdbdRpPrm());
                        if (strKey.equals("sustdBaPrm"))
                            oldData.setSustdBaPrm(newData.getSustdBaPrm());
                        if (strKey.equals("sustdApPrm"))
                            oldData.setSustdApPrm(newData.getSustdApPrm());
                        if (strKey.equals("sustdRpPrm"))
                            oldData.setSustdRpPrm(newData.getSustdRpPrm());
                        if (strKey.equals("sbPrm"))
                            oldData.setSbPrm(newData.getSbPrm());
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
	
    // @Operation(summary = "담보수입보험료 삭제" , description = "담보수입보험료 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsCvrIncmPrm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCvrIncmPrm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscvrincmprms/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
