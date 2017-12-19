$().ready(function() {
	/*
	 * 调用
	 * */
	check();
	
	/*
	 * 退出登陆状态
	 * */
	$("#logoout").click(function() {
		logoout();
	});
	
	/*
	 *退出登陆状态 
	 * */
	function logoout(){
		$.ajax({
			type:"post",
			url : "/springmvc_hibernate/logo/out",
			success:function(){ 
				alert("已退出");
				$(location).attr("href","/springmvc_hibernate/jsp/logo.jsp");
			},
			error:function(){
				alert("请求失败");
			}
		});
	}

		
	/*
	* 加载时检查是否登陆
	* */
	function check() {
		$.ajax({
			type:"post",
			url : "/springmvc_hibernate/logo/check",
			success:function(data){ 
				var a="ok";
				if(a==data){
					
				}else{
					alert("未登陆");
					$(location).attr("href","/springmvc_hibernate/jsp/logo.jsp");
				}
			},
			error:function(){
				alert("请求失败");
			}
		});
	}
		
	
});