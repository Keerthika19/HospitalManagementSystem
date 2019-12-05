package com.HospitalManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.HospitalManagementSystem.model.Physician;

@Repository
public interface HospitalManagementDaoPhysician extends
		CrudRepository<Physician, Integer> {

	public Physician findByFirstNameAndLastName(String firstName,
			String lastName);

	@Query(value = "select * from Physician where department_name=? and state=? and insurance_plan=?", nativeQuery = true)
	public List<Physician> findByDepartmentName(String departmentName,
			String state, String insurancePlan);

	@Query(" from Physician")
	public List<Physician> findAll();

}