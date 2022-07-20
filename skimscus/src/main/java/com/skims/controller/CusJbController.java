/**
 * CusJb Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.math.BigDecimal;

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
import com.skims.domain.entity.CusJb;
import com.skims.domain.entity.CusJbPK;
import com.skims.domain.repository.CusJbRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusJb 직업 Controller")
@Slf4j
public class CusJbController {

    @Autowired
    CusJbRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "직업 전체조회" , summary = "직업 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cusjbs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusJb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cusjbs")
    public ResponseEntity<Page<CusJb>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "직업 Key조회" , description = "직업 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusJb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusJb.class)) }),
            @ApiResponse(responseCode = "404", description = "CusJb not found", content = @Content) })
    @GetMapping("/cusjbs/{jbChSeqno}/{jbcd}")
    public ResponseEntity<CusJb> getById(@PathVariable("jbChSeqno") BigDecimal jbChSeqno, @PathVariable("jbcd") String jbcd) {
        Optional<CusJb> data = repository.findById(new CusJbPK(jbChSeqno, jbcd));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "직업 등록" , description = "직업 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusJb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusJb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cusjbs")
    ResponseEntity<CusJb> postData(@RequestBody CusJb newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "직업 수정" , description = "직업 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusJb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusJb.class)) }),
            @ApiResponse(responseCode = "404", description = "CusJb not found", content = @Content) })
    @PutMapping("/cusjbs/{jbChSeqno}/{jbcd}")
    ResponseEntity<CusJb> putData(@RequestBody CusJb newData, @PathVariable("jbChSeqno") BigDecimal jbChSeqno, @PathVariable("jbcd") String jbcd) {
        return repository.findById(new CusJbPK(jbChSeqno, jbcd)) //
                .map(oldData -> {
                    oldData.setJbnm(newData.getJbnm());
                    oldData.setDtJbnm(newData.getDtJbnm());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setPprJbChSeqno(newData.getPprJbChSeqno());
                    oldData.setPprJbcd(newData.getPprJbcd());
                    oldData.setInjrRnkcd(newData.getInjrRnkcd());
                    oldData.setInjrGrdcd(newData.getInjrGrdcd());
                    oldData.setTrfRnkcd(newData.getTrfRnkcd());
                    oldData.setXcCvrYn(newData.getXcCvrYn());
                    oldData.setCrJbcd(newData.getCrJbcd());
                    oldData.setLtrmXclcJbFlgcd(newData.getLtrmXclcJbFlgcd());
                    oldData.setJbXpnm(newData.getJbXpnm());
                    oldData.setJbDtTpnm(newData.getJbDtTpnm());
                    oldData.setApldoOutBjyn(newData.getApldoOutBjyn());
                    oldData.setJbXpnmOutCn(newData.getJbXpnmOutCn());
                    oldData.setUdXcptJbYn(newData.getUdXcptJbYn());
                    oldData.setInjrRkGrdcd(newData.getInjrRkGrdcd());
                    oldData.setDsasRkGrdcd(newData.getDsasRkGrdcd());
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

    // @Operation(summary = "직업 수정" , description = "직업 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusJb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusJb.class)) }),
            @ApiResponse(responseCode = "404", description = "CusJb not found", content = @Content) })
	@PatchMapping("/cusjbs/{jbChSeqno}/{jbcd}")
    ResponseEntity<CusJb> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("jbChSeqno") BigDecimal jbChSeqno, @PathVariable("jbcd") String jbcd) {
        CusJb newData = mapper.convertValue(newMap, CusJb.class);
        return repository.findById(new CusJbPK(jbChSeqno, jbcd)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("jbnm"))
                            oldData.setJbnm(newData.getJbnm());
                        if (strKey.equals("dtJbnm"))
                            oldData.setDtJbnm(newData.getDtJbnm());
                        if (strKey.equals("apStrdt"))
                            oldData.setApStrdt(newData.getApStrdt());
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("pprJbChSeqno"))
                            oldData.setPprJbChSeqno(newData.getPprJbChSeqno());
                        if (strKey.equals("pprJbcd"))
                            oldData.setPprJbcd(newData.getPprJbcd());
                        if (strKey.equals("injrRnkcd"))
                            oldData.setInjrRnkcd(newData.getInjrRnkcd());
                        if (strKey.equals("injrGrdcd"))
                            oldData.setInjrGrdcd(newData.getInjrGrdcd());
                        if (strKey.equals("trfRnkcd"))
                            oldData.setTrfRnkcd(newData.getTrfRnkcd());
                        if (strKey.equals("xcCvrYn"))
                            oldData.setXcCvrYn(newData.getXcCvrYn());
                        if (strKey.equals("crJbcd"))
                            oldData.setCrJbcd(newData.getCrJbcd());
                        if (strKey.equals("ltrmXclcJbFlgcd"))
                            oldData.setLtrmXclcJbFlgcd(newData.getLtrmXclcJbFlgcd());
                        if (strKey.equals("jbXpnm"))
                            oldData.setJbXpnm(newData.getJbXpnm());
                        if (strKey.equals("jbDtTpnm"))
                            oldData.setJbDtTpnm(newData.getJbDtTpnm());
                        if (strKey.equals("apldoOutBjyn"))
                            oldData.setApldoOutBjyn(newData.getApldoOutBjyn());
                        if (strKey.equals("jbXpnmOutCn"))
                            oldData.setJbXpnmOutCn(newData.getJbXpnmOutCn());
                        if (strKey.equals("udXcptJbYn"))
                            oldData.setUdXcptJbYn(newData.getUdXcptJbYn());
                        if (strKey.equals("injrRkGrdcd"))
                            oldData.setInjrRkGrdcd(newData.getInjrRkGrdcd());
                        if (strKey.equals("dsasRkGrdcd"))
                            oldData.setDsasRkGrdcd(newData.getDsasRkGrdcd());
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
	
    // @Operation(summary = "직업 삭제" , description = "직업 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusJb", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusJb.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cusjbs/{jbChSeqno}/{jbcd}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("jbChSeqno") BigDecimal jbChSeqno, @PathVariable("jbcd") String jbcd) {
        try {
            repository.deleteById(new CusJbPK(jbChSeqno, jbcd));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
