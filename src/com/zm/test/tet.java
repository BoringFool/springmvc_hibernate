package com.zm.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zm.model.User;
import com.zm.service.IUserService;
/*
 * 这可能是junit高版本所用的，暂时不去深入看（这个运行不了）
 * 
 * 
 * 
 */
public class tet {

	@RunWith(SpringJUnit4ClassRunner.class)
	@ContextConfiguration(locations = { "beans.xml" })
	public class UserServiceTest {
		@Resource
		private IUserService userService;

		@Test
		public void testact() {
			User u = new User();
			u.setUsername("张2");
			u.setPassword("123456");
			userService.act(u);
			System.out.println(1);
		}

	}
}
