package com.demo.flight_reservation_app1.entity;


import javax.persistence.Entity;

@Entity
public class ListHotel extends AbstractEntity {
	private String hotelName;
	private String rating;
	private String city;
	private int roomsTotal;
	private int roomsAvailable;
	
	
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public int getRoomsTotal() {
		return roomsTotal;
	}
	public void setRoomsTotal(int roomsTotal) {
		this.roomsTotal = roomsTotal;
	}
	public int getRoomsAvailable() {
		return roomsAvailable;
	}
	public void setRoomsAvailable(int roomsAvailable) {
		this.roomsAvailable = roomsAvailable;
	}
}
