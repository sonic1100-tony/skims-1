/**
 * InsCrRelpcRel Entity Controller 클래스
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
import com.skims.domain.entity.InsCrRelpcRel;
import com.skims.domain.repository.InsCrRelpcRelRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsCrRelpcRel 계약관계자관계 Controller")
@Slf4j
public class InsCrRelpcRelController {

    @Autowired
    InsCrRelpcRelRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "계약관계자관계 전체조회" , summary = "계약관계자관계 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inscrrelpcrels", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpcRel.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inscrrelpcrels")
    public ResponseEntity<Page<InsCrRelpcRel>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "계약관계자관계 Key조회" , description = "계약관계자관계 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsCrRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpcRel.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrRelpcRel not found", content = @Content) })
    @GetMapping("/inscrrelpcrels/{aid}")
    public ResponseEntity<InsCrRelpcRel> getById(@PathVariable("aid") Long aid) {
        Optional<InsCrRelpcRel> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "계약관계자관계 등록" , description = "계약관계자관계 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsCrRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpcRel.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inscrrelpcrels")
    ResponseEntity<InsCrRelpcRel> postData(@RequestBody InsCrRelpcRel newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "계약관계자관계 수정" , description = "계약관계자관계 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpcRel.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrRelpcRel not found", content = @Content) })
    @PutMapping("/inscrrelpcrels/{aid}")
    ResponseEntity<InsCrRelpcRel> putData(@RequestBody InsCrRelpcRel newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setStRelpcSeqno(newData.getStRelpcSeqno());
                    oldData.setCnftRelpcSeqno(newData.getCnftRelpcSeqno());
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setApStrdt(newData.getApStrdt());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setValdNdsYn(newData.getValdNdsYn());
                    oldData.setNdsApStrDthms(newData.getNdsApStrDthms());
                    oldData.setNdsApNdDthms(newData.getNdsApNdDthms());
                    oldData.setStRelpcTpcd(newData.getStRelpcTpcd());
                    oldData.setCnftRelpcTpcd(newData.getCnftRelpcTpcd());
                    oldData.setRelpcRelcd(newData.getRelpcRelcd());
                    oldData.setDeIbnfDvrt(newData.getDeIbnfDvrt());
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

    // @Operation(summary = "계약관계자관계 수정" , description = "계약관계자관계 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsCrRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpcRel.class)) }),
            @ApiResponse(responseCode = "404", description = "InsCrRelpcRel not found", content = @Content) })
	@PatchMapping("/inscrrelpcrels/{aid}")
    ResponseEntity<InsCrRelpcRel> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsCrRelpcRel newData = mapper.convertValue(newMap, InsCrRelpcRel.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("stRelpcSeqno"))
                            oldData.setStRelpcSeqno(newData.getStRelpcSeqno());
                        if (strKey.equals("cnftRelpcSeqno"))
                            oldData.setCnftRelpcSeqno(newData.getCnftRelpcSeqno());
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
                        if (strKey.equals("stRelpcTpcd"))
                            oldData.setStRelpcTpcd(newData.getStRelpcTpcd());
                        if (strKey.equals("cnftRelpcTpcd"))
                            oldData.setCnftRelpcTpcd(newData.getCnftRelpcTpcd());
                        if (strKey.equals("relpcRelcd"))
                            oldData.setRelpcRelcd(newData.getRelpcRelcd());
                        if (strKey.equals("deIbnfDvrt"))
                            oldData.setDeIbnfDvrt(newData.getDeIbnfDvrt());
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
	
    // @Operation(summary = "계약관계자관계 삭제" , description = "계약관계자관계 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsCrRelpcRel", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsCrRelpcRel.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inscrrelpcrels/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}