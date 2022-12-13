<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Action</title>
</head>
<body>
<%
 String id = request.getParameter("user-id");
 String pass = request.getParameter("user-password");
 if(id.equals("rajan")&& pass.equals("rajan")) {
		response.sendRedirect("home.jsp");
	}else {
		response.sendRedirect("error.jsp");
	}

%>
</body>
</html>