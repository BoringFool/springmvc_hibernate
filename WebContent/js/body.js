$().ready(function() {
	/* ��ͼ�����л� */
	$(".cir_d").hover(function() {
		$(".cir_d").removeClass("add_class");
		var a = $(this).attr("value");
		$(this).addClass("add_class");
		distance(a);
		var c=a-1;
		var target=-(c*364);
		times(c,target);
	});
	
	/* ������Ҫ�л�����ͼ,D_value�൱��ִ�д��� */
	function times(arg,arg_1){
		var p=$(".sc_ul").css("left");
		var current=parseInt(p.substring(0,p.length-2));
		var current_value=-current/364;
		var D_value=arg-current_value;
		/*�жϲ�ֵ������*/
		if(D_value>0){
		        // ִ�еĺ���
		        cc(arg_1,D_value);
		}else if(D_value<=0){
		        cc(arg_1,-(D_value));
		};
	}
	
	/* ������ִ��һ�ε����л�һ��ͼ */
	function cc(arg,arg_1){
		var t=0;
		/* �����л��ٶ� */
		var timer =setInterval(function(){
			cir(t,arg,arg_1);
			}, 60);
		
		/* ��Ҫ��ִ��4�� */
		function cir(arg_1,arg_2,arg_3){
			var itl=-91*arg_3;/* ÿ���������� */
			/* �����С�ӣ� */
			var p=$(".sc_ul").css("left");
			var current=parseInt(p.substring(0,p.length-2));
			if(arg_2>current){
				var act=current-itl;
				$(".sc_ul").css("left",act);
			}else if(arg_2<current){
				var act=current+itl;
				$(".sc_ul").css("left",act);
			}
			
			t++;
			/* �ж��Ƿ�ֹͣ */
			if(t>=4){
				clearInterval(timer);
			};
			
		};		
	};
	
	 /* С�����л� */
	function distance(arg) {
		var a = (arg - 1) * 43;
		$(".triangle").css("top", a);
	};
});