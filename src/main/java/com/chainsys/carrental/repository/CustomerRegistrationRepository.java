package com.chainsys.carrental.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.CustomerRegistration;
@Repository
public interface CustomerRegistrationRepository extends CrudRepository<CustomerRegistration, Integer> {
	CustomerRegistration findById(int id);

	CustomerRegistration save(CarRental carRental);

	void deleteById(int customerId);

	List<CustomerRegistration> findAll();
	
	
	CustomerRegistration findByCustomerIdAndCustomerPassword(int id,String str); //login user
}
