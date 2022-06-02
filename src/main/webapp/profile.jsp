<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Welcome to Learners Academy</h1>
Click on the respective button to perform your operation
<table>
<tr>
	<td><form action="retrieve.jsp">
	<input type="submit" value="getStudentsList">
	</form></td>
</tr>
<tr>
	<td><form action="retrievesubject.jsp">
	<input type="submit" value="getSubjectsList">
	</form></td>
</tr>
<tr>
	<td><form action="retrieveteacher.jsp">
	<input type="submit" value="getTeachersList">
	</form></td>
</tr>
<tr>
	<td><form action="retrieveclasses.jsp">
	<input type="submit" value="getClassList">
	</form></td>
</tr>
</table>
</body>
</html>