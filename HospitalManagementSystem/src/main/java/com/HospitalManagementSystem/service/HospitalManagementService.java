package com.HospitalManagementSystem.service;

import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.model.Patient;
import com.HospitalManagementSystem.model.Physician;

public interface HospitalManagementService {
	public Diagnosis addPatientDiagnosis(Diagnosis diagnosis);

	public Physician createPhysician(Physician physician);

	public List<Physician> searchPhysician(String departmentName, String state,
			String insurancePlan);

	public Patient existByName(String firstName, String lastName);

	public Patient enrollPatient(@Valid Patient patient);

	public List<Diagnosis> findByPatientId(int patientId);

	public List<Diagnosis> findByDiagnosisIdAndSymptoms(Integer diagnosisId,
			String symptoms);

	public int checkId(int patientId);

	public Patient findByDiagnosisId(Integer diagnosisId);

	public List<Physician> getPhysician();

}
