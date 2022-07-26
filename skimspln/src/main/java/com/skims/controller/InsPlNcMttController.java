/**
 * InsPlNcMtt Entity Controller 클래스
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
import com.skims.domain.entity.InsPlNcMtt;
import com.skims.domain.entity.InsPlNcMttPK;
import com.skims.domain.repository.InsPlNcMttRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlNcMtt 설계알릴사항 Controller")
@Slf4j
public class InsPlNcMttController {

    @Autowired
    InsPlNcMttRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계알릴사항 전체조회" , summary = "설계알릴사항 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insplncmtts", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNcMtt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insplncmtts")
    public ResponseEntity<Page<InsPlNcMtt>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계알릴사항 Key조회" , description = "설계알릴사항 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNcMtt.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlNcMtt not found", content = @Content) })
    @GetMapping("/insplncmtts/{plno}/{cgafChSeqno}/{relpcSeqno}/{ncMttItno}")
    public ResponseEntity<InsPlNcMtt> getById(@PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno) {
        Optional<InsPlNcMtt> data = repository.findById(new InsPlNcMttPK(plno, cgafChSeqno, relpcSeqno, ncMttItno));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계알릴사항 등록" , description = "설계알릴사항 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNcMtt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insplncmtts")
    ResponseEntity<InsPlNcMtt> postData(@RequestBody InsPlNcMtt newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계알릴사항 수정" , description = "설계알릴사항 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNcMtt.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlNcMtt not found", content = @Content) })
    @PutMapping("/insplncmtts/{plno}/{cgafChSeqno}/{relpcSeqno}/{ncMttItno}")
    ResponseEntity<InsPlNcMtt> putData(@RequestBody InsPlNcMtt newData, @PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno) {
        return repository.findById(new InsPlNcMttPK(plno, cgafChSeqno, relpcSeqno, ncMttItno)) //
                .map(oldData -> {
                    newData.setPlno(oldData.getPlno());
                    newData.setCgafChSeqno(oldData.getCgafChSeqno());
                    newData.setRelpcSeqno(oldData.getRelpcSeqno());
                    newData.setNcMttItno(oldData.getNcMttItno());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "설계알릴사항 수정" , description = "설계알릴사항 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNcMtt.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlNcMtt not found", content = @Content) })
	@PatchMapping("/insplncmtts/{plno}/{cgafChSeqno}/{relpcSeqno}/{ncMttItno}")
    ResponseEntity<InsPlNcMtt> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno) {
        InsPlNcMtt newData = mapper.convertValue(newMap, InsPlNcMtt.class);
        return repository.findById(new InsPlNcMttPK(plno, cgafChSeqno, relpcSeqno, ncMttItno)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "qustSeqno" : oldData.setQustSeqno(newData.getQustSeqno()); break;
						    case "qustSbdSeqno" : oldData.setQustSbdSeqno(newData.getQustSbdSeqno()); break;
						    case "rplCn" : oldData.setRplCn(newData.getRplCn()); break;
						    case "etDtRpl" : oldData.setEtDtRpl(newData.getEtDtRpl()); break;
						    case "mdfUsrId" : oldData.setMdfUsrId(newData.getMdfUsrId()); break;
						    case "inpDthms" : oldData.setInpDthms(newData.getInpDthms()); break;
						    case "mdfDthms" : oldData.setMdfDthms(newData.getMdfDthms()); break;
						}
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "설계알릴사항 삭제" , description = "설계알릴사항 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlNcMtt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insplncmtts/{plno}/{cgafChSeqno}/{relpcSeqno}/{ncMttItno}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("plno") String plno, @PathVariable("cgafChSeqno") BigDecimal cgafChSeqno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno) {
        try {
            repository.deleteById(new InsPlNcMttPK(plno, cgafChSeqno, relpcSeqno, ncMttItno));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
