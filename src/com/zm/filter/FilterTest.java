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
			System.out.println("Î´µÇÂ¼£¡");
			req.getRequestDispatcher("/jsp/filtertest.jsp").forward(req, res);
			//res.sendRedirect("/springmvc_hibernate/jsp/filtertest.jsp");
			
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
