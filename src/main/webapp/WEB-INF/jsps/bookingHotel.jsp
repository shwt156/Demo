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
        <td> <a href="bookHotel?id=${list.id}"> book </a>
        
    	</tr>
		</c:forEach>
	</table>


</body>
</html>