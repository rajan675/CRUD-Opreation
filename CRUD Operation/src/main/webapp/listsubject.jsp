<%@page import="com.company.SubjectDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.company.*"%>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, th, td{
  border-collapse: collapse;
  border: 1px solid black;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<br>
<table cellspacing="10" bgcolor="BlanchedAlmond" cellpadding="10">

<% SubjectDAO dao = new  SubjectDAO();
List<SubjectPOJO> sub=(List<SubjectPOJO>)dao.display();
%>
<tr><th>Id</th><th>Subjects</th></tr>
<%for(SubjectPOJO e:sub){ %>
<tr><td><%=e.getId() %></td><td><%=e.getSubject() %></td></tr>
<%} %>

</table> <br><br><br>
<a href="subject.jsp">Back to Subjects</a>
</center>
</body>
</html>