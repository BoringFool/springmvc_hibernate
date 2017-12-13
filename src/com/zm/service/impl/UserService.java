package com.zm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zm.dao.IUserDAO;
import com.zm.model.User;
import com.zm.service.IUserService;

@Service("userservice")
@Transactional
public class UserService implements IUserService {
	@Resource
	private IUserDAO userdao;

	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}

	public void act(User u) {
		userdao.add(u);

	}


	public List<User> findall() {
		return userdao.findall();
	}

}
