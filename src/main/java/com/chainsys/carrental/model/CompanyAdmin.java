package com.chainsys.carrental.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "companyadmin")
public class CompanyAdmin {
	@Id
	@Column(name = "USERID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "USERID")
    @SequenceGenerator(name = "USERID", sequenceName = "USERID",  allocationSize = 1)
	private int userId;    //Primary key
	@Column(name = "USERNAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	
	private String userName;
	@Column(name = "USERPASSWORD")
//	@Size(max = 20, min = 8, message = "*Password length should be 8 to 20")
	@NotBlank(message = "*Password can't be Empty")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid password ")
	
	private String userPassword;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}