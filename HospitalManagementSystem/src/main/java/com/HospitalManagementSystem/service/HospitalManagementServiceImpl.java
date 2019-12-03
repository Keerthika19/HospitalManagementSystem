package com.HospitalManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.HospitalManagementSystem.dao.HospitalManagementDao;
import com.HospitalManagementSystem.model.Diagnosis;

@Service
public class HospitalManagementServiceImpl implements HospitalManagementService {

	@Autowired
	HospitalManagementDao hospitalManagementDao;

	@Override
	@Transactional
	public Diagnosis addPatientDiagnosis(Diagnosis diagnosis) {
		return this.hospitalManagementDao.save(diagnosis);
	}

}
