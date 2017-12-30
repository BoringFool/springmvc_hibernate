<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/navigation.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<script>
		$().ready(function() {
			function c(id, id1) {
				$("#" + id).hide();
				$("#" + id1).hover(function() {
					$("#" + id1).css({"border":"1px solid #D5D5D5","border-bottom":"none"});
					$("#" + id).show();
				}, function() {
					$("#" + id).hide();
					$("#" + id1).css({"border":"none","border-bottom":"none"});
				});
				$("#" + id).hover(function(){
					$("#" + id1).css({"border":"1px solid #D5D5D5","border-bottom":"none"});
					$("#" + id).show();
				},function(){
					$("#" + id).hide();
					$("#" + id1).css({"border":"none","border-bottom":"none"});
				});
			}

			for (var i = 1; i <= 11; i++) {
				var n = "a";
				var m = n + i + "";
				var z = "li_a";
				var x = z + i + "";
				c(m, x);
			}
			;
		});
	</script>
	<div class="main">
		<ul class="f_ul">
			<li class="li_menu">热门专区</li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a1">新闻中心</a>
				<div class="ul_d" id="a1">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a2">手机游戏</a>
				<div class="ul_d" id="a2" style="left: 182px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a3">电视游戏</a>
				<div class="ul_d" id="a3" style="left: 270px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a4">单机游戏</a>
				<div class="ul_d" id="a4" style="left: 358px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a5">特权礼包</a>
				<div class="ul_d" id="a5" style="left: 446px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a6">舞蹈视频</a>
				<div class="ul_d" id="a6" style="left: 534px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a7">娱乐视频</a>
				<div class="ul_d" id="a7" style="left: 622px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a8">其他视频</a>
				<div class="ul_d" id="a8" style="left: 710px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a9">多玩盒子</a>
				<div class="ul_d" id="a9" style="left: 798px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a10">多玩囧图</a>
				<div class="ul_d" id="a10" style="left: 886px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
			<li class="f_ul_li"><a href="#" class="ul_li_a" id="li_a11">多玩论坛</a>
				<div class="ul_d" id="a11" style="left: 974px;">
					<ul class="inner_ul">
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
						<li>新闻中心</li>
					</ul>
				</div></li>
		</ul>
		<div class="sc_d">
			<ul>
				<li class="s_li">英雄联盟</li>
				<li class="s_li">地下城与勇士</li>
				<li class="s_li">龙之谷</li>
				<li class="s_li">绝地求生：大逃杀</li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
			</ul>
			<ul>
				<li class="s_li">王者荣耀</li>
				<li class="s_li">炉石传说</li>
				<li class="s_li">我的世界</li>
				<li class="s_li">皇室战争</li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
				<li class="s_li"></li>
			</ul>
		</div>

	</div>
</body>
</html>