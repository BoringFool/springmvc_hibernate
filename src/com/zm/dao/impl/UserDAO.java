package com.zm.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;

import com.zm.dao.IUserDAO;
import com.zm.model.User;

@Component("userdao")
public class UserDAO extends BaseDAO<User> implements IUserDAO {

}
