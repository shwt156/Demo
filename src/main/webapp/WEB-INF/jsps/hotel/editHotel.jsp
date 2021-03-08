<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit the Hotel Details here</title>
</head>
<body>

<form action="updateSaveHotel" method="post">
	<table>
		<tr>
			<td>Id</td>
			<td> <input type="text" name="id" value="${id}" readonly> </td>
		</tr>
	
		<tr>
			<td>HotelName</td>
			<td> <input type="text" name="hotelName" value="${hotelName}"> </td>
		</tr>
		
		<tr>
			<td>Ratings</td>
			<td> <input type="text" name="rating" value="${rating }"> </td>
		</tr>
		
		<tr>
			<td>City</td>
			<td> <input type="text" name="city" value="${city}"> </td>
		</tr>
		
		<tr>
			<td>RoomsTotal</td>
			<td> <input type="text" name="roomsTotal" value="${roomsTotal}"> </td>
		</tr>
		
		<tr>
			<td>RoomsAvailable</td>
			<td> <input type="text" name="roomsAvailable" value="${roomsAvailable}"> </td>
		</tr>
		
		<tr>
			<td> <input type="submit" value="save"> </td>
		</tr>
	</table>
	</form>


</body>
</html>