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
		var a,c,target;
		$(".cir_d").removeClass("add_class");
		a = arg.attr("value");
		arg.addClass("add_class");
		distance(a);
		c = a - 1;
		target = -(c * 364);
		times(c, target);
	};

	/* ������Ҫ�л�����ͼ,D_value�൱��ִ�д��� */
	function times(arg, arg_1) {
		var p,current,current_value,D_value;
		p = $(".sc_ul").css("left");
		current = parseInt(p.substring(0, p.length - 2));
		current_value = parseInt(-current / 364);
		D_value = arg - current_value;
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
		var t,timer;
		t = 0;
		/* �����л��ٶ� */
		timer = setInterval(function() {
			cir(arg_1, arg_2);
		}, 40);

		/* ��Ҫ��ִ��4�� */
		function cir(arg_1, arg_2) {
			var itl,p,current,act;
			itl = -91*arg_2;/* ÿ���������� */
			/* �����С�ӣ� */
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
		var target,fin_target;
		$(".is_active").removeClass("is_active");
		arg.addClass("is_active");
		/*�������li��value*/
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

	/* С�����л� */
	function distance(arg) {
		var a = (arg - 1) * 43;
		$(".triangle").css("top", a);
	}
	;
});