package com.zm.dao;



import com.zm.model.User;



public interface IUserDAO extends IBaseDAO<User>{
	public User getByName(String name);
}
