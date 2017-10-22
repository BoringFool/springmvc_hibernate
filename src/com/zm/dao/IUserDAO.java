package com.zm.dao;

import com.zm.model.User;



public interface IUserDAO {

	public void save(User u);
	public User sel(User u);
}
