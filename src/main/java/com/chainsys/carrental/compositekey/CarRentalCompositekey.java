package com.chainsys.carrental.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class CarRentalCompositekey implements Serializable {
	@Column(name = "CARREGNO")
	private String carRegno;       //Foreign key
	@Column(name = "CUSTOMERID")
	private int customerId;
	CarRentalCompositekey(){
		
	}
	public CarRentalCompositekey(String carRegno,int customerId) {
		this.carRegno=carRegno;
		this.customerId=customerId;
	}
	public String getCarRegno() {
		return carRegno;
	}
	public void setCarRegno(String carRegno) {
		this.carRegno = carRegno;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
}
