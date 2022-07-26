/**
 * InsInrCr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.repository;

import java.time.LocalDateTime;
import java.util.Optional;

// import java.util.Map;
// import org.springframework.data.domain.Page;
// import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.skims.domain.entity.InsInrCr;
import com.skims.domain.entity.InsInsCr;

@RepositoryRestResource
public interface InsInrCrRepository extends JpaRepository<InsInrCr, Long> {
	Optional<InsInsCr> findByPlynoAndNdsApStrDthmsLessThanEqualAndNdsApNdDthmsGreaterThan(String plyno, LocalDateTime ndsApStrDthms, LocalDateTime ndsApNdDthms);
	// JPQL SAMPLE
	// @Query("select new  com.sample.dto.TestUser(m.username, m.address, m.age) from User m")
    // Page<TestUser>test(Pageable pageable);

	// JPQL SAMPLE
	// @Query("select new map(m.username, m.address, m.age) from User m")
    // Page<Map<String, Object>>test(Pageable pageable);
}
