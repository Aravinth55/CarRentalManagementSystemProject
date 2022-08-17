package com.chainsys.carrental.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.carrental.model.Car;
import com.chainsys.carrental.repository.CarRegistrationRepository;

@Service
public class CarRegistrationService {
	@Autowired
	private CarRegistrationRepository carRegistrationRepository;

	
	public List<Car> getCars() {
		return carRegistrationRepository.findAll();
	}

	public Car save(Car cr) {
		
		return carRegistrationRepository.save(cr);
	}

	public Optional<Car>  findById(String id) {
		return carRegistrationRepository.findById(id);
	}

//	@Transactional
	public void deleteById(String id) {
		carRegistrationRepository.deleteById(id);
	}
	public List<Car> allCarRegistration(){
		return carRegistrationRepository.findAll();
	}
}
