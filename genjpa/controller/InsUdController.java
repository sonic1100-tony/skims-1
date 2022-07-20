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

import io.swagger.v3.oas.annotations.Operation;
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
                    oldData.setUdno(newData.getUdno());
                    oldData.setNdvUdSeqno(newData.getNdvUdSeqno());
                    oldData.setTgnrtUdBjYn(newData.getTgnrtUdBjYn());
                    oldData.setUdBjFlgcd(newData.getUdBjFlgcd());
                    oldData.setUdRelAtr1(newData.getUdRelAtr1());
                    oldData.setUdRelAtr2(newData.getUdRelAtr2());
                    oldData.setUdRelAtr3(newData.getUdRelAtr3());
                    oldData.setIkdGrpcd(newData.getIkdGrpcd());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setNdsno(newData.getNdsno());
                    oldData.setUdBsnsFlgcd(newData.getUdBsnsFlgcd());
                    oldData.setUdRkcd(newData.getUdRkcd());
                    oldData.setUdFlgcd(newData.getUdFlgcd());
                    oldData.setUdPrgStcd(newData.getUdPrgStcd());
                    oldData.setUdRstcd(newData.getUdRstcd());
                    oldData.setUdCpltPerdt(newData.getUdCpltPerdt());
                    oldData.setUdXmnCn(newData.getUdXmnCn());
                    oldData.setUdrtkCndCn(newData.getUdrtkCndCn());
                    oldData.setRqtno(newData.getRqtno());
                    oldData.setRequDthms(newData.getRequDthms());
                    oldData.setDhStfno(newData.getDhStfno());
                    oldData.setUsrno(newData.getUsrno());
                    oldData.setUdChrOrgcd(newData.getUdChrOrgcd());
                    oldData.setUdChrStfno(newData.getUdChrStfno());
                    oldData.setUdChrOrgFlgcd(newData.getUdChrOrgFlgcd());
                    oldData.setFnlUdStfno(newData.getFnlUdStfno());
                    oldData.setFnlUdCpltDthms(newData.getFnlUdCpltDthms());
                    oldData.setFnlUdStInfo(newData.getFnlUdStInfo());
                    oldData.setFnlUdwrCtn(newData.getFnlUdwrCtn());
                    oldData.setUdDlBzDays(newData.getUdDlBzDays());
                    oldData.setIsPlmdfNeedYn(newData.getIsPlmdfNeedYn());
                    oldData.setRkAdmno(newData.getRkAdmno());
                    oldData.setLtrmPlno(newData.getLtrmPlno());
                    oldData.setSmsTsPrg(newData.getSmsTsPrg());
                    oldData.setSpccfUdBjYn(newData.getSpccfUdBjYn());
                    oldData.setDgnUdBjYn(newData.getDgnUdBjYn());
                    oldData.setNrdcd(newData.getNrdcd());
                    oldData.setBnCsfcd(newData.getBnCsfcd());
                    oldData.setInsBtpcd(newData.getInsBtpcd());
                    oldData.setEntpXmnRqCn(newData.getEntpXmnRqCn());
                    oldData.setEmegUdBjYn(newData.getEmegUdBjYn());
                    oldData.setApldoPrssBjYn(newData.getApldoPrssBjYn());
                    oldData.setApRscd(newData.getApRscd());
                    oldData.setSpccfBjFlgcd(newData.getSpccfBjFlgcd());
                    oldData.setCarnoHngl(newData.getCarnoHngl());
                    oldData.setValdStrdt(newData.getValdStrdt());
                    oldData.setValdNddt(newData.getValdNddt());
                    oldData.setCrSpccfTpcd(newData.getCrSpccfTpcd());
                    oldData.setLowtDrvRsno(newData.getLowtDrvRsno());
                    oldData.setSmsRcvptId(newData.getSmsRcvptId());
                    oldData.setSmsRcvYn(newData.getSmsRcvYn());
                    oldData.setMsgRcvptId(newData.getMsgRcvptId());
                    oldData.setMsgRcvYn(newData.getMsgRcvYn());
                    oldData.setAutoAplYn(newData.getAutoAplYn());
                    oldData.setDcuCpmtNeedYn(newData.getDcuCpmtNeedYn());
                    oldData.setPrsPlno(newData.getPrsPlno());
                    oldData.setUdwrIsPlmdfNeedYn(newData.getUdwrIsPlmdfNeedYn());
                    oldData.setRtUdRequRs(newData.getRtUdRequRs());
                    oldData.setCrPrvFlgcd(newData.getCrPrvFlgcd());
                    oldData.setCrPrvRstcd(newData.getCrPrvRstcd());
                    oldData.setCrPrvChrpsStfno(newData.getCrPrvChrpsStfno());
                    oldData.setCrPrvCtn(newData.getCrPrvCtn());
                    oldData.setCrPrvDthms(newData.getCrPrvDthms());
                    oldData.setDgndcAdxdt(newData.getDgndcAdxdt());
                    oldData.setRcnRptgAdxdt(newData.getRcnRptgAdxdt());
                    oldData.setApldoAdxdt(newData.getApldoAdxdt());
                    oldData.setSbcvrUdYn(newData.getSbcvrUdYn());
                    oldData.setSbcvrCnfstAdxdt(newData.getSbcvrCnfstAdxdt());
                    oldData.setImgUdEndYn(newData.getImgUdEndYn());
                    oldData.setPprUdSeqno(newData.getPprUdSeqno());
                    oldData.setUdRqRs(newData.getUdRqRs());
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
                        if (strKey.equals("udno"))
                            oldData.setUdno(newData.getUdno());
                        if (strKey.equals("ndvUdSeqno"))
                            oldData.setNdvUdSeqno(newData.getNdvUdSeqno());
                        if (strKey.equals("tgnrtUdBjYn"))
                            oldData.setTgnrtUdBjYn(newData.getTgnrtUdBjYn());
                        if (strKey.equals("udBjFlgcd"))
                            oldData.setUdBjFlgcd(newData.getUdBjFlgcd());
                        if (strKey.equals("udRelAtr1"))
                            oldData.setUdRelAtr1(newData.getUdRelAtr1());
                        if (strKey.equals("udRelAtr2"))
                            oldData.setUdRelAtr2(newData.getUdRelAtr2());
                        if (strKey.equals("udRelAtr3"))
                            oldData.setUdRelAtr3(newData.getUdRelAtr3());
                        if (strKey.equals("ikdGrpcd"))
                            oldData.setIkdGrpcd(newData.getIkdGrpcd());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("ndsno"))
                            oldData.setNdsno(newData.getNdsno());
                        if (strKey.equals("udBsnsFlgcd"))
                            oldData.setUdBsnsFlgcd(newData.getUdBsnsFlgcd());
                        if (strKey.equals("udRkcd"))
                            oldData.setUdRkcd(newData.getUdRkcd());
                        if (strKey.equals("udFlgcd"))
                            oldData.setUdFlgcd(newData.getUdFlgcd());
                        if (strKey.equals("udPrgStcd"))
                            oldData.setUdPrgStcd(newData.getUdPrgStcd());
                        if (strKey.equals("udRstcd"))
                            oldData.setUdRstcd(newData.getUdRstcd());
                        if (strKey.equals("udCpltPerdt"))
                            oldData.setUdCpltPerdt(newData.getUdCpltPerdt());
                        if (strKey.equals("udXmnCn"))
                            oldData.setUdXmnCn(newData.getUdXmnCn());
                        if (strKey.equals("udrtkCndCn"))
                            oldData.setUdrtkCndCn(newData.getUdrtkCndCn());
                        if (strKey.equals("rqtno"))
                            oldData.setRqtno(newData.getRqtno());
                        if (strKey.equals("requDthms"))
                            oldData.setRequDthms(newData.getRequDthms());
                        if (strKey.equals("dhStfno"))
                            oldData.setDhStfno(newData.getDhStfno());
                        if (strKey.equals("usrno"))
                            oldData.setUsrno(newData.getUsrno());
                        if (strKey.equals("udChrOrgcd"))
                            oldData.setUdChrOrgcd(newData.getUdChrOrgcd());
                        if (strKey.equals("udChrStfno"))
                            oldData.setUdChrStfno(newData.getUdChrStfno());
                        if (strKey.equals("udChrOrgFlgcd"))
                            oldData.setUdChrOrgFlgcd(newData.getUdChrOrgFlgcd());
                        if (strKey.equals("fnlUdStfno"))
                            oldData.setFnlUdStfno(newData.getFnlUdStfno());
                        if (strKey.equals("fnlUdCpltDthms"))
                            oldData.setFnlUdCpltDthms(newData.getFnlUdCpltDthms());
                        if (strKey.equals("fnlUdStInfo"))
                            oldData.setFnlUdStInfo(newData.getFnlUdStInfo());
                        if (strKey.equals("fnlUdwrCtn"))
                            oldData.setFnlUdwrCtn(newData.getFnlUdwrCtn());
                        if (strKey.equals("udDlBzDays"))
                            oldData.setUdDlBzDays(newData.getUdDlBzDays());
                        if (strKey.equals("isPlmdfNeedYn"))
                            oldData.setIsPlmdfNeedYn(newData.getIsPlmdfNeedYn());
                        if (strKey.equals("rkAdmno"))
                            oldData.setRkAdmno(newData.getRkAdmno());
                        if (strKey.equals("ltrmPlno"))
                            oldData.setLtrmPlno(newData.getLtrmPlno());
                        if (strKey.equals("smsTsPrg"))
                            oldData.setSmsTsPrg(newData.getSmsTsPrg());
                        if (strKey.equals("spccfUdBjYn"))
                            oldData.setSpccfUdBjYn(newData.getSpccfUdBjYn());
                        if (strKey.equals("dgnUdBjYn"))
                            oldData.setDgnUdBjYn(newData.getDgnUdBjYn());
                        if (strKey.equals("nrdcd"))
                            oldData.setNrdcd(newData.getNrdcd());
                        if (strKey.equals("bnCsfcd"))
                            oldData.setBnCsfcd(newData.getBnCsfcd());
                        if (strKey.equals("insBtpcd"))
                            oldData.setInsBtpcd(newData.getInsBtpcd());
                        if (strKey.equals("entpXmnRqCn"))
                            oldData.setEntpXmnRqCn(newData.getEntpXmnRqCn());
                        if (strKey.equals("emegUdBjYn"))
                            oldData.setEmegUdBjYn(newData.getEmegUdBjYn());
                        if (strKey.equals("apldoPrssBjYn"))
                            oldData.setApldoPrssBjYn(newData.getApldoPrssBjYn());
                        if (strKey.equals("apRscd"))
                            oldData.setApRscd(newData.getApRscd());
                        if (strKey.equals("spccfBjFlgcd"))
                            oldData.setSpccfBjFlgcd(newData.getSpccfBjFlgcd());
                        if (strKey.equals("carnoHngl"))
                            oldData.setCarnoHngl(newData.getCarnoHngl());
                        if (strKey.equals("valdStrdt"))
                            oldData.setValdStrdt(newData.getValdStrdt());
                        if (strKey.equals("valdNddt"))
                            oldData.setValdNddt(newData.getValdNddt());
                        if (strKey.equals("crSpccfTpcd"))
                            oldData.setCrSpccfTpcd(newData.getCrSpccfTpcd());
                        if (strKey.equals("lowtDrvRsno"))
                            oldData.setLowtDrvRsno(newData.getLowtDrvRsno());
                        if (strKey.equals("smsRcvptId"))
                            oldData.setSmsRcvptId(newData.getSmsRcvptId());
                        if (strKey.equals("smsRcvYn"))
                            oldData.setSmsRcvYn(newData.getSmsRcvYn());
                        if (strKey.equals("msgRcvptId"))
                            oldData.setMsgRcvptId(newData.getMsgRcvptId());
                        if (strKey.equals("msgRcvYn"))
                            oldData.setMsgRcvYn(newData.getMsgRcvYn());
                        if (strKey.equals("autoAplYn"))
                            oldData.setAutoAplYn(newData.getAutoAplYn());
                        if (strKey.equals("dcuCpmtNeedYn"))
                            oldData.setDcuCpmtNeedYn(newData.getDcuCpmtNeedYn());
                        if (strKey.equals("prsPlno"))
                            oldData.setPrsPlno(newData.getPrsPlno());
                        if (strKey.equals("udwrIsPlmdfNeedYn"))
                            oldData.setUdwrIsPlmdfNeedYn(newData.getUdwrIsPlmdfNeedYn());
                        if (strKey.equals("rtUdRequRs"))
                            oldData.setRtUdRequRs(newData.getRtUdRequRs());
                        if (strKey.equals("crPrvFlgcd"))
                            oldData.setCrPrvFlgcd(newData.getCrPrvFlgcd());
                        if (strKey.equals("crPrvRstcd"))
                            oldData.setCrPrvRstcd(newData.getCrPrvRstcd());
                        if (strKey.equals("crPrvChrpsStfno"))
                            oldData.setCrPrvChrpsStfno(newData.getCrPrvChrpsStfno());
                        if (strKey.equals("crPrvCtn"))
                            oldData.setCrPrvCtn(newData.getCrPrvCtn());
                        if (strKey.equals("crPrvDthms"))
                            oldData.setCrPrvDthms(newData.getCrPrvDthms());
                        if (strKey.equals("dgndcAdxdt"))
                            oldData.setDgndcAdxdt(newData.getDgndcAdxdt());
                        if (strKey.equals("rcnRptgAdxdt"))
                            oldData.setRcnRptgAdxdt(newData.getRcnRptgAdxdt());
                        if (strKey.equals("apldoAdxdt"))
                            oldData.setApldoAdxdt(newData.getApldoAdxdt());
                        if (strKey.equals("sbcvrUdYn"))
                            oldData.setSbcvrUdYn(newData.getSbcvrUdYn());
                        if (strKey.equals("sbcvrCnfstAdxdt"))
                            oldData.setSbcvrCnfstAdxdt(newData.getSbcvrCnfstAdxdt());
                        if (strKey.equals("imgUdEndYn"))
                            oldData.setImgUdEndYn(newData.getImgUdEndYn());
                        if (strKey.equals("pprUdSeqno"))
                            oldData.setPprUdSeqno(newData.getPprUdSeqno());
                        if (strKey.equals("udRqRs"))
                            oldData.setUdRqRs(newData.getUdRqRs());
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
