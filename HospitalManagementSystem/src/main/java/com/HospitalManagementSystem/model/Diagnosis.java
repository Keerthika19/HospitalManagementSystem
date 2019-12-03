package com.HospitalManagementSystem.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

@Entity
@Table(name = "Diagnosis")
public class Diagnosis {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "diagnosisId")
	private int diagnosisId;

	@Column(name = "patientId")
	@NotNull(message = "Id cannot be null")
	private int patientId;

	@Column(name = "symptoms")
	@NotNull(message = "Field cannot be null")
	private String symptoms;

	@Column(name = "diagnosis")
	@NotNull(message = "Field cannot be null")
	private String diagnosis;

	@NotNull(message = "Field cannot be null")
	@Column(name = "administrator")
	private String administrator;

	@NotNull(message = "Field cannot be null")
	@Column(name = "dateOfDiagnosis")
	// @Past
	// @DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dateOfDiagnosis;

	@NotNull(message = "Field cannot be null")
	@Column(name = "followUp")
	private String followUp;

	@Column(name = "dateOfFollowUp")
	// @NotNull(message = "Field cannot be null")
	// @Future
	// @DateTimeFormat(pattern="dd-MM-yyyy")
	private String dateOfFollowUp;

	@Column(name = "billAmount")
	private float billAmount;

	@Column(name = "cardNo")
	private long cardNo;

	@Column(name = "modeOfPayment")
	private String modeOfPayment;

	public Diagnosis() {
		super();
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public int getDiagnosisId() {
		return diagnosisId;
	}

	public void setDiagnosisId(int diagnosisId) {
		this.diagnosisId = diagnosisId;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public String getAdministrator() {
		return administrator;
	}

	public void setAdministrator(String administrator) {
		this.administrator = administrator;
	}

	public Date getDateOfDiagnosis() {
		return dateOfDiagnosis;
	}

	public void setDateOfDiagnosis(Date dateOfDiagnosis) {
		this.dateOfDiagnosis = dateOfDiagnosis;
	}

	public String getFollowUp() {
		return followUp;
	}

	public void setFollowUp(String followUp) {
		this.followUp = followUp;
	}

	public String getDateOfFollowUp() {
		return dateOfFollowUp;
	}

	public void setDateOfFollowUp(String dateOfFollowUp) {
		this.dateOfFollowUp = dateOfFollowUp;
	}

	public float getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(float billAmount) {
		this.billAmount = billAmount;
	}

	public long getCardNo() {
		return cardNo;
	}

	public void setCardNo(long cardNo) {
		this.cardNo = cardNo;
	}

	public String getModeOfPayment() {
		return modeOfPayment;
	}

	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}

}
