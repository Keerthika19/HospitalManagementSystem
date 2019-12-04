package com.HospitalManagementSystem.service;

import java.util.List;

import javax.validation.Valid;

import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.model.Patient;
import com.HospitalManagementSystem.model.Physician;

public interface HospitalManagementService {
	public Diagnosis addPatientDiagnosis(Diagnosis diagnosis);

	Physician createPhysician(Physician physician);

	List<Physician> searchPhysician(String departmentName, String state,
			String insurancePlan);

	Patient existByName(String firstName, String lastName);

	public Patient enrollPatient(@Valid Patient patient);

}
