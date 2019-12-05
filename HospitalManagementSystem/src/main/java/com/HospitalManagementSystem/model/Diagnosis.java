package com.HospitalManagementSystem.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@SuppressWarnings("serial")
@Entity
@Table(name = "Diagnosis")
public class Diagnosis implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "diagnosisId")
	private int diagnosisId;

	
	@Column(name = "patientId")
	private int patientId;

	
	@Column(name = "symptoms")
	private String symptoms;

	
	@Column(name = "diagnosisDetails")
	private String diagnosis;

	
	@Column(name = "administrator")
	private String administrator;

	
	@Column(name = "dateOfDiagnosis")
	private Date dateOfDiagnosis;

	@Column(name = "followUp")
	private String followUp;

	@Column(name = "dateOfFollowUp")
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

	public Diagnosis(int diagnosisId,
			@NotNull(message = "Id cannot be null") int patientId,
			@NotNull(message = "Field cannot be null") String symptoms,
			@NotNull(message = "Field cannot be null") String diagnosis,
			@NotNull(message = "Field cannot be null") String administrator,
			@NotNull(message = "Field cannot be null") Date dateOfDiagnosis,
			@NotNull(message = "Field cannot be null") String followUp,
			String dateOfFollowUp, float billAmount, long cardNo,
			String modeOfPayment) {
		super();
		this.diagnosisId = diagnosisId;
		this.patientId = patientId;
		this.symptoms = symptoms;
		this.diagnosis = diagnosis;
		this.administrator = administrator;
		this.dateOfDiagnosis = dateOfDiagnosis;
		this.followUp = followUp;
		this.dateOfFollowUp = dateOfFollowUp;
		this.billAmount = billAmount;
		this.cardNo = cardNo;
		this.modeOfPayment = modeOfPayment;
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
