<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<style><%@include file="/WEB-INF/css/listimage.css"%></style>
<title>Car Rental List</title>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="table root">
		<table class="styled-table">
		<caption>RentalCar List</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Customer Id</th>
					<th style="background-color:#87CEFA">From Date</th>
					<th style="background-color:#87CEFA">Due Date</th>
					<th style="background-color:#87CEFA">Retail Fee</th>
					<th style="background-color:#87CEFA">Fuel Level</th>
					<th style="background-color:#87CEFA">Working Condition</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ren" items="${allcarrentals}">
					<tr>
						<td >${ren.carRegno}</td>
						<td>${ren.customerId}</td>
						<td>${ren.fromDate}</td>
						<td>${ren.dueDate}</td>
						<td>${ren.retailFee}</td>
						<td>${ren.fuelLevel}</td>
						<td>${ren.workingCondition}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	
	</div>
		 <div><h3><a href="/home/hello"><strong>Back To MainPage</strong></a></h3></div>
</body>
</html>
