<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/conpany.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/conpany.js"></script>
<%
	String basePath = request.getContextPath();
%>
</head>
<body>
	<div id="main" class="main">
		<div class="scd_d">
			<div class="scd_d_i">
				<div class="scd_d_md ber_remv">conpanyname top_hang</div>
				<div class="scd_d_sd ber_remv1">description scd_hangAS S啊A S</div>
				<div class="scd_d_td ber_remv">
					<span class="s_s">zhaopdsad</span><span class="s_s1">250</span>
				</div>
				<div class="scd_d_fd">offerA S啊</div>
			</div>
			<div class="scd_d_fid">ok?</div>
		</div>
	</div>
	<div id="a"></div>
	<div>
		<p>--------------------------一:URL方式传参数或者传几个基本类型参数
			1.HttpServletRequest req 2.@RequestParam注解
			3.@PathVariable搭配RESTFul风格URL------------------------</p>
		<button type="button" onclick="sendUrlParam()">点击测试url传参数controller注解方式接收</button>
		<script>
		function sendUrlParam() {  
	          
            $.ajax({  
                type : 'post',  
                url : "<%=basePath%>/a/sendUrlParam?testName=ss",  
                dataType : "json",  
                success : function(data) {    
                    console.log(data);  
                    alert(data.name);  
                },  
                error : function() {  
                    alert("查询失败");  
                }  
            });   
        }
		</script>
	</div>

	<div>
		<p>--------------------------二:返回JSON格式字符串对象参数
			@ResponseBody注解演示------------------------------------------------------------------------------------------</p>
		<button type="button" onclick="selectById()">@ResponseBody注解演示</button>
		<script>
		function selectById(){  
            $.ajax({  
                type : 'post',  
                url : "<%=basePath%>/a/selectUserReturnByJSON",
					//url的三种写法  
					//    /ssmaven/ssm/selectUserReturnByJSON  
					//    ${pageContext.request.contextPath}/ssm/selectUserReturnByJSON  
					dataType : "json",
					success : function(data) {
						console.log(data);
						var name = data[0].name;
						alert(name);
					},
					error : function() {
						alert("查询失败");
					}
				});
			}
		</script>
	</div>

	<div>
		<p>--------------------------三:接收JSON格式字符串对象参数
			@RequestBody注解传递json格式对象字符串---------------------------------------------------------------</p>
		<button type="button" onclick="sendJsonStr()">1.点击发送json字符串到后台(单一对象)</button>

		<button type="button" onclick="sendComplexJsonStr()">2.点击发送嵌套json字符串到后台(复杂对象)</button>

		<button type="button" onclick="sendJsonListStr()">3.点击发送json字符串到后台(集合对象)</button>
		<script type="text/javascript">
			function sendJsonStr() {

				var jsonData = {
					"id" : "111",
					"name" : "卡丽熙",
					"password" : "12138",
					"email" : "888888@gmail.com"
				};
				$.ajax({
					type : 'post',
					url : '${pageContext.request.contextPath }/a/sendJsonStr',
					contentType : 'application/json;charset=utf-8',//指定为json类型，这个属性是配合注解@RequestBody使用的  
					//数据格式是json串  
					data : JSON.stringify(jsonData),
					success : function(data) {//返回json结果  
						//注意 1条数据不能用data[0].userName的形式取值 因为我们controller返回的不是List<User>  
						alert(data.name);
					}
				});
			}
			
			
			function sendJsonListStr() {
				//方式一  
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
				$.ajax({
							type : 'post',
							url : '${pageContext.request.contextPath }/a/sendJsonListStr',
							contentType : 'application/json;charset=utf-8',
							//指定为json类型  
							//数据格式是json串,多个对象用[]包装  
							data : JSON.stringify(jsonData),
							success : function(data) {//返回json结果  
								alert(data[1].name);
							}
						});
			}
		</script>
	</div>
</body>
</html>