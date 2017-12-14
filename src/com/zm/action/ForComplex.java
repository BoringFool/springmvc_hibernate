package com.zm.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.zm.model.Conpany;
import com.zm.model.JsonArr;
import com.zm.service.IConpanyService;




@Controller
@RequestMapping("/complex")
public class ForComplex {
	
	
	@Resource
	private IConpanyService conser;
	
	public IConpanyService getConser() {
		return conser;
	}

	public void setConser(IConpanyService conser) {
		this.conser = conser;
	}
	
	
	
	
	
	
	
	
	/*
	 * form通过input的name传旨，用request。getparameter来获得值
	 * */
	@RequestMapping("/testform")
	public String testForm(HttpServletRequest req) {
		String a= req.getParameter("a")+req.getParameter("ab");
		System.out.println(a);
		return "complex";
	}
	
	/*
	 * 创建一个类JsonArr来接收json数组，JsonArr的属性既是json数组的key
	 * 
	 * 尝试把json数组赋值给key传入，是不可以的@requestbody无法获取到，requestParameter没试过。
	 * */
	@RequestMapping("/jsonData")
	public @ResponseBody List<JsonArr> testJsonData(@RequestBody ArrayList<JsonArr> data ,HttpServletRequest req) {
		/*String aa=req.getParameter("aa");
		System.out.println(aa);(aa获取的值为null)*/
		ArrayList<JsonArr> a=data;
		System.out.println(data);
		for(JsonArr b:a) {
			System.out.println(b.getA()+b.getB()+b.getC());	
		};
		
		
		
		List<Conpany> con= conser.findall();
		System.out.println(con);
		return a;
	}
	
	/*
	 * */
	@RequestMapping("/find")
	public @ResponseBody List<Conpany> find() {
		List<Conpany> con= conser.findall();
		 for(Conpany b:con) {
			System.out.println(b.getName());	
		};
		return con;
	}
	
	@RequestMapping("/at")
	public void at() {
		List<Conpany> con= conser.findall();
		
		 for(Conpany b:con) {
			System.out.println(b.getName());	
		};
		
	}
}
