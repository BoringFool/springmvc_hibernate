<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- absolute定位，如果没有top，left，right bottom定位，会默认在父元素的子元素后面，一旦定位就会变成相对于父元素
	（此父元素是只离定位元素最近的，带有relative或absolute定位的父元素，不是离得最近的父元素）定位 -->
<!-- 	<div style="width: 100px; height: 4000px; margin: 0px auto;">
		<div style="background-color: black; width: 100px; height: 50px;"></div>
		<div
			style="background-color: yellow; width: 200px; height: 250px; position: absolute; left: 50px; top: 10px;">
			<div
				style="background-color: red; width: 100px; height: 50px; position: absolute; left: 80px;">
				<h1>a</h1>
			</div>
			<div
				style="background-color: blue; width: 50px; height: 100px; position: absolute;">
				<h1>b</h1>
			</div>
		</div>
	</div> -->

	<div style="padding-left: 0px;border: 1px solid red;width: 88px;">
		<a href="#">新闻中心</a>
		<ul class="inner_ul" style="">
			<li style="text-align: center;">新闻中心</li>
			<li style="text-align: center;">新闻中心</li>
			<li style="text-align: center;">新闻中心</li>
			<li style="text-align: center;">新闻中心</li>
		</ul>
	</div>
</body>
</html>