<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>购物首页</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css" />
<link rel="shortcut icon" href="img/shortcut-icon.jpg"
	type="image/x-icon" />

</head>

<body>
	<!-- start header top -->
	<div class="top1">
		<div class="top-left">
			<ul>
				<li><a href="login_user.jsp">亲！请登陆</a></li>
				<li><a href="register.jsp">免费注册</a></li>
			</ul>
		</div>
		<div class="top-right">
			<ul>
				<li class="dropdown"><a href="login_user.jsp">我的淘宝</a>
					<div class="dropdown-content">
						<p>
							<a href="login_user.jsp">已买到的宝贝</a>
						</p>
						<p>
							<a href="login_user.jsp">我的足迹</a>
						</p>
					</div></li>
				<li><a href="login_user.jsp">🛒购物车</a></li>
				<li class="dropdown"><a href="login_user.jsp">✰收藏夹</a>
					<div class="dropdown-content">
						<p>
							<a href="login_user.jsp">收藏的的宝贝</a>
						</p>
						<p>
							<a href="login_user.jsp">收藏的店铺</a>
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
	<!-- start header logo -->
	<div id="header">
		<div class="header1">
			<div id="logo">
				<a href="index.jsp"> <img src="img/香港购物网logo.jpg"
					alt="香港购物网logo" title="购物网logo" /></a>
			</div>
			<form action="#" method="post" id="sitesearch">
				<fieldset>
					<input type="text" value="请输入关键词" name="mysearch" />
				</fieldset>
			</form>
			<div class="search">
				<input type="image" src="img/search.png" id="search" alt="搜索一下" />
			</div>
			<div id="myshopping">
				<a href="#"> <img src="img/myshopping.jpg" alt="购物车"
					title="我的购物车" /></a>
			</div>
			<div id="mylogin">
				<form action="register.jsp">
					<input type="submit" value="点击注册">
				</form>
			</div>
			<div id="hot">
				<img src="img/火热疯抢.gif" alt="疯狂抢购logo" title="火热疯抢" />
			</div>
		</div>
	</div>
	<!-- end header logo -->
	<!-- start header menu -->
	<div class="header-menu">
		<ul>
			<li><a class="a1" href="">首页</a></li>
			<li><a class="a2" href="login_user.jsp">今日最新</a>
				<ul>
					<li><a href="">精选女装</a></li>
					<li><a href="">秋装外套</a></li>
					<li><a href="">温暖毛衣</a></li>
					<li><a href="">毛呢外套</a></li>
					<li><a href="">秋冬外套</a></li>
					<li><a href="">长袖衬衫</a></li>
				</ul></li>
			<li><a class="a3" href="">女装</a>
				<ul>
					<li><a href="">秋款风衣</a></li>
					<li><a href="">机车皮衣</a></li>
					<li><a href="">秋款连衣裙</a></li>
					<li><a href="">小脚裤</a></li>
					<li><a href="">休闲裤</a></li>
					<li><a href="">打底裤</a></li>
				</ul></li>
			<li><a class="a4" href="">男装</a>
				<ul>
					<li><a href="">个性潮男</a></li>
					<li><a href="">时尚休闲</a></li>
					<li><a href="">商务绅士</a></li>
					<li><a href="">休闲衬衫</a></li>
					<li><a href="">西服套装</a></li>
					<li><a href="">直筒西裤</a></li>
				</ul></li>
			<li><a class="a5" href="">儿童服饰</a>
				<ul>
					<li><a href="">毛衣|针织衫</a></li>
					<li><a href="">儿童男装</a></li>
					<li><a href="">儿童女装</a></li>
					<li><a href="">表演服饰</a></li>
					<li><a href="">亲子装</a></li>
					<li><a href="">休闲套装</a></li>
				</ul></li>
			<li><a class="a6" href="">男包|女包</a>
				<ul>
					<li><a href="">秋新款</a></li>
					<li><a href="">单肩包</a></li>
					<li><a href="">斜挎包</a></li>
					<li><a href="">手提包</a></li>
					<li><a href="">大牌包</a></li>
					<li><a href="">钱包</a></li>
				</ul></li>
			<li><a class="a7" href="">潮流前线</a>
				<ul>
					<li><a href="">珠宝首饰</a></li>
					<li><a href="">时尚饰品</a></li>
					<li><a href="">品质手表</a></li>
					<li><a href="">眼镜配饰</a></li>
					<li><a href="">男人饰品</a></li>
					<li><a href="">原创饰品</a></li>
				</ul></li>
			<li><a class="a8" href="">大牌领先看</a>
				<ul>
					<li><a href=""> CHANEL</a></li>
					<li><a href=""> PARADA</a></li>
					<li><a href=""> GUCCI</a></li>
					<li><a href=""> HERMES</a></li>
					<li><a href=""> Armani</a></li>
					<li><a href=""> Versace</a></li>
				</ul></li>
			<li><a class="a9" href="">今日折扣</a>
				<ul>
					<li><a href=""> 香奈儿8折</a></li>
					<li><a href=""> 普拉达7折</a></li>
					<li><a href=""> 古驰5折</a></li>
					<li><a href="">爱马仕9折</a></li>
					<li><a href=""> 阿玛尼8折</a></li>
					<li><a href="">范思哲9折</a></li>
				</ul></li>
			<li><a class="a10" href="">动漫周边店</a>
				<ul>
					<li><a href=""> AA动漫</a></li>
					<li><a href=""> bilibili</a></li>
					<li><a href=""> AcFun</a></li>
					<li><a href=""> pixiv</a></li>
					<li><a href=""> niconico</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- end header menu -->
	<!-- start content1 -->
	<div class="container">
		<div class="slider">
			<div class="area">
				<div id=js class="js">
					<div class="box01">
						<img onClick="location.href='goodslist.jsp'"
							src="img/banner_01.jpg"> <img
							onClick="location.href='cart.html'" style="DISPLAY: none"
							src="img/banner_02.jpg"> <img
							onClick="location.href='details.html'" style="DISPLAY: none"
							src="img/banner_03.jpg"> <img
							onClick="location.href='details.html'" style="DISPLAY: none"
							src="img/banner_04.jpg"> <img
							onClick="location.href='details.html'" style="DISPLAY: none"
							src="img/banner_05.jpg">
					</div>
					<div class="bg"></div>
					<div id=jsNav class=jsNav>
						<a class="trigger imgSelected" href="javascript:void(0)">1</a> <a
							class="trigger" href="javascript:void(0)">2</a> <a
							class="trigger" href="javascript:void(0)">3</a> <a
							class="trigger" href="javascript:void(0)">4</a> <a
							class="trigger" href="javascript:void(0)">5</a>
					</div>
				</div>
			</div>
		</div>
		<div class="container-right">
			<div class="container1">
				<div class="pic-sale1">
					<img src="img/sale(1).jpg" title="羽绒服棉衣" />
				</div>
				<h4>
					<a href="login_user.jsp">蓬蓬裙羽绒服棉衣</a>
				</h4>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;精致与休闲造型兼备的羽绒棉袄。简约素雅的风格，新潮百搭
				<h5 style="color: #F30">特价￥299</h5>
				</p>
			</div>
			<br />
			<div class="container2">
				<div class="pic-sale2">
					<img src="img/sale(2).jpg" title="儿童卫衣" />
				</div>
				<br />
				<h4>
					<a href="goodslist.html">亲子儿童卫衣</a>
				</h4>
				<p>2019秋装新款女神的新衣张馨予同款亲子装儿童装卫衣 朗姿LANCY
				<h5 style="color: #F30">现价￥199</h5>
				</p>
			</div>
			<br /> <br /> <br /> <br /> <br /> <br />
			<div class="container3">
				<div class="pic-sale3">
					<img src="img/sale(3).jpg" title="女士靴子" />
				</div>
				<h4>
					<a href="goodslist.html">防水台真皮靴子</a>
				</h4>
				<p>佰缌2019秋冬新款欧美尖头粗跟短靴高跟 防水台真皮铆钉女式靴子
				<h5 style="color: #F30">特价优惠￥699</h5>
				</p>
			</div>
		</div>
	</div>
	<!-- end content1 -->
	<!--------start content 2--------->
	<div class="popular">
		<div class="popular1">
			<a href="details.html"><img src="img/pic1.jpg" />
				<div class="look">
					<h4>流行风向</h4>
					<p>查看更多</p>
				</div> </a>
		</div>
		<div class="popular1">
			<a href="details.html"><img src="img/pic2.jpg" />
				<div class="look">
					<h4>时尚前沿</h4>
					<p>产看更多</p>
				</div> </a>
		</div>
		<div class="popular1">
			<a href="details.html"> <img src="img/pic3.jpg" />
				<div class="look">
					<h4>踮起脚尖</h4>
					<p>产看更多</p>
				</div>
			</a>
		</div>
		<div class="popular1">
			<a href="details.html"><img src="img/pic4.jpg" />
				<div class="look">
					<h4>独一无二</h4>
					<p>查看更多</p>
				</div> </a>
		</div>
	</div>
	<!--------end content2--------->
	<!-------- start content3-------->
	<div class="content clearfix">
		<div class="content1">
			<h4>购物指南</h4>
			<ul class="f_nav">
				<li><a href="goodslist.html">购物流程</a></li>
				<li><a href="goodslist.html">会员介绍</a></li>
				<li><a href="goodslist.html">团购|机票</a></li>
				<li><a href="goodslist.html">常见问题</a></li>
				<li><a href="goodslist.html">意见反馈</a></li>
				<li><a href="goodslist.html">联系客服</a></li>
			</ul>
		</div>
		<div class="content1">
			<h4>配送方式</h4>
			<ul class="f_nav">
				<li><a href="goodslist.html">上门自取</a></li>
				<li><a href="goodslist.html">211限时到达</a></li>
				<li><a href="goodslist.html">配送服务查询</a></li>
				<li><a href="goodslist.html">配送费收取标准</a></li>
				<li><a href="goodslist.html">同城配送</a></li>
				<li><a href="goodslist.html">海外配送</a></li>
			</ul>
		</div>
		<div class="content1">
			<h4>支付方式</h4>
			<ul class="f_nav">
				<li><a href="#">售后政策</a></li>
				<li><a href="#">价格保护</a></li>
				<li><a href="#">退款说明</a></li>
				<li><a href="#">返修|退换货</a></li>
				<li><a href="#">取消订单</a></li>
				<li><a href="#">订单详情</a></li>
			</ul>
		</div>
		<div class="content1">
			<h4>售后服务</h4>
			<ul class="f_nav">
				<li><a href="#">售后政策</a></li>
				<li><a href="#">价格保护</a></li>
				<li><a href="#">退款说明</a></li>
				<li><a href="#">返修|退换货</a></li>
				<li><a href="#">取消订单</a></li>
				<li><a href="#">订单详情</a></li>
			</ul>
		</div>
		<div class="content1">
			<h4>商家服务</h4>
			<ul class="f_nav">
				<li><a href="#">商家帮助</a></li>
				<li><a href="#">商家入驻</a></li>
				<li><a href="#">新手指导</a></li>
				<li><a href="#">培训中心</a></li>
				<li><a href="#">信息公告</a></li>
				<li><a href="#">广告服务</a></li>
			</ul>
		</div>
	</div>
	</div>
	<br />
	<!-------- end content3-------->
	<!--------start footer-------->
	<div class="footer2">
		<p>
			关于我们 - 版权声明 - 帮助(？) - 联系我们 - 友情链接 - 用户注册 - 地图<br /> Dong bo的折扣店
			版权所有 CopyRight 2019-2020 Dong bo.com, Inc. All Rights Reserved
		</p>
	</div>
	<!-------- end footer --------->
	<script type="text/javascript" src="script/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="script/js.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".area").hover(function() {
				$(this).find(".qq").show(500);
			}, function() {
				$(this).find(".qq").hide(500);
			});
		});
	</script>
</body>
</html>