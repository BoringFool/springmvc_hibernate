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
	
	$(".sec .title_l .r_fl_fr").hover(function(){
			ratate_i();
	},function(){
			ratate_i_b();		
	});
	
	
	
	
	function ratate_i(){
		var a=5;
		 var timer=setInterval(function(){
			a=a+5;
			$(".sec .title_l .r_fl_fr i").css("transform","rotate("+a+"deg)");
			if(a>=180){
				console.log(a);
				clearInterval(timer);
			}
		},8);
		 
	}
	
	function ratate_i_b(){
		var a=175;
		 var timer=setInterval(function(){
			a=a-5;
			$(".sec .title_l .r_fl_fr i").css("transform","rotate("+a+"deg)");
			if(a<=0){
				clearInterval(timer);
			}
		 },8);
		 
	}
	

});
