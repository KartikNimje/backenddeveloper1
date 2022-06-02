<%@page import="com.academy.dao.StudentDAO"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="insertinterface.jsp">
	<input type="submit" value="Add a Student">
	</form>
	<h1>Details of all students</h1>
	<%
		StudentDAO dao=new StudentDAO();
		List<Student> list=dao.getallstudents();
	%>
	<table border="1"> 
	<tr><th>Id</th><th>Firstname</th><th>Lastname</th><th>Address</th><th>Phone</th><th>Edit</th><th>Delete</th></tr>
	<%for(Student ss:list){ %>
		<tr><td><%=ss.getId() %></td><td><%=ss.getFirstname() %></td><td><%=ss.getLastname()%></td><td><%=ss.getAddress()%></td><td><%=ss.getPhone()%></td><td><a href="edit.jsp">edit</a></td><td><a href="delete.jsp">delete</a></td></tr>
	<%}%>
	</table>


</body>
</html>



