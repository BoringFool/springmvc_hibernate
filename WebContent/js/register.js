$().ready(function() {
	
	/*$(document).ready(function() {
		$("input").click(function() {
			$(this).hide();
		});
	});
	$("p").click(function() {
		$(this).hide();
	});*/
	
	/*
	 * 注册ajax
	 * */
	function register(){
		var Jdata={
				"username":$("#username").val(),
				"password":$("#password").val(),
				"email":$("#email").val()
	
		}
		$.ajax({
			type:"post",
			url:"/springmvc_hibernate/user/register",
			contentType : "application/json;charset=utf-8",
			data:JSON.stringify(Jdata),
			dataTape:"json",
			success:function(data){
				alert("提交成功");
				if(data==1){
					alert("注册成功");
				}else{
					alert("用户已经存在");
				}
			},
			error:function(){
				alert("提交失败");
			}
		});
		
	}
	
	/*
	 * 注册提交
	 * */
	$("#submit").click(function(){
		register();
		
	});
	
	/*
	 * 
	 * */

	
	
});