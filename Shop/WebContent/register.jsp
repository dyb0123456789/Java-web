<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.Shop.servlet.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<link href="css/register.css" rel="stylesheet" />
<link rel="start icon" href="img/shortcut-icon.jpg">
</head>
<body class="bg-gray">
	<div>
		<!--top start-->
		<div class="top1">
			<div class="top-left">
				<ul>
					<li><a>欢迎进行注册！</a></li>
				</ul>
			</div>
			<div class="top-right">
				<ul>
					<li class="dropdown"><a href="#">我的淘宝</a>
						<div class="dropdown-content">
							<p>
								<a href="#">已买到的宝贝</a>
							</p>
							<p>
								<a href="#">我的足迹</a>
							</p>
						</div></li>
					<li><a href="#">🛒购物车</a></li>
					<li class="dropdown"><a href="#">✰收藏夹</a>
						<div class="dropdown-content">
							<p>
								<a href="#">收藏的的宝贝</a>
							</p>
							<p>
								<a href="#">收藏的店铺</a>
							</p>
						</div></li>
					<li class="dropdown"><a href="#">联系客服</a>
						<div class="dropdown-content">
							<p>
								<a href="#">消费者客服</a>
							</p>
							<p>
								<a href="#">卖家客服</a>
							</p>
						</div></li>
				</ul>
			</div>
		</div>
		<!--top end-->
		<!--hd start-->
		<div class="login-wrap">
			<div class="w940">
				<div class="header clearfix">
					<h1 class="fl">
						<a title="上香港购物网站，带你边看边买" href="index.jsp"> <img
							src="img/香港购物网logo.jpg">
						</a>
					</h1>
					<div class="welcome fl">欢迎注册！</div>
				</div>
			</div>
		</div>
		<!--hd end-->
		<div class="have-reg w940">
			<span>我已经注册，现在就&nbsp;<a href="login_user.jsp"
				class="blue_link">登录</a></span>
		</div>
		<!-- content start -->
		<div class="container w940">
			<div class="register">
				<form action="Shop/RegisterServlet" method="post">
					<div class="spsearch">
						<p>
							<label><b class="star">*</b>&nbsp;用户名：</label> <input
								class="spnormal" type="text" name="rg_id"> <span
								class="short">4-20位字符，支持英文、数字和符号的组合</span>
						</p>
					</div>
					<div class="spsearch">
						<p>
							<label><b class="star">*</b>&nbsp;请设置密码：</label> <input
								class="spnormal" type="password" name="rg_pwd"> <span
								class="long">6-20位字符，支持英文、数字和符号的组合，不建议使用纯数字、纯字母或纯符号</span>
						</p>
					</div>
					<div class="spsearch">
						<p>
							<label><b class="star">*</b>&nbsp;请确定密码：</label> <input
								class="spnormal" type="password" name="rg_pwd2"> <span
								class="short">请再次输入密码</span>
						</p>
					</div>
					<div class="spsearch item">
						<p>
							<label>&nbsp;</label> <input type="submit" value="">
						</p>
					</div>
				</form>
				<div id="rs">
					<%
						//info是注册页面返回的消息
						String info = request.getParameter("info");
						if (info != null) {
							if (Integer.valueOf(info) == 1) {
								out.println("<p>账号或者密码不完整！</p>");
							}
							if (Integer.valueOf(info) == 2) {
								out.println("<p>前后输入的两次密码不一样！</p>");
							}
							if (Integer.valueOf(info) == 3) {
								out.println("<p>该用户已经存在！</p>");
							}
						}
					%>
				</div>
			</div>
		</div>
		<!--footer start-->
		<div class="ft for-register mt10">
			<div class="ft_box clearfix">
				<p class="fl">
					<a href="login_admin.html" class="copyRight blue_link">管理员入口</a>
				</p>
				<p class="fr copyRight">鄂ICP ©香港购物网站2019-2020，All Rights
					Reserved</p>
			</div>
		</div>
		<!--footer end-->
	</div>
</body>
<script type="text/javascript" src="script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="script/js.js"></script>
</html>