package com.demo.flight_reservation_app1.entity;

import javax.persistence.Entity;

@Entity
public class UserRegistration extends AbstractEntity {
	
	public String getReEnterPassword() {
		return reEnterPassword;
	}
	public void setReEnterPassword(String reEnterPassword) {
		this.reEnterPassword = reEnterPassword;
	}
	public String getPasswords() {
		return passwords;
	}
	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	private String userName;
	private String passwords;
	private String reEnterPassword;
}
