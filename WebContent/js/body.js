$().ready(function() {
	/* 数图悬浮切换 */
	$(".cir_d").hover(function() {
		$(".cir_d").removeClass("add_class");
		var a = $(this).attr("value");
		$(this).addClass("add_class");
		distance(a);
		var c=a-1;
		var target=-(c*364);
		times(c,target);
	});
	
	/* 计算需要切换几张图,D_value相当于执行次数 */
	function times(arg,arg_1){
		var p=$(".sc_ul").css("left");
		var current=parseInt(p.substring(0,p.length-2));
		var current_value=-current/364;
		var D_value=arg-current_value;
		/*判断差值的正负*/
		if(D_value>0){
		        // 执行的函数
		        cc(arg_1,D_value);
		}else if(D_value<=0){
		        cc(arg_1,-(D_value));
		};
	}
	
	/* 渐换，执行一次等于切换一张图 */
	function cc(arg,arg_1){
		var t=0;
		/* 画面切换速度 */
		var timer =setInterval(function(){
			cir(t,arg,arg_1);
			}, 60);
		
		/* 需要被执行4次 */
		function cir(arg_1,arg_2,arg_3){
			var itl=-91*arg_3;/* 每次增减距离 */
			/* 大减，小加？ */
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
			/* 判断是否停止 */
			if(t>=4){
				clearInterval(timer);
			};
			
		};		
	};
	
	 /* 小三角切换 */
	function distance(arg) {
		var a = (arg - 1) * 43;
		$(".triangle").css("top", a);
	};
});