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
public class BadConpany_down_half {

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
		System.out.println("�ɹ�----------------------URL���ݵ������ǣ�" + name);
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
		System.out.println("ǰ�˷��͵�json�����ַ����������ǣ�" + user.getName());
		return user;
	}

	/*
	 * @RequestMapping(value = "/sendComplexJsonStr") public @ResponseBody User
	 * sendComplexJsonStr(@RequestBody UserExt userExt) { // String
	 * name=req.getParameter("name"); System.out.println(userExt);
	 * System.out.println("ǰ�˷��͵�json�����ַ����������ǣ�" + userExt.getUserName()); return
	 * userExt; }
	 */

	/**
	 * ���� ע�⣺@RequestParam(value="array[]")�Ļ��ᱨ�� ��������[]
	 */
	@RequestMapping(value = "/sendArrayStr")
	public @ResponseBody User sendArrsyStr(@RequestParam(value = "array") String[] array) {
		User user = new User();
		user.setName(array[3]);
		System.out.println("���鳤��------>" + array.length);
		for (String str : array) {
			System.out.println("������������ֵ�ǣ�------>" + str);
		}
		return user;
	}

	@RequestMapping(value = "/bb")
	public ResponseEntity<List<User>> bb() {
		User u1 = new User();
		User u2 = new User();
		u1.setName("1");
		u2.setName("2");
		List<User> u = new ArrayList<>();
		u.add(u1);
		u.add(u2);
		return new ResponseEntity<List<User>>(u, HttpStatus.OK);
		
		
	}
}
