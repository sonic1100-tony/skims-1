/**
 * {{Base}} Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package {{Package}}.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;
import org.springframework.hateoas.PagedModel.PageMetadata;
import org.springframework.hateoas.MediaTypes;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import {{Package}}.domain.entity.{{Base}};
import {{Package}}.domain.entity.{{Base}}PK;
import {{Package}}.domain.repository.{{Base}}Repository;

import lombok.extern.slf4j.Slf4j;

@CrossOrigin(origins = "http://localhost:8088")
@RestController
@Slf4j
public class {{Base}}Controller {

    @Autowired
    {{Base}}Repository repository;

    @GetMapping(value = "/{{callname}}", produces = MediaTypes.HAL_JSON_VALUE)
    public ResponseEntity<PagedModel<EntityModel<{{Base}}>>> getAll(@PageableDefault Pageable pageable) {
        try {
            Page<{{Base}}> dataList = repository.findAll(pageable);

            PagedModel.PageMetadata pageMetadata = new PageMetadata(pageable.getPageSize(),
                    dataList.getNumber(), dataList.getTotalElements());

            PagedModel<EntityModel<{{Base}}>> allData = PagedModel.of(dataList.stream().map(
                    data -> EntityModel.of(data,
                            linkTo(methodOn({{Base}}Controller.class).getById(
							        data.getCode(), data.getGroupCode()                //--PK설정 
									)).withSelfRel(),                                    
                            linkTo(methodOn({{Base}}Controller.class).getById(
							        data.getCode(),data.getGroupCode()                 //--PK설정 
									)).withRel("{{link}}")))
                    .collect(Collectors.toList()), pageMetadata);

            allData.add(linkTo(methodOn({{Base}}Controller.class).getAll(pageable)).withSelfRel());
            allData.add(linkTo({{Base}}Controller.class).slash("profile").slash("{{callname}}")
                    .withRel("profile"));

            return new ResponseEntity<>(allData, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping(value = "/{{callname}}/{{key}}", produces = MediaTypes.HAL_JSON_VALUE)
    public ResponseEntity<EntityModel<{{Base}}>> getById(
	        @PathVariable("code") String code, @PathVariable("groupCode") String groupCode  //--ParamKey
		) {
        Optional<{{Base}}> data = repository.findById(new {{Base}}PK({{keycols}}));

        if (data.isPresent()) {
            return new ResponseEntity<>(EntityModel.of(data.get(), //
                    linkTo(methodOn({{Base}}Controller.class).getById({{keycols}})).withSelfRel(),
                    linkTo(methodOn({{Base}}Controller.class).getById({{keycols}}))
                            .withRel("{{link}}")),
                    HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/{{callname}}", produces = MediaTypes.HAL_JSON_VALUE)
    public ResponseEntity<{{Base}}> postData(@RequestBody {{Base}} newData) {
        try {
            return new ResponseEntity<>(repository.save(newData), HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PutMapping(value = "/{{callname}}/{{key}}", produces = MediaTypes.HAL_JSON_VALUE)
    public ResponseEntity<{{Base}}> putData(@PathVariable("code") String code,
            @PathVariable("groupCode") String groupCode, @RequestBody {{Base}} newData) {
        return patchData(code, groupCode, newData);
    }

    @PatchMapping(value = "/{{callname}}/{{key}}", produces = MediaTypes.HAL_JSON_VALUE)
    public ResponseEntity<{{Base}}> patchData(
	        @PathVariable("code") String code,@PathVariable("groupCode") String groupCode //--ParamKey
			, @RequestBody {{Base}} newData) {

        return repository.findById(new {{Base}}PK({{keycols}})) //
                .map(oldData -> {
                    if (newData.getCodeName() != null)                                   //--skippatch                       
                        oldData.setCodeName(newData.getCodeName());                      //--skippatch     
                    if (newData.getDeleteFlag() != null)                                 //--skippatch   
                        oldData.setDeleteFlag(newData.getDeleteFlag());                  //--patch
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }

    @DeleteMapping(value = "/{{callname}}/{{key}}", produces = MediaTypes.HAL_JSON_VALUE)
    public ResponseEntity<HttpStatus> deleteData(
	        @PathVariable("code") String code,@PathVariable("groupCode") String groupCode //--ParamKey
			) {
        try {
            repository.deleteById(new {{Base}}PK({{keycols}}));
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
