<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.Shop.dao.*,com.Shop.javabean.*,java.util.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>付款界面</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css" />
<link rel="stylesheet" type="text/css" href="css/Count.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<!-- start header top -->
	<div class="top1">
		<div class="top-left">
			<ul>
				<li><a>欢迎来到付款界面！</a></li>
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
	<%
		CountModel countModel = (CountModel) request.getAttribute("countModel");
		String uId = (String) request.getSession().getAttribute("uId");
		float allCount = 0;
	%>
	<div class="topDiv">
		<div class="x1">
			<font size="4px">收款人:</font> <font size="4px" color="red"><%=uId%></font>
		</div>
		<br />
		<div class="x2">
			<font size="4px">联系方式:</font> <font size="4px">13886989596</font>
		</div>
	</div>
	<div class="line"></div>
	<table height="40px"></table>

	<div id="tabDiv">
		<table align="center">
			<tr height="50px">
				<td width="300px"><font size="4px">商品</font></td>
				<td width="300px"><font size="4px">数量</font></td>
				<td width="300px"><font size="4px">价格</font></td>
			</tr>
			<%
				for (int i = 0; i < countModel.allNum.length; i++) {
					//得到第一个商品的图片和价格和数量
					int num = countModel.allNum[i];
					Item item = countModel.itemList.get(i);
					allCount += num * item.getPrice();
			%>
			<tr class="xunhuan" height="130px">
				<td width="300px"><font size="4px"><img
						src="img/<%=item.getPicture()%>" /></font></td>
				<td width="300px"><font size="4px">×<%=num%></font></td>
				<td width="300px"><font size="4px">￥<%=item.getPrice() * num%></font></td>
			</tr>
			<%
				}
				String result = String.format("%.2f", allCount);
			%>
			<tr height="30px">
				<td width="300px"></td>
				<td width="300px"><font size="4px">总计：</font></td>
				<td width="300px"><font size="4px">￥<%=result%></font></td>
			</tr>
		</table>
	</div>

	<table height="40px"></table>
	<div class="act">
		<a href="" class="homeIcon">提交订单</a> <a href="cartShopping.jsp"
			class="userIcon">返回购物车</a>
	</div>
</body>
</html>