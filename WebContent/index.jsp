<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String a = request.getContextPath();
%>
</head>
<body>
	<a href="http://localhost:8080/springmvc_hibernate/jsp/BadConpany.jsp">公司页面</a>
	<a href="http://localhost:8080/springmvc_hibernate/jsp/logo.jsp">登陆页面</a>
	<form action="<%=a%>/user/service.do">
		<input type="submit" value="提交" />
	</form>
	
	<form action="<%=a%>/user/tb.do">
		 <input type="submit" value="tb" />
	</form>
	
</body>
</html>