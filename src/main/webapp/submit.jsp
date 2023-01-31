<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- Cam asa am rezolva un request de form intr-un JSP -->
<%
	String name,password;
	name = request.getParameter("name");
	password = request.getParameter("password");
	
	out.println("Numele luat din pagina login.jsp : " + name + "\n");
	out.println("Parola luata din pagina login.jsp : " + password);


%>

</body>
</html>