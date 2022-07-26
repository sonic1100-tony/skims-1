/**
 * FinSlpSpc Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.sql.Date;

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
import com.skims.domain.entity.FinSlpSpc;
import com.skims.domain.entity.FinSlpSpcPK;
import com.skims.domain.repository.FinSlpSpcRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "FinSlpSpc 전표내역 Controller")
@Slf4j
public class FinSlpSpcController {

    @Autowired
    FinSlpSpcRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "전표내역 전체조회" , summary = "전표내역 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the finslpspcs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlpSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/finslpspcs")
    public ResponseEntity<Page<FinSlpSpc>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "전표내역 Key조회" , description = "전표내역 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the FinSlpSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlpSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "FinSlpSpc not found", content = @Content) })
    @GetMapping("/finslpspcs/{aid}/{slpdt}")
    public ResponseEntity<FinSlpSpc> getById(@PathVariable("aid") Long aid, @PathVariable("slpdt") Date slpdt) {
        Optional<FinSlpSpc> data = repository.findById(new FinSlpSpcPK(aid, slpdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "전표내역 등록" , description = "전표내역 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the FinSlpSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlpSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/finslpspcs")
    ResponseEntity<FinSlpSpc> postData(@RequestBody FinSlpSpc newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "전표내역 수정" , description = "전표내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinSlpSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlpSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "FinSlpSpc not found", content = @Content) })
    @PutMapping("/finslpspcs/{aid}/{slpdt}")
    ResponseEntity<FinSlpSpc> putData(@RequestBody FinSlpSpc newData, @PathVariable("aid") Long aid, @PathVariable("slpdt") Date slpdt) {
        return repository.findById(new FinSlpSpcPK(aid, slpdt)) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    newData.setSlpdt(oldData.getSlpdt());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "전표내역 수정" , description = "전표내역 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the FinSlpSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlpSpc.class)) }),
            @ApiResponse(responseCode = "404", description = "FinSlpSpc not found", content = @Content) })
	@PatchMapping("/finslpspcs/{aid}/{slpdt}")
    ResponseEntity<FinSlpSpc> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid, @PathVariable("slpdt") Date slpdt) {
        FinSlpSpc newData = mapper.convertValue(newMap, FinSlpSpc.class);
        return repository.findById(new FinSlpSpcPK(aid, slpdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "slpno" : oldData.setSlpno(newData.getSlpno()); break;
						    case "slpLnno" : oldData.setSlpLnno(newData.getSlpLnno()); break;
						    case "dbcrFlgcd" : oldData.setDbcrFlgcd(newData.getDbcrFlgcd()); break;
						    case "ntaccCd" : oldData.setNtaccCd(newData.getNtaccCd()); break;
						    case "mnbrnBjNtaccCd" : oldData.setMnbrnBjNtaccCd(newData.getMnbrnBjNtaccCd()); break;
						    case "actOrgcd" : oldData.setActOrgcd(newData.getActOrgcd()); break;
						    case "mncd" : oldData.setMncd(newData.getMncd()); break;
						    case "woncrPoamt" : oldData.setWoncrPoamt(newData.getWoncrPoamt()); break;
						    case "fcPoamt" : oldData.setFcPoamt(newData.getFcPoamt()); break;
						    case "apXcrt" : oldData.setApXcrt(newData.getApXcrt()); break;
						    case "dltfpFlgcd" : oldData.setDltfpFlgcd(newData.getDltfpFlgcd()); break;
						    case "dltcd" : oldData.setDltcd(newData.getDltcd()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "insImcd" : oldData.setInsImcd(newData.getInsImcd()); break;
						    case "invlnGdcd" : oldData.setInvlnGdcd(newData.getInvlnGdcd()); break;
						    case "ldgno" : oldData.setLdgno(newData.getLdgno()); break;
						    case "ldgKndcd" : oldData.setLdgKndcd(newData.getLdgKndcd()); break;
						    case "bsnsCnnnoFlgcd" : oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd()); break;
						    case "bsnsCnnno" : oldData.setBsnsCnnno(newData.getBsnsCnnno()); break;
						    case "bsnsCnndt" : oldData.setBsnsCnndt(newData.getBsnsCnndt()); break;
						    case "dhOrgcd" : oldData.setDhOrgcd(newData.getDhOrgcd()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "bzcsO1Dvcd" : oldData.setBzcsO1Dvcd(newData.getBzcsO1Dvcd()); break;
						    case "bzcsO2Dvcd" : oldData.setBzcsO2Dvcd(newData.getBzcsO2Dvcd()); break;
						    case "rrOrgcd" : oldData.setRrOrgcd(newData.getRrOrgcd()); break;
						    case "bdgOrgcd" : oldData.setBdgOrgcd(newData.getBdgOrgcd()); break;
						    case "dlplcFlgcd" : oldData.setDlplcFlgcd(newData.getDlplcFlgcd()); break;
						    case "dlpno" : oldData.setDlpno(newData.getDlpno()); break;
						    case "crdCmpcd" : oldData.setCrdCmpcd(newData.getCrdCmpcd()); break;
						    case "fndcd" : oldData.setFndcd(newData.getFndcd()); break;
						    case "notsMtt" : oldData.setNotsMtt(newData.getNotsMtt()); break;
						    case "noteMtt" : oldData.setNoteMtt(newData.getNoteMtt()); break;
						    case "bzcsDvExecYn" : oldData.setBzcsDvExecYn(newData.getBzcsDvExecYn()); break;
						    case "actUntFlgcd" : oldData.setActUntFlgcd(newData.getActUntFlgcd()); break;
						    case "erpTsYn" : oldData.setErpTsYn(newData.getErpTsYn()); break;
						    case "erpTsdt" : oldData.setErpTsdt(newData.getErpTsdt()); break;
						    case "cuSbWrkYn" : oldData.setCuSbWrkYn(newData.getCuSbWrkYn()); break;
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
	
    // @Operation(summary = "전표내역 삭제" , description = "전표내역 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the FinSlpSpc", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = FinSlpSpc.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/finslpspcs/{aid}/{slpdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid, @PathVariable("slpdt") Date slpdt) {
        try {
            repository.deleteById(new FinSlpSpcPK(aid, slpdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
