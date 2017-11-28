package com.zm.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.zm.model.User;
import com.zm.service.IUserService;
import com.zm.service.impl.UserService;

public class Testbean {

	@Transactional  
	public static void main(String[] args) {
		ApplicationContext ctx =new ClassPathXmlApplicationContext("beans.xml");
		IUserService userservice=(UserService)ctx.getBean(UserService.class);
		User u=ctx.getBean(User.class);
		u.setName("уе╟к");
		u.setPassword("804998");
		userservice.act(u);
	}

}
