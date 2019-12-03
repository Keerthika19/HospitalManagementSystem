package com.HospitalManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.service.HospitalManagementService;


@Controller
public class HospitalManagementController {
	/*@Autowired
	Diagnosis diagnosis;*/
	
	@Autowired
	HospitalManagementService hospitalManagementService;
	
	@RequestMapping(value="/")
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
}
