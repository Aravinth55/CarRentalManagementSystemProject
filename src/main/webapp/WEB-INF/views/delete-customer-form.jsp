<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer Registration</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form action="/customer/deletecustomer" method="get">
		<h1>Delete Customer Registration</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label>Enter Customer Id</label></td>
						<td><input type="text" placeholder="Customer id" name="cusid"  title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"></td>

						<td><input type='submit' value="submit" name="submit"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>