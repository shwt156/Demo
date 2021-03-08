<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of all the Customers</title>
</head>
<body>

	<div class="container">
		${msg}
	</div>
	
	<div class="container">
	<form action="listCustomer" method="get">
	<table border=1>
		<tr>
			<th>Id </th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone Number</th>
		</tr>
		
		<c:forEach var="list" items="${listtCustomer}">
    	<tr>
    	<td>${list.id}</td>
        <td>${list.firstName}</td>
        <td>${list.lastName}</td>
        <td>${list.email}</td>
        <td>${list.phonenumber}</td>
        <td> <a href="deleteCustomer?id=${list.id}"> Delete </a>
        <td> <a href="updateCustomer?id=${list.id}"> Update </a>
        
    	</tr>
		</c:forEach>
	</table>
	</form>
	</div>
	
	<div>
	<a href="showCustomer"> click here to add Customer details</a>
	</div>

</body>
</html>