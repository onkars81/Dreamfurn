package com.ex.security;

import javax.persistence.PersistenceContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
@PersistenceContext
public class User_AuthenticationDaoImpl implements User_AuthenticationDao {

	@Autowired
	SessionFactory sc;
	
	public void add(User_authentication ua) {
			
		sc.getCurrentSession().save(ua);
		
	}
}
