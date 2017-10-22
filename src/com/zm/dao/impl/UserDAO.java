package com.zm.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;

import com.zm.dao.IUserDAO;
import com.zm.model.User;

@Component("userdao")
public class UserDAO implements IUserDAO {

	private SessionFactory sessionFactory;
	Session session;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void save(User u) {
		System.out.println("´æ´¢£¡£¡£¡");
		session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(u);
		tx.commit();
		session.close();
	}

	public User sel(User u) {
		System.out.println("²é¿´£¡£¡£¡");
		return null;
	}
	public Transaction getsession(){
		session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		return tx;
	}
	

}
