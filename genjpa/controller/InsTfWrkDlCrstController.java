/**
 * InsTfWrkDlCrst Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.math.BigDecimal;
import java.sql.Date;

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
import com.skims.domain.entity.InsTfWrkDlCrst;
import com.skims.domain.entity.InsTfWrkDlCrstPK;
import com.skims.domain.repository.InsTfWrkDlCrstRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsTfWrkDlCrst 이체작업처리현황 Controller")
@Slf4j
public class InsTfWrkDlCrstController {

    @Autowired
    InsTfWrkDlCrstRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "이체작업처리현황 전체조회" , summary = "이체작업처리현황 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the instfwrkdlcrsts", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfWrkDlCrst.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/instfwrkdlcrsts")
    public ResponseEntity<Page<InsTfWrkDlCrst>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "이체작업처리현황 Key조회" , description = "이체작업처리현황 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsTfWrkDlCrst", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfWrkDlCrst.class)) }),
            @ApiResponse(responseCode = "404", description = "InsTfWrkDlCrst not found", content = @Content) })
    @GetMapping("/instfwrkdlcrsts/{stdt}/{tfWrkFlgcd}/{seqno}")
    public ResponseEntity<InsTfWrkDlCrst> getById(@PathVariable("stdt") Date stdt, @PathVariable("tfWrkFlgcd") String tfWrkFlgcd, @PathVariable("seqno") BigDecimal seqno) {
        Optional<InsTfWrkDlCrst> data = repository.findById(new InsTfWrkDlCrstPK(stdt, tfWrkFlgcd, seqno));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "이체작업처리현황 등록" , description = "이체작업처리현황 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsTfWrkDlCrst", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfWrkDlCrst.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/instfwrkdlcrsts")
    ResponseEntity<InsTfWrkDlCrst> postData(@RequestBody InsTfWrkDlCrst newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "이체작업처리현황 수정" , description = "이체작업처리현황 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsTfWrkDlCrst", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfWrkDlCrst.class)) }),
            @ApiResponse(responseCode = "404", description = "InsTfWrkDlCrst not found", content = @Content) })
    @PutMapping("/instfwrkdlcrsts/{stdt}/{tfWrkFlgcd}/{seqno}")
    ResponseEntity<InsTfWrkDlCrst> putData(@RequestBody InsTfWrkDlCrst newData, @PathVariable("stdt") Date stdt, @PathVariable("tfWrkFlgcd") String tfWrkFlgcd, @PathVariable("seqno") BigDecimal seqno) {
        return repository.findById(new InsTfWrkDlCrstPK(stdt, tfWrkFlgcd, seqno)) //
                .map(oldData -> {
                    oldData.setTf1Yymm(newData.getTf1Yymm());
                    oldData.setTf1Daycd(newData.getTf1Daycd());
                    oldData.setTf2Yymm(newData.getTf2Yymm());
                    oldData.setTf2Daycd(newData.getTf2Daycd());
                    oldData.setTfDlMetcd(newData.getTfDlMetcd());
                    oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                    oldData.setDhCmpcd(newData.getDhCmpcd());
                    oldData.setTfWrkRkcd(newData.getTfWrkRkcd());
                    oldData.setWrkExecRstTpcd(newData.getWrkExecRstTpcd());
                    oldData.setWrkExecRstCt(newData.getWrkExecRstCt());
                    oldData.setWrkExecRstAmt(newData.getWrkExecRstAmt());
                    oldData.setCnfMtdcd(newData.getCnfMtdcd());
                    oldData.setCnfYn(newData.getCnfYn());
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

    // @Operation(summary = "이체작업처리현황 수정" , description = "이체작업처리현황 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsTfWrkDlCrst", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfWrkDlCrst.class)) }),
            @ApiResponse(responseCode = "404", description = "InsTfWrkDlCrst not found", content = @Content) })
	@PatchMapping("/instfwrkdlcrsts/{stdt}/{tfWrkFlgcd}/{seqno}")
    ResponseEntity<InsTfWrkDlCrst> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("stdt") Date stdt, @PathVariable("tfWrkFlgcd") String tfWrkFlgcd, @PathVariable("seqno") BigDecimal seqno) {
        InsTfWrkDlCrst newData = mapper.convertValue(newMap, InsTfWrkDlCrst.class);
        return repository.findById(new InsTfWrkDlCrstPK(stdt, tfWrkFlgcd, seqno)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("tf1Yymm"))
                            oldData.setTf1Yymm(newData.getTf1Yymm());
                        if (strKey.equals("tf1Daycd"))
                            oldData.setTf1Daycd(newData.getTf1Daycd());
                        if (strKey.equals("tf2Yymm"))
                            oldData.setTf2Yymm(newData.getTf2Yymm());
                        if (strKey.equals("tf2Daycd"))
                            oldData.setTf2Daycd(newData.getTf2Daycd());
                        if (strKey.equals("tfDlMetcd"))
                            oldData.setTfDlMetcd(newData.getTfDlMetcd());
                        if (strKey.equals("autoTfCgKndcd"))
                            oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd());
                        if (strKey.equals("dhCmpcd"))
                            oldData.setDhCmpcd(newData.getDhCmpcd());
                        if (strKey.equals("tfWrkRkcd"))
                            oldData.setTfWrkRkcd(newData.getTfWrkRkcd());
                        if (strKey.equals("wrkExecRstTpcd"))
                            oldData.setWrkExecRstTpcd(newData.getWrkExecRstTpcd());
                        if (strKey.equals("wrkExecRstCt"))
                            oldData.setWrkExecRstCt(newData.getWrkExecRstCt());
                        if (strKey.equals("wrkExecRstAmt"))
                            oldData.setWrkExecRstAmt(newData.getWrkExecRstAmt());
                        if (strKey.equals("cnfMtdcd"))
                            oldData.setCnfMtdcd(newData.getCnfMtdcd());
                        if (strKey.equals("cnfYn"))
                            oldData.setCnfYn(newData.getCnfYn());
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
	
    // @Operation(summary = "이체작업처리현황 삭제" , description = "이체작업처리현황 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsTfWrkDlCrst", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfWrkDlCrst.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/instfwrkdlcrsts/{stdt}/{tfWrkFlgcd}/{seqno}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("stdt") Date stdt, @PathVariable("tfWrkFlgcd") String tfWrkFlgcd, @PathVariable("seqno") BigDecimal seqno) {
        try {
            repository.deleteById(new InsTfWrkDlCrstPK(stdt, tfWrkFlgcd, seqno));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
