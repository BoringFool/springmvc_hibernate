<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<%
	String basePath = request.getContextPath();
%>
</head>
<body>

	<button type="button" onclick="a()">aa</button>

	<script>
		function a(){
			$.ajax({  
                type : 'post',  
                url : "<%=basePath%>/a/bb",
				dataType : "json",
				success : function(data) {
					console.log(data);
					var a = data[0].name;
					alert("2"+a);
				},
				error : function() {
					alert("查询失败");
				}
			});
		}
		
	</script>

	<!-- jsp to 后台  -->
	<!-- 1 -->
	<form action="/data/1" method="post">
		<input name="data" type="text" value="10" />
	</form>

	<!-- 2 -->
	<form action="/data/2" method="post">
		<input name="name" type="text" value="在啊" /> 
		<input name="password" type="text" value="123456" /> 
		<input name="email" type="text" value="1212@ad" />

	</form>

	<!-- 3 -->
	<form action="/data/3" method="post">
		<input name="firstName" value="张" /><br> 
		<input name="lastName" value="三" /><br> 
		<input name="contactInfo.tel" value="13809908909" /><br> 
		<input name="contactInfo.address" value="北京海淀" /><br> 
		<input type="submit" value="Save" />
	</form>
</body>
</html>