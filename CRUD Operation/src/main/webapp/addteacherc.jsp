<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.company.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("teacher");

TeacherPOJO tp = new TeacherPOJO();
tp.setId(id);
tp.setName(name);
TeacherDAO td = new TeacherDAO();
int row = td.insrtTech(tp);
if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("error.jsp");

}
%>
</body>
</html>