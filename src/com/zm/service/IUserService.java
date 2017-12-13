package com.zm.service;

import java.util.List;

import com.zm.model.User;

public interface IUserService {

	public void act(User u);
	public List<User> findall();
}
