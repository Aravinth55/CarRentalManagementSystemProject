package com.chainsys.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class IndexController {
	@GetMapping("/index")
	public String getIndex(Model model) {
		return "index";
	}
	@GetMapping("/admin")
	public String getAdminUse(Model model) {
		return "companyadminaccess";
	}
	@GetMapping("/customer")
	public String getCustomerUse(Model model) {
		return "customeraccess";
	}
	@GetMapping("/hello")
	public String getImage(Model model) {
		return "Home";
	}
	@GetMapping("/form")
	public String getDemo(Model model) {
		return "demo";
	}
	@GetMapping("/aaa")
	public String getDemoCustomer(Model model) {
		return "customerDemo";
	}
	@GetMapping("/bbb")
	public String getDemoCarrental(Model model) {
		return "carrentaldemo";
	}
	@GetMapping("/cont")
	public String getDemoContact(Model model) {
		return "contact";
	}

}
