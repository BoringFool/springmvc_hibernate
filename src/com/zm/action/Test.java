package com.zm.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zm.model.User;
import com.zm.service.IUserService;

@Controller
@RequestMapping("/a")
public class Test {

	@Resource
	private IUserService userservice;

	public IUserService getUserservice() {
		return userservice;
	}

	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	@RequestMapping(value = "/sendUrlParam")
	public @ResponseBody User testURLSendParam(@RequestParam("testName") String name, HttpServletRequest req) {
		// String name=req.getParameter("testName");
		User user = new User();
		user.setName(name);
		System.out.println("成功----------------------URL传递的名字是：" + name);
		return user;
	}

	@RequestMapping(value = "/selectUserReturnByJSON")
	public ResponseEntity<List<User>> showUser() {
		List<User> userList = new ArrayList<User>();
		User user1 = new User();
		user1.setEmail("23213212@qq.com");
		user1.setId(11);
		user1.setName("sam");
		user1.setPassword("123321");

		User user2 = new User();
		user2.setEmail("46432322@qq.com");
		user2.setId(22);
		user2.setName("john");
		user2.setPassword("1234533");
		userList.add(user1);
		userList.add(user2);
		return new ResponseEntity<List<User>>(userList, HttpStatus.OK);
	}

	@RequestMapping(value = "/sendJsonStr") //
	public @ResponseBody User saveUser(@RequestBody User user) {
		userservice.act(user);
		System.out.println(user);
		System.out.println("前端发送的json对象字符串的名字是：" + user.getName());
		return user;
	}

	/*
	 * @RequestMapping(value = "/sendComplexJsonStr") public @ResponseBody User
	 * sendComplexJsonStr(@RequestBody UserExt userExt) { // String
	 * name=req.getParameter("name"); System.out.println(userExt);
	 * System.out.println("前端发送的json对象字符串的名字是：" + userExt.getUserName()); return
	 * userExt; }
	 */

	@RequestMapping(value = "/sendJsonListStr")
	public @ResponseBody List<User> sendJsonListStr(@RequestBody ArrayList<User> user) {
		ArrayList<User> userList = user;
		for (User u : userList) {
			System.out.println(u.toString());
		}
		// System.out.println("前端获取的JSON对象集合字符串为：------>"+user);
		// System.out.println("第三个对象的名字是：------>"+user.get(2).getUserName());
		return user;
	}
}
