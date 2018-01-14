$().ready(function() {
	/* 数图悬浮切换 */
	$(".cir_d").hover(function() {
		var $this = $(this);
		t = setTimeout(function() {
			// 要执行的操作；鼠标放上去后200毫秒才执行
			hov($this);
		}, 140);
	}, function() {
		// 鼠标移除后清除上面的操作；
		clearTimeout(t);
	});

	/*hover触发时调用函数*/
	function hov(arg) {
		var a,c,target;
		$(".cir_d").removeClass("add_class");
		a = arg.attr("value");
		arg.addClass("add_class");
		distance(a);
		c = a - 1;
		target = -(c * 364);
		times(c, target);
	};

	/* 计算需要切换几张图,D_value相当于执行次数 */
	function times(arg, arg_1) {
		var p,current,current_value,D_value;
		p = $(".sc_ul").css("left");
		current = parseInt(p.substring(0, p.length - 2));
		current_value = parseInt(-current / 364);
		D_value = arg - current_value;
		/* 判断差值的正负 */
		if (D_value > 0) {
			// 执行的函数
			cc(arg_1, D_value);
		} else if (D_value <= 0) {
			cc(arg_1, -(D_value));
		};
	};

	/* 渐换，执行一次等于切换一张图 */
	function cc(arg_1, arg_2) {
		var t,timer;
		t = 0;
		/* 画面切换速度 */
		timer = setInterval(function() {
			cir(arg_1, arg_2);
		}, 40);

		/* 需要被执行4次 */
		function cir(arg_1, arg_2) {
			var itl,p,current,act;
			itl = -91*arg_2;/* 每次增减距离 */
			/* 大减，小加？ */
			p = $(".sc_ul").css("left");
			current = parseInt(p.substring(0, p.length - 2));
			if (arg_1 > current) {
				act = current - itl;
				$(".sc_ul").css("left", act);
			} else if (arg_1 < current) {
				act = current + itl;
				$(".sc_ul").css("left", act);
			}
			t++;
			/* 判断是否停止 */
			if (t >= 4) {
				clearInterval(timer);
			};
		};
	};
	
	
	/*右下角轮播图切换，包含小点变长*/
	$(".nm").hover(function(){
		var $this=$(this);
		 t = setTimeout(function() {
			// 要执行的操作；鼠标放上去后200毫秒才执行
			hov_2($this);
		}, 150);
	},function(){
		// 鼠标移除后清除上面的操作；
		clearTimeout(t);
	});
	
	function hov_2(arg){
		var target,fin_target;
		$(".is_active").removeClass("is_active");
		arg.addClass("is_active");
		/*鼠标悬浮li的value*/
		target=arg.attr("value");
		fin_target=(parseInt(target)-1)*290;
		 one_10(fin_target);
	}
	
	
	/**/
	function one_10(fin_target){
		var d_b,D_value,ttt,c;
		d_b=parseInt($(".turn").css("left"));
		D_value=(fin_target/290)+(d_b/290);
		ttt=Math.abs(D_value);
		c=0;
		t=setInterval(function(){
			one();
		},10);
		
		/**/
		function one(){
			var a,b,length;
			length=-29*ttt;
			a=$(".turn").css("left");
			b=parseInt(a);
			if(-fin_target>b){
				$(".turn").css("left",b-length);
			}else if(-fin_target<b){
				$(".turn").css("left",b+length);
			}
			c++;
			if(c>=10){
				clearInterval(t);	
			}
		}
	}
	
	/*导航条底部div是否显示判断*/
	function show_none(){
		if($(document).scrollTop()>=1400){
			$(".nav_bottom").css({"display":"block"});
		}else{
			$(".nav_bottom").css("display","none");
		}
	}
	$(window).scroll(function(){
		show_none();
	});
	
	/*点击回到网页顶部*/
	$(".nav_bottom").click(function(){
			$('html, body').animate({  
                scrollTop: $("#top").offset().top  
            }, 500);  
	});
	
	/*点击定位到指定元素（指定元素需有id）*/
	$(".navigation ul li").click(function(){
		$(".chan").removeClass("chan");
		$(this).addClass("chan");
		if($(this).attr("value")==1){
			$('html, body').animate({  
                scrollTop: $("#top").offset().top  
            }, 1000);  
		}else if($(this).attr("value")==2){
			$('html, body').animate({  
                scrollTop: $("#down").offset().top  
            }, 1000);  
		}
	});
	/*切换显示（今日头条，新闻摘要）*/
	
	$(".content_head ul li").hover(function(){
		if($(this).attr("value")==1){
			$(".li_change").removeClass("li_change");
			$(this).addClass("li_change");
			
			$("#content02").css("display","none");
			$("#content01").css("display","block");
		}else if($(this).attr("value")==2){
			$(".li_change").removeClass("li_change");
			$(this).addClass("li_change");
			
			$("#content01").css("display","none");
			$("#content02").css("display","block");
		}else{}		
	},function(){
		
	});

	/* 小三角切换 */
	function distance(arg) {
		var a = (arg - 1) * 43;
		$(".triangle").css("top", a);
	}
	;
});