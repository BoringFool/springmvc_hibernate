<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<%
	String basePath=request.getContextPath();
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
	<script>
		function cc(){  
			$.ajax({  
                type : 'post',  
                url : "<%=basePath%>/a/bb",
					//url的三种写法  
					//    /ssmaven/ssm/selectUserReturnByJSON  
					//    ${pageContext.request.contextPath}/ssm/selectUserReturnByJSON  
					dataType : "json",
					success : function(data) {
						console.log(data);
						var a = data[0].name;
						alert("1"+a);
					},
					error : function() {
						alert("查询失败");
					}
				});
			}
		</script>
</body>
</html>