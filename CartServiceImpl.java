package com.ex.model;


import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

public class CartServiceImpl implements CartDao{

	@Autowired
	private CartDao cart;
	
	@Autowired
	private SessionFactory session;
	
	@Transactional
	public void add(Cart cartitem) {
		Session s = session.openSession();
		Transaction tx = s.beginTransaction();
		tx.begin();
		cart.add(cartitem);
		tx.commit();
	}

	@Transactional
	public void delete(Cart cartitem) {
		Session s= session.openSession();
		Transaction tx =s.beginTransaction();
		tx.begin();
		cart.delete(cartitem);
		tx.commit();
		
	}

	@Transactional
	public void  edit(Cart cartitem)
	{
		Session s= session.openSession();
		Transaction tx =s.beginTransaction();
		tx.begin();
		cart.delete(cartitem);
		tx.commit();
	}
	
	@Transactional
	public void remove(int cartitem) {
	Session s = session.openSession();
		Transaction tx=s.beginTransaction();
		tx.begin();
		cart.remove(cartitem);	
		tx.commit();
	
	}


}
