/**
 * CusPstnoRodnmSrhAdr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.CusPstnoRodnmSrhAdr;
import com.skims.domain.entity.CusPstnoRodnmSrhAdrPK;
import com.skims.domain.repository.CusPstnoRodnmSrhAdrRepository;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Optional;


@RestController
@Tag(name = "CusPstnoRodnmSrhAdr 우편번호도로명검색주소 Controller")
@Slf4j
public class CusPstnoRodnmSrhAdrController {

    @Autowired
    CusPstnoRodnmSrhAdrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "우편번호도로명검색주소 전체조회" , summary = "우편번호도로명검색주소 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cuspstnorodnmsrhadrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmSrhAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cuspstnorodnmsrhadrs")
    public ResponseEntity<Page<CusPstnoRodnmSrhAdr>> getAll(Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "우편번호도로명검색주소 Key조회" , description = "우편번호도로명검색주소 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusPstnoRodnmSrhAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmSrhAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstnoRodnmSrhAdr not found", content = @Content) })
    @GetMapping("/cuspstnorodnmsrhadrs/{roadNmFlgcd}/{twmdSno}")
    public ResponseEntity<CusPstnoRodnmSrhAdr> getById(@PathVariable("roadNmFlgcd") String roadNmFlgcd, @PathVariable("twmdSno") String twmdSno) {
        Optional<CusPstnoRodnmSrhAdr> data = repository.findById(new CusPstnoRodnmSrhAdrPK(roadNmFlgcd, twmdSno));

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "우편번호도로명검색주소 등록" , description = "우편번호도로명검색주소 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusPstnoRodnmSrhAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmSrhAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cuspstnorodnmsrhadrs")
    ResponseEntity<CusPstnoRodnmSrhAdr> postData(@RequestBody CusPstnoRodnmSrhAdr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "우편번호도로명검색주소 수정" , description = "우편번호도로명검색주소 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusPstnoRodnmSrhAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmSrhAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstnoRodnmSrhAdr not found", content = @Content) })
    @PutMapping("/cuspstnorodnmsrhadrs/{roadNmFlgcd}/{twmdSno}")
    ResponseEntity<CusPstnoRodnmSrhAdr> putData(@RequestBody CusPstnoRodnmSrhAdr newData, @PathVariable("roadNmFlgcd") String roadNmFlgcd, @PathVariable("twmdSno") String twmdSno) {
        return repository.findById(new CusPstnoRodnmSrhAdrPK(roadNmFlgcd, twmdSno)) //
                .map(oldData -> {
                    newData.setRoadNmFlgcd(oldData.getRoadNmFlgcd());
                    newData.setTwmdSno(oldData.getTwmdSno());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "우편번호도로명검색주소 수정" , description = "우편번호도로명검색주소 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusPstnoRodnmSrhAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmSrhAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusPstnoRodnmSrhAdr not found", content = @Content) })
	@PatchMapping("/cuspstnorodnmsrhadrs/{roadNmFlgcd}/{twmdSno}")
    ResponseEntity<CusPstnoRodnmSrhAdr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("roadNmFlgcd") String roadNmFlgcd, @PathVariable("twmdSno") String twmdSno) {
        CusPstnoRodnmSrhAdr newData = mapper.convertValue(newMap, CusPstnoRodnmSrhAdr.class);
        return repository.findById(new CusPstnoRodnmSrhAdrPK(roadNmFlgcd, twmdSno)) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "sd" : oldData.setSd(newData.getSd()); break;
						    case "sgng" : oldData.setSgng(newData.getSgng()); break;
						    case "twm" : oldData.setTwm(newData.getTwm()); break;
						    case "twmd" : oldData.setTwmd(newData.getTwmd()); break;
						    case "roadNm" : oldData.setRoadNm(newData.getRoadNm()); break;
						    case "bldno" : oldData.setBldno(newData.getBldno()); break;
						    case "bldCt" : oldData.setBldCt(newData.getBldCt()); break;
						    case "baAdr" : oldData.setBaAdr(newData.getBaAdr()); break;
						    case "engRoadNmAdr" : oldData.setEngRoadNmAdr(newData.getEngRoadNmAdr()); break;
						    case "engRoadNm" : oldData.setEngRoadNm(newData.getEngRoadNm()); break;
						    case "pstno" : oldData.setPstno(newData.getPstno()); break;
						    case "stdt" : oldData.setStdt(newData.getStdt()); break;
						    case "bfPstno" : oldData.setBfPstno(newData.getBfPstno()); break;
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
	
    // @Operation(summary = "우편번호도로명검색주소 삭제" , description = "우편번호도로명검색주소 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusPstnoRodnmSrhAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusPstnoRodnmSrhAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cuspstnorodnmsrhadrs/{roadNmFlgcd}/{twmdSno}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("roadNmFlgcd") String roadNmFlgcd, @PathVariable("twmdSno") String twmdSno) {
        try {
            repository.deleteById(new CusPstnoRodnmSrhAdrPK(roadNmFlgcd, twmdSno));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
