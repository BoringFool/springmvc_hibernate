		$().ready(function() {
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

			for (var i = 1; i <= 11; i++) {
				var n = "a";
				var m = n + i + "";
				var z = "li_a";
				var x = z + i + "";
				c(m, x);
			}
			;
		});