package com.ex.model;

import java.io.Serializable;
import java.util.Arrays;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.ws.rs.container.PreMatching;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="User")
public class User implements Serializable{
	
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	int user_id;
	
	@NotEmpty(message = "Please enter your First name.")
    String name;
	
	@NotEmpty(message = "Please enter your Last name.")
    String lastname;
	
	@NotEmpty(message = "Please enter your Email addresss.")
    @Email
	String email;
    
	@NotEmpty(message = "Please enter your Mobile addresss.")
	@Size(min = 10, max = 10, message = "Mobile no. you Entered is wrong")
	String mobile;
	
	@Column
	String Address;
	
	@NotEmpty(message = "Please enter your password.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	String password; 
	
	
	@NotEmpty(message = "Please enter Confirm Password.")
	String confirmpassword;

	
	public User() {
		
	}
	
	private Boolean checkPassword() {
	    if(this.password == null || this.confirmpassword == null){
	        return false;
	    }else if(!this.password.equals(confirmpassword)){
	        this.confirmpassword = null;
	        return false;
	    }
	    return true;
	}
	
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getAddress() {
		return Address;
	
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getPassword() {
		
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
		checkPassword();
	}

	public User(int user_id, String name, String lastname, String email, String mobile, String address, String password,
			String confirmpassword) {
		super();
		this.user_id = user_id;
		this.name = name;
		this.lastname = lastname;
		this.email = email;
		this.mobile = mobile;
		Address = address;
		this.password = password;
		this.confirmpassword = confirmpassword;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", name=" + name + ", lastname=" + lastname + ", email=" + email
				+ ", mobile=" + mobile + ", Address=" + Address + ", password=" + password + ", confirmpassword="
				+ confirmpassword + "]";
	}

	public boolean isNew() {
		Integer id=user_id;
		return (id == null);
	}
	
}
