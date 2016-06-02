package com.ex.model;

public interface CartDao {
	
	public void add(Cart cartitem);
	public void delete(Cart cartitem);
	public void remove(int cartitem);
	public void edit(Cart cart);
	
}
