package com.ex.model;



import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.model.User;
import com.ex.model.UserDaoImpl;
import com.ex.model.UserServiceImpl;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDaoImpl userdao;

	@Autowired
	SessionFactory sessionfactory;
	
	@Transactional
	public void add(User user) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		tx.begin();
		userdao.add(user);
		tx.commit();
	}
	
	
	@Transactional
	public User getUser(int user_id) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		
		tx.begin();
		User User=userdao.getUser(user_id);
		tx.commit();
		
		return User;
	}
	
	
	
	@Transactional
	public void delete(int UserId) {
		// TODO Auto-generated method stub
		userdao.delete(UserId);
	}
	
	@Transactional
	public void update(User user) {
		// TODO Auto-generated method stub
				Session session=sessionfactory.openSession();
				Transaction tx=session.beginTransaction();
				tx.begin();
				userdao.update(user);
				tx.commit();
			
	}


	@Transactional
	public List getAllUsers() {
		// TODO Auto-generated method stub
		return userdao.getAllUsers();
		
	}
}
