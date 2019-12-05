package com.HospitalManagementSystem.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.HospitalManagementSystem.dao.HospitalManagementDaoDiagnosis;
import com.HospitalManagementSystem.dao.HospitalManagementDaoPatient;
import com.HospitalManagementSystem.dao.HospitalManagementDaoPhysician;
import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.model.Patient;
import com.HospitalManagementSystem.model.Physician;

@Service
public class HospitalManagementServiceImpl implements HospitalManagementService {

	@Autowired
	HospitalManagementDaoDiagnosis hospitalManagementDaoDiagnosis;

	@Autowired
	HospitalManagementDaoPhysician hospitalManagementDaoPhysician;

	@Autowired
	HospitalManagementDaoPatient hospitalManagementDaoPatient;

	@Override
	@Transactional
	public Diagnosis addPatientDiagnosis(Diagnosis diagnosis) {
		return this.hospitalManagementDaoDiagnosis.save(diagnosis);
	}

	@Override
	public List<Physician> getPhysician() {
		return (List<Physician>) this.hospitalManagementDaoPhysician.findAll();
	}
	
	@Transactional
	@Override
	public Physician createPhysician(Physician physician) {
		Physician physician1 = this.hospitalManagementDaoPhysician
				.findByFirstNameAndLastName(physician.getFirstName(),
						physician.getLastName());
		if (physician1 == null) {

			return this.hospitalManagementDaoPhysician.save(physician);
		} else
			return null;
	}

	@Override
	public List<Physician> searchPhysician(String departmentName, String state,
			String insurancePlan) {
		List<Physician> list = this.hospitalManagementDaoPhysician
				.findByDepartmentName(departmentName, state, insurancePlan);
		return list;

	}

	@Transactional
	@Override
	public Patient enrollPatient(Patient patient) {

		return this.hospitalManagementDaoPatient.save(patient);
	}

	@Override
	public Patient existByName(String firstName, String lastName) {

		Patient p = this.hospitalManagementDaoPatient
				.findByFirstNameAndLastName(firstName, lastName);

		return p;
	}

	@Override
	public List<Diagnosis> findByPatientId(int patientId) {
		return this.hospitalManagementDaoDiagnosis.findByPatientId(patientId);
	}

	@Override
	public List<Diagnosis> findByDiagnosisIdAndSymptoms(Integer diagnosisId,
			String symptoms) {
		return this.hospitalManagementDaoDiagnosis
				.findByPatientIdAndSymptoms(diagnosisId, symptoms);
	}

	@Override
	public int checkId(int patientId) {
		Patient patient = this.hospitalManagementDaoPatient
				.findByPatientId(patientId);
		if (patient == null) {
			return 0;
		} else {
			return 1;
		}
	}

	@Override
	public Patient findByDiagnosisId(Integer diagnosisId) {
		int patientId = this.hospitalManagementDaoDiagnosis
				.findByDiagnosisId(diagnosisId);
		return this.hospitalManagementDaoPatient.findByPatientId(patientId);
	}

	

}
