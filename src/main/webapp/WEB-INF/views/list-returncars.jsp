<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Return Cars List</title>
<style><%@include file="/WEB-INF/css/listimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div class="form">
		<table class="styled-table">
		<caption>Return Car list</caption>
			<thead>
				<tr>
					<th style="background-color:#87CEFA">Car RegistrationNo</th>
					<th style="background-color:#87CEFA">Customer Id</th>
					<th style="background-color:#87CEFA">From Date</th>
					<th style="background-color:#87CEFA">Due Date</th>
					<th style="background-color:#87CEFA">Pay Elapsed</th>
					<th style="background-color:#87CEFA">Car Fine</th>
					<th style="background-color:#87CEFA">Total Fee</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ret" items="${allreturncars}">
					<tr>
						<td>${ret.carRegno}</td>
						<td>${ret.customerId}</td>
						<td>${ret.fromDate}</td>
						<td>${ret.dueDate}</td>
						<td>${ret.payElapsed}</td>
						<td>${ret.carFine}</td>
						<td>${ret.totalFee}</td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
		 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
	</div>
	
</body>
</html>
