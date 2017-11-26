package com.zm.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.zm.dao.IBaseDAO;

public class BaseDAO<T> implements IBaseDAO<T> {

	@Resource
	private SessionFactory sessionfactory;
	
	Class<T> clazz;
	
	public BaseDAO(){
		ParameterizedType t=(ParameterizedType) this.getClass().getGenericSuperclass();
		clazz=(Class<T>)t.getActualTypeArguments().gets;
	}

	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	@Override
	public void add(T entity) {
		Session session=getSession();
		session.save(entity);
	}

	@Override
	public void delet(long id) {
		Session session=getSession();
		session.delete(clazz, id);

	}

	@Override
	public void update(T entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<T> findall() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T getById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> getByIds(long[] ids) {
		// TODO Auto-generated method stub
		return null;
	}

	public Session getSession() {
		return sessionfactory.getCurrentSession();
	}

}
