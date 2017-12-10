$()
		.ready(
				function() {
					$("#create").click(function() {
						$(".show").css({"display":"block"});
					});

					var boarddiv = "<div style='background:white;width:100%;height:100%;z-index:999;position:absolute;top:0;margin-top:100px;'>加载中...</div>";
					var show = "<div class=\"scd_d\"><div class=\"scd_d_i\"><div class=\"scd_d_md ber_remv\">公司名字</div><div class=\"scd_d_sd ber_remv1\">公司简单介绍。</div><div class=\"scd_d_td ber_remv\"><span class=\"s_s\">在招职位数</span><span class=\"s_s1\">250</span></div><div class=\"scd_d_fd\">wangted offer</div></div><div class=\"scd_d_fid\">是<br/>否<br/>靠<br/>谱<br/>？</div></div>"

					$(document).ready(function() {

						$("#main").append(show);
					});

				});