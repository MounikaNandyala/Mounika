package com.excent.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.excent.entity.RegistrationEntity;

public interface RegistrationRepository extends CrudRepository<RegistrationEntity, Long> {
	@Transactional
	@Query(value="select * from registration where reg_acc_id=?1",nativeQuery=true)
    public List<RegistrationEntity> findById(long id);
	
}
