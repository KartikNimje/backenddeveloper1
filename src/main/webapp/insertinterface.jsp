<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Student registration</h1>
<form action="insert.jsp">
Studentid   : <input type="text" name="id" required>
<br>
Firstname : <input type="text" name="firstname" required>
<br>
Lastname : <input type="text" name="lastname">
<br>
Address : <input type="text" name="address" required>
<br>
Phone : <input type="text" name="phone">
<br>
<input type="submit" value="Save">
</form>
</body>
</html>