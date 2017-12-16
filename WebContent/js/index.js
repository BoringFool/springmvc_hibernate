$().ready(function() {
	/*
	 * 调用
	 * */
	check();
	
	/*
	 * */
	$("#logoout").click(function() {
		logoout();
	});
	
	/*
	 * 
	 * */
	function logoout(){
		$.ajax({
			type:"post",
			url : "/springmvc_hibernate/logo/out",
			success:function(){ 
				alert(1);
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
					alert("已经登陆！");
				}else{
					$(location).attr("href","/springmvc_hibernate/jsp/logo.jsp");
				}
			},
			error:function(){
				alert("请求失败");
			}
		});
	}
		
	
});