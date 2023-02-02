<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	
	<!-- Asa s-ar rezolva un request intr-un jsp -->
	<!-- 
	<form action="submit.jsp" method="post">
		<label for="name">Name :</label>
		<input type="text" id="name" name="name" placeholder="Enter your name" required><br>
		<label for="password">Password</label>
		<input type="password" id="password" name="password" placeholder="Enter your password" required="required"><br>
		<input type="submit" value="Submit">
	
	</form>
	 -->
	
	<!-- Acum intr-un Servlet(Controller) -->
	<form action="<%= request.getContextPath()%>/SiteController" method="post">
<label>Username:</label>
<input type="text" name="username" ><br/>
<label>Password:</label>
<input type="password" name="password"><br/>
<input type="hidden" name="action" value="loginSubmit"> 
<input type="submit" value="Submit">

</body>
</html>