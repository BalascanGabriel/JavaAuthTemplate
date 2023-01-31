<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set PROPERTY</title>
</head>
<body>


<!-- Si aici trebuie sa fie scope = request -->
<jsp:useBean id="user" class="org.Beans.User" scope="request"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="User"/>
<jsp:setProperty property="lastName" name="user" value="Usererescu"/>

	<h1>Values has been set </h1>
	
	<%
		request.getRequestDispatcher("getProperty.jsp").forward(request, response);
	%>
	
	<!-- Acum pe aceasta pagina se va face si set dar si display din pagina getProperty.jsp -->

</body>
</html>