/**
 * InsTfErcd Entity Controller 클래스
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
import com.skims.domain.entity.InsTfErcd;
import com.skims.domain.entity.InsTfErcdPK;
import com.skims.domain.repository.InsTfErcdRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsTfErcd 이체오류코드 Controller")
@Slf4j
public class InsTfErcdController {

    @Autowired
    InsTfErcdRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "이체오류코드 전체조회" , summary = "이체오류코드 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the instfercds", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfErcd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/instfercds")
    public ResponseEntity<Page<InsTfErcd>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "이체오류코드 Key조회" , description = "이체오류코드 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsTfErcd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfErcd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsTfErcd not found", content = @Content) })
    @GetMapping("/instfercds/{tfDlMetcd}/{wdcmpOrVnccd}/{tfRqDmFlgcd}/{tfRqErcd}")
    public ResponseEntity<InsTfErcd> getById(@PathVariable("tfDlMetcd") String tfDlMetcd, @PathVariable("wdcmpOrVnccd") String wdcmpOrVnccd, @PathVariable("tfRqDmFlgcd") String tfRqDmFlgcd, @PathVariable("tfRqErcd") String tfRqErcd) {
        Optional<InsTfErcd> data = repository.findById(new InsTfErcdPK(tfDlMetcd, wdcmpOrVnccd, tfRqDmFlgcd, tfRqErcd));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "이체오류코드 등록" , description = "이체오류코드 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsTfErcd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfErcd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/instfercds")
    ResponseEntity<InsTfErcd> postData(@RequestBody InsTfErcd newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "이체오류코드 수정" , description = "이체오류코드 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsTfErcd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfErcd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsTfErcd not found", content = @Content) })
    @PutMapping("/instfercds/{tfDlMetcd}/{wdcmpOrVnccd}/{tfRqDmFlgcd}/{tfRqErcd}")
    ResponseEntity<InsTfErcd> putData(@RequestBody InsTfErcd newData, @PathVariable("tfDlMetcd") String tfDlMetcd, @PathVariable("wdcmpOrVnccd") String wdcmpOrVnccd, @PathVariable("tfRqDmFlgcd") String tfRqDmFlgcd, @PathVariable("tfRqErcd") String tfRqErcd) {
        return repository.findById(new InsTfErcdPK(tfDlMetcd, wdcmpOrVnccd, tfRqDmFlgcd, tfRqErcd)) //
                .map(oldData -> {
                    oldData.setErCn(newData.getErCn());
                    oldData.setActErDlbjYn(newData.getActErDlbjYn());
                    oldData.setErDtCn(newData.getErDtCn());
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

    // @Operation(summary = "이체오류코드 수정" , description = "이체오류코드 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsTfErcd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfErcd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsTfErcd not found", content = @Content) })
	@PatchMapping("/instfercds/{tfDlMetcd}/{wdcmpOrVnccd}/{tfRqDmFlgcd}/{tfRqErcd}")
    ResponseEntity<InsTfErcd> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("tfDlMetcd") String tfDlMetcd, @PathVariable("wdcmpOrVnccd") String wdcmpOrVnccd, @PathVariable("tfRqDmFlgcd") String tfRqDmFlgcd, @PathVariable("tfRqErcd") String tfRqErcd) {
        InsTfErcd newData = mapper.convertValue(newMap, InsTfErcd.class);
        return repository.findById(new InsTfErcdPK(tfDlMetcd, wdcmpOrVnccd, tfRqDmFlgcd, tfRqErcd)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("erCn"))
                            oldData.setErCn(newData.getErCn());
                        if (strKey.equals("actErDlbjYn"))
                            oldData.setActErDlbjYn(newData.getActErDlbjYn());
                        if (strKey.equals("erDtCn"))
                            oldData.setErDtCn(newData.getErDtCn());
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
	
    // @Operation(summary = "이체오류코드 삭제" , description = "이체오류코드 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsTfErcd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsTfErcd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/instfercds/{tfDlMetcd}/{wdcmpOrVnccd}/{tfRqDmFlgcd}/{tfRqErcd}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("tfDlMetcd") String tfDlMetcd, @PathVariable("wdcmpOrVnccd") String wdcmpOrVnccd, @PathVariable("tfRqDmFlgcd") String tfRqDmFlgcd, @PathVariable("tfRqErcd") String tfRqErcd) {
        try {
            repository.deleteById(new InsTfErcdPK(tfDlMetcd, wdcmpOrVnccd, tfRqDmFlgcd, tfRqErcd));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
