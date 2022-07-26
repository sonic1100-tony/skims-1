/**
 * InsCrNcMtt Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.InsCrNcMtt;
import com.skims.domain.entity.InsCrNcMttPK;
import com.skims.domain.repository.InsCrNcMttRepository;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Map;
import java.util.Optional;


@RestController
@Tag(name = "InsCrNcMtt 계약알릴사항 Controller")
@Slf4j
public class InsCrNcMttController {

    @Autowired
    InsCrNcMttRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "계약알릴사항 전체조회" , summary = "계약알릴사항 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscrncmtts", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrNcMtt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscrncmtts")
    public ResponseEntity<Page<InsCrNcMtt>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "계약알릴사항 Key조회" , description = "계약알릴사항 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCrNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrNcMtt.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrNcMtt not found", content = @Content) })
    @GetMapping("/inscrncmtts/{plyno}/{relpcSeqno}/{ncMttItno}/{ndsApStrDthms}")
    public ResponseEntity<InsCrNcMtt> getById(@PathVariable("plyno") String plyno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno, @PathVariable("ndsApStrDthms") Date ndsApStrDthms) {
        Optional<InsCrNcMtt> data = repository.findById(new InsCrNcMttPK(plyno, relpcSeqno, ncMttItno, ndsApStrDthms));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "계약알릴사항 등록" , description = "계약알릴사항 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCrNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrNcMtt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscrncmtts")
    ResponseEntity<InsCrNcMtt> postData(@RequestBody InsCrNcMtt newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "계약알릴사항 수정" , description = "계약알릴사항 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrNcMtt.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrNcMtt not found", content = @Content) })
    @PutMapping("/inscrncmtts/{plyno}/{relpcSeqno}/{ncMttItno}/{ndsApStrDthms}")
    ResponseEntity<InsCrNcMtt> putData(@RequestBody InsCrNcMtt newData, @PathVariable("plyno") String plyno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno, @PathVariable("ndsApStrDthms") Date ndsApStrDthms) {
        return repository.findById(new InsCrNcMttPK(plyno, relpcSeqno, ncMttItno, ndsApStrDthms)) //
                .map(oldData -> {
                    newData.setPlyno(oldData.getPlyno());
                    newData.setRelpcSeqno(oldData.getRelpcSeqno());
                    newData.setNcMttItno(oldData.getNcMttItno());
                    newData.setNdsApStrDthms(oldData.getNdsApStrDthms());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "계약알릴사항 수정" , description = "계약알릴사항 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrNcMtt.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrNcMtt not found", content = @Content) })
	@PatchMapping("/inscrncmtts/{plyno}/{relpcSeqno}/{ncMttItno}/{ndsApStrDthms}")
    ResponseEntity<InsCrNcMtt> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("plyno") String plyno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno, @PathVariable("ndsApStrDthms") Date ndsApStrDthms) {
        InsCrNcMtt newData = mapper.convertValue(newMap, InsCrNcMtt.class);
        return repository.findById(new InsCrNcMttPK(plyno, relpcSeqno, ncMttItno, ndsApStrDthms)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ndsApNdDthms" : oldData.setNdsApNdDthms(newData.getNdsApNdDthms()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
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
	
    // @Operation(summary = "계약알릴사항 삭제" , description = "계약알릴사항 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsCrNcMtt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrNcMtt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscrncmtts/{plyno}/{relpcSeqno}/{ncMttItno}/{ndsApStrDthms}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("plyno") String plyno, @PathVariable("relpcSeqno") BigDecimal relpcSeqno, @PathVariable("ncMttItno") String ncMttItno, @PathVariable("ndsApStrDthms") Date ndsApStrDthms) {
        try {
            repository.deleteById(new InsCrNcMttPK(plyno, relpcSeqno, ncMttItno, ndsApStrDthms));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
