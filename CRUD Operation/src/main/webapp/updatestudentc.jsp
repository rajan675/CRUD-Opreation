<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.company.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name=request.getParameter("name");
String dob=request.getParameter("dob");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String classes=request.getParameter("class");

int id=Integer.parseInt(request.getParameter("id"));

StudentPOJO sb=new StudentPOJO();


sb.setSname(name);
sb.setSdob(dob);
sb.setSaddress(address);
sb.setSphone(phone);
sb.setSclass(classes);
sb.setSid(id);

StudentDAO dao=new StudentDAO();
int row=dao.updateStd(sb);
if(row>0){
	response.sendRedirect("liststudent.jsp");
}
else{
	response.sendRedirect("home.jsp");
}

%>
</body>
</html>