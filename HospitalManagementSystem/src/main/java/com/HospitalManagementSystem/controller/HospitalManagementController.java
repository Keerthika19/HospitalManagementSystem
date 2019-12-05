package com.HospitalManagementSystem.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.model.Patient;
import com.HospitalManagementSystem.model.Physician;
import com.HospitalManagementSystem.service.HospitalManagementService;

@Controller
public class HospitalManagementController {

	@Autowired
	HospitalManagementService hospitalManagementService;

	@RequestMapping(value = "/")
	public String index() {
		return "welcome";
	}

	@RequestMapping(value = "/toaddDiagnosis")
	public String login(Model model) {
		model.addAttribute("details", new Diagnosis());
		return "enterPatientId";
	}

	@RequestMapping(value = "/checkPatientId")
	public String checkId(@ModelAttribute("details") Diagnosis diagnosis,
			Model model) {
		int result = this.hospitalManagementService.checkId(diagnosis
				.getPatientId());
		if (result == 0) {
			return "noPatientId";
		} else {
			model.addAttribute("details", diagnosis);
			List<Physician> physicians=this.hospitalManagementService.getPhysician();
			model.addAttribute("physicianList",physicians);
			return "diagnosis";
		}
	}

	@PostMapping(value = "/savediagnosis")
	public ModelAndView save(@ModelAttribute("details") Diagnosis diagnosis,
			Model model) {
		Diagnosis diagnosis1 = this.hospitalManagementService
				.addPatientDiagnosis(diagnosis);
		ModelAndView modelAndView = new ModelAndView("/amount");
		model.addAttribute("details", diagnosis1);
		return modelAndView;
	}

	@PostMapping(value = "/savebill")
	public ModelAndView bill(@ModelAttribute("details") Diagnosis diagnosis,
			Model model) {
		Diagnosis diagnosis1 = this.hospitalManagementService
				.addPatientDiagnosis(diagnosis);
		ModelAndView modelAndView = new ModelAndView("/display");
		model.addAttribute("details", diagnosis1);
		return modelAndView;
	}

	@RequestMapping(value = "/createPhysician")
	public String create(@ModelAttribute("details") Physician physician,
			Model model) {

		model.addAttribute("details", new Physician());
		System.out.println(physician.getDepartmentName());
		return "Login";

	}

	@RequestMapping(value = "/addPhysician")
	public String add(@Valid @ModelAttribute("details") Physician physician) {
		Physician physician1 = hospitalManagementService
				.createPhysician(physician);
		if (physician1 != null) {

			return "Success";
		} else {

			return "Fail";
		}
	}

	@RequestMapping(value = "/getPhysiciandetails")
	public String getdetails() {
		return "PhysicianSearch";

	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@RequestParam("departmentName") String departmentName,
			@RequestParam("state") String state,
			@RequestParam("insurancePlan") String insurancePlan, Model model) {
		List<Physician> physicians = this.hospitalManagementService
				.searchPhysician(departmentName, state, insurancePlan);
		model.addAttribute("physiciandetail", physicians);
		if(physicians.isEmpty()){
			return "noPhysician";
		}
		else
		return "PhysicianDetails";

	}

	@RequestMapping(value = "/toEnroll")
	public String toAddPatient(Model model) {

		model.addAttribute("PatientBean", new Patient());
		return "enrollPatient";
	}

	@RequestMapping(value = "/DoEnroll", method = RequestMethod.POST)
	public String doAddPatient(
			@Valid @ModelAttribute("PatientBean") Patient patient,
			BindingResult result) {

		Patient p = hospitalManagementService.existByName(
				patient.getFirstName(), patient.getLastName());
		System.out.println(p);
		if (p == null) {
			if (result.hasErrors()) {

				return "enrollPatient";
			} else {

				hospitalManagementService.enrollPatient(patient);
				return "patientDetails";
			}

		} else {
			return "invalidName";
		}
	}

	@RequestMapping(value = "/getpatientid")
	public String getPatientId() {
		return "patient";
	}

	@RequestMapping(value = "/checkId")
	public String checkId2(@RequestParam("patientId") int patientId, Model model) {
		int result = this.hospitalManagementService.checkId(patientId);
		if (result == 0) {
			return "noPatientId2";
		} else {
			List<Diagnosis> diagnosis = this.hospitalManagementService
					.findByPatientId(patientId);
			model.addAttribute("diagnosis", diagnosis);
			System.out.println("List elements : " + diagnosis);
			return "DisplaySymptoms";
		}
	}

	@RequestMapping(value = "/displayHistory")
	public String getSymptoms(@RequestParam Map<Integer, String> requestParams,
			Model model) {
		int diagnosisId=0;
		Integer patientId=Integer.parseInt(requestParams.get("patientid"));
		String symptoms = requestParams.get("symptom");
		//System.out.println("Diag Id:" + diagnosisId + "\tsymptom:" + symptoms);
		List<Diagnosis> listDiagnosis = this.hospitalManagementService
				.findByDiagnosisIdAndSymptoms(patientId, symptoms);
		model.addAttribute("listdiagnosis", listDiagnosis);
		for (Diagnosis diagnosis2 : listDiagnosis) {
			diagnosisId=diagnosis2.getDiagnosisId();
		}
		Patient patient = this.hospitalManagementService
				.findByDiagnosisId(diagnosisId);
		model.addAttribute("patient", patient);
		System.out.println("List elements : " + listDiagnosis);
		return "DisplayDiagnosis";
	}
}
