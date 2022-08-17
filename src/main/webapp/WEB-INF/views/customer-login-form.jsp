<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to CustomerLogin</title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%></style>
<script>
var CustomerIdCheck = function() {
	if(document.myForm.customerId.value == ""){
		
		if(alert("Customer Id cannot be blank")){
			document.myForm.customerId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}
var customerpasswordCheck = function() {
	 var passwordRegex = new RegExp("/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/");
	 if(!document.myForm.customerPassword.value.match(passwordRegex)){
			if(alert("Password should contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character")){ 
				 document.myForm.customerPassword.focus();
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
	<div class="loginBox">
		<img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px" alt="image">
		<h3>Customer Login</h3>
		<form action="customerlogin"  method="post"  name="myForm">
			<div class="inputBox">
				<input id="customerId" type="text" name="customerId" onblur="CustomerIdCheck();" placeholder="Customer Id" title="It should be Number Format"
				 pattern="^[0-9]+$" required="true">
				<input id="customerPassword" type="password" name="customerPassword"  onblur="customerpasswordCheck();"
					placeholder="Customer Password" required="true">
			</div>
			<input type="submit" name="" value="Login">
		</form>
		
		<div class="text-center">
			<p style="color: #59238F;"><a  href="/customer/addcustomerform">Sign-Up</a></p>
		</div>

	</div>
</body>
</html>