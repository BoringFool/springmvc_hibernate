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
							<li><img alt="" src="../images/news_1.jpg">
								<div class="new_ul_li">
									<h3>绝地求生</h3>
									<p class="li_p">雨天雾天重新来 雪天将至</p>
								</div></li>
							<li style="margin-left: 22px"><img alt=""
								src="../images/news_2.jpg">
								<div class="new_ul_li">
									<h3>剑网3重制版</h3>
									<p class="li_p">官方动画曝光</p>
								</div></li>
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
									<p>1.4LOL青岛站开赛 《问道》手游飞升CG首曝</p>
									<p>蜀门手游2018年新春版 仙侠世界2悬赏玩法曝光</p>
									<p>远征今日新服首杀开启 37太极崛起今日公测开启</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="sc_d_fi">
				<!-- title -->
				<div class="content_head">
					<ul>
						<li><h4>今日头条</h4></li>
						<li><h4>要闻回顾</h4></li>
						<li><h4>新闻中心</h4></li>
					</ul>
				</div>
				<!-- content -->
				<div id="content01" class="content_p1" style="display: none;">
					<!-- ad -->
					<div class="ad_com">
						<h2>你能像他们这样 爱游戏到百年归老？</h2>
						<p>[ 《枪火游侠》大逃杀模式 ][ 多玩游戏网招聘：编辑实习生 ]</p>
						<h2>揭秘《魔域》狗粮事件 新游TOP榜</h2>
						<p>[ 魔域耀世战犬新手成长礼包 ][ 海外TOP榜 ]</p>
					</div>
					<!-- news -->
					<div class="news_p">
						<ul>
							<li><p>《堡垒之夜》中文版向所有玩家免费开测 QQ号可直接登录游戏</p></li>
							<li><p>《风暴英雄》新版战场和英雄多项改动 新英雄火蝠布雷泽登场</p></li>
							<li><p>区块链游戏助股价异常飞涨 上市公司害怕成炒作对象急忙澄清</p></li>
							<li><p>EA申请“沉迷优化匹配”专利 新匹配机制恐让玩家更沉迷氪金</p></li>
							<li><p>续作《OPUS：灵魂之桥》上线Steam 二月发布将支持简体中文</p></li>
							<li><p>突破次元 “新”《御剑情缘》代言人周冬雨新装亮相</p></li>
							<!-- space -->
							<li class="extra"><p>绝地求生国服专属服饰曝光：中国龙和脸谱等元素格外惹眼</p></li>
							<li><p>《怪物猎人：世界》将于下周迎来第三次测试 灭尽龙狩猎演示</p></li>
							<li><p>迷宫探索RPG游戏《命运之手2》 PS4平台简体中文版已经上市</p></li>
							<li><p>开放世界RPG《在远方：追云者编年史》曝PS4简中版发售日期</p></li>
							<li><p>EA Sports格斗大作《UFC 3》全新预告片 生涯模式首次曝光</p></li>
							<li><p>刘亦菲发布“天使密语”《天使纪元》明日燃情公测</p></li>
						</ul>
					</div>
				</div>


				<!-- content 2-->
				<div id="content02" class="content_p1" style="display: block;">
					<!-- ad -->
					<div class="ad_com">
						<h2>歪评 ：到了年底游戏公司都开始捞起外快</h2>
						<div class="out_im">
							<div class="img_01">
								<img alt="" src="../images/content_01.jpg">
								<p>网易游戏热爱者年度盛典</p>
							</div>
							<div class="img_01">
								<img alt="" src="../images/content_02.jpg">
								<p>网易游戏热爱者年度盛典</p>
							</div>
						</div>
					</div>
					<!-- news -->
					<div class="news_p">
						<ul class="ex">
							<li><p>《堡垒之夜》中文版向所有玩家免费开测 QQ号可直接登录游戏</p></li>
							<li><p>《风暴英雄》新版战场和英雄多项改动 新英雄火蝠布雷泽登场</p></li>
							<li><p>区块链游戏助股价异常飞涨 上市公司害怕成炒作对象急忙澄清</p></li>
							<li><p>EA申请“沉迷优化匹配”专利 新匹配机制恐让玩家更沉迷氪金</p></li>
							<li><p>续作《OPUS：灵魂之桥》上线Steam 二月发布将支持简体中文</p></li>
							<li><p>突破次元 “新”《御剑情缘》代言人周冬雨新装亮相</p></li>
							<!-- space -->
							<li><p>绝地求生国服专属服饰曝光：中国龙和脸谱等元素格外惹眼</p></li>
							<li><p>《怪物猎人：世界》将于下周迎来第三次测试 灭尽龙狩猎演示</p></li>
							<li><p>迷宫探索RPG游戏《命运之手2》 PS4平台简体中文版已经上市</p></li>
							<li><p>开放世界RPG《在远方：追云者编年史》曝PS4简中版发售日期</p></li>
							<li><p>EA Sports格斗大作《UFC 3》全新预告片 生涯模式首次曝光</p></li>
							<li><p>刘亦菲发布“天使密语”《天使纪元》明日燃情公测</p></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="th_d">
			<div class="al">
				<div class="al_title">
					<h2>多玩独家</h2>
					<div class="new_title_r">
						<a href="#" class="title_m">更多独家<i class="title_c"></i></a>
					</div>
				</div>
				<!--  -->
				<div class="game">
					<ul>
						<li><img alt="" src="../images/th_d_01.jpg" />
							<ul class="inner_ul">
								<li>请从绝处读侠气：论中国武侠游戏四种江湖</li>
								<li>歪评：到了年底游戏公司都开始捞起外快</li>
							</ul></li>
						<li><img alt="" src="../images/th_d_02.jpg" />
							<ul class="inner_ul">
								<li>请从绝处读侠气：论中国武侠游戏四种江湖</li>
								<li>歪评：到了年底游戏公司都开始捞起外快</li>
							</ul></li>
						<li><img alt="" src="../images/th_d_03.jpg" /></li>
					</ul>
				</div>
				<!--  -->
				<div class="al_title m_d">
					<div class="al_title" style="border: none;">
						<h2>游戏说</h2>
						<p>一个视频聊游戏背后的文化</p>
						<div class="under_bottom">
							<ul>
								<li class="nm is_active"></li>
								<li class="nm"></li>
								<li class="nm"></li>
							</ul>
						</div>
					</div>

					<div style="overflow: hidden; float: left;">
						<div class="turn">
							<img class="m_i" alt="" src="../images/th_d_04.jpg" /> 
							<img class="m_i" alt="" src="../images/th_d_05.jpg" /> 
							<img class="m_i" alt="" src="../images/th_d_06.jpg" />
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</body>
</html>