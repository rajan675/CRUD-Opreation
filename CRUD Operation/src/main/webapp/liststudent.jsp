<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.company.*"%>
<%@page import="java.util.*"%>
    
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

<%StudentDAO dao=new  StudentDAO();
List<StudentPOJO> emp=(List<StudentPOJO>)dao.display();
%>
<tr><th>Id</th><th>Name</th><th>DOB</th><th>Address</th><th>Phone</th><th>Class</th></tr>
<%for(StudentPOJO e:emp){ %>
<tr><td><%=e.getSid() %></td><td><%=e.getSname() %></td><td><%=e.getSdob() %></td><td><%=e.getSaddress() %></td><td><%=e.getSphone() %></td><td><%=e.getSclass() %></td></tr>
<%} %>

</table> <br><br><br>
<a href="student.jsp">Back to Students</a>
</center>
</body>
</html>