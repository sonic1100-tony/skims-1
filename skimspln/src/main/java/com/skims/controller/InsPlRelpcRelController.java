/**
 * InsPlRelpcRel Entity Controller 클래스
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
import com.skims.domain.entity.InsPlRelpcRel;
import com.skims.domain.entity.InsPlRelpcRelPK;
import com.skims.domain.repository.InsPlRelpcRelRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlRelpcRel 설계관계자관계 Controller")
@Slf4j
public class InsPlRelpcRelController {

    @Autowired
    InsPlRelpcRelRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계관계자관계 전체조회" , summary = "설계관계자관계 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insplrelpcrels", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcRel.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insplrelpcrels")
    public ResponseEntity<Page<InsPlRelpcRel>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계관계자관계 Key조회" , description = "설계관계자관계 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcRel.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlRelpcRel not found", content = @Content) })
    @GetMapping("/insplrelpcrels/{plno}/{cgafChSeqno}/{stRelpcSeqno}/{cnftRelpcSeqno}")
    public ResponseEntity<InsPlRelpcRel> getById(@PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("stRelpcSeqno") BigDecimal stRelpcSeqno, @PathVariable("cnftRelpcSeqno") BigDecimal cnftRelpcSeqno) {
        Optional<InsPlRelpcRel> data = repository.findById(new InsPlRelpcRelPK(plno, cgafChSeqno, stRelpcSeqno, cnftRelpcSeqno));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계관계자관계 등록" , description = "설계관계자관계 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcRel.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insplrelpcrels")
    ResponseEntity<InsPlRelpcRel> postData(@RequestBody InsPlRelpcRel newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계관계자관계 수정" , description = "설계관계자관계 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcRel.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlRelpcRel not found", content = @Content) })
    @PutMapping("/insplrelpcrels/{plno}/{cgafChSeqno}/{stRelpcSeqno}/{cnftRelpcSeqno}")
    ResponseEntity<InsPlRelpcRel> putData(@RequestBody InsPlRelpcRel newData, @PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("stRelpcSeqno") BigDecimal stRelpcSeqno, @PathVariable("cnftRelpcSeqno") BigDecimal cnftRelpcSeqno) {
        return repository.findById(new InsPlRelpcRelPK(plno, cgafChSeqno, stRelpcSeqno, cnftRelpcSeqno)) //
                .map(oldData -> {
                    newData.setPlno(oldData.getPlno());
                    newData.setCgafChSeqno(oldData.getCgafChSeqno());
                    newData.setStRelpcSeqno(oldData.getStRelpcSeqno());
                    newData.setCnftRelpcSeqno(oldData.getCnftRelpcSeqno());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "설계관계자관계 수정" , description = "설계관계자관계 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcRel.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlRelpcRel not found", content = @Content) })
	@PatchMapping("/insplrelpcrels/{plno}/{cgafChSeqno}/{stRelpcSeqno}/{cnftRelpcSeqno}")
    ResponseEntity<InsPlRelpcRel> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("stRelpcSeqno") BigDecimal stRelpcSeqno, @PathVariable("cnftRelpcSeqno") BigDecimal cnftRelpcSeqno) {
        InsPlRelpcRel newData = mapper.convertValue(newMap, InsPlRelpcRel.class);
        return repository.findById(new InsPlRelpcRelPK(plno, cgafChSeqno, stRelpcSeqno, cnftRelpcSeqno)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "stRelpcTpcd" : oldData.setStRelpcTpcd(newData.getStRelpcTpcd()); break;
						    case "cnftRelpcTpcd" : oldData.setCnftRelpcTpcd(newData.getCnftRelpcTpcd()); break;
						    case "relpcRelcd" : oldData.setRelpcRelcd(newData.getRelpcRelcd()); break;
						    case "deIbnfDvrt" : oldData.setDeIbnfDvrt(newData.getDeIbnfDvrt()); break;
						    case "ltrmNdsDlFlgcd" : oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd()); break;
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
	
    // @Operation(summary = "설계관계자관계 삭제" , description = "설계관계자관계 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcRel.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insplrelpcrels/{plno}/{cgafChSeqno}/{stRelpcSeqno}/{cnftRelpcSeqno}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("stRelpcSeqno") BigDecimal stRelpcSeqno, @PathVariable("cnftRelpcSeqno") BigDecimal cnftRelpcSeqno) {
        try {
            repository.deleteById(new InsPlRelpcRelPK(plno, cgafChSeqno, stRelpcSeqno, cnftRelpcSeqno));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
