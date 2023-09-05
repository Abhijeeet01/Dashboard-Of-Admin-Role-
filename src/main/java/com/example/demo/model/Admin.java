package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints=@UniqueConstraint(columnNames={"email","contactno"}))
public class Admin {
	@Id
	private int id;
	private String firstname;
	private String lastname;
	private String username;
	private String gender;
	private String contactno;
	private String email;
	private String password;
	
	public Admin() {
		 
		this.id = 0;
		this.firstname = null;
		this.lastname = null;
		this.username = null;
		this.gender = null;
		this.contactno = null;
		this.email = null;
		this.password = null;
	}

	public Admin(int id, String firstname, String lastname, String username, String gender, String contactno,
			String email, String password) {
		super();
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	@Override
	public String toString() {
		return "Admin [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", username=" + username
				+ ", gender=" + gender + ", contactno=" + contactno + ", email=" + email + ", password=" + password
				+ "]";
	}
	 
	
	
}
