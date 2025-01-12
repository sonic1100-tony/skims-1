/**
 * {{EntityName}} Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package {{Package}}.domain.repository;

// import org.springframework.data.domain.Page;
// import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import {{Package}}.domain.entity.{{EntityName}};
{{@IfIdClass}}import {{Package}}.domain.entity.{{IdType}};

@RepositoryRestResource
public interface {{EntityName}}Repository extends JpaRepository<{{EntityName}}, {{IdType}}> {
	// JPQL SAMPLE
	// @Query("select new  com.sample.dto.TestUser(m.username, m.address, m.age) from User m")
    // Page<TestUser>test(Pageable pageable);
}
