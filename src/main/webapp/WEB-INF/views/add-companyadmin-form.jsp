<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AdminLogin</title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%></style>
<script>
var userNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.userName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.myForm.userName.focus();
		    }
			else
				document.activeElement.blur();
		}
   else{
       return false;
   } 
  
}
var userpasswordCheck = function() {
	 var passwordRegex = new RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/");
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
		<h3>Admin Registration</h3>
		<form:form action="add" method="post" modelAttribute="addcompanyadmin"  name="myForm">
			<div class="inputBox" >
			<%-- <form:input id="userId" type="text" path="userId" name="userId" placeholder="User Id" /> --%>
				<form:input id="userName" path="userName" type="text" name="userName"  onblur="userNameCheck();"
					placeholder="User Name"/>
				
				<form:input id="userPassword" path="userPassword" type="password" name="User Password" onblur="userpasswordCheck();"
					placeholder="User Password" required="true"/>
					
			</div>
				<input type="submit" name="submit" value="Add NewAdmin" >
		</form:form>
	</div>
</body>
</html>