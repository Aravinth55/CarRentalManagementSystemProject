<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
<style><%@include file="/WEB-INF/css/accesstemplate.css"%>
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<h1 text-align="center">Welcome Customer</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/customer/addcustomerform">Customer Registration</a> <a
					href="/customer/updatecustomeridform">Update your Registration</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Car Booking<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/carrental/addcarrentalform">Car Booking</a>
				<a href="/carrental/updatecarrentalidform">Update Car Booking</a> <a
					href="/carrental/findcarrentalidform">Find Your Booking </a> <a
					href="/customer/findcustomercarrentalform">View Your CarBookings</a>

			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Car Returning<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/returncar/addreturncarform">Car Returning
				</a> <a href="/returncar/updatereturncaridform">Update Your CarReturning</a> <a
					href="/returncar/findreturncaridform">Find Car Returning</a> <a
					href="/customer/findcustomerreturncarform">View Your CarReturning</a>


			</div>
		</div>
	</div>
</body>
</html>