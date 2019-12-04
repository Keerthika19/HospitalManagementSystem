package com.HospitalManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.HospitalManagementSystem.model.Diagnosis;

@Repository
public interface HospitalManagementDaoDiagnosis extends CrudRepository<Diagnosis,Integer>{

	@Query(value="select patientId from diagnosis where diagnosisId=?", nativeQuery=true)
	public int findByDiagnosisId(int id);
	
	public List<Diagnosis> findByPatientId(int id);
	
	public List<Diagnosis> findByDiagnosisIdAndSymptoms(int id,String name);
	
	public List<Diagnosis> findBySymptoms(String name);
	
}
