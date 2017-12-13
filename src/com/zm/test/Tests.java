package com.zm.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zm.model.Conpany;
import com.zm.model.User;
import com.zm.service.IConpanyService;
import com.zm.service.IUserService;

public class Tests {

	@SuppressWarnings("resource")
	@Test
	public void testact() {
		ApplicationContext ctx =new ClassPathXmlApplicationContext("beans.xml");
		IConpanyService conpanyservice=(IConpanyService) ctx.getBean("conpanyservice");
		IUserService userservice= (IUserService) ctx.getBean("userservice");
		/*Conpany c=new Conpany();
		c=conpanyservice.look(2l);
		c.setOffer("haha");
		List<Conpany> con=conpanyservice.findall();
		for(Conpany c:con) {
			System.out.println(c.toString());
		}*/
		
		List<User> con=userservice.findall();
		for(User c:con) {
			System.out.println(c.toString());
		}
	}
}
