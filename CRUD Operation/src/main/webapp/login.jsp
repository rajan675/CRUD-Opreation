<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Login</h1>
 <form action="loginAction.jsp">
 <table>
   <tr>
      <td>Enter ID</td>
      <td> <input type="text" name="user-id" placeholder="Enter ID here"></td>
   </tr>
   <tr>
      <td>Enter Password</td>
      <td> <input type="password" name="user-password" placeholder="Enter Password here"></td>
   </tr>
   <tr>
   <td></td>
   <td>
  <input type ="submit">
   </td>
   </tr>
 </table>
 </form>
 </center>
</body>
</html>