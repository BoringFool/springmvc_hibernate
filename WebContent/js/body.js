$().ready(function() {
	/* ��ͼ�����л� */
	$(".cir_d").hover(function() {
		var $this = $(this);
		t = setTimeout(function() {
			// Ҫִ�еĲ�����������ȥ��200�����ִ��
			hov($this);
		}, 140);
	}, function() {
		// ����Ƴ����������Ĳ�����
		clearTimeout(t);
	});

	/*hover����ʱ���ú���*/
	function hov(arg) {
		$(".cir_d").removeClass("add_class");
		var a = arg.attr("value");
		arg.addClass("add_class");
		distance(a);
		var c = a - 1;
		var target = -(c * 364);
		times(c, target);
	};

	/* ������Ҫ�л�����ͼ,D_value�൱��ִ�д��� */
	function times(arg, arg_1) {
		var p = $(".sc_ul").css("left");
		var current = parseInt(p.substring(0, p.length - 2));
		var current_value = parseInt(-current / 364);
		var D_value = arg - current_value;
		/* �жϲ�ֵ������ */
		if (D_value > 0) {
			// ִ�еĺ���
			cc(arg_1, D_value);
		} else if (D_value <= 0) {
			cc(arg_1, -(D_value));
		};
	};

	/* ������ִ��һ�ε����л�һ��ͼ */
	function cc(arg_1, arg_2) {
		var t = 0;
		/* �����л��ٶ� */
		var timer = setInterval(function() {
			cir(arg_1, arg_2);
		}, 40);

		/* ��Ҫ��ִ��4�� */
		function cir(arg_1, arg_2) {
			var itl = -91*arg_2;/* ÿ���������� */
			/* �����С�ӣ� */
			var p = $(".sc_ul").css("left");
			var current = parseInt(p.substring(0, p.length - 2));
			if (arg_1 > current) {
				var act = current - itl;
				$(".sc_ul").css("left", act);
			} else if (arg_1 < current) {
				var act = current + itl;
				$(".sc_ul").css("left", act);
			}

			t++;
			/* �ж��Ƿ�ֹͣ */
			if (t >= 4) {
				clearInterval(timer);
			};
		};
	};
	
	
	/*���½��ֲ�ͼ�л�������С��䳤*/
	$(".nm").hover(function(){
		var $this=$(this);
		 t = setTimeout(function() {
			// Ҫִ�еĲ�����������ȥ��200�����ִ��
			hov_2($this);
		}, 150);
	},function(){
		// ����Ƴ����������Ĳ�����
		clearTimeout(t);
	});
	
	function hov_2(arg){
		$(".is_active").removeClass("is_active");
		arg.addClass("is_active");
		/*�������li��value*/
		var target=arg.attr("value");
		var fin_target=(parseInt(target)-1)*290;
		cishu(fin_target);
		/*one();*/
	}
	
	/**/
	/*function one(){
		var length=-29;
		var a=$(".turn").css("left");
		var b=parseInt(a);
		
		$(".turn").css("left",b+length);
	}*/
	
/*�ж���ͼ������Ҫ�����ü���*/
	function cishu(arg){
		var a,c;
		c=0;
		
		var p = $(".turn").css("left");
		
		var current = parseInt(p.substring(0, p.length - 2));
		
		/*��Ҫ�м���ͼ*/
		a=(arg-current)/290;
		ac(arg,current,a);
		/*if(a>=0){
			
			 var b=setInterval(function(){
				 ac(arg,current,a);
			 },100);
		}else{
			var b=setInterval(function(){
				 ac(arg,current,-a);
			 },100);
		}*/
		
		/*һ��ͼ�л�*/
		function ac(arg_1,arg_2,arg_3){
			var t=0;
			
			/*c++;
			if (c >= 1) {
				clearInterval(b);
			};*/
			 
			
			 /*�����л��ٶ�*/ 
			var timer = setInterval(function() {
				tn(arg_1,arg_2);
			}, 10);
			
			/*�л�һ��ͼ��ÿ�����ӡ����ٵľ��룬�Լ���Ҫ��ִ�еĴ�����һ��100ms*/
			function tn(arg,arg_2){
				var length=29;
				
				/*�ж��Ǽӻ��Ǽ�*/
				if (arg >arg_2) {
					var act = arg_2 - length;
					$(".turn").css("left", act);
				} else if (arg < arg_2) {
					var act = arg_2 + length;
					$(".turn").css("left", act);
				}else{
					
				}
				
				t++;
				 /*�ж��Ƿ�ֹͣ */
				if (t >= 10) {
					clearInterval(timer);
				};
			}
		}
	
	}
	
	
	/*�������ײ�div�Ƿ���ʾ�ж�*/
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
	
	/*����ص���ҳ����*/
	$(".nav_bottom").click(function(){
			$('html, body').animate({  
                scrollTop: $("#top").offset().top  
            }, 500);  
	});
	
	/*�����λ��ָ��Ԫ�أ�ָ��Ԫ������id��*/
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
	/*�л���ʾ������ͷ��������ժҪ��*/
	
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
	/**/	
	
	
	
	
	
	/* С�����л� */
	function distance(arg) {
		var a = (arg - 1) * 43;
		$(".triangle").css("top", a);
	}
	;
});