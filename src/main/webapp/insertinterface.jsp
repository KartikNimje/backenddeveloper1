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
<h1>Add New Student</h1>
<form action="insert.jsp">
Studentid   : <input type="text" name="id" required>
<br>
Firstname : <input type="text" name="firstname" required>
<br>
Lastname : <input type="text" name="lastname">
<br>
DOB : <input type="date" name="dob">
<br>
Address : <input type="text" name="address" required>
<br>
Phone : <input type="text" name="phone">
<br>
<%
ClassesDAO dao2=new ClassesDAO();
List<Classes> list2=dao2.getallclasses();
%>
<label for="class">Class :</label>
<select name="class">

<%for(Classes ss:list2){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<br>
<input type="submit" value="Save">
</form>
</body>
</html>