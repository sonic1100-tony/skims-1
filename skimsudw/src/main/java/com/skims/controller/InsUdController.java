/**
 * InsUd Entity Controller 클래스
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
import com.skims.domain.entity.InsUd;
import com.skims.domain.repository.InsUdRepository;

import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsUd 심사 Controller")
@Slf4j
public class InsUdController {

    @Autowired
    InsUdRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "심사 전체조회" , summary = "심사 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insuds", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insuds")
    public ResponseEntity<Page<InsUd>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "심사 Key조회" , description = "심사 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsUd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsUd not found", content = @Content) })
    @GetMapping("/insuds/{aid}")
    public ResponseEntity<InsUd> getById(@PathVariable("aid") Long aid) {
        Optional<InsUd> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "심사 등록" , description = "심사 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsUd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insuds")
    ResponseEntity<InsUd> postData(@RequestBody InsUd newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "심사 수정" , description = "심사 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsUd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsUd not found", content = @Content) })
    @PutMapping("/insuds/{aid}")
    ResponseEntity<InsUd> putData(@RequestBody InsUd newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    newData.setAid(oldData.getAid());
                    return new ResponseEntity<>(repository.save(newData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "심사 수정" , description = "심사 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsUd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUd.class)) }),
            @ApiResponse(responseCode = "404", description = "InsUd not found", content = @Content) })
	@PatchMapping("/insuds/{aid}")
    ResponseEntity<InsUd> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsUd newData = mapper.convertValue(newMap, InsUd.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
						switch(strKey){
						    case "udno" : oldData.setUdno(newData.getUdno()); break;
						    case "ndvUdSeqno" : oldData.setNdvUdSeqno(newData.getNdvUdSeqno()); break;
						    case "tgnrtUdBjYn" : oldData.setTgnrtUdBjYn(newData.getTgnrtUdBjYn()); break;
						    case "udBjFlgcd" : oldData.setUdBjFlgcd(newData.getUdBjFlgcd()); break;
						    case "udRelAtr1" : oldData.setUdRelAtr1(newData.getUdRelAtr1()); break;
						    case "udRelAtr2" : oldData.setUdRelAtr2(newData.getUdRelAtr2()); break;
						    case "udRelAtr3" : oldData.setUdRelAtr3(newData.getUdRelAtr3()); break;
						    case "ikdGrpcd" : oldData.setIkdGrpcd(newData.getIkdGrpcd()); break;
						    case "plyno" : oldData.setPlyno(newData.getPlyno()); break;
						    case "ndsno" : oldData.setNdsno(newData.getNdsno()); break;
						    case "udBsnsFlgcd" : oldData.setUdBsnsFlgcd(newData.getUdBsnsFlgcd()); break;
						    case "udRkcd" : oldData.setUdRkcd(newData.getUdRkcd()); break;
						    case "udFlgcd" : oldData.setUdFlgcd(newData.getUdFlgcd()); break;
						    case "udPrgStcd" : oldData.setUdPrgStcd(newData.getUdPrgStcd()); break;
						    case "udRstcd" : oldData.setUdRstcd(newData.getUdRstcd()); break;
						    case "udCpltPerdt" : oldData.setUdCpltPerdt(newData.getUdCpltPerdt()); break;
						    case "udXmnCn" : oldData.setUdXmnCn(newData.getUdXmnCn()); break;
						    case "udrtkCndCn" : oldData.setUdrtkCndCn(newData.getUdrtkCndCn()); break;
						    case "rqtno" : oldData.setRqtno(newData.getRqtno()); break;
						    case "requDthms" : oldData.setRequDthms(newData.getRequDthms()); break;
						    case "dhStfno" : oldData.setDhStfno(newData.getDhStfno()); break;
						    case "usrno" : oldData.setUsrno(newData.getUsrno()); break;
						    case "udChrOrgcd" : oldData.setUdChrOrgcd(newData.getUdChrOrgcd()); break;
						    case "udChrStfno" : oldData.setUdChrStfno(newData.getUdChrStfno()); break;
						    case "udChrOrgFlgcd" : oldData.setUdChrOrgFlgcd(newData.getUdChrOrgFlgcd()); break;
						    case "fnlUdStfno" : oldData.setFnlUdStfno(newData.getFnlUdStfno()); break;
						    case "fnlUdCpltDthms" : oldData.setFnlUdCpltDthms(newData.getFnlUdCpltDthms()); break;
						    case "fnlUdStInfo" : oldData.setFnlUdStInfo(newData.getFnlUdStInfo()); break;
						    case "fnlUdwrCtn" : oldData.setFnlUdwrCtn(newData.getFnlUdwrCtn()); break;
						    case "udDlBzDays" : oldData.setUdDlBzDays(newData.getUdDlBzDays()); break;
						    case "isPlmdfNeedYn" : oldData.setIsPlmdfNeedYn(newData.getIsPlmdfNeedYn()); break;
						    case "rkAdmno" : oldData.setRkAdmno(newData.getRkAdmno()); break;
						    case "ltrmPlno" : oldData.setLtrmPlno(newData.getLtrmPlno()); break;
						    case "smsTsPrg" : oldData.setSmsTsPrg(newData.getSmsTsPrg()); break;
						    case "spccfUdBjYn" : oldData.setSpccfUdBjYn(newData.getSpccfUdBjYn()); break;
						    case "dgnUdBjYn" : oldData.setDgnUdBjYn(newData.getDgnUdBjYn()); break;
						    case "nrdcd" : oldData.setNrdcd(newData.getNrdcd()); break;
						    case "bnCsfcd" : oldData.setBnCsfcd(newData.getBnCsfcd()); break;
						    case "insBtpcd" : oldData.setInsBtpcd(newData.getInsBtpcd()); break;
						    case "entpXmnRqCn" : oldData.setEntpXmnRqCn(newData.getEntpXmnRqCn()); break;
						    case "emegUdBjYn" : oldData.setEmegUdBjYn(newData.getEmegUdBjYn()); break;
						    case "apldoPrssBjYn" : oldData.setApldoPrssBjYn(newData.getApldoPrssBjYn()); break;
						    case "apRscd" : oldData.setApRscd(newData.getApRscd()); break;
						    case "spccfBjFlgcd" : oldData.setSpccfBjFlgcd(newData.getSpccfBjFlgcd()); break;
						    case "carnoHngl" : oldData.setCarnoHngl(newData.getCarnoHngl()); break;
						    case "valdStrdt" : oldData.setValdStrdt(newData.getValdStrdt()); break;
						    case "valdNddt" : oldData.setValdNddt(newData.getValdNddt()); break;
						    case "crSpccfTpcd" : oldData.setCrSpccfTpcd(newData.getCrSpccfTpcd()); break;
						    case "lowtDrvRsno" : oldData.setLowtDrvRsno(newData.getLowtDrvRsno()); break;
						    case "smsRcvptId" : oldData.setSmsRcvptId(newData.getSmsRcvptId()); break;
						    case "smsRcvYn" : oldData.setSmsRcvYn(newData.getSmsRcvYn()); break;
						    case "msgRcvptId" : oldData.setMsgRcvptId(newData.getMsgRcvptId()); break;
						    case "msgRcvYn" : oldData.setMsgRcvYn(newData.getMsgRcvYn()); break;
						    case "autoAplYn" : oldData.setAutoAplYn(newData.getAutoAplYn()); break;
						    case "dcuCpmtNeedYn" : oldData.setDcuCpmtNeedYn(newData.getDcuCpmtNeedYn()); break;
						    case "prsPlno" : oldData.setPrsPlno(newData.getPrsPlno()); break;
						    case "udwrIsPlmdfNeedYn" : oldData.setUdwrIsPlmdfNeedYn(newData.getUdwrIsPlmdfNeedYn()); break;
						    case "rtUdRequRs" : oldData.setRtUdRequRs(newData.getRtUdRequRs()); break;
						    case "crPrvFlgcd" : oldData.setCrPrvFlgcd(newData.getCrPrvFlgcd()); break;
						    case "crPrvRstcd" : oldData.setCrPrvRstcd(newData.getCrPrvRstcd()); break;
						    case "crPrvChrpsStfno" : oldData.setCrPrvChrpsStfno(newData.getCrPrvChrpsStfno()); break;
						    case "crPrvCtn" : oldData.setCrPrvCtn(newData.getCrPrvCtn()); break;
						    case "crPrvDthms" : oldData.setCrPrvDthms(newData.getCrPrvDthms()); break;
						    case "dgndcAdxdt" : oldData.setDgndcAdxdt(newData.getDgndcAdxdt()); break;
						    case "rcnRptgAdxdt" : oldData.setRcnRptgAdxdt(newData.getRcnRptgAdxdt()); break;
						    case "apldoAdxdt" : oldData.setApldoAdxdt(newData.getApldoAdxdt()); break;
						    case "sbcvrUdYn" : oldData.setSbcvrUdYn(newData.getSbcvrUdYn()); break;
						    case "sbcvrCnfstAdxdt" : oldData.setSbcvrCnfstAdxdt(newData.getSbcvrCnfstAdxdt()); break;
						    case "imgUdEndYn" : oldData.setImgUdEndYn(newData.getImgUdEndYn()); break;
						    case "pprUdSeqno" : oldData.setPprUdSeqno(newData.getPprUdSeqno()); break;
						    case "udRqRs" : oldData.setUdRqRs(newData.getUdRqRs()); break;
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
	
    // @Operation(summary = "심사 삭제" , description = "심사 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsUd", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsUd.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insuds/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
