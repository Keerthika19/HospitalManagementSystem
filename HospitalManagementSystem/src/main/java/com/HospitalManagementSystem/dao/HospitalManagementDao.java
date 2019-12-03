package com.HospitalManagementSystem.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.HospitalManagementSystem.model.Diagnosis;

@Repository
public interface HospitalManagementDao extends CrudRepository<Diagnosis,Integer>{

}
