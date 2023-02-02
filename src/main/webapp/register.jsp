<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Register</title>
</head>
<body>
	<h1>Register</h1>
	<form action="register" method="post">
		<label>Username:</label>
		<input type="text" name="username" required><br>
		<label>Password:</label>
		<input type="password" name="password" required><br>
		<label>Confirm Password:</label>
		<input type="password" name="confirmPassword" required><br>
		<input type="submit" value="Submit" id="submitBtn">
	</form>
	
<div id="codeDiv">
	
	<form id="code" action="" method="post" style="">
	
	 <input type="text" name="code" maxlength="1">
	 <input type="text" name="code" maxlength="1">
	 <input type="text" name="code" maxlength="1">
	 <input type="text" name="code" maxlength="1">
     <input type="submit" value="Verify email code">
	
	</form>

</div>


<script>

document.getElementById("code").style.display = "none";
document.getElementById("submitBtn").addEventListener("click", function() {
	  document.getElementById("code").style.display = "block";
	  document.getElementById("submitBtn").style.display = "none";
	  document.getElementById("code").style.display="flex";
	  document.getElementById("code").style.width="30%";
	  document.getElementById("codeDiv").style.margin="auto";
	});
</script>
	
</body>
</html>