package com.demo.flight_reservation_app1.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.flight_reservation_app1.Repository.CustomerRepository;
import com.demo.flight_reservation_app1.entity.Customer;

@Controller
public class CustomerController {

	@Autowired
	CustomerRepository customerRepo;
	
	@RequestMapping("/showCustomer")
	public String showCustomer() {
		return "Customer/saveCustomer";
	}

	
	
	@RequestMapping(value="/saveCustomer" , method=RequestMethod.POST)
	public String saveCustomer(@ModelAttribute Customer customer, ModelMap modelMap) {
		customerRepo.save(customer);
		modelMap.addAttribute("msg", "record saved");
		return "Customer/saveCustomer";
	}

	
	@RequestMapping(value="/listCustomer" , method=RequestMethod.GET)
	public String listCustomer(@ModelAttribute Customer customer, ModelMap modelMap) {
		List<Customer> customer1 = customerRepo.findAll();
		modelMap.addAttribute("listtCustomer", customer1);
		return "Customer/showCustomer";
	}

	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam("id") Long id, ModelMap modelMap) {
		customerRepo.deleteById(id);
		List<Customer> customer1 = customerRepo.findAll();
		modelMap.addAttribute("listtCustomer", customer1);
		return "Customer/showCustomer";
	}
	
	@RequestMapping("/updateCustomer")
	public String updateCustomer(@RequestParam("id") Long id, ModelMap modelMap) {
		 Optional<Customer> findById = customerRepo.findById(id);
		 Customer customer = findById.get();
		modelMap.addAttribute("id",customer.getId());
		modelMap.addAttribute("firstName",customer.getFirstName());
		modelMap.addAttribute("lastName", customer.getLastName());
		modelMap.addAttribute("email", customer.getEmail());
		modelMap.addAttribute("phonenumber",customer.getPhonenumber());
		return "Customer/editCustomer";
	}

	@RequestMapping("/updateSaveCustomer")
	public String updateSaveCustomer(@ModelAttribute("customer") Customer customer, ModelMap modelMap) {
		customerRepo.save(customer);
		modelMap.addAttribute("msg", "Customer Details updated");
		
		List<Customer> customer1 = customerRepo.findAll();
		modelMap.addAttribute("listtCustomer", customer1);
		return "Customer/showCustomer";
	}


}
