<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find ReturnCar By Id</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form:form action="" method="get" modelAttribute="findreturncarbyid">
		<h1>Find CarReturning</h1>
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
						<td><label for=customerId>Customer Id</label></td>
						<td><form:input path="customerId" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="fromDate">From Date</label></td>
						<td><form:input path="fromDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="dueDate">Due Date</label></td>
						<td><form:input path="dueDate" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="payElapsed">Pay Elapsed</label></td>
						<td><form:input path="payElapsed" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="carFine">Car Fine</label></td>
						<td><form:input path="carFine" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="totalFee">Total Fee</label></td>
						<td><form:input path="totalFee" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
</html>