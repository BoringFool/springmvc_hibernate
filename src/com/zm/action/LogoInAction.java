package com.zm.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zm.model.User;
import com.zm.service.IUserService;

@Controller
@RequestMapping("/logo")
public class LogoInAction {
	
	@Resource
	private IUserService userservice;
	
	
	public IUserService getUserservice() {
		return userservice;
	}




	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}




	@RequestMapping("/in")
	public @ResponseBody Long in(@RequestBody User u) {
		Long tof;
		User user=userservice.getByName(u.getUsername());
		if(user==null) {
			return tof=3l;
		}else {
			if(u.getPassword().equals(user.getPassword())) {
				tof=1l;
			}else {
				tof=0l;
			}
			return tof;
		}
		
		
	}
}
