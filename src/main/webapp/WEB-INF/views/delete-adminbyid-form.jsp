   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Delete CompanyAdmin</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form action="/companyadmin/deletecomadmin" method="get">
		<h1>Delete CompanyAdmin</h1>
		<div class="form">
		
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
					<td>	<label>Enter Car RegisterNo</label></td>
						<td><input type="text" placeholder="User Id" name="userid" title="Enter Your Id" required></td>
						<td>	<input type='submit' value="submit" name="submit"></td>
					</tr>

				</tbody>
			</table>
		</div>
	</form>
</body>
</html>