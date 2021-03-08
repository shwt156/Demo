<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<h2> New User Registration</h2>
	
	<div class="container">
		${msg}
	</div>
	
	<div class="container">
	<form action="saveReg" method="post">
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
			<td>Re-Enter Password</td>
			<td> <input type="password" name="reEnterPassword"> </td>
		</tr>
		
		<tr>
			<td> <input type="submit" value="save"> </td>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>