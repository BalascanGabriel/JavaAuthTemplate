<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> </title>
</head>
<body>

<!-- Daca am schimbat scope=ul in request acum putem face request de pe alta pagina cum ar fi de pe setProperty -->
<jsp:useBean id="user" class="org.Beans.User" scope="request"></jsp:useBean>
First name : <jsp:getProperty property="firstName" name="user"/>
Last name : <jsp:getProperty property="lastName" name="user"/>


</body>
</html>