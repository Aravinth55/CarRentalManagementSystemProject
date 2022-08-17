package com.chainsys.carrental.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.model.ReturnCar;

public class CustomerReturnCarsDTO {
	private CustomerRegistration customerRegistration;
	private List<ReturnCar> returnCarList = new ArrayList<>();

	public CustomerRegistration getCustomerRegistration() {
		return customerRegistration;
	}

	public void setCustomerRegistration(CustomerRegistration customerRegistration) {
		this.customerRegistration = customerRegistration;
	}

	public void addReturnCar(ReturnCar returncar) {
		returnCarList.add(returncar);
	}

	public List<ReturnCar> getReturnCarList() {
		return returnCarList;
	}

}
