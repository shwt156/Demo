<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit the Hotel Details here</title>
</head>
<body>

<form action="updateSaveCustomer" method="post">
	<table>
	
		<tr>
			<td>Id</td>
			<td> <input type="text" name="id" value="${id}" readonly> </td>
		</tr>
		
		<tr>
			<td>FirstName</td>
			<td> <input type="text" name="firstName" value="${firstName}"> </td>
		</tr>
		
		<tr>
			<td>LastName</td>
			<td> <input type="text" name="lastName" value="${lastName}"> </td>
		</tr>
		<tr>
			<td>email</td>
			<td> <input type="email" name="email" value="${email}"> </td>
		</tr>
		
		<tr>
			<td>Phone Number</td>
			<td> <input type="text" name="phonenumber" value="${phonenumber}"> </td>
		</tr>
		
		<tr>
			<td> <input type="submit" value="Update"> </td>
		</tr>
	
	</table>
	</form>


</body>
</html>