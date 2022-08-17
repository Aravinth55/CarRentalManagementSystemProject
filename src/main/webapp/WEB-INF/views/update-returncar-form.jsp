<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Return Car</title>
<script type="text/javascript">
function calculation(){
	var payelapsed=document.getElementById("payElapsed").value;
	var totalfee =parseInt(payelapsed) *500;
	
	var date1 = document.getElementById("fromDate").value;
	var date2 = document.getElementById("dueDate").value;
	var date3 = new Date(date1);
	var date4 = new Date(date2);
	var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("carFine").value = totalfee;
	document.getElementById("totalFee").value = parseInt(total)*1000+parseInt(totalfee);
	
	return parseInt(total);
}
</script>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
				<form:form action="updatereturncar" method="post"
					modelAttribute="updatereturncar">
					<h1>Update Car Returning</h1>
					<div class="form">
					<table>
						<caption></caption>		
			<tr>
			<th></th>
			</tr>
					<tbody>
					<tr>
						<td><label for="carRegno">Car RegNo</label></td>
						<td>
							<form:input path="carRegno" placeholder="Car RegNo"/>
						</td>
					</tr>
<%-- 					<form:errors path="carRegno" cssClass="text-danger" />
 --%>				<tr>
						<td><label for=customerId>Customer Id</label></td>
						<td>
							<form:input path="customerId" placeholder="Customer Id"/>
						</td>
					</tr>
					<tr>
						<td><label for="fromDate">From Date</label></td>
						<td>
							<form:input path="fromDate" type="date" id="fromDate" name="fromDate" onchange="calculation()" placeholder="From Date" required="true"/>
						</td>
						</tr>
<%-- 						<form:errors path="fromDate" cssClass="text-danger" />
 --%>						<tr>
						<td>	<label for="dueDate">Due Date</label></td>
							<td>
								<form:input path="dueDate" type="date" id="dueDate" name="dueDate" onchange="calculation()" placeholder="Due Date" required="true"/>
							</td>
						</tr>
<%-- 						<form:errors path="dueDate" cssClass="text-danger" />
 --%>						<tr>
						<td>	<label for="payElapsed">Pay Elapsed</label></td>
							<td>
								<form:input path="payElapsed" id="payElapsed" name="payElapsed" onchange="calculation()" placeholder="Pay Elapsed" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
							</td>
						</tr>
						<tr>
						<td>	<label for="carFine">Car Fine</label></td>
							<td>
								<form:input path="carFine" id="carFine" name="carFine" onchange="calculation(this.form)" placeholder="Car Fine"/>
							</td>
						</tr>
						<tr>
						<td>	<label for="totalFee">Total Fee</label></td>
							<td>
								<form:input path="totalFee" id="totalFee" name="totalFee" onchange="calculation(this.form)" placeholder="Total Fee"/>
							</td>
							</tr>
							</tbody>
							</table>
								<form:button>Update Car Returning</form:button>
							</div>
							
				</form:form>
		 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
</body>
</html>
