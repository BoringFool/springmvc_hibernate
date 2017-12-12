<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.2.1.min.js"></script>
</head>
<body>

	<!-- 用来实验form -->
	<form action="<%=request.getContextPath() %>/complex/testform" method="post">
		<input type="text" name="a" />
		<input type="text" name="ab" />
		<input type="submit" value="提交"/>
	</form>
	
	<!-- ajax向后台传递json格式数据，并返回json数据 -->
	<button type="button" onclick="jsonA()">jsonA</button>
	<script>
	function jsonA(){
	var jsonData=[
			{
				"a":"a",
				"b":"b",
				"c":"c",
			},
			{
				"a":"b",
				"b":"c",
				"c":"a",
			},
			{
				"a":"c",
				"b":"b",
				"c":"a",
			}
	];
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/complex/jsonData",
			contentType : 'application/json;charset=utf-8',
			data:JSON.stringify(jsonData),
			success:function(data){
				alert(data[0].a);
			},
			error:function(){
				alert("wrong");
			}
		});
	};
	</script>
</body>
</html>