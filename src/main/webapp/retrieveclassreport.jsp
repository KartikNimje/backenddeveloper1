<%@page import="com.academy.dao.*"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
<%@page import= "java.util.ArrayList"%>
<%@page import= "java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Class report</h1>
	<%
		STDAO dao3=new STDAO();
		List<St> list3=dao3.getallst();
	%>
	<table> 
	<tr><th>Sr.No</th><th>Subject</th><th>Teacher</th></tr>
	<%int i=1; %>
	<%for(St ss:list3){ %>
		<tr><td><%=i++ %></td><td><%=ss.getSubject() %></td><td><%=ss.getTeacher() %></td></tr>
	<%}%>
	</table>
</body>
</html>