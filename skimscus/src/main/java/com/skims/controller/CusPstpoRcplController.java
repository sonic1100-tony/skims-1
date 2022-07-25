/**
 * CusPstpoRcpl Entity Controller 클래스
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
import com.skims.domain.entity.CusPstpoRcpl;
import com.skims.domain.repository.CusPstpoRcplRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusPstpoRcpl 우편물수령처 Controller")
@Slf4j
public class CusPstpoRcplController {

    @Autowired
    CusPstpoRcplRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "우편물수령처 전체조회" , summary = "우편물수령처 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cuspstporcpls", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstpoRcpl.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cuspstporcpls")
    public ResponseEntity<Page<CusPstpoRcpl>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "우편물수령처 Key조회" , description = "우편물수령처 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusPstpoRcpl", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstpoRcpl.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstpoRcpl not found", content = @Content) })
    @GetMapping("/cuspstporcpls/{aid}")
    public ResponseEntity<CusPstpoRcpl> getById(@PathVariable("aid") Long aid) {
        Optional<CusPstpoRcpl> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "우편물수령처 등록" , description = "우편물수령처 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusPstpoRcpl", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstpoRcpl.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cuspstporcpls")
    ResponseEntity<CusPstpoRcpl> postData(@RequestBody CusPstpoRcpl newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "우편물수령처 수정" , description = "우편물수령처 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusPstpoRcpl", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstpoRcpl.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstpoRcpl not found", content = @Content) })
    @PutMapping("/cuspstporcpls/{aid}")
    ResponseEntity<CusPstpoRcpl> putData(@RequestBody CusPstpoRcpl newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "우편물수령처 수정" , description = "우편물수령처 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusPstpoRcpl", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstpoRcpl.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstpoRcpl not found", content = @Content) })
	@PatchMapping("/cuspstporcpls/{aid}")
    ResponseEntity<CusPstpoRcpl> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        CusPstpoRcpl newData = mapper.convertValue(newMap, CusPstpoRcpl.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ctmno" : oldData.setCtmno(newData.getCtmno()); break;
						    case "apNdDthms" : oldData.setApNdDthms(newData.getApNdDthms()); break;
						    case "apStrDthms" : oldData.setApStrDthms(newData.getApStrDthms()); break;
						    case "pstpoRcplFlgcd" : oldData.setPstpoRcplFlgcd(newData.getPstpoRcplFlgcd()); break;
						    case "chDlno" : oldData.setChDlno(newData.getChDlno()); break;
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
	
    // @Operation(summary = "우편물수령처 삭제" , description = "우편물수령처 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusPstpoRcpl", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstpoRcpl.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cuspstporcpls/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
