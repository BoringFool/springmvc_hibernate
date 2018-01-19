$().ready(function (){
	
	$("#a").click(function (){
		alert("1");
	});
	$(".whole").hover(function(){
		$(this).find(".img_t").css("top","0");
		$(this).find(".img_b").css({"top":"50px"});
		$(this).find("h3").css({"color":"#E94646","white-space":"normal"});
		$(this).find(".view_data").css("display","none");
	},function(){
		$(this).find(".img_t").css("top","-24px");
		$(this).find(".img_b").css({"top":"90px"});
		$(this).find("h3").css({"color":"#333333","white-space":"nowrap"});
		$(this).find(".view_data").css("display","block");
	});
});
