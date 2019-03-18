<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.po.GoodInfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%ArrayList<GoodInfo>goodsList=(ArrayList<GoodInfo>)session.getAttribute("goodsList");
String name;
if(goodsList.get(0)!=null){
	name=goodsList.get(0).getName();
}
else{
name="";
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ONE MORE CUP首页</title>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <nav>
  		<div class="container"> 
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
      			<a href="zhuye2.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> 
      		</div>
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse">
      			<ul class="nav navbar-nav">
        			<li class="active"><a id="change" href="zhuye2.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        			<li><a href="xinpin2.jsp">新品热卖</a> </li>
        			<li><a href="coffee2.jsp">咖啡</a> </li>
        			<li><a href="zhoubian2.jsp">周边</a> </li>
        			<li><a href="gaodian2.jsp">糕点</a> </li>
        			<li><a href="comment2.jsp">社区</a> </li>
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
	<div class="container">
    	<div class="row">
      		<div class="col-xs -12 col-sm-12 col-md-12 col-lg-12">
        		<div id="carousel1" class="carousel slide">
          			<ol class="carousel-indicators">
            			<li data-target="#carousel1" data-slide-to="0" class="active"> </li>
            			<li data-target="#carousel1" data-slide-to="1" class=""> </li>
            			<li data-target="#carousel1" data-slide-to="2" class=""> </li>
          			</ol>
          			<div class="carousel-inner">
            			<div class="item"><img class="img-responsive" src="images/hong.gif" alt="thumb">
            			</div>
            			<div class="item active"> <img class="img-responsive" src="images/time.gif" alt="thumb">
            			</div>
            			<div class="item"> <img class="img-responsive" src="images/coffee.gif" alt="thumb">
            			</div>
          			</div>
          			<a class="left carousel-control" href="#carousel1" data-slide="prev"><span class="icon-prev"></span></a>
          			<a class="right carousel-control" href="#carousel1" data-slide="next"><span class="icon-next"></span></a>
          		</div>
      		</div>
		</div>
    <hr>
  	</div>
	<h2 class="text-center">推荐商品</h2>
	<hr>
	<div class="container">
  		<div class="row text-center">
    		<div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      			<div class="thumbnail"> <a href="#"><img src="images/OMCCUFTC2.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        			<div class="caption">
						<a href="#"><h3><%=name %> </h3></a>
          				<p class="font2">&yen; 119.00</p>
          				<p><a href="doCartServlet?action=add&id=0&send=zhuye2.jsp" class="btn btn-primary" role="button"> 加入购物车</a></p>
        			</div>
      			</div>
    		</div>
    		<div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      			<div class="thumbnail"> <a href="#"><img src="images/OMCCUSSKC1.jpg" alt="Thumbnail Image 1" class="img-responsive">
		  			<div class="caption"></a>
		  				<a href="#"><h3>ONE MORE CUP 20oz图案不锈钢水壶</h3></a>
          				<p class="font2">&yen; 279.00</p>
          				<p><a href="doCartServlet?action=add&id=1&send=zhuye2.jsp" class="btn btn-primary" role="button">加入购物车</a> </p>
        			</div>
      			</div>
    		</div>
    		<div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      			<div class="thumbnail"> <a href="#"><img src="images/OMCOPCSB1.jpg" alt="Thumbnail Image 1" class="img-responsive">
		  			<div class="caption"></a>
		 				 <a href="#"><h3>烘焙工坊8oz白色方底 咖啡储豆罐</h3></a>
          				<p class="font2">&yen; 269.00</p>
          				<p><a href="doCartServlet?action=add&id=2&send=zhuye2.jsp" class="btn btn-primary" role="button">加入购物车</a> </p>
       				 </div>
      			</div>
   			 </div>
  		</div>
  		<div class="row text-center hidden-xs">
    		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
     		 <div class="thumbnail"> <a href="product_d.jsp"><img src="images/OMCCBGCB3.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        		<div class="caption">
					<a href="product_d.jsp"><h3>危地马拉卡西塞罗咖啡豆</h3></a>
          			<p class="font2">&yen; 105.00</p>
          			<p><a href="doCartServlet?action=add&id=3&send=zhuye2.jsp" class="btn btn-primary" role="button">加入购物车</a> </p>
        		</div>
     		 </div>
    		</div>
    		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      			<div class="thumbnail"> <a href="#"><img src="images/OMCCBESCB1.jpg" alt="Thumbnail Image 1" class="img-responsive">
		  			<div class="caption"></a>
		  				<a href="#"><h3>萨尔瓦多圣马赛利诺咖啡豆</h3></a>
          				<p class="font2">&yen; 198.00</p>
          				<p><a href="doCartServlet?action=add&id=4&send=zhuye2.jsp" class="btn btn-primary" role="button">加入购物车</a> </p>
        			</div>
      			</div>
    		</div>
    		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      			<div class="thumbnail"> <a href="#"><img src="images/OMCCBGCB1.jpg" alt="Thumbnail Image 1" class="img-responsive">
		  			<div class="caption"></a>
		  				<a href="#"><h3>危地马拉薇薇特南果咖啡豆</h3></a>
          				<p class="font2">&yen; 115.00</p>
          				<p><a href="doCartServlet?action=add&id=5&send=zhuye2.jsp" class="btn btn-primary" role="button">加入购物车</a> </p>
        			</div>
      			</div>
   			 </div>
  		</div>
  		<nav class="text-center">
    	<!-- Add class .pagination-lg for larger blocks or .pagination-sm for smaller blocks-->
    		<ul class="pagination">
      			<li> <a href="#" aria-label="Previous"> <span class="loginfont" aria-hidden="true">&laquo;</span> </a> </li>
      			<li class="active"><a  id="box" href="#">1</a></li>
      			<li><a id="font1" href="#">2</a></li>
      			<li><a id="font1" href="#">3</a></li>
      			<li><a id="font1" href="#">4</a></li>
      			<li class="disabled"><a href="#">5</a></li>
      			<li> <a href="#" aria-label="Next"> <span class="loginfont" aria-hidden="true">&raquo;</span> </a> </li>
    		</ul>
  		</nav>
	</div>
	<hr>
  	<div class="container well">
    	<div class="row">
      		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-7">
        		<div class="row">
          			<div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
            			<div>
              				<ul class="list-unstyled">
                				<li><strong>快捷链接</strong><br></li>
                				<li> <a href="xinpin2.jsp" class="font1">新品热卖</a> </li>
                				<li> <a href="gaodian2.jsp" class="font1">糕点甜品</a> </li>
                				<li> <a href="zhoubian2.jsp" class="font1">周边产品</a> </li>
                				<li> <a href="coffee2.jsp" class="font1">咖啡</a> </li>
              				</ul>
            			</div>
          			</div>
          			<div class="col-sm-4 col-md-4 col-lg-4  col-xs-6">
            			<div>
              				<ul class="list-unstyled">
                				<li><strong>热线电话</strong><br></li>
                				<li> 800-808-8888<br></li>
                				<li> 欢迎前来订购！</li>
              				</ul>
            			</div>
          			</div>
          			<div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
            			<div>
              				<ul class="list-unstyled">
                				<li><strong>友情链接</strong><br></li>
                				<li> <a href="http://www.sitcoffee.com/" class="font1">雕刻时光</a> </li>
              				</ul>
            			</div>
          			</div>
        		</div>
      		</div>
      		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-5"> 
        		<address>
        			<strong>地址</strong><br>
        			广西桂林市七星区<br>
       				邮政编号 541004<br>
        			<abbr title="Phone">P:</abbr> (123) 456-7890
      			</address>
        		<address>
        			<strong>邮箱</strong><br>
        			<p class="font1" href="mailto:#">88888888@example.com</p>
        		</address>
        	</div>
    	</div>
  	</div>

	<footer class="text-center">
  		<div class="container">
    		<div class="row">
      			<div class="col-xs-12">
        			<p>Copyright © MyWebsite. All rights reserved.</p>
      			</div>
    		</div>
  		</div>
	</footer>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/indexjquery-1.11.3.min.js"></script> 
	<!-- Include all compiled plugins (below), or include individual files as needed --> 
	<script src="js/bootstrap.js"></script>
