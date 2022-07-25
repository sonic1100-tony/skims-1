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
                    newData.setStdt(oldData.getStdt());
                    newData.setTfWrkFlgcd(oldData.getTfWrkFlgcd());
                    newData.setSeqno(oldData.getSeqno());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "tf1Yymm" : oldData.setTf1Yymm(newData.getTf1Yymm()); break;
						    case "tf1Daycd" : oldData.setTf1Daycd(newData.getTf1Daycd()); break;
						    case "tf2Yymm" : oldData.setTf2Yymm(newData.getTf2Yymm()); break;
						    case "tf2Daycd" : oldData.setTf2Daycd(newData.getTf2Daycd()); break;
						    case "tfDlMetcd" : oldData.setTfDlMetcd(newData.getTfDlMetcd()); break;
						    case "autoTfCgKndcd" : oldData.setAutoTfCgKndcd(newData.getAutoTfCgKndcd()); break;
						    case "dhCmpcd" : oldData.setDhCmpcd(newData.getDhCmpcd()); break;
						    case "tfWrkRkcd" : oldData.setTfWrkRkcd(newData.getTfWrkRkcd()); break;
						    case "wrkExecRstTpcd" : oldData.setWrkExecRstTpcd(newData.getWrkExecRstTpcd()); break;
						    case "wrkExecRstCt" : oldData.setWrkExecRstCt(newData.getWrkExecRstCt()); break;
						    case "wrkExecRstAmt" : oldData.setWrkExecRstAmt(newData.getWrkExecRstAmt()); break;
						    case "cnfMtdcd" : oldData.setCnfMtdcd(newData.getCnfMtdcd()); break;
						    case "cnfYn" : oldData.setCnfYn(newData.getCnfYn()); break;
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
