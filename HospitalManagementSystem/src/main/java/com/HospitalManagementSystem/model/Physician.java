package com.HospitalManagementSystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "physician")
public class Physician implements Serializable {
	@Id
	@Column(name = "physicianId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int physicianId;

	@Column(name = "firstName")
	private String firstName;

	@Column(name = "lastName")
	private String lastName;

	@Column(name = "departmentName")
	private String departmentName;

	@Column(name = "educationalQualification")
	private String educationalQualification;

	@Column(name = "yearsOfExperience")
	private float yearsOfExperience;

	@Column(name = "state")
	private String state;

	@Column(name = "insurancePlan")
	private String insurancePlan;

	public Physician() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Physician(int physicianId, String firstName, String lastName,
			String departmentName, String educationalQualification,
			float yearsOfExperience, String state, String insurancePlan) {
		super();
		this.physicianId = physicianId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.departmentName = departmentName;
		this.educationalQualification = educationalQualification;
		this.yearsOfExperience = yearsOfExperience;
		this.state = state;
		this.insurancePlan = insurancePlan;
	}

	public int getPhysicianId() {
		return physicianId;
	}

	public void setPhysicianId(int physicianId) {
		this.physicianId = physicianId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getEducationalQualification() {
		return educationalQualification;
	}

	public void setEducationQualification(String educationalQualification) {
		this.educationalQualification = educationalQualification;
	}

	public float getYearsOfExperience() {
		return yearsOfExperience;
	}

	public void setYearsOfExp(float yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getInsurancePlan() {
		return insurancePlan;
	}

	public void setInsurancePlan(String insurancePlan) {
		this.insurancePlan = insurancePlan;
	}

	

}