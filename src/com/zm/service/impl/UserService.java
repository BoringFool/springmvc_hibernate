package com.zm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zm.dao.impl.UserDAO;
import com.zm.model.User;
import com.zm.service.IUserService;

@Service("userservice")
@Transactional
public class UserService implements IUserService {
	
	private UserDAO userdao;

	public UserDAO getUserdao() {
		return userdao;
	}

	@Resource
	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	public void act(User u) {
		userdao.add(u);
	
	}

}
