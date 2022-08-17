<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AdminLogin</title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%></style>
<script>
var UserIdCheck = function() {
	if(document.myForm.userId.value == ""){
		
		if(alert("User Id cannot be blank")){
			document.myForm.userId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}
var userpasswordCheck = function() {
	 var passwordRegex = new RegExp(" /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/");
	 if(!document.myForm.userPassword.value.match(passwordRegex)){
			if(alert("Password must be contain 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
				 document.myForm.userPassword.focus();
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
		<h3>Sign in here</h3>
		<form action="companyuserlogin" method="post" name="myForm">
			<div class="inputBox">
				<input id="userId" type="text" name="userId" placeholder="User Id" id="userId" onblur="UserIdCheck();"
					pattern="^[0-9]+$" title="It should be Number Format" required="true"> <input
					id="userPassword" type="password" name="userPassword" onblur="userpasswordCheck();"
					placeholder="User Password" required="true">
			</div>
			<input type="submit" name="" value="Login">
		</form>
		<div class="text-center">
			<p style="color: #59238F;">
				<a href="/companyadmin/addadminform">Sign-Up</a>
			</p>
		</div>

	</div>
</body>
</html>