package com.chainsys.carrental.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "customerregistration")
public class CustomerRegistration {
	@Id
	@Column(name = "Customer_Id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "Customer_Id")
    @SequenceGenerator(name = "Customer_Id", sequenceName = "Customer_Id",  allocationSize = 1)
	private int customerId; // Primary key one to many
	@Column(name = "Customer_Name")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String customerName;
	@Column(name = "Customer_Password")
	@Size(max = 20, min = 8, message = "*Password length should be 8 to 20")
	@NotBlank(message = "*Password can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid password ")
	private String customerPassword;
	@Column(name = "Address")
	@NotEmpty(message = "*Please enter Address")
	private String address;
	@Column(name = "Mobile_No")
	@Digits(message = "*Invalid number.", integer = 10, fraction = 0)
	private long mobileNo;
	@Column(name = "Gender")
	@NotEmpty(message = "*Please enter Gender")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String gender;
	@Column(name = "Blood_Group")
	@NotEmpty(message = "*Please enter BloodGroup")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String bloodGroup;
	@Column(name = "Person_Type")
	@NotEmpty(message = "*Please enter PersonType")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String personType;
	@Column(name = "Joining_Date")
	private Date joiningDate;

	@OneToMany(mappedBy = "customerRegistration", fetch = FetchType.LAZY)
	private List<CarRental> carRentals;
	@OneToMany(mappedBy = "customerRegistration", fetch = FetchType.LAZY)
	private List<ReturnCar> returnCars;

	public List<CarRental> getCarRentals() {
		return carRentals;
	}

	public List<ReturnCar> getReturnCars() {
		return returnCars;
	}

	public void setReturnCars(List<ReturnCar> returnCars) {
		this.returnCars = returnCars;
	}

	public void setCarRentals(List<CarRental> carRentals) {
		this.carRentals = carRentals;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getPersonType() {
		return personType;
	}

	public void setPersonType(String personType) {
		this.personType = personType;
	}

	public Date getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}

}
