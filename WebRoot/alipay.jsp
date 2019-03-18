<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.po.Order" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%double tprice=Double.parseDouble(request.getParameter("tprice"));
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>支付宝支付页面</title>
		<link rel="stylesheet" href="css/daohang.css"/>

	</head>
<body>
<nav>
  <div class="container"> 
    
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a href="zhuye2.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a class="daohang" href="zhuye2.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        <li><a class="daohang" href="xinpin2.jsp">新品热卖</a> </li>
        <li><a class="daohang" href="coffee2.jsp">咖啡</a> </li>
        <li><a class="daohang" href="zhoubian2.jsp">周边</a> </li>
        <li><a class="daohang" href="gaodian2.jsp">糕点</a> </li>
        <li><a class="daohang" href="comment2.jsp">社区</a> </li>
      </ul>
      <ul class="nav navbar-nav navbar-right hidden-sm">
        <li><a href="shopcart2.jsp"><img src="images/carticon.png" width="25" height="21" alt=""/></a> </li>
            <li><a  class="daohang" id="loginfont" href="user.jsp">用户中心</a> </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<div class="space_hx">&nbsp;</div>
<div class="onlinepay">
		<p class="fontpay">扫一扫付款</p>
		<p class="fontpay"><font color="#E31313"><%=tprice %></font></p>
	<div class="onlinepay1">
		<p class="fontpay"><img src="images/zhifubao.png"></p>
	</div>
</div>
	</body>
</html>