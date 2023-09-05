package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Login {
	@Id
	private String Email;
	private String Username;
	private String password;

	public Login(String email, String username, String password) {
		super();
		Email = email;
		Username = username;
		this.password = password;
	}

	public Login() {
		super();
		Email = null;
		Username = null;
		this.password = null;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Login [Email=" + Email + ", Username=" + Username + ", password=" + password + "]";
	}

}
