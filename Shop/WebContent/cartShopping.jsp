<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.Shop.javabean.*,com.Shop.dao.*,java.sql.*,java.util.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的购物车</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css" />
<link rel="stylesheet" type="text/css" href="css/cartShopping.css" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="shortcut icon" href="img/shortcut-icon.jpg"
	type="image/x-icon" />
<script src="script/cartShopping.js"></script>
</head>
<body>
	<!-- start header top -->
	<div class="top1">
		<div class="top-left">
			<ul>
				<li><a><%=request.getParameter("uId")%>,欢迎来到购物车！</a></li>
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
	<!-- end header top -->
	<div id="div0">
		<%
			String uId = (String) request.getSession().getAttribute("uId");
			cartDao cs = new cartDao();
			ArrayList<RelationModel> al = (ArrayList) cs.getItemById(uId);
			for (int i = 0; i < al.size(); i++) {
				//获得第i个商品
				RelationModel rm = al.get(i);

				//根据rm.getiId()获得商品的集合
				itemDao itemdao = new itemDao();
				Item temp = itemdao.getItemById(rm.getiId());
		%>
		<div class="div1">
			<div class="a1">
				<img src="img/<%=temp.getPicture()%>" />
			</div>
			<div class="div2">
				<div class="div3">
					<ul class="list-unstyled">
						<li><a> 名称:<%=temp.getName()%></a></li>
						<li><a> 价格:<%=temp.getPrice()%></a></li>
						<%--在div2后面加一个商品的编号可以区别是那个商品 --%>
						<div id="div2<%=rm.getiId()%>" class="div2">
							<li><a>数量:<%=rm.getNum()%></a></li>
						</div>
					</ul>
				</div>
				<div class="div4">
					<%--换成ajax 不刷新增加 --%>
					<input type="button" value="-" name="sub"
						onclick="addSubOne('<%=rm.getiId()%>','sub')" /> <input
						type="button" value="+" name="add"
						onclick="addSubOne('<%=rm.getiId()%>','add')" /> <input
						type="checkbox" name="count" value="<%=rm.getiId()%>" /> 
						<p><a href="RemoveServlet?iId=<%=rm.getiId()%>">移出购物车</a></p>
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<div id="act">
		<a href="RemoveServlet?clear=1" class="homeIcon">清空购物车</a><a
			href="javascript:void(0)" class="cartIcon" onclick="count()">结算</a> <a
			href="main.jsp?id=<%=request.getSession().getAttribute("uId")%>"
			class="userIcon">回到购物商城</a>
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