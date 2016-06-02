package com.ex.model;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@PersistenceContext
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Product product) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(product);
		
	}

	@Override
	public void edit(Product product) {
		// TODO Auto-generated method stub
	
		session.getCurrentSession().update(product);
	}

	@Override
	public void delete(int productId) {
		// TODO Auto-generated method stu
		System.out.println(productId);
		session.getCurrentSession().createQuery("Delete from Product where prod="+productId).executeUpdate();
	}

	@Override
	public Product getProduct(int prod) {
		// TODO Auto-generated method stub
		return (Product)session.getCurrentSession().get(Product.class,prod);
	}

	@Override
	public List getAllProduct() {
		// TODO Auto-generated method stub
		
		return session.getCurrentSession().createQuery("from Product ").list();
	}

	@Override
	public void deleteProduct(Product product) {
		// TODO Auto-generated method stu
		session.getCurrentSession().createQuery("Delete from Product where prod="+product.getProd()).executeUpdate();
		
	}

	
}
