<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="welcomeStyle.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Welcome !</h1>
	
	<%
			//Exemplu de forwardare
		//request.getRequestDispatcher("forward.jsp").forward(request, response);
	
			//Exemplu de redirectare
		//response.sendRedirect("login.jsp");
	%>
	
	<a href="<%= request.getContextPath()%>/SiteController?action=login">Login</a>
	<a href ="<%= request.getContextPath() %>/SiteController?action=register">Register</a>

</body>
</html>