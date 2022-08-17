package com.chainsys.carrental.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.carrental.businesslogic.Logic;
import com.chainsys.carrental.compositekey.ReturnCarCompositekey;
import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.ReturnCar;
import com.chainsys.carrental.repository.ReturnCarRepository;

@Service
public class ReturnCarService {
	@Autowired
	private ReturnCarRepository returnCarRepository;
	@Autowired
	private CarRentalService carRentalService;
	public List<ReturnCar> getReturnCars() {
		return returnCarRepository.findAll();
	}

	public ReturnCar save(ReturnCar cr) {
		List<CarRental>carRentalList=carRentalService.getLastCarRentalOfCustomer(cr.getCustomerId(), cr.getCarRegno());
		CarRental carRental=carRentalList.get(0);
		cr.setFromDate(carRental.getFromDate());
		cr.setDueDate(carRental.getDueDate());
		int payElapsed=Logic.getPayElapsed(carRental.getDueDate());
		cr.setPayElapsed(payElapsed);
		cr.setCarFine(payElapsed * 500f);
		cr.setTotalFee(Logic.getTotalFees(Logic.getDaysDifferent(carRental.getFromDate(), carRental.getDueDate()), payElapsed));
		return returnCarRepository.save(cr);
	}

	public Optional<ReturnCar> findById(ReturnCarCompositekey id) {
		return returnCarRepository.findById(id);
	}

//	@Transactional
	public void deleteById(ReturnCarCompositekey id) {
		returnCarRepository.deleteById(id);
	}
}
