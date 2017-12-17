package com.zm.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zm.model.User;
import com.zm.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserAction {

	@Resource
	private IUserService userservice;
	
	public IUserService getUserservice() {
		return userservice;
	}

	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	@RequestMapping("/service")
	public String act() {

		return "succ";
	}

	@RequestMapping("/tb")
	public String tb() {

		return "copytb";
	}
	
	/*
	 * 
	 * */
	@RequestMapping("/register")
	public @ResponseBody Long r1egister(@RequestBody User u) {
		User user=userservice.getByName(u.getUsername());
		if(user==null) {
			userservice.act(u);
			return 1l;
		}else {
			return 0l;
		}
		
		
		
	}
}
