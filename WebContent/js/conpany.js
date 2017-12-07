$()
		.ready(
				function() {
					$(".main").click(function() {
						$(this).hide();
					});

					var boarddiv = "<div style='background:white;width:100%;height:100%;z-index:999;position:absolute;top:0;margin-top:100px;'>加载中...</div>";
					var show = "<div class=\"scd_d\"><div class=\"scd_d_i\"><div class=\"scd_d_md ber_remv\">conpanyname</div><div class=\"scd_d_sd ber_remv1\">description scd_hangAS S啊A S</div><div class=\"scd_d_td ber_remv\"><span class=\"s_s\">zhaopdsad</span><span class=\"s_s1\">250</span></div><div class=\"scd_d_fd\">offerA S啊</div></div><div class=\"scd_d_fid\">ok?</div></div>"

					$(document).ready(function() {

						$("#main").append(show);
					});

				});