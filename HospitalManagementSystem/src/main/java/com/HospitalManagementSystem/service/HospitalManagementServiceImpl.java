package com.HospitalManagementSystem.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

	private static final Logger logger = LoggerFactory.getLogger(HospitalManagementService.class);
	
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

	
	
	
	@Transactional
	@Override
	public Physician createPhysician(Physician physician) {
		Physician physician1=this.hospitalManagementDaoPhysician.findByFirstNameAndLastName(physician.getFirstName(), physician.getLastName());
		if(physician1==null)
		{
			logger.info("Inside the Service method");
		return this.hospitalManagementDaoPhysician.save(physician);
		}
		else
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
		logger.info("enroll patient in service");
		return this.hospitalManagementDaoPatient.save(patient);
	}

	@Override
	@Transactional
	public Patient existByName(String firstName, String lastName) {

		Patient p = this.hospitalManagementDaoPatient.findByFirstNameAndLastName(firstName, lastName);
		logger.info("existsByName method in service");
		return p;
	}
}
