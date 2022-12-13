<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.company.*"%>
<%@page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("student-id"));
String name=request.getParameter("student-name");
String dob =request.getParameter("student-dob");
String address =request.getParameter("student-address");
String phone =request.getParameter("student-phone");
String classes =request.getParameter("student-class");


StudentPOJO sb=new StudentPOJO();
sb.setSid(id);
sb.setSname(name);
sb.setSdob(dob);
sb.setSaddress(address);
sb.setSphone(phone);
sb.setSclass(classes);


StudentDAO dao=new StudentDAO();
int row=dao.insertStd(sb);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>