/**
 * InsCrDhStfCrr Entity Controller 클래스
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
import com.skims.domain.entity.InsCrDhStfCrr;
import com.skims.domain.repository.InsCrDhStfCrrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCrDhStfCrr 계약취급직원이력 Controller")
@Slf4j
public class InsCrDhStfCrrController {

    @Autowired
    InsCrDhStfCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "계약취급직원이력 전체조회" , summary = "계약취급직원이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscrdhstfcrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscrdhstfcrrs")
    public ResponseEntity<Page<InsCrDhStfCrr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "계약취급직원이력 Key조회" , description = "계약취급직원이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrDhStfCrr not found", content = @Content) })
    @GetMapping("/inscrdhstfcrrs/{aid}")
    public ResponseEntity<InsCrDhStfCrr> getById(@PathVariable("aid") Long aid) {
        Optional<InsCrDhStfCrr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "계약취급직원이력 등록" , description = "계약취급직원이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscrdhstfcrrs")
    ResponseEntity<InsCrDhStfCrr> postData(@RequestBody InsCrDhStfCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "계약취급직원이력 수정" , description = "계약취급직원이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrDhStfCrr not found", content = @Content) })
    @PutMapping("/inscrdhstfcrrs/{aid}")
    ResponseEntity<InsCrDhStfCrr> putData(@RequestBody InsCrDhStfCrr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setDhStfTpcd(newData.getDhStfTpcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setValdNdsYn(newData.getValdNdsYn());
                    oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                    oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setTabfDhStfno(newData.getTabfDhStfno());
                    oldData.setUsrno(newData.getUsrno());
                    oldData.setPrsDhStfYn(newData.getPrsDhStfYn());
                    oldData.setQtrt(newData.getQtrt());
                    oldData.setTaCrno(newData.getTaCrno());
                    oldData.setPymSeq(newData.getPymSeq());
                    oldData.setBzcsQtrt(newData.getBzcsQtrt());
                    oldData.setCnrdt(newData.getCnrdt());
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

    // @Operation(summary = "계약취급직원이력 수정" , description = "계약취급직원이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrDhStfCrr not found", content = @Content) })
	@PatchMapping("/inscrdhstfcrrs/{aid}")
    ResponseEntity<InsCrDhStfCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCrDhStfCrr newData = mapper.convertValue(newMap, InsCrDhStfCrr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("dhStfTpcd"))
                            oldData.setDhStfTpcd(newData.getDhStfTpcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("apStrdt"))
                            oldData.setApStrdt(newData.getApStrdt());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("valdNdsYn"))
                            oldData.setValdNdsYn(newData.getValdNdsYn());
                        if (strKey.equals("ndsApStrDthms"))
                            oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                        if (strKey.equals("ndsApNdDthms"))
                            oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("tabfDhStfno"))
                            oldData.setTabfDhStfno(newData.getTabfDhStfno());
                        if (strKey.equals("usrno"))
                            oldData.setUsrno(newData.getUsrno());
                        if (strKey.equals("prsDhStfYn"))
                            oldData.setPrsDhStfYn(newData.getPrsDhStfYn());
                        if (strKey.equals("qtrt"))
                            oldData.setQtrt(newData.getQtrt());
                        if (strKey.equals("taCrno"))
                            oldData.setTaCrno(newData.getTaCrno());
                        if (strKey.equals("pymSeq"))
                            oldData.setPymSeq(newData.getPymSeq());
                        if (strKey.equals("bzcsQtrt"))
                            oldData.setBzcsQtrt(newData.getBzcsQtrt());
                        if (strKey.equals("cnrdt"))
                            oldData.setCnrdt(newData.getCnrdt());
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
	
    // @Operation(summary = "계약취급직원이력 삭제" , description = "계약취급직원이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsCrDhStfCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrDhStfCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscrdhstfcrrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
