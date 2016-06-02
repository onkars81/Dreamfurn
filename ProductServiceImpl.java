package com.ex.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDaoImpl productdao;

	@Autowired
	SessionFactory sessionfactory;
	
	
	
	@Transactional
	public void add(Product product) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		tx.begin();
		productdao.add(product);
		tx.commit();
	}
	@Transactional
	public void edit(Product product) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		tx.begin();
		productdao.edit(product);
		tx.commit();
	
		
	}
	
	@Transactional
	public Product getProduct(int prod) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		
		tx.begin();
		
		Product product=productdao.getProduct(prod);
		
		tx.commit();
		
		return product;
	}
	
	
	@Transactional
	public List getAllProduct() {
		// TODO Auto-generated method stub
		return productdao.getAllProduct();
	}
	
	@Transactional
	public void delete(int productId) {
		// TODO Auto-generated method stub
		productdao.delete(productId);
	}

	
	/*
		@Transactional
	public List getAllProduct() {
		// TODO Auto-generated method stub
		return productdao.getAllProduct();
	}


	@Override
	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		productdao.deleteProduct(product);
		
	}

*/
	

	
}
