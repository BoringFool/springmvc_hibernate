<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/logo.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div class="main">
		<div class="scd_d">
			<img class="imge" alt="" src="../images/logo_f.jpg">
		</div>
		<h1 class="hed_t">登录进入</h1>
		<form action="">
			<div class="fm_fd">
				<div class="fm_sd">
					<label class="inp_l" for="username">用户名 </label> 
					<input id="username" name="username" class="inp_t" type="text" /> 
					<label class="inp_l" for="password">密码<a href="#"style="float: right;">忘记密码？</a></label> 
					<input id="password"name="password" class="inp_t" type="text" />
					<input id="commit"name="commit" class="inp_s" type="submit" value="提交" />
				</div>
			</div>
		</form>
		<div class="thd_d">
			<p>
				没有账号？<a href="#">注册账号。</a>
			</p>
		</div>
	</div>
</body>
</html>