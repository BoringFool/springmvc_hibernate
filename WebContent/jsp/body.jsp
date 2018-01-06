<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/body.css">
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/body.js"></script>
<title>Insert title here</title>
<script>
	
<%String basePath = request.getContextPath();%>
	if (typeof jQuery == 'undefined') {
		window.alert("没有jquery");
	}
</script>
</head>
<body>
	<div class="main">
		<div class="sc_d_f">
			<img alt="" src="../images/ad01.png" class="img_f"> <img alt=""
				src="../images/near_ad.jpg" class="img_s">
		</div>
		
			<div class="sc_d">
				<div class="sc_d_s">
					<!-- 图 -->
					<div class="t">
						<ul class="sc_ul">
							<li class="cir_li" value="1"><img alt=""
								src="../images/cir_1.jpg"></li>
							<li class="cir_li" value="2"><img alt=""
								src="../images/cir_2.jpg"></li>
							<li class="cir_li" value="3"><img alt=""
								src="../images/cir_3.jpg"></li>
							<li class="cir_li" value="4"><img alt=""
								src="../images/cir_4.jpg"></li>
							<li class="cir_li" value="5"><img alt=""
								src="../images/cir_5.jpg"></li>
							<li class="cir_li" value="6"><img alt=""
								src="../images/cir_6.jpg"></li>
						</ul>
						<div class="d_triangle">
							<i class="triangle"></i>
						</div>
						<!-- 图边 -->
						<div class="sc_d_s_s">
							<ul>
								<li class="cir_d add_class" value="1">影视</li>
								<li class="cir_d" value="2">行业</li>
								<li class="cir_d" value="3">主机</li>
								<li class="cir_d" value="4">GIF</li>
								<li class="cir_d" value="5">网页</li>
								<li class="cir_d" value="6">手游</li>
							</ul>
						</div>
					</div>

					<!--  -->
					<div class="sc_d_t">
						<div class="new">
							<div class="new_title_l">
								<h2>新游有料</h2>
								<div class="title_p">实时更新最新游戏爆料情报</div>
							</div>
							<div class="new_title_r">
								<a href="#" class="title_m">更多<i class="title_c"></i></a>
							</div>
						</div>
						
						<div>
							<ul class="new_m_ul">
								<li>
								<img alt="" src="../images/news_1.jpg">
								<div class="new_ul_li">
									<h3>绝地求生</h3>
									<p class="li_p">雨天雾天重新来    雪天将至</p>
								</div>
								</li>
								<li style="margin-left: 22px">
								<img alt="" src="../images/news_2.jpg">
								<div class="new_ul_li">
									<h3>剑网3重制版</h3>
									<p class="li_p">官方动画曝光</p>
								</div>
								</li>
							</ul>
						</div>
					</div>
					<!--  -->
					<div class="sc_d_fo">
						<div class="ad_new">
							<h2>厂商消息</h2>
						</div>
						<div class="ad_ul">
						<ul>
							<li>
								<div class="ad_title">
									<h3>热点聚焦</h3>
								</div>
								<div class="ad_p">
									<p class="f_bold">天美研发《绝地求生 全军出击》先锋首测将开</p>
								</div>
							</li>
							<li>
								<div class="ad_title">
									<h3>厂商快讯</h3>
								</div>
								<div class="ad_p">
									<p>1.4LOL青岛站开赛    《问道》手游飞升CG首曝</p>
									<p>蜀门手游2018年新春版    仙侠世界2悬赏玩法曝光</p>
									<p>远征今日新服首杀开启    37太极崛起今日公测开启</p>
								</div>
							</li>
						</ul>
						</div>
					</div>
				</div>

			</div>
			<div class="th_d">
				<div>
					
				</div>
			</div>

		
	</div>
</body>
</html>