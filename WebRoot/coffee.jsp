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
    <title>ONE MORE CUP咖啡产品列表</title>

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
          <a href="zhuye.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> 
        </div>
    
      <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="zhuye.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
            <li><a href="xinpin.jsp">新品热卖</a> </li>
            <li><a id="change" href="coffee.jsp">咖啡</a> </li>
            <li><a href="zhoubian.jsp">周边</a> </li>
            <li><a href="gaodian.jsp">糕点</a> </li>
            <li><a href="comment.jsp">社区</a> </li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm">
            <li><a href="shopcart.jsp"><img src="images/carticon.png" width="25" height="21" alt=""/></a> </li>
            <li><a  class="loginfont" href="denglu.jsp">登录</a> </li>
            <li><a  class="loginfont" href="zhuce.jsp">注册</a> </li>
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
      <div class="thumbnail"><a href="product_d.jsp"><img src="images/cpffee/OMCCBGCB3.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
          <a href="product_d.jsp"><h3>危地马拉卡西塞罗咖啡豆</h3></a>
          <p class="font2">&yen; 105.00</p>
          <p>
          	<a href="doCartServlet?action=add&id=12&send=coffee.jsp" class="btn btn-primary" role="button">加入购物车</a>
          	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=12" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a>
          </p>
        </div>
      </div>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"> <a href="#"><img src="images/cpffee/OMCCBESCB1.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
			<a href="#"><h3>萨尔瓦多圣马赛利诺咖啡豆</h3></a>
          <p class="font2">&yen; 198.00</p>
          <p><a href="doCartServlet?action=add&id=13&send=coffee.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=13" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail"> <a href="#"><img src="images/cpffee/OMCCBGCB2.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
			<a href="#"><h3>危地马拉罗莎莉欧咖啡豆</h3></a>
          <p class="font2">&yen; 178.00</p>
          <p><a href="doCartServlet?action=add&id=14&send=coffee.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=14" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div class="row text-center hidden-xs">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/cpffee/OMCCBKCCB2.jpg" alt="Thumbnail Image 1" class="img-responsive"/></a>
        <div class="caption">
			<a href="#"><h3>臻选肯亚卡林加咖啡豆</h3></a>
          <p class="font2">&yen; 198.00</p>
          <p><a href="doCartServlet?action=add&id=15&send=coffee.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=15" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/cpffee/OMCCBCMBCB1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>哥伦比亚咖啡豆中度烘焙</h3></a>
          <p class="font2">&yen; 95.00</p>
          <p><a href="doCartServlet?action=add&id=16&send=coffee.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=16" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
        </div>
      </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <a href="#"><img src="images/cpffee/OMCCBFDBCB1.jpg" alt="Thumbnail Image 1" class="img-responsive"></a>
        <div class="caption">
			<a href="#"><h3>佛罗娜咖啡豆深度烘焙</h3></a>
          <p class="font2">&yen; 85.00</p>
          <p><a href="doCartServlet?action=add&id=17&send=coffee.jsp" class="btn btn-primary" role="button">加入购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="doBuyServlet?id=17" class="btn btn-primary" role="button">&nbsp;立即购买&nbsp;</a></p>
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