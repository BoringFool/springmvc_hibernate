$().ready(function() {
	/*���������л�*/
	$(".cir_d").hover(function() {
		$(".cir_d").removeClass("add_class");
		var a = $(this).attr("value");
		$(this).addClass("add_class");
		distance(a);
	});

	 /*��������*/
	function distance(arg) {
		var a = (arg - 1) * 43;
		var b=-((arg-1)*364);
		var c=arg-1;
		$(".triangle").css("top", a);
		cc(b,c);
	}
	
	
	/*����*/
	function cc(arg,arg_b){
		var t=1;
		
		/*�����л��ٶ�*/
		var timer =setInterval(function(){
			cir(t,arg,arg_b);
			}, 150);
		
		/*��Ҫ��ִ��4��*/
		function cir(arg_1,arg_2,arg_3){
			var z=-(91*arg_1)*arg_3;/*1/4*/
			$(".sc_ul").css("left",z);
				t++;
			/*�ж��Ƿ�ֹͣ*/
			if(t==5){
				t=1;
				clearInterval(timer);
			}
		}		
	}
	
	
	
	/**/
	
	$("body").click(function(){
		var p=$(".sc_ul").css("left");
		var y=p.substring(0,p.length-2);
		if(-1>-2){
			alert(y);
		}
	});
	
	
});