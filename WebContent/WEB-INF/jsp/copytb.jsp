<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String a = request.getContextPath();
%>
</head>
<body>
	<div>
		<div>
			<div>
				<ul>
					<li>中国大陆</li>
					<li>亲，请登陆</li>
					<li>免费注册</li>
					<li>手机逛淘宝</li>
				</ul>
				<div>
					<ul>
						<li>我的淘宝</li>
						<li>购物车</li>
						<li>
							<span></span>
							收藏夹
						</li>
						<li>商品分类</li>
						<li>
						<span></span>
						卖家中心
						</li>
						<li>联系客服</li>
						<li>网站导航</li>
					</ul>
				</div>
			</div>
		</div>
		<img alt="" src="<%=a%>/images/hd_ad.jpg"/>
		<div>
			<div>
				<img alt="" src="<%=a%>/images/logogif.gif"/>
				<div>
					<div>
						<ul>
							<li>宝贝</li>
							<li>天猫</li>
							<li>店铺</li>
						</ul>
					</div>
					<div>
						<form action="" >
							<input type="text" value="输入搜索内容" />
							<span><input type="submit" value="搜索 "/></span>
						</form>
					</div>
					<div>
						<ul><!-- 这里应该是个js获取列表 ,然后添加元素-->
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<span>更多></span>
					</div>
				</div>
				<div>
				<span></span>
				<span>手机淘宝</span>
				<img alt="" src="<%=a%>/images/logo02.png">
				</div>
			</div>
		</div>
		<div>
			 <div>
			 	<span>主题市场</span>
			 	<ul>
			 		<li>天猫</li>
			 		<li>聚划算</li>
			 		<li>天猫超市</li>
			 		<li>淘抢购</li>
			 		<li>电器商城</li>
			 		<li>司法拍卖</li>
			 		<li>中国制造</li>
			 		<li>兴农扶贫</li>
			 		<li>飞猪旅行</li>
			 		<li>智能生活</li>
			 		<li>苏宁易购</li>
			 	</ul>
			 </div>
		</div>
		<div>
			<div>
				<ul>
					<li>女装/男装/内衣        ></li>
					<li>鞋靴/箱包/配件        ></li>
					<li>童装玩具/孕产/用品></li>
					<li>家电/数码/手机        ></li>
					<li>美妆/洗护/保健品    ></li>
					<li>珠宝/眼镜/手表        ></li>
					<li>运动/户外/乐器        ></li>
					<li>游戏/动漫/影视        ></li>
					<li>美食/生鲜/零食        ></li>
					<li>鲜花/宠物/农资        ></li>
					<li>房产/装修/建材        ></li>
					<li>家具/家饰/家纺        ></li>
					<li>汽车/二手车/用品    ></li>
					<li>办公/DIY/五金用品  ></li>
					<li>百货/餐厨/家庭保健 ></li>
					<li>学习/卡券/本地服务 ></li>
				</ul>
			</div>
			<div><!-- 轮播效果 用transition和transform来实现 -->
				<div>
					<div>"WebContent/images/02.jpg"</div>
					<div>"WebContent/images/03.jpg"</div>
				</div>
				<div>
					<img alt="" src="<%=a%>/images/08.jpg"/>
				</div>
				<div><span>TMALL 理想生活上天猫</span><span>（根据轮播变角标）/(获取总角标)</span></div>
				<div>
					<div>"WebContent/images/04.jpg"</div>
					<div>"WebContent/images/05.jpg"</div>
					<div>"WebContent/images/06.jpg"</div>
				</div>
				<div>
				<span>今日热卖</span>
				<img alt="" src="<%=a %>/images/07.jpg">
			</div>
			</div>
			<div>
				<div>
				<span>（这里应该是一个“淘宝头条”的图，应该是这一级div的背景）</span>
				<span>让你的生活更有趣</span>
				</div>
				<div>
					<div>(图)</div><!-- 轮播的 -->
					<span>(标题)</span>
					<p>(简介)</p>
					<span>更多 ></span>
				</div>
			</div>
			<div>(最右侧登陆)</div>
		</div>
	</div>
</body>
</html>