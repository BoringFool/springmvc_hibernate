$().ready(function() {
	/* ��ͼ�����л� */
	$(".cir_d").hover(function() {
		var $this = $(this);
		t = setTimeout(function() {
			// Ҫִ�еĲ�����������ȥ��200�����ִ��
			hov($this);
		}, 200);
	}, function() {
		// ����Ƴ����������Ĳ�����
		clearTimeout(t);
	});

	/**/
	function hov(arg) {
		$(".cir_d").removeClass("add_class");
		var a = arg.attr("value");
		arg.addClass("add_class");
		distance(a);
		var c = a - 1;
		var target = -(c * 364);
		times(c, target);
	}

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
		}
		;
	}

	/* ������ִ��һ�ε����л�һ��ͼ */
	function cc(arg, arg_1) {
		var t = 0;
		/* �����л��ٶ� */
		var timer = setInterval(function() {
			cir(t, arg, arg_1);
		}, 60);

		/* ��Ҫ��ִ��4�� */
		function cir(arg_1, arg_2, arg_3) {
			var itl = -91 * arg_3;/* ÿ���������� */
			/* �����С�ӣ� */
			var p = $(".sc_ul").css("left");
			var current = parseInt(p.substring(0, p.length - 2));
			if (arg_2 > current) {
				var act = current - itl;
				$(".sc_ul").css("left", act);
			} else if (arg_2 < current) {
				var act = current + itl;
				$(".sc_ul").css("left", act);
			}

			t++;
			/* �ж��Ƿ�ֹͣ */
			if (t >= 4) {
				clearInterval(timer);
			}
			;

		}
		;
	}
	;

	/* С�����л� */
	function distance(arg) {
		var a = (arg - 1) * 43;
		$(".triangle").css("top", a);
	}
	;
});