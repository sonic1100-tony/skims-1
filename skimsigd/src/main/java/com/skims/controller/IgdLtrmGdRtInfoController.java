/**
 * IgdLtrmGdRtInfo Entity Controller 클래스
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
import com.skims.domain.entity.IgdLtrmGdRtInfo;
import com.skims.domain.entity.IgdLtrmGdRtInfoPK;
import com.skims.domain.repository.IgdLtrmGdRtInfoRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "IgdLtrmGdRtInfo 장기상품요율정보 Controller")
@Slf4j
public class IgdLtrmGdRtInfoController {

    @Autowired
    IgdLtrmGdRtInfoRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "장기상품요율정보 전체조회" , summary = "장기상품요율정보 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the igdltrmgdrtinfos", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmGdRtInfo.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/igdltrmgdrtinfos")
    public ResponseEntity<Page<IgdLtrmGdRtInfo>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "장기상품요율정보 Key조회" , description = "장기상품요율정보 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the IgdLtrmGdRtInfo", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmGdRtInfo.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmGdRtInfo not found", content = @Content) })
    @GetMapping("/igdltrmgdrtinfos/{ltrmRtTablFlgcd}/{gdcd}")
    public ResponseEntity<IgdLtrmGdRtInfo> getById(@PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("gdcd") String gdcd) {
        Optional<IgdLtrmGdRtInfo> data = repository.findById(new IgdLtrmGdRtInfoPK(ltrmRtTablFlgcd, gdcd));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "장기상품요율정보 등록" , description = "장기상품요율정보 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the IgdLtrmGdRtInfo", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmGdRtInfo.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/igdltrmgdrtinfos")
    ResponseEntity<IgdLtrmGdRtInfo> postData(@RequestBody IgdLtrmGdRtInfo newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "장기상품요율정보 수정" , description = "장기상품요율정보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmGdRtInfo", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmGdRtInfo.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmGdRtInfo not found", content = @Content) })
    @PutMapping("/igdltrmgdrtinfos/{ltrmRtTablFlgcd}/{gdcd}")
    ResponseEntity<IgdLtrmGdRtInfo> putData(@RequestBody IgdLtrmGdRtInfo newData, @PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("gdcd") String gdcd) {
        return repository.findById(new IgdLtrmGdRtInfoPK(ltrmRtTablFlgcd, gdcd)) //
                .map(oldData -> {
                    newData.setLtrmRtTablFlgcd(oldData.getLtrmRtTablFlgcd());
                    newData.setGdcd(oldData.getGdcd());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "장기상품요율정보 수정" , description = "장기상품요율정보 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the IgdLtrmGdRtInfo", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmGdRtInfo.class)) }),
            @ApiResponse(responseCode = "404", description = "IgdLtrmGdRtInfo not found", content = @Content) })
	@PatchMapping("/igdltrmgdrtinfos/{ltrmRtTablFlgcd}/{gdcd}")
    ResponseEntity<IgdLtrmGdRtInfo> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("gdcd") String gdcd) {
        IgdLtrmGdRtInfo newData = mapper.convertValue(newMap, IgdLtrmGdRtInfo.class);
        return repository.findById(new IgdLtrmGdRtInfoPK(ltrmRtTablFlgcd, gdcd)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "ltrmRtTabnm" : oldData.setLtrmRtTabnm(newData.getLtrmRtTabnm()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "rtApCsfcd" : oldData.setRtApCsfcd(newData.getRtApCsfcd()); break;
						    case "rtApFlgcd" : oldData.setRtApFlgcd(newData.getRtApFlgcd()); break;
						    case "rtApUntcd" : oldData.setRtApUntcd(newData.getRtApUntcd()); break;
						    case "prmApUntcd" : oldData.setPrmApUntcd(newData.getPrmApUntcd()); break;
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
	
    // @Operation(summary = "장기상품요율정보 삭제" , description = "장기상품요율정보 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the IgdLtrmGdRtInfo", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = IgdLtrmGdRtInfo.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/igdltrmgdrtinfos/{ltrmRtTablFlgcd}/{gdcd}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("ltrmRtTablFlgcd") String ltrmRtTablFlgcd, @PathVariable("gdcd") String gdcd) {
        try {
            repository.deleteById(new IgdLtrmGdRtInfoPK(ltrmRtTablFlgcd, gdcd));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
