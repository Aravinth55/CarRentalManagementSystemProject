package com.chainsys.carrental.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.CustomerRegistration;


public class CustomerRentalsDTO {
	private CustomerRegistration customerRegistration;
	private List<CarRental> rentallist = new ArrayList<>();

	public CustomerRegistration getCustomerregistration() {
		return customerRegistration;
	}

	public void setCustomerregistration(CustomerRegistration customerregistration) {
		this.customerRegistration = customerregistration;
	}

	public List<CarRental> getRentallist() {
		return rentallist;
	}


public void addCarRental(CarRental cr) {
rentallist.add(cr);	
}

}
