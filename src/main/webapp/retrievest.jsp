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
<form action="addsubandteachertoDB.jsp">
<%
ClassesDAO dao2=new ClassesDAO();
List<Classes> list2=dao2.getallclasses();
SubjectDAO dao=new SubjectDAO();
List<Subject> list=dao.getallsubjects();
TeacherDAO dao1=new TeacherDAO();
List<Teacher> list1=dao1.getallteachers();
%>
<h1>Add Subjects and Teachers</h1>
<label for="class">Choose a Class:</label>

<select name="class" id="class">

<%for(Classes ss:list2){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<br>


<label for="subject">Choose a Subject:</label>

<select name="subject" id="subject">

<%for(Subject ss:list){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<br>


<label for="teacher">Choose a Teacher:</label>
<select name="teacher" id="teacher">

<%for(Teacher ss:list1){ %>	
  <option value="<%=ss.getFirstname() %>"><%=ss.getFirstname() %></option>
  <%}%>
</select>
<br>
<input type="submit" value="save">

</form>
<h1>List of Subject and teacher</h1>
	<%
		STDAO dao3=new STDAO();
		List<St> list3=dao3.getallst();
	%>
	<table> 
	<%int i=1; %>
	<tr><th>Sr.No</th><th>Subject</th><th>Teacher</th><th>Class</th><th>Actions</th></tr>
	<%for(St ss:list3){ %>
		<tr><td><%=i++ %></td><td><%=ss.getSubject() %></td><td><%=ss.getTeacher() %></td><td><%=ss.getClasses()%></td><td><a href="deleteinterfacest.jsp">delete</a></td></tr>
	<%}%>
	</table>
</body>
</html>