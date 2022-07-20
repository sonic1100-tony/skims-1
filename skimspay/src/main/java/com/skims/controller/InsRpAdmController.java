/**
 * InsRpAdm Entity Controller 클래스
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
import com.skims.domain.entity.InsRpAdm;
import com.skims.domain.repository.InsRpAdmRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsRpAdm 영수관리 Controller")
@Slf4j
public class InsRpAdmController {

    @Autowired
    InsRpAdmRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "영수관리 전체조회" , summary = "영수관리 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insrpadms", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insrpadms")
    public ResponseEntity<Page<InsRpAdm>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "영수관리 Key조회" , description = "영수관리 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsRpAdm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsRpAdm not found", content = @Content) })
    @GetMapping("/insrpadms/{aid}")
    public ResponseEntity<InsRpAdm> getById(@PathVariable("aid") Long aid) {
        Optional<InsRpAdm> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "영수관리 등록" , description = "영수관리 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsRpAdm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insrpadms")
    ResponseEntity<InsRpAdm> postData(@RequestBody InsRpAdm newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "영수관리 수정" , description = "영수관리 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsRpAdm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsRpAdm not found", content = @Content) })
    @PutMapping("/insrpadms/{aid}")
    ResponseEntity<InsRpAdm> putData(@RequestBody InsRpAdm newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setRpAdmno(newData.getRpAdmno());
                    oldData.setMntFlgcd(newData.getMntFlgcd());
                    oldData.setRpDthms(newData.getRpDthms());
                    oldData.setRtxCsfcd(newData.getRtxCsfcd());
                    oldData.setRpamt(newData.getRpamt());
                    oldData.setRvXcno(newData.getRvXcno());
                    oldData.setRvdt(newData.getRvdt());
                    oldData.setRvYn(newData.getRvYn());
                    oldData.setActSbrcd(newData.getActSbrcd());
                    oldData.setCrdCmpcd(newData.getCrdCmpcd());
                    oldData.setRpPthFlgcd(newData.getRpPthFlgcd());
                    oldData.setPlno(newData.getPlno());
                    oldData.setCgafChSeqno(newData.getCgafChSeqno());
                    oldData.setClsafRcpno(newData.getClsafRcpno());
                    oldData.setClsafRcpSeqno(newData.getClsafRcpSeqno());
                    oldData.setCtmSlrAutoTfsno(newData.getCtmSlrAutoTfsno());
                    oldData.setLtrmCrTotno(newData.getLtrmCrTotno());
                    oldData.setBllLdgno(newData.getBllLdgno());
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

    // @Operation(summary = "영수관리 수정" , description = "영수관리 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsRpAdm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "404", description = "InsRpAdm not found", content = @Content) })
	@PatchMapping("/insrpadms/{aid}")
    ResponseEntity<InsRpAdm> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsRpAdm newData = mapper.convertValue(newMap, InsRpAdm.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("rpAdmno"))
                            oldData.setRpAdmno(newData.getRpAdmno());
                        if (strKey.equals("mntFlgcd"))
                            oldData.setMntFlgcd(newData.getMntFlgcd());
                        if (strKey.equals("rpDthms"))
                            oldData.setRpDthms(newData.getRpDthms());
                        if (strKey.equals("rtxCsfcd"))
                            oldData.setRtxCsfcd(newData.getRtxCsfcd());
                        if (strKey.equals("rpamt"))
                            oldData.setRpamt(newData.getRpamt());
                        if (strKey.equals("rvXcno"))
                            oldData.setRvXcno(newData.getRvXcno());
                        if (strKey.equals("rvdt"))
                            oldData.setRvdt(newData.getRvdt());
                        if (strKey.equals("rvYn"))
                            oldData.setRvYn(newData.getRvYn());
                        if (strKey.equals("actSbrcd"))
                            oldData.setActSbrcd(newData.getActSbrcd());
                        if (strKey.equals("crdCmpcd"))
                            oldData.setCrdCmpcd(newData.getCrdCmpcd());
                        if (strKey.equals("rpPthFlgcd"))
                            oldData.setRpPthFlgcd(newData.getRpPthFlgcd());
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("cgafChSeqno"))
                            oldData.setCgafChSeqno(newData.getCgafChSeqno());
                        if (strKey.equals("clsafRcpno"))
                            oldData.setClsafRcpno(newData.getClsafRcpno());
                        if (strKey.equals("clsafRcpSeqno"))
                            oldData.setClsafRcpSeqno(newData.getClsafRcpSeqno());
                        if (strKey.equals("ctmSlrAutoTfsno"))
                            oldData.setCtmSlrAutoTfsno(newData.getCtmSlrAutoTfsno());
                        if (strKey.equals("ltrmCrTotno"))
                            oldData.setLtrmCrTotno(newData.getLtrmCrTotno());
                        if (strKey.equals("bllLdgno"))
                            oldData.setBllLdgno(newData.getBllLdgno());
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
	
    // @Operation(summary = "영수관리 삭제" , description = "영수관리 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsRpAdm", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsRpAdm.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insrpadms/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
