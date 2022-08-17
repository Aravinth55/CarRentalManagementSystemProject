<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Customer Car Rentals</title>
<style><%@include file="/WEB-INF/css/listimage.css"%></style></head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form:form action="" method="post" modelAttribute="getcus">
		<div class="form">
			<table class="styled-table">
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
			<caption></caption>
				<tbody>
					<tr>
						<td><label for="customerId">Customer Id</label></td>

						<td><form:input path="customerId" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="customerName">Customer Name</label></td>

						<td><form:input path="customerName" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="customerPassword">Customer Password</label></td>

						<td><form:input path="customerPassword" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="address">Address</label></td>
						<td><form:input path="address" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="mobileNo">Mobile No</label></td>
						<td><form:input path="mobileNo" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="gender">Gender</label></td>
						<td><form:input path="gender" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="bloodGroup">Blood Group</label></td>
						<td><form:input path="bloodGroup" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="personType">Person Type</label></td>
						<td><form:input path="personType" readonly="true" /></td>

					</tr>
					<tr>
						<td><label for="joiningDate">Joining Date</label></td>
						<td><form:input path="joiningDate" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>

	<div id="rentallist">
		<table class="styled-table">
			<caption>RentalCar List</caption>
			<thead>
				<tr>
					<th style="background-color: #87CEFA">carRegNo</th>
					<th style="background-color: #87CEFA">customerId</th>
					<th style="background-color: #87CEFA">fromDate</th>
					<th style="background-color: #87CEFA">dueDate</th>
					<th style="background-color: #87CEFA">retailFee</th>
					<th style="background-color: #87CEFA">fuelLevel</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="carrental" items="${rentallist}">
					<tr>
						<td>${carrental.carRegno}</td>
						<td>${carrental.customerId}</td>
						<td>${carrental.fromDate}</td>
						<td>${carrental.dueDate}</td>
						<td>${carrental.retailFee}</td>
						<td>${carrental.fuelLevel}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<h4>
				<a href="/home/hello">Back To MainPage</a>
			</h4>
		</div>
	</div>

</body>
</html>