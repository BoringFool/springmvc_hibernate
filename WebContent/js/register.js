$().ready(function() {

	/*
	 * 娉ㄥ唽鎻愪氦
	 */
	$("#submit").click(function() {
		register();

	});
	
	/*
	 * 閫�鍑哄綋鍓嶉〉闈�
	 * */
	$("#quit").click(function() {
		close();

	});

	/*
	 * 娉ㄥ唽鎴愬姛鍚庯紝鏀瑰彉椤甸潰
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
	 * 閫�鍑哄綋鍓嶉〉闈�
	 * */
	function close() {
		window.opener = null;
		window.close();
	}

	/*
	 * ajax娉ㄥ唽
	 */
	function register() {
		var Jdata = {
			"username" : $("#username").val(),
			"password" : $("#password").val(),
			"email" : $("#email").val()

		};
		$.ajax({
			type : "post",
			url : "/springmvc_hibernate/user/register",
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(Jdata),
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					alert("娉ㄥ唽鎴愬姛,5绉掑悗璺宠浆");
					change();
					setTimeout(function (){
						$(location).attr("href","http://localhost:8080/springmvc_hibernate/jsp/logo.jsp");
					}, 5000);

				} else {
					alert("鐢ㄦ埛宸茬粡瀛樺湪");
				}
			},
			error : function() {
				alert("鎻愪氦澶辫触");
			}
		});

	}

	/*
	 * 
	 */

});