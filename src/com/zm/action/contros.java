package com.zm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zm.model.User;



@Controller
@RequestMapping("/ssm")
public class contros {

	/**
	 * 跳转到springmvc数据交互页面
	 */
	@RequestMapping(value = "/showSpringmvcDataInteractionView")
	public ModelAndView showAjaxJSP() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("springmvc-data-interaction");
		return mv;
	}

	////////////////////////////////////// 第一种方式：url或者简单参数传递////////////////////////////////////////////////////////////
	/**
	 * 测试url传参数controller层接收（3种方法） 1.HttpServletRequest reqquest 2.@RequestParam注解
	 * 3.@PathVariable搭配RESTFul风格URL
	 */
	@RequestMapping(value = "/sendUrlParam")
	public @ResponseBody User testURLSendParam(@RequestParam("testName") String name, HttpServletRequest req) {
		// String name=req.getParameter("testName");
		User user = new User();
		user.setUsername(name);
		System.out.println("成功----------------------URL传递的名字是：" + name);
		return user;
	}
	//////////////////////////////// 第二种：@ResponseBody注解演示///////////////////////////////////////////////////
	/**
	 * controller层返回JSON方法一：responseBody注解返回JSON
	 * 
	 * @requestBody注解ajax需要设置dataType : "json" 以及 contentType :
	 *                                'application/json;charset=utf-8',
	 * @return
	 */

	/*
	 * @RequestMapping(value="/selectUserReturnByJSON") public @ResponseBody User
	 * showUser(){ User user = userService.selectUserById(1);
	 * System.out.println("成功----------------------"+user.getUserName()); return
	 * user; }
	 */
	/**
	 * controller层返回JSON方法二 ：ResponseEntity类
	 * 如果返回的是List<user>------把ResponseEntity<List<User>>泛型换成list<User>即可
	 * 
	 * @return
	 */
	@RequestMapping(value = "/selectUserReturnByJSON")
	public ResponseEntity<List<User>> showUser() {
		List<User> userList = new ArrayList<User>();
		User user1 = new User();
		user1.setEmail("23213212@qq.com");
		user1.setId(11l);
		user1.setUsername("sam");
		user1.setPassword("123321");
		User user2 = new User();
		user2.setEmail("46432322@qq.com");
		user2.setId(22l);
		user2.setUsername("john");
		user2.setPassword("1234533");
		userList.add(user1);
		userList.add(user2);
		return new ResponseEntity<List<User>>(userList, HttpStatus.OK);
	}

	/////////////////////////////////////////// 第三种：@RequestBody注解演示///////////////////////////////////////////////////////
	/**
	 * 使用@RequestBody注解接受前端发送json格式的字符串对象-------简单对象User
	 */
	@RequestMapping(value = "/sendJsonStr") //
	public @ResponseBody User saveUser(@RequestBody User user) {
		System.out.println(user);
		System.out.println("前端发送的json对象字符串的名字是：" + user.getUsername());
		return user;
	}

	/**
	 * 复杂对象------UserExt
	 */
	/*@RequestMapping(value = "/sendComplexJsonStr")
	public @ResponseBody User sendComplexJsonStr(@RequestBody UserExt userExt) {
		// String name=req.getParameter("name");
		System.out.println(userExt);
		System.out.println("前端发送的json对象字符串的名字是：" + userExt.getUserName());
		return userExt;
	}*/

	/**
	 * 多个对象list<User>
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

	//////////////////////////////////////////// 第四种：数组/////////////////////////////////////////////////////////////
	/**
	 * 数组 注意：@RequestParam(value="array[]")的话会报错 不可以用[]
	 */
	@RequestMapping(value = "/sendArrayStr")
	public @ResponseBody User sendArrsyStr(@RequestParam(value = "array") String[] array) {
		User user = new User();
		user.setUsername(array[3]);
		System.out.println("数组长度------>" + array.length);
		for (String str : array) {
			System.out.println("遍历输出数组的值是：------>" + str);
		}
		return user;
	}
}
