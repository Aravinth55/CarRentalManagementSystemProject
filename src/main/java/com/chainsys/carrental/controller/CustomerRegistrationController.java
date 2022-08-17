package com.chainsys.carrental.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.carrental.dto.CustomerRentalsDTO;
import com.chainsys.carrental.dto.CustomerReturnCarsDTO;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.service.CustomerRegistrationService;

@Controller
@RequestMapping("/customer")
public class CustomerRegistrationController {
@Autowired
CustomerRegistrationService customerRegistrationService;


@GetMapping("/customerlist")
public String getCustomerRegistrations(Model model) {
	List<CustomerRegistration> allCustomers = customerRegistrationService.getCustomers();
	model.addAttribute("allcustomers",allCustomers);
	
	return "list-customers";
}
@GetMapping("/addcustomerform")
public String showAddCustomerForm(Model model) {
	CustomerRegistration theCus = new CustomerRegistration();
	model.addAttribute("addcustomer", theCus);
	return "add-customer-form";
}

@PostMapping("/add")
// We need give from where to read data from the HTTP request and also the
// content type ("application/json")
public String addNewCustomer(@Valid@ModelAttribute("addcustomer") CustomerRegistration theCus,Errors errors) {
	if(errors.hasErrors()) {
		return "add-customer-form";
	}
	customerRegistrationService.save(theCus);
	return "redirect:/customer/findcustomerbyid?cusid="+theCus.getCustomerId();
}
@GetMapping("/updatecustomeridform")
public String showUpdateForm()
{
    return "update-customerid-form";
}
@GetMapping("/updatecustomerform")
public String showUpdateCustomerForm( int cusid, Model model) {
	CustomerRegistration theCus = customerRegistrationService.findById(cusid);
	model.addAttribute("updatecustomer", theCus);
	return "update-customer-form";
}
@PostMapping("/updatecus")
public String updateCustomer(@Valid@ModelAttribute("updatecustomer") CustomerRegistration theCus,Errors errors) {
	if(errors.hasErrors()) {
		return "update-customer-form";
	}
	customerRegistrationService.save(theCus);
	return "redirect:/customer/customerlist";
}
@GetMapping("/deletecustomerform")
public String showFindForm()
{
    return "delete-customer-form";
}
@GetMapping("/deletecustomer")
public String deleteCustomer(int cusid) {
	customerRegistrationService.deleteById(cusid);
	return "redirect:/customer/customerlist";
}
@GetMapping("/findcustomerform")
public String showDeleteForm()
{
    return "findbycustomerid";
}
@GetMapping("/findcustomerbyid")
public String findCustomerById(int cusid, Model model) {
  CustomerRegistration theCus = customerRegistrationService.findById(cusid);
	model.addAttribute("findcustomerbyid", theCus);
	return "find-customer-by-id-form";
}
@GetMapping("/findcustomercarrentalform")
public String showCustomerCarrentalForm()
{
    return "fetchcustomercarrentals";
}
@GetMapping("/getcustomerrentalcars")
public String getCustomerCarRentals(int cusid,Model model) {
	CustomerRentalsDTO crdto =customerRegistrationService.getCustomerAndRentals(cusid);
	model.addAttribute("getcus",crdto.getCustomerregistration());
	model.addAttribute("rentallist",crdto.getRentallist());
return "list-customer-carrental";
}
@GetMapping("/findcustomerreturncarform")
public String showCustomerReturnCarForm()
{
    return "fetchcustomerreturncar";
}
@GetMapping("/getcustomerreturncars")
public String getCustomerReturnCars(int cusid,Model model) {
	CustomerReturnCarsDTO credto =customerRegistrationService.getCustomerAndReturnCars(cusid);
	model.addAttribute("getcus",credto.getCustomerRegistration());
	model.addAttribute("returncarlist",credto.getReturnCarList());
return "list-customer-returncar";
}
@GetMapping("/customerloginpage")
public String customerLogin(Model model) {
	CustomerRegistration  customerRegistration=new CustomerRegistration();
	model.addAttribute("cuslogin", customerRegistration);
	return "customer-login-form";
}
@PostMapping("/customerlogin")
public String checkingAccess(@ModelAttribute("cuslogin") CustomerRegistration theCus) {
	CustomerRegistration  customerRegistration=customerRegistrationService.getCustomerIdAndCustomerPassword(theCus.getCustomerId(),theCus.getCustomerPassword());
	if(customerRegistration!=null) {
		return "redirect:/customer/customerindex";
	}else
		return "redirect:/customer/customersubmission";
}

@GetMapping("/customerindex")
public String carReg() {
	return "customeraccess";
}

@GetMapping("/customersubmission")
public String carRental() {
	return "customersubmissionform";
}
@GetMapping("/returncustomeruses")
public String carReturn() {
	return "customercarreturn";
}

}

