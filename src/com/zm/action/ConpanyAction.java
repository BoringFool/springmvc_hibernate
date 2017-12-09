package com.zm.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zm.model.Conpany;
import com.zm.service.IConpanyService;

@Controller
@RequestMapping("/conpany")
public class ConpanyAction {
	
	@Resource
	private IConpanyService conser;
	
	public IConpanyService getConser() {
		return conser;
	}

	public void setConser(IConpanyService conser) {
		this.conser = conser;
	}

	@RequestMapping("/save")
	public @ResponseBody Conpany save(@RequestBody Conpany con) {
		conser.save(con);
		return con;
	}
	
}
