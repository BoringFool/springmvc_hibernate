package com.zm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FilterTest implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	/*
	 * 如果是拦截所有请求，需要用转发，用重定向会导致无限拦截，从而无法跳转
	 * */
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest) arg0;
		HttpServletResponse res=(HttpServletResponse) arg1;
		FilterChain chan=arg2;
		String a=(String) req.getSession().getAttribute("logoin");
		if("ok".equals(a)){
			chan.doFilter(req, res);	
		}else{
			System.out.println("未登录！");
			req.getRequestDispatcher("/jsp/logo.jsp").forward(req, res);
			//res.sendRedirect("/springmvc_hibernate/jsp/filtertest.jsp");
			
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
