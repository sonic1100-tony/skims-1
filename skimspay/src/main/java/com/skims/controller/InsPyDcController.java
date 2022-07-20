/**
 * InsPyDc Entity Controller 클래스
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
import com.skims.domain.entity.InsPyDc;
import com.skims.domain.repository.InsPyDcRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPyDc 지급공제 Controller")
@Slf4j
public class InsPyDcController {

    @Autowired
    InsPyDcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "지급공제 전체조회" , summary = "지급공제 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the inspydcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPyDc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/inspydcs")
    public ResponseEntity<Page<InsPyDc>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "지급공제 Key조회" , description = "지급공제 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPyDc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPyDc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPyDc not found", content = @Content) })
    @GetMapping("/inspydcs/{aid}")
    public ResponseEntity<InsPyDc> getById(@PathVariable("aid") Long aid) {
        Optional<InsPyDc> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "지급공제 등록" , description = "지급공제 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPyDc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPyDc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/inspydcs")
    ResponseEntity<InsPyDc> postData(@RequestBody InsPyDc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "지급공제 수정" , description = "지급공제 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPyDc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPyDc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPyDc not found", content = @Content) })
    @PutMapping("/inspydcs/{aid}")
    ResponseEntity<InsPyDc> putData(@RequestBody InsPyDc newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPyDcNo(newData.getPyDcNo());
                    oldData.setPyDcNoSorcCd(newData.getPyDcNoSorcCd());
                    oldData.setDcItcd(newData.getDcItcd());
                    oldData.setDcItSeqno(newData.getDcItSeqno());
                    oldData.setUiamt(newData.getUiamt());
                    oldData.setNtCcStrdt(newData.getNtCcStrdt());
                    oldData.setNtCcNddt(newData.getNtCcNddt());
                    oldData.setPyDcCrFlgcd(newData.getPyDcCrFlgcd());
                    oldData.setFinaRnDlYn(newData.getFinaRnDlYn());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setNdsno(newData.getNdsno());
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

    // @Operation(summary = "지급공제 수정" , description = "지급공제 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPyDc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPyDc.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPyDc not found", content = @Content) })
	@PatchMapping("/inspydcs/{aid}")
    ResponseEntity<InsPyDc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPyDc newData = mapper.convertValue(newMap, InsPyDc.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("pyDcNo"))
                            oldData.setPyDcNo(newData.getPyDcNo());
                        if (strKey.equals("pyDcNoSorcCd"))
                            oldData.setPyDcNoSorcCd(newData.getPyDcNoSorcCd());
                        if (strKey.equals("dcItcd"))
                            oldData.setDcItcd(newData.getDcItcd());
                        if (strKey.equals("dcItSeqno"))
                            oldData.setDcItSeqno(newData.getDcItSeqno());
                        if (strKey.equals("uiamt"))
                            oldData.setUiamt(newData.getUiamt());
                        if (strKey.equals("ntCcStrdt"))
                            oldData.setNtCcStrdt(newData.getNtCcStrdt());
                        if (strKey.equals("ntCcNddt"))
                            oldData.setNtCcNddt(newData.getNtCcNddt());
                        if (strKey.equals("pyDcCrFlgcd"))
                            oldData.setPyDcCrFlgcd(newData.getPyDcCrFlgcd());
                        if (strKey.equals("finaRnDlYn"))
                            oldData.setFinaRnDlYn(newData.getFinaRnDlYn());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
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
	
    // @Operation(summary = "지급공제 삭제" , description = "지급공제 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPyDc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPyDc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/inspydcs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
