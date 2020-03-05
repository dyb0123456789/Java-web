<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.Shop.dao.*,com.Shop.javabean.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品页面</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css" />
<link rel="stylesheet" type="text/css" href="css/goodslist.css" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="shortcut icon" href="img/shortcut-icon.jpg"
	type="image/x-icon" />
</head>
<body>
	<!-- start header top -->
	<div class="top1">
		<div class="top-left">
			<ul>
				<li><a><%=request.getParameter("id")%>,欢迎来到购物商城！</a></li>
				<li><a href="register.jsp">免费注册</a></li>
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
				<li><a href="cartShopping.jsp?uId=<%=request.getParameter("id")%>">🛒购物车</a></li>
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

	<!-- end header top -->
	<div class="parent">
		<%
			String info = request.getParameter("info");
			String uId = request.getParameter("id");
			request.getSession().setAttribute("uId", uId);
			itemDao id = new itemDao();
			for (int i = 0; i < id.items.size(); i++) {
		%>
		<form action="Shop/AddItemServlet" method="post">
			<div class="child" border="0">
				<ul class="list-unstyled">
					<li width="200" height="150"><img
						src="img/<%=id.items.get(i).getPicture()%>" width="140"
						height="140" /></li>
					<li height="22" width="100"><a>商品名：<%=id.items.get(i).getName()%></a></li>
					<li height="22" width="100"><a>价格：<%=id.items.get(i).getPrice()%></a></li>
					<li height="22" width="100"><a>剩余数量：<%=id.items.get(i).getCount()%></a></li>
					<li><a>购买数量：</a><input type="text" name="num"
						style="width: 40px; height: 20px" /></li>
					<li><input type="submit" name="submit" value="加入购物车"
						style="width: 100px; height: 25px;" /></li>
					<li><input type="hidden" name="id" value="<%=id.items.get(i).getId()%>" /></li>
					<li><input type="hidden" name="uId" value="<%=uId %>" /></li>
				</ul>
			</div>
		</form>
		<%
			}
		%>
	</div>
	<!--------start footer-------->
	<div class="footer2">
		<p>
			关于我们 - 版权声明 - 帮助(？) - 联系我们 - 友情链接 - 用户注册 - 地图<br /> Dong bo的折扣店 版权所有
			CopyRight 2019-2020 Dong bo.com, Inc. All Rights Reserved
		</p>
	</div>
	<!-------- end footer --------->
</body>
</html>