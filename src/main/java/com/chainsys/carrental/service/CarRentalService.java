package com.chainsys.carrental.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.carrental.compositekey.CarRentalCompositekey;
import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.repository.CarRentalRepository;

@Service
public class CarRentalService {
	@Autowired
	private CarRentalRepository carRentalRepository;

	public List<CarRental> getCarRentals() {
		return carRentalRepository.findAll();
	}

	public CarRental save(CarRental cr) {

		return carRentalRepository.save(cr);
	}

	public Optional<CarRental> findById(CarRentalCompositekey id) {
		return carRentalRepository.findById(id);
	}

//	@Transactional
	public void deleteById(CarRentalCompositekey id) {
		carRentalRepository.deleteById(id);
	}
	public List<CarRental> getLastCarRentalOfCustomer(int customerId,String carRegNo){
		return carRentalRepository.findByCustomerIdAndCarRegnoOrderByFromDateDesc(customerId, carRegNo);
	}
}
