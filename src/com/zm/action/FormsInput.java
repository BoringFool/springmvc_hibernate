package com.zm.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zm.model.User;
import com.zm.model.User2;

/*
 * acTojs.jsp
 * */
@Controller
@RequestMapping("/data")
public class FormsInput {

	/*
	 * 基本数据类型，不过最好把数据包装下，防止值为空时报错
	 * 
	 * */
	/*@RequestMapping("/1")
	public void test(int data) {
		
	}*/
	@RequestMapping("/1")
	public void test(@RequestParam("data") int dat) {
		System.out.println("上面是接受数据名称与name属性相同，不同则需要使用@requsetparam来注解");
	}
	
	/*
	 * 自定义对象
	 * 需将对象的属性名和input的name值一一匹配
	 * 
	 * */
	@RequestMapping("/2")
	public void test2(User user) {
		
	}
	
	/*
	 * 自定义复合对象类型
	 * 需要使用“属性名(对象类型的属性).属性名”来命名input的name
	 * */
	@RequestMapping("/3")
	public void test(User2 user2) {
	    System.out.println(user2.getFirstName());
	    System.out.println(user2.getLastName());
	    System.out.println(user2.getContactInfo().getTel());
	    System.out.println(user2.getContactInfo().getAddress());
	}
}
