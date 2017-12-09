<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<button type="button" onclick="sendJsonListStr()">3.点击发送json字符串到后台(集合对象)</button>
	<script type="text/javascript">
		function sendJsonListStr() {
			//方式一  
			alert("1");
			  var jsonData = [ { 
			        "userId" : "111", 
			        "userName" : "卡丽熙", 
			        "userPassword" : "12138", 
			        "userEmail" : "888888@gmail.com", 
			    }, { 
			        "userId" : "222", 
			        "userName" : "瑟太后", 
			        "userPassword" : "23222", 
			        "userEmail" : "7777777@gmail.com", 
			    }, { 
			        "userId" : "333", 
			        "userName" : "三傻", 
			        "userPassword" : "54323", 
			        "userEmail" : "934333@gmail.com", 
			    } ]; 
			//方式二  
			/* var jsonData = [];
			var user1 = {
				"userId" : "111",
				"userName" : "卡丽熙",
				"userPassword" : "12138",
				"userEmail" : "888888@gmail.com",
			};
			var user2 = {
				"userId" : "222",
				"userName" : "瑟太后",
				"userPassword" : "23222",
				"userEmail" : "7777777@gmail.com",
			};
			var user3 = {
				"userId" : "333",
				"userName" : "三傻",
				"userPassword" : "54323",
				"userEmail" : "934333@gmail.com",
			}
			jsonData.push(user1);
			jsonData.push(user2);
			jsonData.push(user3); */
			alert("2");
			$.ajax({
				alert("3");
				type : 'post',
				url : '${pageContext.request.contextPath }/a/sendJsonListStr',
				contentType : 'application/json;charset=utf-8',
				//指定为json类型  
				//数据格式是json串,多个对象用[]包装  
				data:{"datalist":JSON.stringify(jsonData)},
				alert("5");
				success : function(data) {//返回json结果  
					alert(data[1].name);
				}
				error : function() {  
                    alert("查询失败");  
                } 
			}); 
		}
		</script>
		<%
		@RequestMapping(value = "/sendJsonListStr") 	
		public @ResponseBody List<User> sendJsonListStr(@RequestBody ArrayList<User> user) {
			ArrayList<User> userList = user;
			for (User u : userList) {
				System.out.println(u.toString());
			}
			// System.out.println("前端获取的JSON对象集合字符串为：------>"+user);
			// System.out.println("第三个对象的名字是：------>"+user.get(2).getUserName());
			return user;
		}
		
		%>
</body>
</html>