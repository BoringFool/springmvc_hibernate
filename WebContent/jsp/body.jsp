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
		<div>
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
					<div class="sc_d_t">a</div>
					<!--  -->
					<div class="sc_d_fo">b</div>
				</div>

			</div>
			<div class="th_d"></div>

		</div>
	</div>
</body>
</html>