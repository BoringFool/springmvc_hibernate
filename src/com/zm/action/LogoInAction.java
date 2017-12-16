package com.zm.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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

	/*
	 * ÑéÖ¤µÇÂ½£¬²¢´æ´¢µÇÂ½×´Ì¬
	 * */
	@RequestMapping("/in")
	public @ResponseBody Long in(@RequestBody User u,HttpServletRequest req) {
		Long tof;
		User user = userservice.getByName(u.getUsername());
		if (user == null) {
			return tof = 3l;
		} else {
			if (u.getPassword().equals(user.getPassword())) {
				tof = 1l;
				req.getSession().setAttribute("logoin","ok");
			} else {
				tof = 0l;
			}
			return tof;
		}

	}
	
	/*
	 * 
	 * */
	@RequestMapping("/out")
	public String out(HttpServletRequest req) {
		req.getSession().removeAttribute("logoin");
		return "logo";
	}
	
	/**/
	@RequestMapping("/check")
	public @ResponseBody String check(HttpServletRequest req) {
		String a=(String) req.getSession().getAttribute("logoin");
		return a;
	}
}
