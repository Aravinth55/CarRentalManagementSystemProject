<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Customer ReturnCars</title>
<style><%@include file="/WEB-INF/css/listimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			<form:form action="" method="post" modelAttribute="getcus">
			<div class="form">
			<table class="styled-table">
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
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

	<div id="returncarlist">
		<table class="styled-table">
		<caption>ReturnCar List</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">CarRegNo</th>
					<th style="background-color:#87CEFA">CustomerId</th>
					<th style="background-color:#87CEFA">FromDate</th>
					<th style="background-color:#87CEFA">DueDate</th>
					<th style="background-color:#87CEFA">PayElapsed</th>
					<th style="background-color:#87CEFA">CarFine</th>
					<th style="background-color:#87CEFA">TotalFee</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="returncar" items="${returncarlist}">
					<tr>
						<td>${returncar.carRegno}</td>
						<td>${returncar.customerId}</td>
						<td>${returncar.fromDate}</td>
						<td>${returncar.dueDate}</td>
						<td>${returncar.payElapsed}</td>
						<td>${returncar.carFine}</td>
						<td>${returncar.totalFee}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		 <div><h4><a href="/home/hello">Back To MainPage</a></h4></div>
	</div>
	
</body>
</html>