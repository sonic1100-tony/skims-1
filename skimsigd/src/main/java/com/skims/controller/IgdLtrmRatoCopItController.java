/**
 * IgdLtrmRatoCopIt Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;

import java.math.BigDecimal;
import java.time.LocalDate;

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
import com.skims.domain.entity.IgdLtrmRatoCopIt;
import com.skims.domain.entity.IgdLtrmRatoCopItPK;
import com.skims.domain.repository.IgdLtrmRatoCopItRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdLtrmRatoCopIt 장기이율구성항목 Controller")
@Slf4j
public class IgdLtrmRatoCopItController {

    @Autowired
    IgdLtrmRatoCopItRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "장기이율구성항목 전체조회" , summary = "장기이율구성항목 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdltrmratocopits", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRatoCopIt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdltrmratocopits")
    public ResponseEntity<Page<IgdLtrmRatoCopIt>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "장기이율구성항목 Key조회" , description = "장기이율구성항목 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdLtrmRatoCopIt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRatoCopIt.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmRatoCopIt not found", content = @Content) })
    @GetMapping("/igdltrmratocopits/{ltrmRtTablFlgcd}/{inOutFlgcd}/{itIdcOrdr}/{apStrdt}")
    public ResponseEntity<IgdLtrmRatoCopIt> getById(@PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("inOutFlgcd") String inOutFlgcd, @PathVariable("itIdcOrdr") BigDecimal itIdcOrdr, @PathVariable("apStrdt") LocalDate apStrdt) {
        Optional<IgdLtrmRatoCopIt> data = repository.findById(new IgdLtrmRatoCopItPK(ltrmRtTablFlgcd, inOutFlgcd, itIdcOrdr, apStrdt));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "장기이율구성항목 등록" , description = "장기이율구성항목 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdLtrmRatoCopIt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRatoCopIt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdltrmratocopits")
    ResponseEntity<IgdLtrmRatoCopIt> postData(@RequestBody IgdLtrmRatoCopIt newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "장기이율구성항목 수정" , description = "장기이율구성항목 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmRatoCopIt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRatoCopIt.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmRatoCopIt not found", content = @Content) })
    @PutMapping("/igdltrmratocopits/{ltrmRtTablFlgcd}/{inOutFlgcd}/{itIdcOrdr}/{apStrdt}")
    ResponseEntity<IgdLtrmRatoCopIt> putData(@RequestBody IgdLtrmRatoCopIt newData, @PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("inOutFlgcd") String inOutFlgcd, @PathVariable("itIdcOrdr") BigDecimal itIdcOrdr, @PathVariable("apStrdt") LocalDate apStrdt) {
        return repository.findById(new IgdLtrmRatoCopItPK(ltrmRtTablFlgcd, inOutFlgcd, itIdcOrdr, apStrdt)) //
                .map(oldData -> {
                    newData.setLtrmRtTablFlgcd(oldData.getLtrmRtTablFlgcd());
                    newData.setInOutFlgcd(oldData.getInOutFlgcd());
                    newData.setItIdcOrdr(oldData.getItIdcOrdr());
                    newData.setApStrdt(oldData.getApStrdt());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "장기이율구성항목 수정" , description = "장기이율구성항목 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmRatoCopIt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRatoCopIt.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmRatoCopIt not found", content = @Content) })
	@PatchMapping("/igdltrmratocopits/{ltrmRtTablFlgcd}/{inOutFlgcd}/{itIdcOrdr}/{apStrdt}")
    ResponseEntity<IgdLtrmRatoCopIt> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("inOutFlgcd") String inOutFlgcd, @PathVariable("itIdcOrdr") BigDecimal itIdcOrdr, @PathVariable("apStrdt") LocalDate apStrdt) {
        IgdLtrmRatoCopIt newData = mapper.convertValue(newMap, IgdLtrmRatoCopIt.class);
        return repository.findById(new IgdLtrmRatoCopItPK(ltrmRtTablFlgcd, inOutFlgcd, itIdcOrdr, apStrdt)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "apNddt" : oldData.setApNddt(newData.getApNddt()); break;
						    case "rtItcdAtrvl" : oldData.setRtItcdAtrvl(newData.getRtItcdAtrvl()); break;
						    case "rtItCdnm" : oldData.setRtItCdnm(newData.getRtItCdnm()); break;
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
	
    // @Operation(summary = "장기이율구성항목 삭제" , description = "장기이율구성항목 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete the IgdLtrmRatoCopIt", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmRatoCopIt.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdltrmratocopits/{ltrmRtTablFlgcd}/{inOutFlgcd}/{itIdcOrdr}/{apStrdt}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("inOutFlgcd") String inOutFlgcd, @PathVariable("itIdcOrdr") BigDecimal itIdcOrdr, @PathVariable("apStrdt") LocalDate apStrdt) {
        try {
            repository.deleteById(new IgdLtrmRatoCopItPK(ltrmRtTablFlgcd, inOutFlgcd, itIdcOrdr, apStrdt));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
