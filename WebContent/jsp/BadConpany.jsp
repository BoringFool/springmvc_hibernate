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
<script>
$().ready(function() {
	$(document).ready(function() {
		$("input").click(function() {
			$(this).hide();
		});
	});
	$(".b").click(function() {
		$(this).text(a);
	});
	/* $("#a").click(function(){
		$(this).hide();
	}); */
	/* $(".sc_d").click(function(){
		$(this).hide();
	}); */
});
</script>
<script>
	if (typeof jQuery == 'undefined') {
		window.alert("没有jquery");
	}
</script>
<%
	String basePath = request.getContextPath();
%>

</head>
<body>
<script>
		function save_conpany(){
			var con={
				"name":"张er",
				"description":"a描述",
				"num_jop":"232",
				"offer":"哈a哈",
				"ok":"true"		
			};
			$.ajax({
				type:'post',
				url:'${pageContext.request.contextPath}/conpany/save',
				contentType : 'application/json;charset=utf-8',
				data:JSON.stringify(con),
				success:function(data){
					alert(data);
				}
				
			});
			
		}
	</script>
	<div class="show">
	<div class="scd_d sub_show">
		<div class="scd_d_i">
			<div class="scd_d_md ber_remv">公司名字</div>
			<div class="scd_d_sd ber_remv1">公司简单介绍。<br/> <br/>       <span style="color: red;">(点击添加)</span></div>
			<div class="scd_d_td ber_remv">
				<span class="s_s">在招职位数</span><span class="s_s1">250</span>
			</div>
			<div class="scd_d_fd">wangted offer</div>
		</div>
		<div class="scd_d_fid">是<br/>否<br/>靠<br/>谱<br/>？</div>
		<button type="button" class="sub" onclick="save_conpany()" style="float: left;">提交</button>
		<button type="button" class="sub" >取消</button>
	</div>
	</div>




	<div id="main" class="main">
		<div id="create" class="scd_d">
			<div class="scd_d_i">
				<div class="scd_d_md ber_remv">公司名字</div>
				<div class="scd_d_sd ber_remv1">公司简单介绍。<br/> <br/>       <span style="color: red;">(点击添加)</span></div>
				<div class="scd_d_td ber_remv">
					<span class="s_s">在招职位数</span><span class="s_s1">250</span>
				</div>
				<div class="scd_d_fd">wangted offer</div>
			</div>
			<div class="scd_d_fid">是<br/>否<br/>靠<br/>谱<br/>？</div>
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
		var a;
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
						a = data[0].name;
						alert("1"+a);
					},
					error : function() {
						alert("查询失败");
					}
				});
			alert("2"+a);
			}
		</script>
	</div>

	<p id="a" class="b" >asdf</p>
	<div>
		<p>--------------------------三:接收JSON格式字符串对象参数
			@RequestBody注解传递json格式对象字符串---------------------------------------------------------------</p>
		<button type="button" onclick="sendJsonStr()">1.点击发送json字符串到后台(单一对象)</button>

		<button type="button" onclick="sendComplexJsonStr()">2.点击发送嵌套json字符串到后台(复杂对象)</button>


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
		</script>
	</div>

	<div>
		<p>---------------------------三：传递数组(批量删除)-----------------------------------------------------------------------------------------------------------------</p>
		<button type="button" onclick="sendArrayStr()">点击发送数组到后台</button>
		<script type="text/javascript">
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
				url : '${pageContext.request.contextPath }/a/sendArrayStr',
				traditional : true,//注意，必须要有个设置否则传递数组报400错误。默认为false深度序列化，在此改为true  
				data : {
					"array" : arrayStr
				},
				success : function(data) {//返回json结果  
					alert(data.name);
				}
			});
		}
		</script>
	</div>
	<div>
		<button type="button" onclick="sendList()">3.点击发送json字符串到后台(集合对象)</button>
		<script>
		function sendList(){
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
		  $.ajax({
			  type:'post',
			  url:'${pageContext.request.contextPath}/a/sendList',
			contentType:'application/json;charset',
			data:JSON.stringify(jsonData),
			success:function(data){
				alert(data[1].name);
			}
			error:function(){
				alert("查询失败");
			}
		  });
		}
		</script>
	</div>
</body>
</html>