package com.zm.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zm.model.User;
import com.zm.service.IUserService;

public class Tests {

	@SuppressWarnings("resource")
	@Test
	public void testact() {
		ApplicationContext ctx =new ClassPathXmlApplicationContext("beans.xml");
		IUserService userservice=(IUserService)ctx.getBean("userService");
		User u=new User();
		u.setName("уе");
		userservice.act(u);
	}
}
