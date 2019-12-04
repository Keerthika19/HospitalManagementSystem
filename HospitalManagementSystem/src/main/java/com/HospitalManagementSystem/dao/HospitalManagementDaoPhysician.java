package com.HospitalManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.HospitalManagementSystem.model.Physician;
@Repository
public interface HospitalManagementDaoPhysician extends CrudRepository<Physician,Integer>{
  
	public Physician findByFirstNameAndLastName(String firstName,String lastName);

	@Query(value = " from Physician where departmentName=:departmentName and state=:state and insurancePlan=:insurancePlan")
	public List<Physician> findByDepartmentName(
			@Param("departmentName") String departmentName,
			@Param("state") String state,
			@Param("insurancePlan") String insurancePlan);
	

}