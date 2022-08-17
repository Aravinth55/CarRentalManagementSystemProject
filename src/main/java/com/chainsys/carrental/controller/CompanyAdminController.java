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

import com.chainsys.carrental.model.CompanyAdmin;
import com.chainsys.carrental.service.CompanyAdminService;

@Controller
@RequestMapping("/companyadmin")
public class CompanyAdminController {

	@Autowired
	private CompanyAdminService companyAdminService;

	@GetMapping("/companyadminlist")
	public String getCompanyAdmins(Model model) {
		List<CompanyAdmin> allCmd = companyAdminService.getCompanyAdmins();
		model.addAttribute("allcompanyadmins", allCmd);
		return "list-companyadmins";
	}

	@GetMapping("/addadminform")
	public String showAddAdminForm(Model model) {
		CompanyAdmin theCmd = new CompanyAdmin();
		model.addAttribute("addcompanyadmin", theCmd);
		return "add-companyadmin-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewCompanyAdmin(@ModelAttribute("addcompanyadmin") CompanyAdmin theCmd,Errors errors) {
		if(errors.hasErrors()) {
			return"add-companyadmin-form";
		}
		companyAdminService.save(theCmd);
		return "redirect:/companyadmin/findcomadminbyid?userid="+theCmd.getUserId();

	}
	@GetMapping("/updateadminbyidform")
	public String showUpdateForm()
	{
	    return "update-adminbyid-form";
	}

	@GetMapping("/updateadminform")
	public String showUpdateAdminForm(int userid, Model model) {
		CompanyAdmin theCren = companyAdminService.findById(userid);
		model.addAttribute("updatecompanyadmin", theCren);
		return "update-companyadmin-form";
	}

	@PostMapping("/updatecomadmin")
	public String updateCompanyAdmin(@Valid@ModelAttribute("updatecompanyadmin") CompanyAdmin theCmd,Errors errors) {
		if(errors.hasErrors()) {
			return  "update-companyadmin-form";
		}
		companyAdminService.save(theCmd);
		return "redirect:/companyadmin/companyadminlist";
	}
	@GetMapping("/deleteadminbyidform")
	public String showFindByForm()
	{
	    return "delete-adminbyid-form";
	}
	@GetMapping("/deletecomadmin")
	public String deleteCompanyAdmin(int userid) {
		companyAdminService.deleteById(userid);
		return "redirect:/companyadmin/companyadminlist";
	}
	@GetMapping("/findadminbyidform")
	public String showDeleteForm()
	{
	    return "find-adminbyid-form";
	}
	@GetMapping("/findcomadminbyid")
	public String findCompanyAdminById( int userid, Model model) {
		CompanyAdmin theCmd = companyAdminService.findById(userid);
		model.addAttribute("findcomadminbyid", theCmd);
		return "find-companyadmin-by-id-form";
	}
	@GetMapping("/adminlogin")
	public String adminLogin(Model model) {
CompanyAdmin  companyAdmin=new CompanyAdmin();
		model.addAttribute("login", companyAdmin);
		return "admin-login-form";
	}
	@PostMapping("/companyuserlogin")
	public String checkingAccess(@ModelAttribute("login") CompanyAdmin theCmd) {
		CompanyAdmin  companyAdmin=companyAdminService.getUserIdAndUserPassword(theCmd.getUserId(),theCmd.getUserPassword());
		if(companyAdmin!=null) {
			return "redirect:/companyadmin/carindex";   
		}else
			return "redirect:/companyadmin/alartmessage"; 
	}
	@GetMapping("/carindex")
	public String carReg() {
		return "adminaccess";
	}
	@GetMapping("/adminindex")
	public String adminRegistration() {
		return "companyadmin";
	}
	@GetMapping("/alartmessage")
	public String carRegistration() {
		return "submissionform";
	}
	@GetMapping("/carrentalindex")
	public String carRental() {
		return "carrental";
	}
	@GetMapping("/carreturnindex")
	public String carReturn() {
		return "carreturn";
	}
	@GetMapping("/customerindex")
	public String customerRegistration() {
		return "customerregistration";
	}
	
	
	

}
