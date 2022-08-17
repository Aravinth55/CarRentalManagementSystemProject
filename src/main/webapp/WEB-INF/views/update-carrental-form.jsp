<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Car</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
<script type="text/javascript">
function dateCalculation(){
	var date1 = document.getElementById("fromDate").value;
	var date2 = document.getElementById("dueDate").value;
	var date3 = new Date(date1);
	var date4 = new Date(date2);
	var total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("retailFee").value = parseInt(total)*1000;
	return parseInt(total);
}

</script>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			<form:form action="updatecarrental" method="post" modelAttribute="updatecarrental">
			<h1>Update CarBooking Registration</h1>
			<div class="form">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
			<tbody>
				<tr>
					<td><label for="carRegno">Car RegNo</label></td>
					
					<td>	<form:input path="carRegno"  placeholder="Car RegNo"/>
					</td>
				</tr>
<%-- 					<form:errors path="carRegno" cssClass="text-danger" />
 --%>				<tr>
					<td><label for=customerId>Customer Id</label></td>
					<td>
						<form:input path="customerId"  placeholder="Customer Id"  title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
					</td>
				</tr>
					<tr>
				<td>	<label for="fromDate">From Date</label></td>
				<td>
						<form:input path="fromDate" type="date" id="fromDate" name="fromDate" onchange="dateCalculation()"  placeholder="From Date" required="true"/>
					</td>
				</tr>
						<tr>
						<td><label for="dueDate">Due Date</label></td>
						<td>
							<form:input path="dueDate" type="date" id="dueDate" name="dueDate" onchange="dateCalculation()"  placeholder="Due Date" required="true"/>
					</td>
					</tr>
						<tr>
					<td>	<label for="retailFee">Retail Fee</label> </td>
						<td>
							<form:input path="retailFee" id="retailFee" name="retailFee" onchange="dateCalculation(this.form)"  placeholder="Retail Fee"/>
						</td>
						</tr>
					
<%-- 					<form:errors path="retailFee" cssClass="text-danger" />
 --%>						<tr>
					
					<td>	<label for="fuelLevel">Fuel Level</label></td>
						
					<td>
                        <select name="fuelLevel">
                        <option>--Fuel Level--</option>
                        <option value="Full">Full</option>
                        <option value="half">half</option>
                        <option value="Low">Low</option>
                        </select>
                </td>
					</tr>
<%-- 						<form:errors path="fuelLevel" cssClass="text-danger" />
 --%>						<tr>
						<td><label for="workingCondition">Working Condition</label></td>
						 <td>
                        <select name="workingCondition">
                        <option>--Working Condition--</option>
                        <option value="Good">Good</option>
                        <option value="Average">Average</option>
                        <option value="Bad">Bad</option>
                        </select>
                </td>
						</tr>
<%-- 							<form:errors path="workingCondition" cssClass="text-danger" />
 --%>							</tbody>
							</table>
								<form:button>Update Car Rental</form:button>
						</div>
						
			</form:form>
	 <div><h3><a href="/home/hello">Back To MainPage</a></h3></div>
</body>
</html>