package com.zm.dao.impl;

import org.springframework.stereotype.Component;

import com.zm.dao.IUserDAO;
import com.zm.model.User;

@Component("userdao")
public class UserDAO extends BaseDAO<User> implements IUserDAO {

}
