<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户中心</title>
	<link rel="stylesheet" type="text/css" href="css/userreset.css"/>
	<script type="text/javascript" src="js/userjquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/userjs_z.js"></script>
	<link rel="stylesheet" type="text/css" href="css/thems.css">
	<link rel="stylesheet" href="css/bootstrap.css">
  </head>
  
  <body>
    <!--头部-->
	<nav>
  		<div class="container"> 
    
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
      			<a href="zhuye2.html"><img src="images/logo.png" width="158" height="43" alt=""/></a> </div>
    
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse">
      			<ul class="nav navbar-nav">
        			<li class="active"><a href="zhuye2.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        			<li><a href="xinpin2.jsp">新品热卖</a> </li>
        			<li><a href="coffee2.jsp">咖啡</a> </li>
        			<li><a href="zhoubian2.jsp">周边</a> </li>
        			<li><a href="gaodian2.jsp">糕点</a> </li>
      			</ul>
      			<ul class="nav navbar-nav navbar-right hidden-sm">
        			<li><a href="shopcart2.jsp"><img src="images/carticon.png" width="25" height="21" alt=""/></a> </li>
            		 <li><a  class="loginfont" href="user.jsp">用户中心</a> </li>
      			</ul>
    		</div>
    		<!-- /.navbar-collapse --> 
  		</div>
  		<!-- /.container-fluid --> 
	</nav>
	<!--头部-->
	<div class="space_hx">&nbsp;</div>
	<div class="scd">
  		<div class="user clearfix">
    		<div class="u_l">
      			<div class="u_lb">
        			<div class="box_h"><span>个人中心</span></div>
        			<div class="box_m">
          				<ul>
            				<li><a href="user.html">用户信息</a></li>
            				<li><a href="alldingdan.html">全部订单</a></li>
            				<li class="now"><a href="address.html">收货地址</a></li>
          				</ul>
        			</div>
      			</div>
    		</div>
    	<div class="u_r">
      		<div class="user_m clearfix">
        		<div class="address">
        		<form action="wAddressServlet" method="post">
          			<ul class="reg ads_a">
            			<li class="clearfix">
                			<span class="title"><em>添加默认收货地址</em></span>
                		</li>
               	 		<li class="clearfix xxdz">
                			<span class="title">详细地址<em>*</em></span>
                    		<div class="li_m">
                    			<input type="text" name="address" placeholder="详细到门牌号">
                    		</div>
                		</li>
                		<li class="clearfix">
                			<span class="title">收货人姓名<em>*</em></span>
                    		<div class="li_m">
                    			<input name="consignee" type="text" placeholder="长度不超过25个字符">
                    		</div>
                		</li>
                		<li class="clearfix sj">
                			<span class="title">手机号码</span>
                    		<div class="li_m">
                    			<input name="tele" type="text" placeholder="不超过11个字符">
                    		</div>
                		</li>
                		<li class="clearfix">
                			<span class="title">&nbsp;</span>
                    		<div class="li_m">
                    			<input name="submit" type="submit" value="保存">
                    		</div>
                		</li>
            		</ul>
            	</form>
        		</div>
      		</div>
    	</div>
  	</div>
	</div>
	<div class="space_hx">&nbsp;</div>
	<!--底部-->
  </body>
</html>
