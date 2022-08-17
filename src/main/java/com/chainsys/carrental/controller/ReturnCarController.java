package com.chainsys.carrental.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.carrental.compositekey.ReturnCarCompositekey;
import com.chainsys.carrental.model.Car;
import com.chainsys.carrental.model.ReturnCar;
import com.chainsys.carrental.service.CarRegistrationService;
import com.chainsys.carrental.service.CustomerRegistrationService;
import com.chainsys.carrental.service.ReturnCarService;

@Controller
@RequestMapping("/returncar")
public class ReturnCarController {

	@Autowired
	ReturnCarService returnCarService;

	@Autowired
	private CarRegistrationService carRegistrationService;

	@Autowired
	private CustomerRegistrationService customerRegistrationService;

	@GetMapping("/returncarlist")
	public String getReturnCar(Model model) {
		List<ReturnCar> allCret = returnCarService.getReturnCars();
		model.addAttribute("allreturncars", allCret);
		return "list-returncars";
	}

	@GetMapping("/addreturncarform")
	public String showAddReturnCarForm(Model model) {
		List<Car> allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allCars", allCarRegistration);
		ReturnCar theCret = new ReturnCar();
		model.addAttribute("addreturncar", theCret);
		return "add-returncar-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewReturnCar(@Valid@ModelAttribute("addreturncar") ReturnCar theCret,Errors errors)  {
		if(errors.hasErrors()) {
			return "add-returncar-form";
		}
		returnCarService.save(theCret);
		return "redirect:/returncar/returncarlist";
	}
	@GetMapping("/updatereturncaridform")
	public String showUpdateForm()
	{
	    return "update-returncarid-form";
	}
	@GetMapping("/updatereturncarform")
	public String showUpdateReturnCarForm(String carregno, int cusid,
			Model model) {
		ReturnCarCompositekey returnCarCompositekey = new ReturnCarCompositekey(carregno, cusid);
		Optional<ReturnCar> theCren = returnCarService.findById(returnCarCompositekey);
		model.addAttribute("updatereturncar", theCren);
		return "update-returncar-form";
	}

	@PostMapping("/updatereturncar")
	public String updateReturncars(@Valid@ModelAttribute("updatereturncar") ReturnCar theCret,Errors errors)  {
		if(errors.hasErrors()) {
			return "update-returncar-form";
		}
		returnCarService.save(theCret);
		return "redirect:/returncar/returncarlist";
	}
	@GetMapping("/deletereturncaridform")
	public String showDeleteForm()
	{
	    return "delete-returncarid-form";
	}
	@GetMapping("/deletereturncar")
	public String deleteReturnCar(String carregno,int cusid) {
		ReturnCarCompositekey returnCarCompositekey = new ReturnCarCompositekey(carregno, cusid);
		returnCarService.deleteById(returnCarCompositekey);
		return "redirect:/returncar/returncarlist";
	}
	@GetMapping("/findreturncaridform")
	public String showFindForm()
	{
	    return "find-returncarid-form";
	}
	@GetMapping("/findreturncarbyid")
	public String findReturnCarById(String carregno,int cusid,Model model) {
		ReturnCarCompositekey returnCarCompositekey = new ReturnCarCompositekey(carregno, cusid);
		Optional<ReturnCar> theCret = returnCarService.findById(returnCarCompositekey);
		model.addAttribute("findreturncarbyid", theCret);
		return "find-returncar-by-id-form";
	}
}
