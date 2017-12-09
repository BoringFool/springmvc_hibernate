<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-3.2.1.min.js"></script>
<%
	String basePath=request.getContextPath();
%>
</head>
<body>

	<p>--------------------------一:URL方式传参数或者传几个基本类型参数
		1.HttpServletRequest req 2.@RequestParam注解
		3.@PathVariable搭配RESTFul风格URL------------------------</p>
	<button type="button" onclick="sendUrlParam()">点击测试url传参数controller注解方式接收</button>
	<p>--------------------------二:返回JSON格式字符串对象参数
		@ResponseBody注解演示------------------------------------------------------------------------------------------</p>
	<button type="button" onclick="selectById()">@ResponseBody注解演示</button>
	<p>--------------------------三:接收JSON格式字符串对象参数
		@RequestBody注解传递json格式对象字符串---------------------------------------------------------------</p>
	<button type="button" onclick="sendJsonStr()">1.点击发送json字符串到后台(单一对象)</button>
	<button type="button" onclick="sendComplexJsonStr()">2.点击发送嵌套json字符串到后台(复杂对象)</button>
	<p></p>
	<button type="button" onclick="sendJsonListStr()">3.点击发送json字符串到后台(集合对象)</button>
	<p>---------------------------三：传递数组(批量删除)-----------------------------------------------------------------------------------------------------------------</p>
	<button type="button" onclick="sendArrayStr()">点击发送数组到后台</button>
	<p>
		basePath的值是：<span><%=basePath%></span>
	</p>
	</br>
	<p>
		<%-- request.getContextPath()的值是：<span><%=path%></span> --%>
	</p>
	<script type="text/javascript">  
        function sendUrlParam() {  
          
            $.ajax({  
                type : 'post',  
                url : "<%=basePath%>ssm/sendUrlParam?testName=三毛",  
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
        function selectById(){  
            $.ajax({  
                type : 'post',  
                url : "<%=basePath%>ssm/selectUserReturnByJSON",//url的三种写法  
				//    /ssmaven/ssm/selectUserReturnByJSON  
				//    ${pageContext.request.contextPath}/ssm/selectUserReturnByJSON  
				dataType : "json",
				success : function(data) {
					console.log(data);
					var name = data[1].userName;
					alert(name);
				},
				error : function() {
					alert("查询失败");
				}
			});
		}

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////  

		//单个对象User 后台用@RequestBody接受  请求json，输出是json 注意：发送的是JSON对象字符串！！！  
		function sendJsonStr() {

			var jsonData = {
				"userId" : "111",
				"userName" : "卡丽熙",
				"userPassword" : "12138",
				"userEmail" : "888888@gmail.com"
			};
			$.ajax({
				type : 'post',
				url : '${pageContext.request.contextPath }/ssm/sendJsonStr',
				contentType : 'application/json;charset=utf-8',//指定为json类型，这个属性是配合注解@RequestBody使用的  
				//数据格式是json串  
				data : JSON.stringify(jsonData),
				success : function(data) {//返回json结果  
					//注意 1条数据不能用data[0].userName的形式取值 因为我们controller返回的不是List<User>  
					alert(data.userName);
				}
			});
		}
		//嵌套对象UserExt 包含一个Goods引用属性 后台用@RequestBody接收  注意：发送的是JSON对象字符串！！！  
		function sendComplexJsonStr() {

			var jsonData = {
				"userId" : "666",
				"userName" : "卡丽熙",
				"userPassword" : "12138",
				"userEmail" : "888888@gmail.com",
				"goods" : {
					"name" : "商品电视机",
					"price" : "2998元"
				}
			//注意对象的写法 JS里面 key不加""也可以的{name:"商品电视机",price:"2998元"}  
			};
			$
					.ajax({
						type : 'post',
						url : '${pageContext.request.contextPath }/ssm/sendComplexJsonStr',
						contentType : 'application/json;charset=utf-8',//指定为json类型  
						//数据格式是json串  
						data : JSON.stringify(jsonData),
						success : function(data) {//返回json结果  
							//注意 1条数据不能用data[0].userPassword的形式取值 因为我们controller返回的不是List<User>  
							alert(data.goods.name);
						}
					});
		}
		//List<User>对象      
		function sendJsonListStr() {
			//方式一  
			/*  var jsonData = [ { 
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
			    } ]; */
			//方式二  
			var jsonData = [];
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
			jsonData.push(user3);
			$
					.ajax({
						type : 'post',
						url : '${pageContext.request.contextPath }/ssm/sendJsonListStr',
						contentType : 'application/json;charset=utf-8',//指定为json类型  
						//数据格式是json串,多个对象用[]包装  
						data : JSON.stringify(jsonData),
						success : function(data) {//返回json结果  
							alert(data[1].userName);
						}
					});
		}
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
		//传递数组对象  

		/** 
		 var   ids= new Array(); 
		$("input[class='detailCheck']:checked").each(function(i,k){ 
		var itemId=$(this).attr("itemId"); 
		ids[i]=itemId; 
		}); 
		 */
		function sendArrayStr() {
			//1.字面方式定义数组  
			/* var arrayStr = []; 
			arrayStr.push("大草原"); 
			arrayStr.push("大白兔"); 
			arrayStr.push("白又白"); 
			arrayStr.push("两只耳朵竖起来"); */
			//2.常规方式定义数组  
			var arrayStr = new Array();
			arrayStr[0] = "风吹";
			arrayStr[1] = "草地";
			arrayStr[2] = "见牛羊";
			arrayStr[3] = "哗哗哗";
			$.ajax({
				type : 'post',
				url : '${pageContext.request.contextPath }/ssm/sendArrayStr',
				traditional : true,//注意，必须要有个设置否则传递数组报400错误。默认为false深度序列化，在此改为true  
				data : {
					"array" : arrayStr
				},
				success : function(data) {//返回json结果  
					alert(data.userName);
				}
			});
		}
	</script>
</body>
</html>