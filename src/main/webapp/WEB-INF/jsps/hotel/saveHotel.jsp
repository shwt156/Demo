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
	<h2> New Hotel Registration</h2>
	
	<div class="container">
		${msg}
	</div>
	
	<div class="container">
	<form action="saveHotel" method="post">
	<table>
		<tr>
			<td>HotelName</td>
			<td> <input type="text" name="hotelName"> </td>
		</tr>
		
		<tr>
			<td>Ratings</td>
			<td> <input type="text" name="rating"> </td>
		</tr>
		
		<tr>
			<td>City</td>
			<td> <input type="text" name="city"> </td>
		</tr>
		
		<tr>
			<td>RoomsTotal</td>
			<td> <input type="text" name="roomsTotal"> </td>
		</tr>
		
		<tr>
			<td>RoomsAvailable</td>
			<td> <input type="text" name="roomsAvailable"> </td>
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
	<a href="listHotel"> click here to view Hotels</a>
	</div>
</body>
</html>