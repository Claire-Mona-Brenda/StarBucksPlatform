<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ONE MORE CUP新品热卖</title>

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
      <a href="zhuye2.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="zhuye2.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        <li><a id="change" href="xinpin2.jsp">新品热卖</a> </li>
        <li><a href="coffee2.jsp">咖啡</a> </li>
        <li><a href="zhoubian2.jsp">周边</a> </li>
        <li><a href="gaodian2.jsp">糕点</a> </li>
        <li><a href="comment2.jsp">社区</a> </li>
      </ul>
      <ul class="nav navbar-nav navbar-right hidden-sm">
        <li><a href="shopcart.jsp"><img src="images/carticon.png" width="25" height="21" alt=""/></a> </li>
            <li><a  class="loginfont" href="user.jsp">用户中心</a> </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <div class="space_hx">&nbsp;</div>
  <!-- /.container-fluid --> 
</nav>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"><a href="product_d.jsp"><img src="images/xinpin/OMCCBGCB3.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
          <a href="product_d.jsp"><h3>危地马拉卡西塞罗咖啡豆</h3></a>
          <p class="font2">&yen; 105.00</p>
          <p><a href="doCartServlet?action=add&id=6&send=xinpin2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=6" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"> <a href="#"><img src="images/xinpin/OMCCBGCB1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>危地马拉薇薇特南果咖啡豆</h3></a>
          <p class="font2">&yen; 115.00</p>
          <p><a href="doCartServlet?action=add&id=7&send=xinpin2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=7" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"> <a href="#"><img src="images/xinpin/OMCCBGCB2.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
			<a href="#"><h3>危地马拉罗莎莉欧咖啡豆</h3></a>
          <p class="font2">&yen; 99.00</p>
          <p><a href="doCartServlet?action=add&id=8&send=xinpin2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=8" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div class="row text-center hidden-xs">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/xinpin/OMCCBKCCB1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>ONE MORE CUP肯亚卡林加咖啡豆</h3></a>
          <p class="font2">&yen; 198.00</p>
          <p><a href="doCartServlet?action=add&id=9&send=xinpin2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=9" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/xinpin/OMCCUSSKC2.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
			<a href="#"><h3>臻选2017 20oz白色不锈钢水壶</h3></a>
          <p class="font2">&yen; 269.00</p>
          <p><a href="doCartServlet?action=add&id=10&send=xinpin2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=10" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/xinpin/OMCCUGC1.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
			<a href="#"><h3>ONE MORE CUP 18oz 单层简约大容量玻璃杯水杯</h3></a>
          <p class="font2">&yen; 119.00</p>
          <p><a href="doCartServlet?action=add&id=11&send=xinpin2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=11" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
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
  </body>
</html>
