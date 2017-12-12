package com.zm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zm.model.JsonArr;




@Controller
@RequestMapping("/complex")
public class ForComplex {
	/*
	 * formͨ��input��name��ּ����request��getparameter�����ֵ
	 * */
	@RequestMapping("/testform")
	public String testForm(HttpServletRequest req) {
		String a= req.getParameter("a")+req.getParameter("ab");
		System.out.println(a);
		return "complex";
	}
	
	/*
	 * ����һ����JsonArr������json���飬JsonArr�����Լ���json�����key
	 * 
	 * ���԰�json���鸳ֵ��key���룬�ǲ����Ե�@requestbody�޷���ȡ����requestParameterû�Թ���
	 * */
	@RequestMapping("/jsonData")
	public @ResponseBody List<JsonArr> testJsonData(@RequestBody ArrayList<JsonArr> data ,HttpServletRequest req) {
		/*String aa=req.getParameter("aa");
		System.out.println(aa);(aa��ȡ��ֵΪnull)*/
		ArrayList<JsonArr> a=data;
		System.out.println(data);
		for(JsonArr b:a) {
			System.out.println(b.getA()+b.getB()+b.getC());	
		};
		return a;
	}
}
