<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>CompanyAdmin Access</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/accesstemplate.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<h1 text-align="center">Welcome CompanyAdmin</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				CompanyAdmin<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/companyadmin/addadminform">CompanyAdmin Registration</a> <a
					href="/companyadmin/companyadminlist">View all CompanyAdmin
					details</a> <a href="/companyadmin/updateadminbyidform">Update
					CompanyAdmin</a> <a href="/companyadmin/deleteadminbyidform">Delete
					CompanyAdmin</a> <a href="/companyadmin/findadminbyidform">FindByCompanyAdmin</a>

			</div>
		</div>
		

		<div class="dropdown">
			<button class="dropbtn">
				Customer Registration <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
			 <a
					href="/customer/customerlist">View all Customers details</a> 
				<div>
					<a href="/customer/deletecustomerform">Delete Customer</a> <a
						href="/customer/findcustomerform">Find ByCustomer</a> <a
						href="/customer/findcustomercarrentalform">View Car Booking
						</a> <a href="/customer/findcustomerreturncarform">View Car
						Returning</a>

				</div>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Car Booking <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/carrental/carrentallist">View all Booking details</a> <a
					href="/carrental/updatecarrentalidform">Update Car Booking</a>
					<a href="/carrental/deletecarrentalidform">Delete
							Car Booking</a> <a
					href="/carrental/findcarrentalidform">Find Car Booking</a> <a
					href="/customer/findcustomercarrentalform">Get
					Customer CarBookings</a>

			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				 Car Returning <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				 <a href="/returncar/returncarlist">View all  Car Returning  
					details</a> <a href="/returncar/updatereturncaridform">Update
					 CarReturning</a>
						<a href="/returncar/deletereturncaridform">Delete
								 CarReturning</a>
					 <a href="/returncar/findreturncaridform">Find
					 CarReturning</a> <a href="/customer/findcustomerreturncarform">Get
					Customer  CarReturning</a>


			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Car Registration <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/car/addcarform">Add Car
				</a> <a href="/car/carlist">View all Cars
					details</a> <a href="/car/updatecaridform">Update
					Car</a>
						<a href="/car/deletecaridform">Delete
								Car</a>
					 <a href="/car/findcaridform">Find
					Car</a> 

			</div>
		</div>
	</div>
</body>
</html>