<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.po.ShopCart" import="com.po.GoodInfo"%>
<%ShopCart myCart=(ShopCart)session.getAttribute("myCart");
double tprice=0;
 %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>购物车</title>

	<link rel="stylesheet" href="css/shopcart.css"/>
	<script type="text/javascript" src="js/shopcart.js"></script>
	<link rel="stylesheet" href="css/daohang.css"/>
	<link rel="stylesheet" href="css/bootstrap.css">


  </head>
  
  <body>
    <nav>
  <div class="container"> 
    
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a href="zhuye.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a class="daohang" href="zhuye.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        <li><a class="daohang" href="xinpin.jsp">新品热卖</a> </li>
        <li><a class="daohang" href="coffee.jsp">咖啡</a> </li>
        <li><a class="daohang" href="zhoubian.jsp">周边</a> </li>
        <li><a class="daohang" href="gaodian.jsp">糕点</a> </li>
        <li><a class="daohang" href="comment.jsp">社区</a> </li>
      </ul>
      <ul class="nav navbar-nav navbar-right hidden-sm">
        <li><a href="shopcart.jsp"><img src="images/carticon.png" width="25" height="21" alt=""/></a> </li>
             <li><a  class="loginfont" href="denglu.jsp">登录</a> </li>
            <li><a  class="loginfont" href="zhuce.jsp">注册</a> </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
	<div class="space_hx">&nbsp;</div>
	<div class="catbox">
			<%if(myCart!=null){%>
			<table id="cartTable">
			<thead>
				<tr>
					<th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
					<th>商品</th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<%ArrayList<GoodInfo>cartList=myCart.getCartList();
				for(int i=0;i<cartList.size();i++){
					GoodInfo single=cartList.get(i);
					String pic=single.getPic();
					String name=single.getName();
					int id=single.getId();
					int num=single.getNum();
					double price=single.getPrice();
					double totalprice=num*price;
					tprice=tprice+totalprice;
					%>
				<tr>
					<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
					<td class="goods"><img src="images/<%=pic %>" alt=""/><span><%=name %></span></td>
					<td class="price"><%=price %></td>
					<td class="count">
						<span class="count-input"><%=num %></span>
					</td>
					<td class="subtotal"><%=totalprice %></td>
					<td class="operation">
						<span class="delete"><a href="doCartServlet?action=add&id=<%=id%>&send=shopcart.jsp">添加</a></span>
						<span class="delete"><a href="doCartServlet?action=remove&name=<%=name%>&send=shopcart.jsp">删除</a></span>
					</td>
				</tr>
				<%}%>
			</tbody>
		</table>
		<div class="foot" id="foot">
			<label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
			<a class="fl delete" id="deleteAll" href="doCartServlet?action=clear&send=shopcart.jsp">全部删除</a>
			<div class="fr closing"><a href="doPayServlet">结 算</a></div>
			<div class="fr total">合计：￥<span id="priceTotal"><%=tprice %></span></div>
			<div class="fr selected" id="selected">已选商品<span id="selectedTotal"><%=cartList.size() %></span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
			<div class="selected-view">
				<div id="selectedViewList" class="clearfix">
				<div><img src="images/1.jpg"><span>取消选择</span></div>
			</div>
			<span class="arrow">◆<span>◆</span></span>
		</div>
	</div>
			<%}
			else{%>
			<table id="cartTable">
		<thead>
			<tr>
				<th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
				<th>商品</th>
				<th>单价</th>
				<th>数量</th>
				<th>小计</th>
				<th>操作</th>
			</tr>
		</thead>
	</table>
				<div class="kong">
					<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
                	<div class="space_hx">&nbsp;</div>
				<p class="kongtu"><a href="index.jsp"><img src="images/kong.png" width="311"></p></a>
		</div>
			<%} %>
	</div>
  </body>
</html>
