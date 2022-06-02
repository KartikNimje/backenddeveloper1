<%@page import="com.academy.dao.ClassesDAO"%>
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
	<form action="insertinterfaceclasses.jsp">
	<input type="submit" value="Add a Class">
	</form>
<h1>List of Classes</h1>
	<%
		ClassesDAO dao=new ClassesDAO();
		List<Classes> list=dao.getallclasses();
	%>
	<table> 
	<tr><th>Id</th><th>Class Name</th><th colspan="4">Actions</th></tr>
	<%for(Classes ss:list){ %>
		<tr><td><%=ss.getId() %></td><td><%=ss.getName() %></td><td><a href="editclasses.jsp">edit</a></td><td><a href="deleteinterfaceclasses.jsp">delete</a></td><td><a href="retrievest.jsp">Subjects and Teachers</a></td><td><a href="classreport.jsp">Class Report</a></td></tr>
	<%}%>
	</table>
	

</body>
</html>