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
	
<div id="code">
	
	<form action="" method="post">
	
	 <input type="text" name="code" size="6">
     <input type="submit" value="Verify email code">
	
	</form>

</div>


<script>

document.getElementById("code").style.display = "none";
document.getElementById("submitBtn").addEventListener("click", function() {
	  document.getElementById("code").style.display = "block";
	  document.getElementById("submitBtn").style.display = "none";
	});
</script>
	
</body>
</html>