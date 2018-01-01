$().ready(function() {

	$(".cir_d").hover(function() {
		$(".cir_d").removeClass("add_class");
		var a = $(this).attr("value");
		$(this).addClass("add_class");
		distance(a);
	});

	
	function distance(arg) {
		var a = (arg - 1) * 43;
		var b=-((arg-1)*364);
		var c=b/50;
		$(".triangle").css("top", a);
		var o = { speed: 1000, timeout: 2000 };
		
		setTimeout(function(){$(".sc_ul").css("left",b); }, o.timeout);
	}
	
	
	
});