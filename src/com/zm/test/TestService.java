package com.zm.test;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.Test;
import com.zm.model.User;
import com.zm.service.IUserService;


class TestService {

	@RunWith(SpringJUnit4ClassRunner.class)
	@ContextConfiguration(locations = { "beans.xml"})
	public class UserServiceTest {
		@Resource
		private IUserService userService;

		@Test
		public void testact() {
			User u = new User();
			u.setName("уе");
			u.setPassword("123456");
			userService.act(u);
			System.out.println(1);
		}

	}
}
