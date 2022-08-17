 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Car Booking</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form action="/carrental/deletecarrental" method="get">
		<h1>Find Car booking ByCustomerId</h1>
		<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label>Enter Car Registration Number</label></td>
						<td><input type="text" placeholder="Car RegNo"
							name="carregno" pattern="^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$" title="Enter the CarRegno" required="true"></td>
</tr>
					<tr>
						<td><label>Enter Customer Id</label></td>
						<td><input type="text" placeholder="Customer Id" name="cusid"  pattern="^[0-9]+$" title="Should be Number Format only" required="true">
						</td>
						<td><input type='submit' value="Fetch" name="submit">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>