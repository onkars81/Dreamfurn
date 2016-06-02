package com.ex.model;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@PersistenceContext
public class UserDaoImpl implements UserDao{

	@Autowired 
	private SessionFactory session;
	
	public void add(User user) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(user);
	}

	public void delete(int user_id) {
		session.getCurrentSession().createQuery("Delete from User where user_id="+user_id).executeUpdate();
		
	}

	public void update(User user) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(user);
	}

	public User getUser(int user_id) {
		// TODO Auto-generated method stub
		User user=(User)session.getCurrentSession().get(User.class, user_id);
		return user;
	}

	@Override
	public List getAllUsers() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from User ").list();

	}

	
	
	
}

