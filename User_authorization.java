package com.ex.security;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User_authorization implements Serializable{
	
	@Id
	@Column
	private int user_role_id;
	@Column
	private int user_id;
	@Column
	private String role;
	
	@Override
	public String toString() {
		return "User_authorization [user_role_id=" + user_role_id + ", user_id=" + user_id + ", role=" + role + "]";
	}
	public int getUser_role_id() {
		return user_role_id;
	}
	public void setUser_role_id(int user_role_id) {
		this.user_role_id = user_role_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public User_authorization(int user_role_id, int user_id, String role) {
		super();
		this.user_role_id = user_role_id;
		this.user_id = user_id;
		this.role = role;
	}
	public User_authorization() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
