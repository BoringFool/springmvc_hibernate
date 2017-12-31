		$().ready(function() {
			/*
			 * 显示和隐藏div
			 * 
			 * */
			function c(id, id1) {
				$("#" + id).hide();
				$("#" + id1).hover(function() {
					$("#" + id1).css({"border":"1px solid #D5D5D5","border-bottom":"none"});
					$("#" + id).show();
				}, function() {
					$("#" + id).hide();
					$("#" + id1).css({"border":"none","border-bottom":"none"});
				});
				$("#" + id).hover(function(){
					$("#" + id1).css({"border":"1px solid #D5D5D5","border-bottom":"none"});
					$("#" + id).show();
				},function(){
					$("#" + id).hide();
					$("#" + id1).css({"border":"none","border-bottom":"none"});
				});
			}
			/*
			 * 循环绑定触发事件
			 * */
			for (var i = 1; i <= 11; i++) {
				var n = "a"+ i;
				var z = "li_a"+ i;
				c(n, z);
			}
			;
		});