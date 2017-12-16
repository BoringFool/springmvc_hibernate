<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/index.js"></script>
</head>
<body>
 <script>
 if (typeof jQuery == 'undefined') {
		window.alert("没有jquery");
	}
 
 
 </script>
	<a href="http://localhost:8080/springmvc_hibernate/jsp/BadConpany.jsp">公司页面</a>
	<a href="http://localhost:8080/springmvc_hibernate/jsp/logo.jsp">登陆页面</a>	
	<button id="logoout" type="button">退出登陆</button>
	<button id="check" type="button">查看session</button>
</body>
</html>