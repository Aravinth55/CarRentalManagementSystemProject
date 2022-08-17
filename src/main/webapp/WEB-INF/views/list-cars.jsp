<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Car List</title>
<style><%@include file="/WEB-INF/css/listimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="table root">
	<table class="styled-table">
	<caption>Car list</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Owner Id</th>
					<th style="background-color:#87CEFA">Car Model</th>
					<th style="background-color:#87CEFA">Car Color</th>
					<th style="background-color:#87CEFA">Fuel Type</th>
					<th style="background-color:#87CEFA">Car Capacity</th>
					<th style="background-color:#87CEFA">Car Available</th>
					<th style="background-color:#87CEFA">Edit Car</th>
					<th style="background-color:#87CEFA">Delete Car</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="car" items="${allcars}">
					<tr>
						<td>${car.carRegno}</td>
						<td>${car.ownerId}</td>
						<td>${car.carModel}</td>
						<td>${car.carColour}</td>
						<td>${car.fuelType}</td>
						<td>${car.carCapacity}</td>
						<td>${car.carAvailable}</td>
						<td><a  href="updatecarform?carregno=${car.carRegno}">Edit Car</a></td>
						<td><a  href="deletecar?carregno=${car.carRegno}">Delete Car</a></td>
						<td><a ></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	 <div><h3><a href="/home/hello"><strong>Back To MainPage</strong></a></h3></div>
	</div>
</body>
</html>
