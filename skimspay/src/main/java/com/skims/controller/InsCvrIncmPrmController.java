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
    public ResponseEntity<Page<InsCvrIncmPrm>> getAll(Pageable pageable) {
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
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "incmPrmCrSeqno" : oldData.setIncmPrmCrSeqno(newData.getIncmPrmCrSeqno()); break;
						    case "cvrcd" : oldData.setCvrcd(newData.getCvrcd()); break;
						    case "cvrSeqno" : oldData.setCvrSeqno(newData.getCvrSeqno()); break;
						    case "cvrPymSeq" : oldData.setCvrPymSeq(newData.getCvrPymSeq()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "crCvrNdsno" : oldData.setCrCvrNdsno(newData.getCrCvrNdsno()); break;
						    case "cvrPymYymm" : oldData.setCvrPymYymm(newData.getCvrPymYymm()); break;
						    case "baPrm" : oldData.setBaPrm(newData.getBaPrm()); break;
						    case "apPrm" : oldData.setApPrm(newData.getApPrm()); break;
						    case "rpPrm" : oldData.setRpPrm(newData.getRpPrm()); break;
						    case "nwfsqFlgcd" : oldData.setNwfsqFlgcd(newData.getNwfsqFlgcd()); break;
						    case "cvrStStSeq" : oldData.setCvrStStSeq(newData.getCvrStStSeq()); break;
						    case "cvrStNwfsqFlgcd" : oldData.setCvrStNwfsqFlgcd(newData.getCvrStNwfsqFlgcd()); break;
						    case "ppyYn" : oldData.setPpyYn(newData.getPpyYn()); break;
						    case "ppyDcYn" : oldData.setPpyDcYn(newData.getPpyDcYn()); break;
						    case "pymDudt" : oldData.setPymDudt(newData.getPymDudt()); break;
						    case "valdStdt" : oldData.setValdStdt(newData.getValdStdt()); break;
						    case "valdClsdt" : oldData.setValdClsdt(newData.getValdClsdt()); break;
						    case "trtApCvrPrmsm" : oldData.setTrtApCvrPrmsm(newData.getTrtApCvrPrmsm()); break;
						    case "psNdstnShamt" : oldData.setPsNdstnShamt(newData.getPsNdstnShamt()); break;
						    case "xwpyPrmNt" : oldData.setXwpyPrmNt(newData.getXwpyPrmNt()); break;
						    case "cvrBaTrtFlgcd" : oldData.setCvrBaTrtFlgcd(newData.getCvrBaTrtFlgcd()); break;
						    case "trtApCvrcd" : oldData.setTrtApCvrcd(newData.getTrtApCvrcd()); break;
						    case "cvrSpquFlgcd" : oldData.setCvrSpquFlgcd(newData.getCvrSpquFlgcd()); break;
						    case "stdbdBaPrm" : oldData.setStdbdBaPrm(newData.getStdbdBaPrm()); break;
						    case "stdbdApPrm" : oldData.setStdbdApPrm(newData.getStdbdApPrm()); break;
						    case "stdbdRpPrm" : oldData.setStdbdRpPrm(newData.getStdbdRpPrm()); break;
						    case "sustdBaPrm" : oldData.setSustdBaPrm(newData.getSustdBaPrm()); break;
						    case "sustdApPrm" : oldData.setSustdApPrm(newData.getSustdApPrm()); break;
						    case "sustdRpPrm" : oldData.setSustdRpPrm(newData.getSustdRpPrm()); break;
						    case "sbPrm" : oldData.setSbPrm(newData.getSbPrm()); break;
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
	
    // @Operation(summary = "담보수입보험료 삭제" , description = "담보수입보험료 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the InsCvrIncmPrm", content = {
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
