/**
 * InsInprmDhStf Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.repository;

// import org.springframework.data.domain.Page;
// import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.skims.domain.entity.InsInprmDhStf;
import com.skims.domain.entity.InsInprmDhStfPK;

@RepositoryRestResource
public interface InsInprmDhStfRepository extends JpaRepository<InsInprmDhStf, InsInprmDhStfPK> {
	// JPQL SAMPLE
	// @Query("select new  com.sample.dto.TestUser(m.username, m.address, m.age) from User m")
    // Page<TestUser>test(Pageable pageable);
}