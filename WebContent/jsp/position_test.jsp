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
	<div
		style="width: 0px; height: 0px; border-top: 3px solid white; border-right: 3px solid red; border-bottom:3px solid white; border-left:3px solid white;"></div>
	<div style="height: 100px; border: 1px solid black;">
		<ul style="list-style: none;">
			<li
				style="border: 1px solid red; width: 4px; height: 3px; border-top-left-radius: 6px; border-bottom-left-radius: 6px"></li>
			<li style="border: 1px solid red; width: 4px; height: 10px;"></li>
			<li style="border: 1px solid red; width: 4px; height: 10px;"></li>
			<li style="border: 1px solid red; width: 4px; height: 10px;"></li>
		</ul>
	</div>
</body>
</html>