package com.HospitalManagementSystem.controller;

import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	
	private static final Logger logger = LoggerFactory.getLogger(HospitalManagementService.class);
	
	@Autowired
	HospitalManagementService hospitalManagementService;
	
	@RequestMapping(value="/")
	public String index(){
		return "welcome";
	}
	
	@RequestMapping(value="/toaddDiagnosis")
	public String login(Model model){
		model.addAttribute("details", new Diagnosis());
		return "diagnosis";
	}
	

	@PostMapping(value="/savediagnosis")
	public ModelAndView save(@ModelAttribute("details")Diagnosis diagnosis, Model model){
		Diagnosis diagnosis1= this.hospitalManagementService.addPatientDiagnosis(diagnosis);
		ModelAndView modelAndView= new ModelAndView("/amount");
		model.addAttribute("details",diagnosis1);
		return modelAndView;
	}
	
	@PostMapping(value="/savebill")
	public ModelAndView bill(@ModelAttribute("details")Diagnosis diagnosis,Model model){
		Diagnosis diagnosis1= this.hospitalManagementService.addPatientDiagnosis(diagnosis);
		ModelAndView modelAndView= new ModelAndView("/display");
		model.addAttribute("details",diagnosis1);
		return modelAndView;
	}
	
	/*@RequestMapping(value="/toaddPhysician")
	public String home(Model model) {
		logger.info("Inside the Main controller-index ");
		model.addAttribute("details", new Physician());
		
		return "index";
	}*/
	
	@RequestMapping(value="/createPhysician")
	public String create( @ModelAttribute("details") Physician physician, Model model)
	{
		logger.info("Inside the controller-create physician");
		logger.info("Inside the Main controller-index ");
		model.addAttribute("details", new Physician());
		System.out.println(physician.getDepartmentName());
		return "Login";
		
	}
	
	@RequestMapping(value="/addPhysician")
	public String add( @Valid @ModelAttribute("details") Physician physician)
	{
		 Physician physician1=hospitalManagementService.createPhysician(physician);
		 if(physician1!=null)
		 {
			 logger.info("Inside the controller with success");
		 return "Success";
		 }
		 else
		 {
			 logger.info("Inside the controller with fail operation");
			 return "Fail";
		 }
	}
	
	/*@RequestMapping(value = "/")
	public String search() {
		return "index";

	}
*/
	@RequestMapping(value = "/getPhysiciandetails")
	public String getdetails() {
		return "PhysicianSearch";

	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@RequestParam("departmentName") String departmentName,
			@RequestParam("state") String state,
			@RequestParam("insurancePlan") String insurancePlan, Model model) {
		
		List<Physician> physician = this.hospitalManagementService
				.searchPhysician(departmentName, state, insurancePlan);
		
	
		model.addAttribute("physiciandetail", physician);
		return "PhysicianDetails";

	}

	@RequestMapping(value = "/toEnroll")
	public String toAddPatient(Model model) {
		logger.info("toAdd patient method in controller");
		model.addAttribute("PatientBean", new Patient());
		return "enrollPatient";
	}

	@RequestMapping(value = "/DoEnroll", method = RequestMethod.POST)

	public String doAddPatient(@Valid @ModelAttribute("PatientBean") Patient patient, BindingResult result) {
		logger.info("toAdd patient method in controller");
		Patient p = hospitalManagementService.existByName(patient.getFirstName(), patient.getLastName());
		System.out.println(p);
		if (p == null) {
			if (result.hasErrors()) {
				logger.error("error data filled is not correct");
				return "enrollPatient";
			} else {
				logger.info("data entered is in correct format");
				hospitalManagementService.enrollPatient(patient);
				return "patientDetails";
			}

		} else {
			logger.info("first & last name entered is already present");
			return "invalidName";
		}
	}
}
