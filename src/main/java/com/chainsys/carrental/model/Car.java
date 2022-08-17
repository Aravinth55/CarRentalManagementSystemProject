package com.chainsys.carrental.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "carregistration")
public class Car {
	@Id
	@Column(name = "CARREGNO")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
    @NotBlank(message = "*Name can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid CarRegno ")
	private String carRegno;   //Primary key
	@Column(name = "OWNERID")
	private int ownerId;
	@Column(name = "CARMAKE")
	@NotEmpty(message = "*Please enter CarMake")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String carMake;
	@Column(name = "CARMODEL")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
    @NotBlank(message = "*Name can't be Empty")
    @Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Value should be in Alphabets ")
	private String carModel;
	@Column(name = "CARCOLOUR")
	@NotEmpty(message = "*Please enter CarColour")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	
	private String carColour;
	@Column(name = "FUELTYPE")
	@NotEmpty(message = "*Please enter FuelType")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	
	private String fuelType;
	@Column(name = "CARCAPACITY")
	private int carCapacity;
	@Column(name = "CARAVAILABLE")
	@NotEmpty(message = "*Please enter CarAvailable")
	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	
	private String carAvailable;

	public String getCarRegno() {
		return carRegno;
	}

	public void setCarRegno(String carRegno) {
		this.carRegno = carRegno;
	}

	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	public String getCarMake() {
		return carMake;
	}

	public void setCarMake(String carMake) {
		this.carMake = carMake;
	}

	public String getCarModel() {
		return carModel;
	}

	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}

	public String getCarColour() {
		return carColour;
	}

	public void setCarColour(String carColour) {
		this.carColour = carColour;
	}

	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}

	public int getCarCapacity() {
		return carCapacity;
	}

	public void setCarCapacity(int carCapacity) {
		this.carCapacity = carCapacity;
	}

	public String getCarAvailable() {
		return carAvailable;
	}

	public void setCarAvailable(String carAvailable) {
		this.carAvailable = carAvailable;
	}

}
