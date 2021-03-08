package com.demo.flight_reservation_app1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.flight_reservation_app1.Repository.UserRegistrationRepository;
import com.demo.flight_reservation_app1.entity.UserRegistration;

@Controller
public class UserRegistrationController {
	
	@Autowired
	UserRegistrationRepository userRepo;
	
	@RequestMapping("/regUser")
	public String regUser() {
		return "login/registerUser";
	}

	
	@RequestMapping(value="/saveReg" , method=RequestMethod.POST)
	public String saveReg(@ModelAttribute UserRegistration user, ModelMap modelMap) {
		userRepo.save(user);
		modelMap.addAttribute("msg", "record saved");
		return "login/registerUser";
	}
	
	@RequestMapping("/manage")
	public String manage() {
		return "login/Login";
	}
	
	@RequestMapping(value="/validate", method=RequestMethod.POST)
	public String validate(@RequestParam("userName") String user, @RequestParam("passwords") String password) {
	UserRegistration userRegistration= userRepo.findByUserName(user);
	
	if(userRegistration.getUserName().equals(user) && userRegistration.getPasswords().equals(password)) {
		return "login/Manage";
	}else {
		return "login/Login";
	}
	
		
	}
}
