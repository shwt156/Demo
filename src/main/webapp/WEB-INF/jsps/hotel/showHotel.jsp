<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of all the hotels</title>
</head>
<body>

	<div class="container">
		${msg}
	</div>
	
	<div class="container">
	<form action="listHotel" method="get">
	<table border=1>
		<tr>
			<th>Hotel Id</th>
			<th>Hotel Name</th>
			<th>Ratings</th>
			<th>City</th>
			<th>Total Rooms</th>
			<th>Available Rooms</th>
		</tr>
		
		<c:forEach var="list" items="${listtHotel}">
    	<tr>
    	<td>${list.id}</td>
        <td>${list.hotelName}</td>
        <td>${list.rating}</td>
        <td>${list.city}</td>
        <td>${list.roomsTotal}</td>
        <td>${list.roomsAvailable}</td>
        <td> <a href="deleteHotel?id=${list.id}"> Delete </a>
        <td> <a href="updateHotel?id=${list.id}"> Update </a>
        
    	</tr>
		</c:forEach>
	</table>
	</form>
	</div>
	
	<div>
	<a href="showHotel"> click here to add Hotel details</a>
	</div>

</body>
</html>