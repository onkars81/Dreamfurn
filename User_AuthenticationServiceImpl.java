package com.ex.security;


import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.model.User;

@Service
public class User_AuthenticationServiceImpl implements User_AuthenticationDao {
	
	@Autowired
	SessionFactory sc;
	
	@Autowired 
	User_AuthenticationDao udao;
	
	@Transactional
	public void add(User_authentication ua) {
		// TODO Auto-generated method stub
		
		 Session s =sc.openSession();
		 Transaction tx =s.beginTransaction();
		 tx.begin();
		 /*User user = new User();
		 ua.setUsername(user.getName());
		 ua.setEnabled("true");
		 ua.setPassword(user.getPassword());
		 ua.setUser_id(user.getUser_id());*/
			
		 udao.add(ua);
		 tx.commit();
		 
	}

}
