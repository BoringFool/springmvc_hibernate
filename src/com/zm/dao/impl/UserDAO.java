package com.zm.dao.impl;



import org.hibernate.Query;
import org.springframework.stereotype.Component;

import com.zm.dao.IUserDAO;
import com.zm.model.User;

@Component("userdao")
public class UserDAO extends BaseDAO<User> implements IUserDAO {

	/*
	 * 不清楚怎么执行单个hql语句，所以返回的是list
	 * */
	public User getByName(String name) {
		String hql="FROM User as u WHERE u.username='"+name+"'";
		Query q=getSession().createQuery(hql);
		if(q.list().size()!=0) {
			return (User) q.list().get(0);
		}else {
			return null;
		}
		
	}

}
