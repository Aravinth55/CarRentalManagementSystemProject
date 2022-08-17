<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find CompanyAdminBy Id</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form:form action="" method="get" modelAttribute="findcomadminbyid">
		<h1>Find CompanyAdmin</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th id=""></th>
			</tr>
				<caption></caption>		
			<tr>
			<th id=""></th>
			</tr>
				<tbody>
					<tr>
						<td><label for="userId">User Id</label></td>
						<td><form:input path="userId" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="userName">User Name</label></td>

						<td><form:input path="userName" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="userPassword">User Password</label></td>
						<td><form:input path="userPassword" readonly="true" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form:form>
	<div class="form">
	<a href="/companyadmin/adminlogin"><button>Back To Login</button></a>
	</div>

</body>
</html>