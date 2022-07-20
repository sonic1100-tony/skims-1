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
import com.skims.domain.entity.FinSlpSpc;
import com.skims.domain.entity.FinSlpSpcPK;
import com.skims.domain.repository.FinSlpSpcRepository;

import io.swagger.v3.oas.annotations.Operation;
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
    public ResponseEntity<Page<FinSlpSpc>> getAll(@PageableDefault Pageable pageable) {
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
                    oldData.setSlpno(newData.getSlpno());
                    oldData.setSlpLnno(newData.getSlpLnno());
                    oldData.setDbcrFlgcd(newData.getDbcrFlgcd());
                    oldData.setNtaccCd(newData.getNtaccCd());
                    oldData.setMnbrnBjNtaccCd(newData.getMnbrnBjNtaccCd());
                    oldData.setActOrgcd(newData.getActOrgcd());
                    oldData.setMncd(newData.getMncd());
                    oldData.setWoncrPoamt(newData.getWoncrPoamt());
                    oldData.setFcPoamt(newData.getFcPoamt());
                    oldData.setApXcrt(newData.getApXcrt());
                    oldData.setDltfpFlgcd(newData.getDltfpFlgcd());
                    oldData.setDltcd(newData.getDltcd());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setInsImcd(newData.getInsImcd());
                    oldData.setInvlnGdcd(newData.getInvlnGdcd());
                    oldData.setLdgno(newData.getLdgno());
                    oldData.setLdgKndcd(newData.getLdgKndcd());
                    oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd());
                    oldData.setBsnsCnnno(newData.getBsnsCnnno());
                    oldData.setBsnsCnndt(newData.getBsnsCnndt());
                    oldData.setDhOrgcd(newData.getDhOrgcd());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setBzcsO1Dvcd(newData.getBzcsO1Dvcd());
                    oldData.setBzcsO2Dvcd(newData.getBzcsO2Dvcd());
                    oldData.setRrOrgcd(newData.getRrOrgcd());
                    oldData.setBdgOrgcd(newData.getBdgOrgcd());
                    oldData.setDlplcFlgcd(newData.getDlplcFlgcd());
                    oldData.setDlpno(newData.getDlpno());
                    oldData.setCrdCmpcd(newData.getCrdCmpcd());
                    oldData.setFndcd(newData.getFndcd());
                    oldData.setNotsMtt(newData.getNotsMtt());
                    oldData.setNoteMtt(newData.getNoteMtt());
                    oldData.setBzcsDvExecYn(newData.getBzcsDvExecYn());
                    oldData.setActUntFlgcd(newData.getActUntFlgcd());
                    oldData.setErpTsYn(newData.getErpTsYn());
                    oldData.setErpTsdt(newData.getErpTsdt());
                    oldData.setCuSbWrkYn(newData.getCuSbWrkYn());
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
                        if (strKey.equals("slpno"))
                            oldData.setSlpno(newData.getSlpno());
                        if (strKey.equals("slpLnno"))
                            oldData.setSlpLnno(newData.getSlpLnno());
                        if (strKey.equals("dbcrFlgcd"))
                            oldData.setDbcrFlgcd(newData.getDbcrFlgcd());
                        if (strKey.equals("ntaccCd"))
                            oldData.setNtaccCd(newData.getNtaccCd());
                        if (strKey.equals("mnbrnBjNtaccCd"))
                            oldData.setMnbrnBjNtaccCd(newData.getMnbrnBjNtaccCd());
                        if (strKey.equals("actOrgcd"))
                            oldData.setActOrgcd(newData.getActOrgcd());
                        if (strKey.equals("mncd"))
                            oldData.setMncd(newData.getMncd());
                        if (strKey.equals("woncrPoamt"))
                            oldData.setWoncrPoamt(newData.getWoncrPoamt());
                        if (strKey.equals("fcPoamt"))
                            oldData.setFcPoamt(newData.getFcPoamt());
                        if (strKey.equals("apXcrt"))
                            oldData.setApXcrt(newData.getApXcrt());
                        if (strKey.equals("dltfpFlgcd"))
                            oldData.setDltfpFlgcd(newData.getDltfpFlgcd());
                        if (strKey.equals("dltcd"))
                            oldData.setDltcd(newData.getDltcd());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("insImcd"))
                            oldData.setInsImcd(newData.getInsImcd());
                        if (strKey.equals("invlnGdcd"))
                            oldData.setInvlnGdcd(newData.getInvlnGdcd());
                        if (strKey.equals("ldgno"))
                            oldData.setLdgno(newData.getLdgno());
                        if (strKey.equals("ldgKndcd"))
                            oldData.setLdgKndcd(newData.getLdgKndcd());
                        if (strKey.equals("bsnsCnnnoFlgcd"))
                            oldData.setBsnsCnnnoFlgcd(newData.getBsnsCnnnoFlgcd());
                        if (strKey.equals("bsnsCnnno"))
                            oldData.setBsnsCnnno(newData.getBsnsCnnno());
                        if (strKey.equals("bsnsCnndt"))
                            oldData.setBsnsCnndt(newData.getBsnsCnndt());
                        if (strKey.equals("dhOrgcd"))
                            oldData.setDhOrgcd(newData.getDhOrgcd());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("bzcsO1Dvcd"))
                            oldData.setBzcsO1Dvcd(newData.getBzcsO1Dvcd());
                        if (strKey.equals("bzcsO2Dvcd"))
                            oldData.setBzcsO2Dvcd(newData.getBzcsO2Dvcd());
                        if (strKey.equals("rrOrgcd"))
                            oldData.setRrOrgcd(newData.getRrOrgcd());
                        if (strKey.equals("bdgOrgcd"))
                            oldData.setBdgOrgcd(newData.getBdgOrgcd());
                        if (strKey.equals("dlplcFlgcd"))
                            oldData.setDlplcFlgcd(newData.getDlplcFlgcd());
                        if (strKey.equals("dlpno"))
                            oldData.setDlpno(newData.getDlpno());
                        if (strKey.equals("crdCmpcd"))
                            oldData.setCrdCmpcd(newData.getCrdCmpcd());
                        if (strKey.equals("fndcd"))
                            oldData.setFndcd(newData.getFndcd());
                        if (strKey.equals("notsMtt"))
                            oldData.setNotsMtt(newData.getNotsMtt());
                        if (strKey.equals("noteMtt"))
                            oldData.setNoteMtt(newData.getNoteMtt());
                        if (strKey.equals("bzcsDvExecYn"))
                            oldData.setBzcsDvExecYn(newData.getBzcsDvExecYn());
                        if (strKey.equals("actUntFlgcd"))
                            oldData.setActUntFlgcd(newData.getActUntFlgcd());
                        if (strKey.equals("erpTsYn"))
                            oldData.setErpTsYn(newData.getErpTsYn());
                        if (strKey.equals("erpTsdt"))
                            oldData.setErpTsdt(newData.getErpTsdt());
                        if (strKey.equals("cuSbWrkYn"))
                            oldData.setCuSbWrkYn(newData.getCuSbWrkYn());
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
