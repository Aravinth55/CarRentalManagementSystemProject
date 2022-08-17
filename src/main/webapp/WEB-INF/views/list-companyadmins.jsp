<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>CompanyAdmin List</title>
<style><%@include file="/WEB-INF/css/listimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="table root">
		<table  class="styled-table">
		<caption>CompanyAdmin list</caption>
		
			<thead>
				<tr>
					<th style="background-color:#87CEFA">User Id</th>
					<th style="background-color:#87CEFA">User Name</th>
					<th style="background-color:#87CEFA">User Password</th>
					<th style="background-color:#87CEFA">Edit User</th>
					<th style="background-color:#87CEFA">Delete User</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cmad" items="${allcompanyadmins}">
					<tr>
						<td>${cmad.userId}</td>
						<td>${cmad.userName}</td>
						<td>${cmad.userPassword}</td>
						<td><a  href="updateadminform?userid=${cmad.userId}">Edit User</a></td>
						<td><a  href="deletecomadmin?userid=${cmad.userId}">Delete User</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
	</div>
</body>
</html>
