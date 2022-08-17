<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style><%@include file="/WEB-INF/css/backgroundimage.css"%></style>
<script type="text/javascript">

 var userNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm#customerName.value.match(customerPasswordRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				document.getElementById('customerName').focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}
 var userpasswordCheck = function() {
	 var customerPasswordRegex = new RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/");
	 if(!document.myForm.customerPassword.value.match(customerPasswordRegex)){
			if(alert("assword must be contain 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
				 document.myForm.customerPassword.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}
 var addressCheck = function() {
	 if(document.myForm.address.value == ""){
			if(alert("Address cannot be blank")){ 
				 document.myForm.address.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
 }
 var phoneNumberCheck = function() {
	 var phoneRg = new RegExp("[1-9]{1}[0-9]{9}");
	 if(!document.myForm.mobileNo.value.match(phoneRg)){
			if(alert("Phone Number not valid")){
				 document.myForm.mobileNo.focus();
			}
			else
				document.activeElement.blur();
		}
    else{
    	return false;
    }
} 
 
/* var emailNameCheck = function() {
	var rg = new RegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
	if(!document.myForm.email.value.match(rg)){
		if(alert("Email not valid")){
			document.myForm.email.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    } */
}
var genderNameCheck = function() {
	var genderRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.gender.value.match(genderRegex)){
		if(alert("Gender name can't be empty or must contain only alphabets")){
			 document.myForm.gender.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}
var bloodgroupNameCheck = function() {
	var bloodgroupRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.bloodGroup.value.match(bloodgroupRegex)){
		if(alert("BloodGroup name can't be empty or must contain only alphabets")){
			 document.myForm.bloodGroup.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}
var personTypeNameCheck = function() {
	var personTypeRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.personType.value.match(personTypeRegex)){
		if(alert("PersonType name can't be empty or must contain only alphabets")){
			 document.myForm.personType.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}
</script>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			 <form:form style="line-height:29px;" action="add" method="post"
                modelAttribute="addcustomer"  name="myForm">
                 <h1>Customer Registration</h1>
                 <div class="form">
                 <table class="myTable">
                 	<caption></caption>		
			<tr>
			<th></th>
			</tr>
                 <tbody>
				<tr>
					<td><label for="customerName">Customer Name</label></td>
					<td class="cus">
						<form:input path="customerName"  name="customerName"  placeholder="Customer Name" pattern="^[A-Za-z]\\w{2,20}$" title="It should be Only Alphabet" required="true"/>
					</td>
					<%-- <td>	<form:errors path="customerName" cssClass="text-danger" /></td> --%>
				</tr>
				
			
				<tr>
					<td><label for="customerPassword">Customer Password</label></td>
					<td>
						<form:input path="customerPassword" name="customerPassword"  placeholder="Customer Password"   title="Please Enter the password" required="true"/>
				</td>
			</tr>
<%-- 					<form:errors path="customerPassword" cssClass="text-danger" />
 --%>				
			<tr>
					<td><label for="address">Address</label></td>
<td>						<form:input path="address" name="address"  placeholder="Address"  title="It should be Only Alphabet" required="true" />
					</td>
				</tr>
<%-- 				<form:errors path="address" cssClass="text-danger" />
 --%>				<tr>
					<td><label for="mobileNo">Mobile No</label></td>
				<td>
						<form:input path="mobileNo" placeholder="Mobile No" name="mobileNo" pattern="^\\d{10}$" maxlength="10"  title="It should be Number Format"
				  required="true"/>
					</td>
				</tr>
<%-- 				<form:errors path="mobileNo" cssClass="text-danger" />
 --%>				<tr>
					<td><label for="gender">Gender</label></td>
					<td>
                        <select name="gender" required>
                        <option>--Gender--</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                        </select>
                </td>
				</tr>
				<tr>
					<td><label for="bloodGroup">Blood Group</label></td>
					<td>
						<form:input path="bloodGroup" name="bloodGroup"  placeholder="Blood Group" pattern="^[A-Za-z]\\w{2,20}$"  title="It should be Only Alphabet" required="true"/>
					</td>
				</tr>
<%-- 				<form:errors path="bloodGroup" cssClass="text-danger" />
 --%>				<tr>
					<td><label for="personType">Person Type</label>
					</td>
					<td> 
                        <select name="personType" onblur="personTypeNameCheck();">
                        <option>--Person Type--</option>
                        <option value="Customer">Customer</option>
                        <option value="Owner">Owner</option>
                        </select>
                </td>
					</tr>
					<form:errors path="personType" cssClass="text-danger" />
					<tr>
						<td><label for="joiningDate">Joining Date</label></td>
						
								<td><form:input path="joiningDate" type="date" placeholder="Joining Date"/></td>
						</tr>
						</tbody>
						</table>
							<form:button>Customer Registration</form:button>
							</div>
			</form:form>
					
</body>
</html>