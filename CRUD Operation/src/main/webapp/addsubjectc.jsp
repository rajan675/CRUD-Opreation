<%@page import="com.company.SubjectDAO"%>
<%@page import="com.company.SubjectPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
String subject = request.getParameter("subject");

SubjectPOJO sp = new SubjectPOJO();
sp.setId(id);
sp.setSubject(subject);
SubjectDAO dao = new SubjectDAO();
int row = dao.insrtSub(sp);
if(row>0){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("error.jsp");

}
%>
</body>
</html>