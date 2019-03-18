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
	<title>ONE MORE CUP周边产品列表</title>

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
        <li><a href="xinpin2.jsp">新品热卖</a> </li>
        <li><a href="coffee2.jsp">咖啡</a> </li>
        <li><a id="change" href="zhoubian2.jsp">周边</a> </li>
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
  <div class="space_hx">&nbsp;</div>
  <!-- /.container-fluid --> 
</nav>
<div class="container">
  <div class="row text-center">
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"><a href="#"><img src="images/zhoubian/OMCCUFTC1.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
          <a href="#"><h3>ONE MORE CUP 12oz咖啡文化随行杯</h3></a>
          <p class="font2">&yen; 119.00</p>
          <p><a href="doCartServlet?action=add&id=18&send=zhoubian2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=18" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"> <a href="#"><img src="images/zhoubian/OMCOPCCG1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>正品日本hario手摇咖啡豆磨豆机家用手动陶瓷芯研磨机</h3></a>
          <p class="font2">&yen; 199.00</p>
          <p><a href="doCartServlet?action=add&id=19&send=zhoubian2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=19" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"> <a href="#"><img src="images/zhoubian/OMCOPMGM2.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>ONE MORE CUP臻选泰摩手摇磨豆机</h3></a>
          <p class="font2">&yen; 699.00</p>
          <p><a href="doCartServlet?action=add&id=20&send=zhoubian2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=20" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div class="row text-center hidden-xs">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/zhoubian/OMCOPSSPC1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>臻选8杯量黑色不锈钢法压壶</h3></a>
          <p class="font2">&yen; 399.00</p>
          <p><a href="doCartServlet?action=add&id=21&send=zhoubian2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=21" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/zhoubian/OMCSCPNG1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>满钻五角星项链星享卡节日礼品</h3></a>
			<p class="font2">&yen; 399.00</p>
          <p><a href="doCartServlet?action=add&id=22&send=zhoubian2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=22" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/zhoubian/OMCSCPNG2.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
          <a href="#"><h3>满钻五角星项链星享卡节日礼品小</h3></a>
			<p class="font2">&yen; 399.00</p>
          <p><a href="doCartServlet?action=add&id=23&send=zhoubian2.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=23" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
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
