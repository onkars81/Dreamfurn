package com.ex.security;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class User_authentication implements Serializable {
	
	@Id
	@Column
	private int user_id;
	@Column
	private String username;
	@Column
	private String password;
	@Column
	private String enabled;
	
	@Override
	public String toString() {
		return "User_authentication [User_id=" +user_id + ", username=" + username + ", password=" + password
				+ ", enabled=" + enabled + "]";
	}
	
	public User_authentication(int user_id, String username, String password, String enabled) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.enabled = enabled;
	}

	
	public User_authentication()
	{
		super();
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	
	
	
}



