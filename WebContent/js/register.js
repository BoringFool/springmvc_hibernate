$().ready(function() {

	/*
	 * 注册提交
	 */
	$("#submit").click(function() {
		register();

	});
	
	/*
	 * 退出当前页面
	 * */
	$("#quit").click(function() {
		close();

	});

	/*
	 * 注册成功后，改变页面
	 * */
	function change() {
		$(".f_s_s1").css({
			"color" : "#b6b6b6",
			"background-color" : "#efefef"
		});
		$(".f_s_s2").css({
			"color" : "#000000",
			"background-color" : "#f9f9f9"
		});
		$("#quit").css({
			"display" : "block"
		});
		$("#a").css({
			"display" : "none"
		});
		$("#b").css({
			"display" : "none"
		});
	}

	/*
	 * 退出当前页面
	 * */
	function close() {
		window.opener = null;
		window.close();
	}

	/*
	 * ajax注册
	 */
	function register() {
		var Jdata = {
			"username" : $("#username").val(),
			"password" : $("#password").val(),
			"email" : $("#email").val()

		}
		$.ajax({
			type : "post",
			url : "/springmvc_hibernate/user/register",
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(Jdata),
			dataTape : "json",
			success : function(data) {
				if (data == 1) {
					alert("注册成功,5秒后跳转");
					change();
					setTimeout(function (){
						$(location).attr("href","http://localhost:8080/springmvc_hibernate/jsp/logo.jsp");
					}, 5000);

				} else {
					alert("用户已经存在");
				}
			},
			error : function() {
				alert("提交失败");
			}
		});

	}

	/*
	 * 
	 */

});