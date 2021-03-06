package com.zm.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		System.out.println("1");
		return con;
	}
	
	@RequestMapping("/get")
	public @ResponseBody Conpany save(@RequestParam("ids") Long ids,  HttpServletRequest request ) {
//		String a=request.getParameter("ids");
		Conpany con=conser.look(ids);
		System.out.println("1");
		
		return con;
	}
	
	@RequestMapping("/findall")
	public @ResponseBody List<Conpany> findall() {
		List<Conpany> con=conser.findall();
		for(Conpany c:con) {
			System.out.println(c.getName());
		}
		return con;
	}
}
