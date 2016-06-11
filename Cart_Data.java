package com.ex.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cart_data")
public class Cart_Data {

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	int cart_id;
	@Column
	int prod;
	@Column
	String productname;
	@Column
	int user_id;
	@Column
	String username;
	@Column
	int price;
	@Column
	int quantity;
	
	
public Cart_Data() {
	// TODO Auto-generated constructor stub
}


@Override
public String toString() {
	return "Cart [cart_id=" + cart_id + ", prod=" + prod + ", productname=" + productname + ", user_id=" + user_id
			+ ", username=" + username + ", price=" + price + ", quantity=" + quantity + "]";
}


public Cart_Data(int cart_id, int prod, String productname, int user_id, String username, int price, int quantity) {
	super();
	this.cart_id = cart_id;
	this.prod = prod;
	this.productname = productname;
	this.user_id = user_id;
	this.username = username;
	this.price = price;
	this.quantity = quantity;
}


public int getCart_id() {
	return cart_id;
}


public void setCart_id(int cart_id) {
	this.cart_id = cart_id;
}


public int getProd() {
	return prod;
}


public void setProd(int prod) {
	this.prod = prod;
}


public String getProductname() {
	return productname;
}


public void setProductname(String productname) {
	this.productname = productname;
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


public int getPrice() {
	return price;
}


public void setPrice(int price) {
	this.price = price;
}


public int getQuantity() {
	return quantity;
}


public void setQuantity(int quantity) {
	this.quantity = quantity;
}
	
}
