<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Car</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	 <form:form action="add" method="post"
                modelAttribute="addcar" >
                <h1>Add Car Registration Form</h1>
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
						<form:input path="carRegno" placeholder="Car Regno" pattern="^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$" title="Enter the CarRegno" required="true"/></td>
<%-- 						<td><form:errors path="carRegno" cssClass="text-danger" /></td>
 --%>				</tr>
					
	
				<tr>
				<td>	<label for="ownerId">Owner Id</label></td>
					<td>
						<form:input path="ownerId"  placeholder="Owner Id" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
</td>				</tr>
<tr>
				
				<td>	<label for="carMake">Car Make</label></td>
				
					<td>	<form:input path="carMake"  placeholder="Car Make" pattern="^[A-Za-z]\\w{2,20}$"   title="It should be Only Alphabet" required="true"/>
<%-- 							<form:errors path="carMake" cssClass="text-danger" />
 --%>				</td>
 						 
 						</tr>
	
				<tr>
					<td><label for="carModel">Car Model</label></td>
					<td>
						<form:input path="carModel"  placeholder="Car Model" title="Enter thr Car Model" required="true"/>
				</td>
<%-- 				<form:errors path="carModel" cssClass="text-danger" />
 --%> 			</tr>
					
	
					<tr>
					<td><label for="carColour">Car Color</label></td>
					<td>
						<form:input path="carColour"  placeholder="Car Colour" pattern="^[A-Za-z]\\w{2,20}$" title="It should be Only Alphabet" required="true"/>
				</td>
<%-- 					<form:errors path="carColour" cssClass="text-danger" />
 --%>				</tr>
				
	
				<tr>
					<td><label for="fuelType">Fuel Type</label>
					</td>
					<td>	<form:input path="fuelType"  placeholder="FuelType" pattern="^[A-Za-z]\\w{2,20}$"  title="It should be Only Alphabet" required="true"/>
					</td>
<%-- 						<form:errors path="fuelType" cssClass="text-danger" />
 --%>				</tr>
				
	
					<tr>
					<td><label for="carCapacity">Car Capacity</label></td>
					
					<td>	<form:input path="carCapacity"  placeholder="Car Capacity" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true"/>
					</td>
				</tr>
					<tr>
				<td>	<label for="carAvailable">Car Available</label></td>
				
					<td>	<form:input path="carAvailable"  placeholder="Car Available" pattern="^[A-Za-z]\\w{2,20}$" title="It should be Only Alphabet" required="true"/>
				</td>
<%-- 				<form:errors path="carAvailable" cssClass="text-danger" />
 --%>					</tr>
						
	</tbody>
	</table>
	
							<form:button>Add New Car</form:button>
					
				</div>		
			</form:form>
</body>
</html>