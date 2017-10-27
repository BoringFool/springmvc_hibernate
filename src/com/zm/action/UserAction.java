package com.zm.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserAction {

	@RequestMapping("/service")
	public String act() {

		return "succ";
	}

	@RequestMapping("/tb")
	public String tb() {

		return "copytb";
	}
}
