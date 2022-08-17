package com.chainsys.carrental.model;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.chainsys.carrental.compositekey.ReturnCarCompositekey;

@Entity
@Table(name = "returncar")
@IdClass(ReturnCarCompositekey.class)
public class ReturnCar {
	@Id
	@Column(name = "CARREGNO") 
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
    @NotBlank(message = "*Name can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	
	private String carRegno;      //Foreign key
	@Id
	@Column(name = "CUSTOMERID")
	private int customerId;    //Foreign key
	@Column(name = "FROMDATE")
	private Date fromDate;
	@Column(name = "DUEDATE")
	private Date dueDate;
	@Column(name = "PAYELAPSED")
	
	private int payElapsed;
	@Column(name = "CARFINE")


	private float carFine;
	@Column(name = "TOTALFEE")
//	@Min(value = 0,message="*value should be greater than 0")


	private float totalFee;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CUSTOMERID", nullable = false, insertable = false, updatable = false)
	private CustomerRegistration customerRegistration;

	public CustomerRegistration getCustomerRegistration() {
		return customerRegistration;
	}

	public void setCustomerRegistration(CustomerRegistration customerRegistration) {
		this.customerRegistration = customerRegistration;
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

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public int getPayElapsed() {
		return payElapsed;
	}

	public void setPayElapsed(int payElapsed) {
		this.payElapsed = payElapsed;
	}

	public float getCarFine() {
		return carFine;
	}

	public void setCarFine(float carFine) {
		this.carFine = carFine;
	}

	public float getTotalFee() {
		return totalFee;
	}

	public void setTotalFee(float totalFee) {
		this.totalFee = totalFee;
	}

}
