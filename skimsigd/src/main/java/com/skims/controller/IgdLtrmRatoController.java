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
                    newData.setLtrmRtTablFlgcd(oldData.getLtrmRtTablFlgcd());
                    newData.setSno(oldData.getSno());
                    newData.setApStrdt(oldData.getApStrdt());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
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
						switch(strKey){
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "copChrvl1" : oldData.setCopChrvl1(newData.getCopChrvl1()); break;
						    case "copChrvl2" : oldData.setCopChrvl2(newData.getCopChrvl2()); break;
						    case "copChrvl3" : oldData.setCopChrvl3(newData.getCopChrvl3()); break;
						    case "copChrvl4" : oldData.setCopChrvl4(newData.getCopChrvl4()); break;
						    case "copChrvl5" : oldData.setCopChrvl5(newData.getCopChrvl5()); break;
						    case "copChrvl6" : oldData.setCopChrvl6(newData.getCopChrvl6()); break;
						    case "copChrvl7" : oldData.setCopChrvl7(newData.getCopChrvl7()); break;
						    case "copChrvl8" : oldData.setCopChrvl8(newData.getCopChrvl8()); break;
						    case "copChrvl9" : oldData.setCopChrvl9(newData.getCopChrvl9()); break;
						    case "copChrvl10" : oldData.setCopChrvl10(newData.getCopChrvl10()); break;
						    case "copChrvl11" : oldData.setCopChrvl11(newData.getCopChrvl11()); break;
						    case "copChrvl12" : oldData.setCopChrvl12(newData.getCopChrvl12()); break;
						    case "copChrvl13" : oldData.setCopChrvl13(newData.getCopChrvl13()); break;
						    case "copChrvl14" : oldData.setCopChrvl14(newData.getCopChrvl14()); break;
						    case "copChrvl15" : oldData.setCopChrvl15(newData.getCopChrvl15()); break;
						    case "copChrvl16" : oldData.setCopChrvl16(newData.getCopChrvl16()); break;
						    case "copChrvl17" : oldData.setCopChrvl17(newData.getCopChrvl17()); break;
						    case "copChrvl18" : oldData.setCopChrvl18(newData.getCopChrvl18()); break;
						    case "copChrvl19" : oldData.setCopChrvl19(newData.getCopChrvl19()); break;
						    case "copChrvl20" : oldData.setCopChrvl20(newData.getCopChrvl20()); break;
						    case "copChrvl21" : oldData.setCopChrvl21(newData.getCopChrvl21()); break;
						    case "outDatVl1" : oldData.setOutDatVl1(newData.getOutDatVl1()); break;
						    case "outDatVl2" : oldData.setOutDatVl2(newData.getOutDatVl2()); break;
						    case "outDatVl3" : oldData.setOutDatVl3(newData.getOutDatVl3()); break;
						    case "outDatVl4" : oldData.setOutDatVl4(newData.getOutDatVl4()); break;
						    case "outDatVl5" : oldData.setOutDatVl5(newData.getOutDatVl5()); break;
						    case "outDatVl6" : oldData.setOutDatVl6(newData.getOutDatVl6()); break;
						    case "outDatVl7" : oldData.setOutDatVl7(newData.getOutDatVl7()); break;
						    case "outDatVl8" : oldData.setOutDatVl8(newData.getOutDatVl8()); break;
						    case "outDatVl9" : oldData.setOutDatVl9(newData.getOutDatVl9()); break;
						    case "outDatVl10" : oldData.setOutDatVl10(newData.getOutDatVl10()); break;
						    case "outDatVl11" : oldData.setOutDatVl11(newData.getOutDatVl11()); break;
						    case "outDatVl12" : oldData.setOutDatVl12(newData.getOutDatVl12()); break;
						    case "outDatVl13" : oldData.setOutDatVl13(newData.getOutDatVl13()); break;
						    case "outDatVl14" : oldData.setOutDatVl14(newData.getOutDatVl14()); break;
						    case "outDatVl15" : oldData.setOutDatVl15(newData.getOutDatVl15()); break;
						    case "outDatVl16" : oldData.setOutDatVl16(newData.getOutDatVl16()); break;
						    case "outDatVl17" : oldData.setOutDatVl17(newData.getOutDatVl17()); break;
						    case "outDatVl18" : oldData.setOutDatVl18(newData.getOutDatVl18()); break;
						    case "outDatVl19" : oldData.setOutDatVl19(newData.getOutDatVl19()); break;
						    case "outDatVl20" : oldData.setOutDatVl20(newData.getOutDatVl20()); break;
						    case "outDatVl21" : oldData.setOutDatVl21(newData.getOutDatVl21()); break;
						    case "outDatVl22" : oldData.setOutDatVl22(newData.getOutDatVl22()); break;
						    case "outDatVl23" : oldData.setOutDatVl23(newData.getOutDatVl23()); break;
						    case "outDatVl24" : oldData.setOutDatVl24(newData.getOutDatVl24()); break;
						    case "outDatVl25" : oldData.setOutDatVl25(newData.getOutDatVl25()); break;
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
