<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<h2> New Customer Registration</h2>
	
	<div class="container">
		${msg}
	</div>
	
	<div class="container">
	<form action="saveCustomer" method="post">
	<table>
		<tr>
			<td>FirstName</td>
			<td> <input type="text" name="firstName"> </td>
		</tr>
		
		<tr>
			<td>LastName</td>
			<td> <input type="text" name="lastName"> </td>
		</tr>
		<tr>
			<td>email</td>
			<td> <input type="email" name="email"> </td>
		</tr>
		
		<tr>
			<td>Phone Number</td>
			<td> <input type="text" name="phonenumber"> </td>
		</tr>
		
		<tr>
			<td> <input type="submit" value="save"> </td>
		</tr>
	</table>
	</form>
	</div>
	<br>
	<br>
	<div>
	<a href="listCustomer"> click here to view Customers</a>
	</div>
</body>
</html>