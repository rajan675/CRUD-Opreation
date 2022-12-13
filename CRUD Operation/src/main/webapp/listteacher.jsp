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

<% TeacherDAO dao = new  TeacherDAO();
List<TeacherPOJO> tech=(List<TeacherPOJO>)dao.display();
%>
<tr><th>Id</th><th>Teacher</th></tr>
<%for(TeacherPOJO e:tech){ %>
<tr><td><%=e.getId() %></td><td><%=e.getName() %></td></tr>
<%} %>

</table> <br><br><br>
<a href="teacher.jsp">Back to Teacher</a>
</center>
</body>
</html>