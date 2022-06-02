<%@page import="com.academy.dao.*"%>
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
<%
Classreport c = new Classreport();
c.setClasses(request.getParameter("class"));
ClassreportDAO dao=new ClassreportDAO();
List<Classreport> list=dao.getallclassreport();

%>
<table> 
	<tr><th>Subject</th><th>Teacher</th>
	<%for(Classreport ss:list){ %>
		<tr><td><%=ss.getSubject() %></td><td><%=ss.getTeacher() %></td></tr>
	<%}%>
	</table>
</body>
</html>