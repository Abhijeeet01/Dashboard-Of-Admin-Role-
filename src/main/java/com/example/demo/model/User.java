package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {
    @Id
	private int id;
	private String firstname;
	private String lastname;
	private String username;
	private String gender;
	private String contactno;
	private String email;
	private String password;
	 
	public User() {
		 
		this.id = 0;
		this.firstname = null;
		this.lastname = null;
		this.username = null;
		this.gender = null;
		this.contactno = null;
		this.email = null;
		this.password = null;
		 
	}
	public User(int id, String firstname, String lastname, String username, String gender,  String contactno, String email,
			String password ) {
		 
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.gender = gender;
		this.contactno = contactno;
		this.email = email;
		this.password = password;
		 
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", username=" + username
				+ ", gender=" + gender + ", contactno=" + contactno + ", email=" + email + ", password=" + password
				+ "]";
	}
	 
	 
	 
	
	 
	 
	 
	 
	 
	
	
	
}
