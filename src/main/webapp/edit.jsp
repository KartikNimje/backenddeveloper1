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
	<h1>Update Student details</h1>
	<form action="updatedetails.jsp">
		Enter the id for which records to be updated  : <input type="text" name="id" required>
		<br>
		Enter the updated Firstname : <input type="text" name="firstname" required>
		<br>
		Enter the updated Lastname : <input type="text" name="lastname">
		<br>
		Enter the updated DOB : <input type="date" name="dob">
		<br>
		Enter the updated Address : <input type="text" name="address" required>
		<br>
		Enter the updated Phone : <input type="text" name="phone">
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
		<input type="submit" value="update">
		
	</form>

</body>
</html>