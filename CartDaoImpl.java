package com.ex.model;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class CartDaoImpl implements CartDao {
	
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Cart cartitem) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(cartitem);
	}


	@Override
	public void remove(int cartitem) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(cartitem);
	}


	@Override
	public void delete(Cart cartitem) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(cartitem);
	}


	@Override
	public void edit(Cart cart) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(cart);
	}

	

}
