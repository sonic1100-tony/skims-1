/**
 * IgdLtrmRato Entity Controller 클래스
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
import com.skims.domain.entity.IgdLtrmRato;
import com.skims.domain.entity.IgdLtrmRatoPK;
import com.skims.domain.repository.IgdLtrmRatoRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdLtrmRato 장기이율 Controller")
@Slf4j
public class IgdLtrmRatoController {

    @Autowired
    IgdLtrmRatoRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "장기이율 전체조회" , summary = "장기이율 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdltrmratos", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRato.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdltrmratos")
    public ResponseEntity<Page<IgdLtrmRato>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "장기이율 Key조회" , description = "장기이율 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdLtrmRato", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRato.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmRato not found", content = @Content) })
    @GetMapping("/igdltrmratos/{ltrmRtTablFlgcd}/{sno}/{apStrdt}")
    public ResponseEntity<IgdLtrmRato> getById(@PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("sno") String sno, @PathVariable("apStrdt") Date apStrdt) {
        Optional<IgdLtrmRato> data = repository.findById(new IgdLtrmRatoPK(ltrmRtTablFlgcd, sno, apStrdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "장기이율 등록" , description = "장기이율 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdLtrmRato", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRato.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdltrmratos")
    ResponseEntity<IgdLtrmRato> postData(@RequestBody IgdLtrmRato newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "장기이율 수정" , description = "장기이율 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmRato", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRato.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmRato not found", content = @Content) })
    @PutMapping("/igdltrmratos/{ltrmRtTablFlgcd}/{sno}/{apStrdt}")
    ResponseEntity<IgdLtrmRato> putData(@RequestBody IgdLtrmRato newData, @PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("sno") String sno, @PathVariable("apStrdt") Date apStrdt) {
        return repository.findById(new IgdLtrmRatoPK(ltrmRtTablFlgcd, sno, apStrdt)) //
                .map(oldData -> {
                    oldData.setApNddt(newData.getApNddt());
                    oldData.setCopChrvl1(newData.getCopChrvl1());
                    oldData.setCopChrvl2(newData.getCopChrvl2());
                    oldData.setCopChrvl3(newData.getCopChrvl3());
                    oldData.setCopChrvl4(newData.getCopChrvl4());
                    oldData.setCopChrvl5(newData.getCopChrvl5());
                    oldData.setCopChrvl6(newData.getCopChrvl6());
                    oldData.setCopChrvl7(newData.getCopChrvl7());
                    oldData.setCopChrvl8(newData.getCopChrvl8());
                    oldData.setCopChrvl9(newData.getCopChrvl9());
                    oldData.setCopChrvl10(newData.getCopChrvl10());
                    oldData.setCopChrvl11(newData.getCopChrvl11());
                    oldData.setCopChrvl12(newData.getCopChrvl12());
                    oldData.setCopChrvl13(newData.getCopChrvl13());
                    oldData.setCopChrvl14(newData.getCopChrvl14());
                    oldData.setCopChrvl15(newData.getCopChrvl15());
                    oldData.setCopChrvl16(newData.getCopChrvl16());
                    oldData.setCopChrvl17(newData.getCopChrvl17());
                    oldData.setCopChrvl18(newData.getCopChrvl18());
                    oldData.setCopChrvl19(newData.getCopChrvl19());
                    oldData.setCopChrvl20(newData.getCopChrvl20());
                    oldData.setCopChrvl21(newData.getCopChrvl21());
                    oldData.setOutDatVl1(newData.getOutDatVl1());
                    oldData.setOutDatVl2(newData.getOutDatVl2());
                    oldData.setOutDatVl3(newData.getOutDatVl3());
                    oldData.setOutDatVl4(newData.getOutDatVl4());
                    oldData.setOutDatVl5(newData.getOutDatVl5());
                    oldData.setOutDatVl6(newData.getOutDatVl6());
                    oldData.setOutDatVl7(newData.getOutDatVl7());
                    oldData.setOutDatVl8(newData.getOutDatVl8());
                    oldData.setOutDatVl9(newData.getOutDatVl9());
                    oldData.setOutDatVl10(newData.getOutDatVl10());
                    oldData.setOutDatVl11(newData.getOutDatVl11());
                    oldData.setOutDatVl12(newData.getOutDatVl12());
                    oldData.setOutDatVl13(newData.getOutDatVl13());
                    oldData.setOutDatVl14(newData.getOutDatVl14());
                    oldData.setOutDatVl15(newData.getOutDatVl15());
                    oldData.setOutDatVl16(newData.getOutDatVl16());
                    oldData.setOutDatVl17(newData.getOutDatVl17());
                    oldData.setOutDatVl18(newData.getOutDatVl18());
                    oldData.setOutDatVl19(newData.getOutDatVl19());
                    oldData.setOutDatVl20(newData.getOutDatVl20());
                    oldData.setOutDatVl21(newData.getOutDatVl21());
                    oldData.setOutDatVl22(newData.getOutDatVl22());
                    oldData.setOutDatVl23(newData.getOutDatVl23());
                    oldData.setOutDatVl24(newData.getOutDatVl24());
                    oldData.setOutDatVl25(newData.getOutDatVl25());
                    oldData.setMdfUsrId(newData.getMdfUsrId());
                    oldData.setInpDthms(newData.getInpDthms());
                    oldData.setMdfDthms(newData.getMdfDthms());
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "장기이율 수정" , description = "장기이율 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmRato", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRato.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmRato not found", content = @Content) })
	@PatchMapping("/igdltrmratos/{ltrmRtTablFlgcd}/{sno}/{apStrdt}")
    ResponseEntity<IgdLtrmRato> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("sno") String sno, @PathVariable("apStrdt") Date apStrdt) {
        IgdLtrmRato newData = mapper.convertValue(newMap, IgdLtrmRato.class);
        return repository.findById(new IgdLtrmRatoPK(ltrmRtTablFlgcd, sno, apStrdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("apNddt"))
                            oldData.setApNddt(newData.getApNddt());
                        if (strKey.equals("copChrvl1"))
                            oldData.setCopChrvl1(newData.getCopChrvl1());
                        if (strKey.equals("copChrvl2"))
                            oldData.setCopChrvl2(newData.getCopChrvl2());
                        if (strKey.equals("copChrvl3"))
                            oldData.setCopChrvl3(newData.getCopChrvl3());
                        if (strKey.equals("copChrvl4"))
                            oldData.setCopChrvl4(newData.getCopChrvl4());
                        if (strKey.equals("copChrvl5"))
                            oldData.setCopChrvl5(newData.getCopChrvl5());
                        if (strKey.equals("copChrvl6"))
                            oldData.setCopChrvl6(newData.getCopChrvl6());
                        if (strKey.equals("copChrvl7"))
                            oldData.setCopChrvl7(newData.getCopChrvl7());
                        if (strKey.equals("copChrvl8"))
                            oldData.setCopChrvl8(newData.getCopChrvl8());
                        if (strKey.equals("copChrvl9"))
                            oldData.setCopChrvl9(newData.getCopChrvl9());
                        if (strKey.equals("copChrvl10"))
                            oldData.setCopChrvl10(newData.getCopChrvl10());
                        if (strKey.equals("copChrvl11"))
                            oldData.setCopChrvl11(newData.getCopChrvl11());
                        if (strKey.equals("copChrvl12"))
                            oldData.setCopChrvl12(newData.getCopChrvl12());
                        if (strKey.equals("copChrvl13"))
                            oldData.setCopChrvl13(newData.getCopChrvl13());
                        if (strKey.equals("copChrvl14"))
                            oldData.setCopChrvl14(newData.getCopChrvl14());
                        if (strKey.equals("copChrvl15"))
                            oldData.setCopChrvl15(newData.getCopChrvl15());
                        if (strKey.equals("copChrvl16"))
                            oldData.setCopChrvl16(newData.getCopChrvl16());
                        if (strKey.equals("copChrvl17"))
                            oldData.setCopChrvl17(newData.getCopChrvl17());
                        if (strKey.equals("copChrvl18"))
                            oldData.setCopChrvl18(newData.getCopChrvl18());
                        if (strKey.equals("copChrvl19"))
                            oldData.setCopChrvl19(newData.getCopChrvl19());
                        if (strKey.equals("copChrvl20"))
                            oldData.setCopChrvl20(newData.getCopChrvl20());
                        if (strKey.equals("copChrvl21"))
                            oldData.setCopChrvl21(newData.getCopChrvl21());
                        if (strKey.equals("outDatVl1"))
                            oldData.setOutDatVl1(newData.getOutDatVl1());
                        if (strKey.equals("outDatVl2"))
                            oldData.setOutDatVl2(newData.getOutDatVl2());
                        if (strKey.equals("outDatVl3"))
                            oldData.setOutDatVl3(newData.getOutDatVl3());
                        if (strKey.equals("outDatVl4"))
                            oldData.setOutDatVl4(newData.getOutDatVl4());
                        if (strKey.equals("outDatVl5"))
                            oldData.setOutDatVl5(newData.getOutDatVl5());
                        if (strKey.equals("outDatVl6"))
                            oldData.setOutDatVl6(newData.getOutDatVl6());
                        if (strKey.equals("outDatVl7"))
                            oldData.setOutDatVl7(newData.getOutDatVl7());
                        if (strKey.equals("outDatVl8"))
                            oldData.setOutDatVl8(newData.getOutDatVl8());
                        if (strKey.equals("outDatVl9"))
                            oldData.setOutDatVl9(newData.getOutDatVl9());
                        if (strKey.equals("outDatVl10"))
                            oldData.setOutDatVl10(newData.getOutDatVl10());
                        if (strKey.equals("outDatVl11"))
                            oldData.setOutDatVl11(newData.getOutDatVl11());
                        if (strKey.equals("outDatVl12"))
                            oldData.setOutDatVl12(newData.getOutDatVl12());
                        if (strKey.equals("outDatVl13"))
                            oldData.setOutDatVl13(newData.getOutDatVl13());
                        if (strKey.equals("outDatVl14"))
                            oldData.setOutDatVl14(newData.getOutDatVl14());
                        if (strKey.equals("outDatVl15"))
                            oldData.setOutDatVl15(newData.getOutDatVl15());
                        if (strKey.equals("outDatVl16"))
                            oldData.setOutDatVl16(newData.getOutDatVl16());
                        if (strKey.equals("outDatVl17"))
                            oldData.setOutDatVl17(newData.getOutDatVl17());
                        if (strKey.equals("outDatVl18"))
                            oldData.setOutDatVl18(newData.getOutDatVl18());
                        if (strKey.equals("outDatVl19"))
                            oldData.setOutDatVl19(newData.getOutDatVl19());
                        if (strKey.equals("outDatVl20"))
                            oldData.setOutDatVl20(newData.getOutDatVl20());
                        if (strKey.equals("outDatVl21"))
                            oldData.setOutDatVl21(newData.getOutDatVl21());
                        if (strKey.equals("outDatVl22"))
                            oldData.setOutDatVl22(newData.getOutDatVl22());
                        if (strKey.equals("outDatVl23"))
                            oldData.setOutDatVl23(newData.getOutDatVl23());
                        if (strKey.equals("outDatVl24"))
                            oldData.setOutDatVl24(newData.getOutDatVl24());
                        if (strKey.equals("outDatVl25"))
                            oldData.setOutDatVl25(newData.getOutDatVl25());
                        if (strKey.equals("mdfUsrId"))
                            oldData.setMdfUsrId(newData.getMdfUsrId());
                        if (strKey.equals("inpDthms"))
                            oldData.setInpDthms(newData.getInpDthms());
                        if (strKey.equals("mdfDthms"))
                            oldData.setMdfDthms(newData.getMdfDthms());
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "장기이율 삭제" , description = "장기이율 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the IgdLtrmRato", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRato.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdltrmratos/{ltrmRtTablFlgcd}/{sno}/{apStrdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("sno") String sno, @PathVariable("apStrdt") Date apStrdt) {
        try {
            repository.deleteById(new IgdLtrmRatoPK(ltrmRtTablFlgcd, sno, apStrdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
