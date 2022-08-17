<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Car By Id</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form:form action="" method="post" modelAttribute="findcarbyid">
		<h1>Find Car</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label for="carRegno">Car RegNo</label></td>

						<td><form:input path="carRegno" readonly="true" /></td>

					</tr>
					<tr>
						<td><label for="ownerId">Owner Id</label></td>

						<td><form:input path="ownerId" readonly="true" /></td>

					</tr>
					<tr>
						<td><label for="carMake">Car Make</label></td>
						<td><form:input path="carMake" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="carModel">Car Model</label></td>
						<td><form:input path="carModel" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="carColour">Car Colour</label></td>

						<td><form:input path="carColour" readonly="true" /></td>

					</tr>
					<tr>
						<td><label for="fuelType">Fuel Type</label></td>

						<td><form:input path="fuelType" readonly="true" /></td>

					</tr>
					<tr>
						<td><label for="carCapacity">Car Capacity</label></td>

						<td><form:input path="carCapacity" readonly="true" /></td>

					</tr>
					<tr>
						<td><label for="carAvailable">Car Available</label></td>
						<td><form:input path="carAvailable" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>