<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Id</title>
<style>
<%@include file="/WEB-INF/css/backgroundimage.css"%>
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form:form action="" method="get" modelAttribute="findcustomerbyid">
		<h1 style="font-color: white;">Find Customer</h1>
		<div class="form">
			<table>
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
	<div class="form">	<a href="/customer/customerloginpage"><button>Back To
				Login</button></a>
				</div>
</body>
</html>