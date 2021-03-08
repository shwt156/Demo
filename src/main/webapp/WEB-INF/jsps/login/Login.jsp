<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login to MANAGE</title>
</head>
<body>
	<form action="validate" method="post">
		<table>
		
		<tr>
			<td>User</td>
			<td> <input type="text" name="userName"> </td>
		</tr>
		
		<tr>
			<td>Password</td>
			<td> <input type="password" name="passwords"> </td>
		</tr>
		
		<tr>
			<td> <input type="submit" value="Login"> </td>
		</tr>
	</table>
	</form>
	
	<br>
	<br>
	<a href="regUser"> Add new User</a>
</body>
</html>