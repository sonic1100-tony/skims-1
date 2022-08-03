package com.skims.domain.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import com.skims.domain.dto.RetrieveJobListRequestDto;
import com.skims.domain.entity.CusJb;
import com.skims.domain.entity.CusJbPK;
import com.skims.domain.repository.CusJbRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CusJbService {

	private final CusJbRepository repository;
	
	
	
	public List<CusJb> retrieveJobList(RetrieveJobListRequestDto requestDto){
		@SuppressWarnings("serial")
		List<CusJb> jobList = repository.findAll(new Specification<CusJb>() {
			
			@Override
			public Predicate toPredicate(
					Root<CusJb> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				
				List<Predicate> predicates = new ArrayList<>();
	
				if(!ObjectUtils.isEmpty(requestDto.getJbcd())) {
					predicates.add(criteriaBuilder.like(root.get("jbcd"), requestDto.getJbcd() + "%"));
				}
	
				if(!ObjectUtils.isEmpty(requestDto.getJbnm())) {
					predicates.add(criteriaBuilder.like(root.get("jbnm"), requestDto.getJbnm() + "%"));
				}
	
				if(!ObjectUtils.isEmpty(requestDto.getDtJbnm())) {
					predicates.add(criteriaBuilder.equal(root.get("dtJbnm"), requestDto.getDtJbnm() + "%"));
				}
				
				if(!ObjectUtils.isEmpty(requestDto.getPprJbChSeqno())) {
					predicates.add(criteriaBuilder.equal(root.get("isSuccess").as(BigDecimal.class), requestDto.getPprJbChSeqno()));
				}
				
				if(!ObjectUtils.isEmpty(requestDto.getPprJbcd())) {
					predicates.add(criteriaBuilder.equal(root.get("isSuccess").as(String.class), requestDto.getPprJbcd()));
				}
	
				
				return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
			}
		});
		
		return jobList;
	}
	
	public Optional<CusJb> retrieveJob(CusJbPK id){
		return repository.findById(id);
	}
}
