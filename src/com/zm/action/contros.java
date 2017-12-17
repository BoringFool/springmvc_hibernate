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
	 * ��ת��springmvc���ݽ���ҳ��
	 */
	@RequestMapping(value = "/showSpringmvcDataInteractionView")
	public ModelAndView showAjaxJSP() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("springmvc-data-interaction");
		return mv;
	}

	////////////////////////////////////// ��һ�ַ�ʽ��url���߼򵥲�������////////////////////////////////////////////////////////////
	/**
	 * ����url������controller����գ�3�ַ����� 1.HttpServletRequest reqquest 2.@RequestParamע��
	 * 3.@PathVariable����RESTFul���URL
	 */
	@RequestMapping(value = "/sendUrlParam")
	public @ResponseBody User testURLSendParam(@RequestParam("testName") String name, HttpServletRequest req) {
		// String name=req.getParameter("testName");
		User user = new User();
		user.setUsername(name);
		System.out.println("�ɹ�----------------------URL���ݵ������ǣ�" + name);
		return user;
	}
	//////////////////////////////// �ڶ��֣�@ResponseBodyע����ʾ///////////////////////////////////////////////////
	/**
	 * controller�㷵��JSON����һ��responseBodyע�ⷵ��JSON
	 * 
	 * @requestBodyע��ajax��Ҫ����dataType : "json" �Լ� contentType :
	 *                                'application/json;charset=utf-8',
	 * @return
	 */

	/*
	 * @RequestMapping(value="/selectUserReturnByJSON") public @ResponseBody User
	 * showUser(){ User user = userService.selectUserById(1);
	 * System.out.println("�ɹ�----------------------"+user.getUserName()); return
	 * user; }
	 */
	/**
	 * controller�㷵��JSON������ ��ResponseEntity��
	 * ������ص���List<user>------��ResponseEntity<List<User>>���ͻ���list<User>����
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

	/////////////////////////////////////////// �����֣�@RequestBodyע����ʾ///////////////////////////////////////////////////////
	/**
	 * ʹ��@RequestBodyע�����ǰ�˷���json��ʽ���ַ�������-------�򵥶���User
	 */
	@RequestMapping(value = "/sendJsonStr") //
	public @ResponseBody User saveUser(@RequestBody User user) {
		System.out.println(user);
		System.out.println("ǰ�˷��͵�json�����ַ����������ǣ�" + user.getUsername());
		return user;
	}

	/**
	 * ���Ӷ���------UserExt
	 */
	/*@RequestMapping(value = "/sendComplexJsonStr")
	public @ResponseBody User sendComplexJsonStr(@RequestBody UserExt userExt) {
		// String name=req.getParameter("name");
		System.out.println(userExt);
		System.out.println("ǰ�˷��͵�json�����ַ����������ǣ�" + userExt.getUserName());
		return userExt;
	}*/

	/**
	 * �������list<User>
	 */
	@RequestMapping(value = "/sendJsonListStr")
	public @ResponseBody List<User> sendJsonListStr(@RequestBody ArrayList<User> user) {
		ArrayList<User> userList = user;
		for (User u : userList) {
			System.out.println(u.toString());
		}
		// System.out.println("ǰ�˻�ȡ��JSON���󼯺��ַ���Ϊ��------>"+user);
		// System.out.println("����������������ǣ�------>"+user.get(2).getUserName());
		return user;
	}

	//////////////////////////////////////////// �����֣�����/////////////////////////////////////////////////////////////
	/**
	 * ���� ע�⣺@RequestParam(value="array[]")�Ļ��ᱨ�� ��������[]
	 */
	@RequestMapping(value = "/sendArrayStr")
	public @ResponseBody User sendArrsyStr(@RequestParam(value = "array") String[] array) {
		User user = new User();
		user.setUsername(array[3]);
		System.out.println("���鳤��------>" + array.length);
		for (String str : array) {
			System.out.println("������������ֵ�ǣ�------>" + str);
		}
		return user;
	}
}
