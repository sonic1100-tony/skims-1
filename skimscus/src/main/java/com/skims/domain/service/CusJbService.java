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
					predicates.add(criteriaBuilder.like(root.get("jbcd"), "%" + requestDto.getJbcd() + "%"));
				}
	
				if(!ObjectUtils.isEmpty(requestDto.getJbnm())) {
					predicates.add(criteriaBuilder.like(root.get("jbnm"), "%" + requestDto.getJbnm() + "%"));
				}
	
				if(!ObjectUtils.isEmpty(requestDto.getDtJbnm())) {
					predicates.add(criteriaBuilder.equal(root.get("dtJbnm"), "%" + requestDto.getDtJbnm() + "%"));
				}
				
				return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
			}
		});
		
		return jobList;
	}
	
	public List<CusJb> retrieveJobListStartChar(RetrieveJobListRequestDto requestDto){
		final BigDecimal jbChSeqno = requestDto.getJbChSeqno(); //--직업변경순번
		final String startJbnm = requestDto.getStartJbnm(); //--시작 직업명
		
		List<CusJb> jobList = new ArrayList<>();
		
		// FIXME:
		if(!startJbnm.contains("-")) { 
			return repository.findByJbChSeqnoAndJbnmStartingWithAndDsasRkGrdcdNotOrderByJbnm(jbChSeqno, null, "");
		} else {
			return repository.findByJbChSeqnoAndJbnmStartingWithAndDsasRkGrdcdNotOrderByJbnm(jbChSeqno, null, "");
		}
		
//		return jobList;
	}
	
	public List<CusJb> retrieveJobListParentCode(RetrieveJobListRequestDto requestDto){
		
		final BigDecimal pprJbChSeqno = requestDto.getPprJbChSeqno(); //--상위직업변경순번
		final String pprJbcd = requestDto.getPprJbcd(); //--상위직업코드
		
		return repository.findByPprJbChSeqnoAndPprJbcdOrderByJbnm(pprJbChSeqno, pprJbcd);
	}
	
	public Optional<CusJb> retrieveJob(CusJbPK id){
		return repository.findById(id);
	}
}
