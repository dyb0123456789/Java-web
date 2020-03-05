<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.Shop.servlet.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录界面</title>
<link href="css/register.css" rel="stylesheet" />
<link href="css/shopping.css" rel="stylesheet" />
<link rel="start icon" href="img/shortcut-icon.jpg">
<script type="text/javascript">
	function subClick() {
		document.getElementById("identity").src = 'Shop/IdentityServlet?ts='
				+ new Date().getTime();
	}
</script>
</head>
<body>

	<div class="top1">
		<div class="top-left">
			<ul>
				<li><a href="login_user.jsp">亲！请登陆</a></li>
				<li><a href="#">免费注册</a></li>
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
	<div class="bg-gray">
		<!--hd start-->
		<div class="login-wrap">
			<div class="w940">
				<div class="header clearfix">
					<h1 class="fl">
						<a title="香港购物网站" href="index.jsp"> <img
							src="img/香港购物网logo.jpg">
						</a>
					</h1>
					<div class="welcome fl">欢迎登录!</div>
				</div>
			</div>
		</div>
		<!--hd end-->
		<div class="login-box w940 clearfix">
			<div class="pic fl">
				<img src="img/page.jpg" title="上香港购物网站，带你边看边买">
			</div>
			<div class="fr entry">
				<h2 class="title">会员登录</h2>
				<form action="Shop/LoginServlet" method="post">
					<dl class="entry-name">
						<dt>
							<label>账号</label>
						</dt>
						<dd>
							<input type="text" name="id" class="text" placeholder="手机号/用户名">
						</dd>
					</dl>
					<dl>
						<dt>
							<label for="password">密码</label>
						</dt>
						<dd>
							<input name="password" type="password" class="text">
						</dd>
					</dl>
					<dl>
						<dt>
							<label>验证码</label>
						</dt>
						<dd>
							<input type="text" name="yzm" class="text"> <img
								src="Shop/IdentityServlet" id="identity" onclick="subClick()" />
						</dd>
					</dl>
					<div class="item">
						<input type="submit" value="">
					</div>
					<div class="forget-psd mb15">
						<a class="fl" href="index.jsp">首页</a><a href="register.jsp"
							class="fr">免费注册</a>
					</div>
					<div id="div2">
						<%
							//message 是登录界面返回的消息
							//info是注册页面返回的消息
							String message = request.getParameter("message");
							String info = request.getParameter("info");
							if (message != null) {
								if (Integer.valueOf(message) == 1) {
									out.println("<p>验证码错误！</p>");
								} else if (Integer.valueOf(message) == 2) {
									out.println("<p>账号密码错误！</p>");
								} else if (Integer.valueOf(message) == 4) {
									out.println("<p>请填充账号、密码或者验证码！</p>");
								}
							}

							if (info != null) {
								out.println("<p>注册成功，请重新输入密码！</p>");
							}
						%>
					</div>
				</form>
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
</html>