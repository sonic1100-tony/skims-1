/**
 * InsAutoTfSchd Entity Controller 클래스
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
import com.skims.domain.entity.InsAutoTfSchd;
import com.skims.domain.repository.InsAutoTfSchdRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsAutoTfSchd 자동이체일정 Controller")
@Slf4j
public class InsAutoTfSchdController {

    @Autowired
    InsAutoTfSchdRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "자동이체일정 전체조회" , summary = "자동이체일정 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insautotfschds", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSchd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insautotfschds")
    public ResponseEntity<Page<InsAutoTfSchd>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "자동이체일정 Key조회" , description = "자동이체일정 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsAutoTfSchd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSchd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfSchd not found", content = @Content) })
    @GetMapping("/insautotfschds/{aid}")
    public ResponseEntity<InsAutoTfSchd> getById(@PathVariable("aid") Long aid) {
        Optional<InsAutoTfSchd> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "자동이체일정 등록" , description = "자동이체일정 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsAutoTfSchd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSchd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insautotfschds")
    ResponseEntity<InsAutoTfSchd> postData(@RequestBody InsAutoTfSchd newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "자동이체일정 수정" , description = "자동이체일정 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTfSchd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSchd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfSchd not found", content = @Content) })
    @PutMapping("/insautotfschds/{aid}")
    ResponseEntity<InsAutoTfSchd> putData(@RequestBody InsAutoTfSchd newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "자동이체일정 수정" , description = "자동이체일정 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsAutoTfSchd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSchd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsAutoTfSchd not found", content = @Content) })
	@PatchMapping("/insautotfschds/{aid}")
    ResponseEntity<InsAutoTfSchd> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsAutoTfSchd newData = mapper.convertValue(newMap, InsAutoTfSchd.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "tfYymm" : oldData.setTfYymm(newData.getTfYymm()); break;
						    case "tfDaycd" : oldData.setTfDaycd(newData.getTfDaycd()); break;
						    case "tfTpcd" : oldData.setTfTpcd(newData.getTfTpcd()); break;
						    case "dmWrkdt" : oldData.setDmWrkdt(newData.getDmWrkdt()); break;
						    case "tfdt" : oldData.setTfdt(newData.getTfdt()); break;
						    case "dpWrkdt" : oldData.setDpWrkdt(newData.getDpWrkdt()); break;
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
	
    // @Operation(summary = "자동이체일정 삭제" , description = "자동이체일정 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsAutoTfSchd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsAutoTfSchd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insautotfschds/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
