<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set PROPERTY</title>
</head>
<body>

<jsp:useBean id="user" class="org.Beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="User"/>
<jsp:setProperty property="lastName" name="user" value="Usererescu"/>

	<h1>Values has been set </h1>

</body>
</html>