package com.chainsys.carrental.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.carrental.dto.CustomerRentalsDTO;
import com.chainsys.carrental.dto.CustomerReturnCarsDTO;
import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.model.ReturnCar;
import com.chainsys.carrental.repository.CarRentalRepository;
import com.chainsys.carrental.repository.CustomerRegistrationRepository;
import com.chainsys.carrental.repository.ReturnCarRepository;

@Service
public class CustomerRegistrationService {
	@Autowired
	private CustomerRegistrationRepository  customerRegistrationRepository;

	@Autowired
	private CarRentalRepository carRentalRepository;
	
	@Autowired
	private ReturnCarRepository returnCarRepository;

	public List<CustomerRegistration> getCustomers() {
		return customerRegistrationRepository.findAll();
	}

	// @Transactional
	public CustomerRegistration save(CustomerRegistration cr) {

		return customerRegistrationRepository.save(cr);
	}

	public CustomerRegistration findById(int id) {
		return customerRegistrationRepository.findById(id);
	}

	// @Transactional
	public void deleteById(int id) {
		customerRegistrationRepository.deleteById(id);
	}
	public List<CustomerRegistration> allCustomerRegistration(){
		return customerRegistrationRepository.findAll();
	}
	public CustomerRegistration getCustomerIdAndCustomerPassword(int customerId,String customerPassword) {
		return customerRegistrationRepository.findByCustomerIdAndCustomerPassword(customerId, customerPassword);    //login method 
	}

	@Transactional
	public CustomerRentalsDTO getCustomerAndRentals(int id) {

		CustomerRegistration cus = findById(id);
		CustomerRentalsDTO crdto = new CustomerRentalsDTO();
		crdto.setCustomerregistration(cus);
	List<CarRental> carRentals = carRentalRepository.findByCustomerId(id);
		  Iterator<CarRental> itr=carRentals.iterator();
        while(itr.hasNext()) {
        	crdto.addCarRental(itr.next());
        }
		return crdto;
	}
	@Transactional
	public CustomerReturnCarsDTO getCustomerAndReturnCars(int id) {

		CustomerRegistration cus = findById(id);
		CustomerReturnCarsDTO carReturndto = new CustomerReturnCarsDTO();
		carReturndto.setCustomerRegistration(cus);
	List<ReturnCar> returnCar = returnCarRepository.findByCustomerId(id);
		  Iterator<ReturnCar> itr=returnCar.iterator();
        while(itr.hasNext()) {
        	carReturndto.addReturnCar(itr.next());
        }
		return carReturndto;
	}
}
