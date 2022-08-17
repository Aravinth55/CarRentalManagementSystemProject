<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style><%@include file="/WEB-INF/css/homepagetemplate.css"%></style>

</head>
<body>
<div class="menu">
<ul>
<li><a href="#">HOME</a></li>
<li><a href="/companyadmin/adminlogin">ADMIN</a></li>
<li><a href="/customer/customerloginpage">CUSTOMER</a></li>
<li><a href="/home/cont">CONTACT</a></li>
</ul>
<div class="form">
<h2>Login Here</h2>
<input type="text" name="text" placeholder="Enter CustomerId Here">
<input type="password" name="password" placeholder="Enter password Here">
<button class="btnn"><a href="/home/customer">Login</a></button>
<p class="link">Don't have an account<br>
<a href="/customer/addcustomerform">Sign up here</a></p>
<p class="liw">Log in with</p>
</div>
</div>
</body>
</html>