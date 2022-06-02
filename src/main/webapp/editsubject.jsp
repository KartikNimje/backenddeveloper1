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
	<form action="updatedetailssubject.jsp">
		Enter the id for which records to be updated  : <input type="text" name="id" required>
		<br>
		Enter the updated Subjectname : <input type="text" name="name" required>
		<br>
		
		<input type="submit" value="updateSubject">
		
	</form>


</body>
</html>