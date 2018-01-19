$().ready(function (){
	
	$("#a").click(function (){
		alert("1");
	});
	$(".whole").hover(function(){
		$(".img_t").css("top","0");
		$(".img_b").css({"top":"50px"});
		$(".sec .content ul li .whole h3").css({"color":"#E94646","white-space":"normal"});
		$(".view_data").css("display","none");
	},function(){
		$(".img_t").css("top","-24px");
		$(".img_b").css({"top":"90px"});
		$(".sec .content ul li .whole h3").css({"color":"#333333","white-space":"nowrap"});
		$(".view_data").css("display","block");
	});
});
