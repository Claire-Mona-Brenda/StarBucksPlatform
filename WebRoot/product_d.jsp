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
	<title>商品详情页</title>
	<link rel="stylesheet" type="text/css" href="css/userreset.css"/>
	<script type="text/javascript" src="js/userjquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="plugins/pro/js/jquery-1.2.6.pack.js"></script>
	<script type="text/javascript" src="plugins/pro/js/base.js"></script>
	<script type="text/javascript" src="js/userjs_z.js"></script>
	<link rel="stylesheet" type="text/css" href="css/userthems.css">
	<link rel="stylesheet" href="css/bootstrap.css">

  </head>
  
  <body>
    <!--头部-->
	<nav>
  		<div class="container"> 
    
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
      			<a href="index.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> </div>
    
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse">
      			<ul class="nav navbar-nav">
        			<li class="active"><a href="index.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        			<li><a href="xinpin.jsp">新品热卖</a> </li>
        			<li><a href="coffee.jsp">咖啡</a> </li>
        			<li><a href="zhoubian.jsp">周边</a> </li>
        			<li><a href="gaodian.jsp">糕点</a> </li>
        			<li><a href="comment.jsp">社区</a> </li>
      			</ul>
      			<ul class="nav navbar-nav navbar-right hidden-sm">
        			<li><a href="shopcart.jsp"><img src="images/carticon.png" width="25" height="21" alt=""/></a> </li>
            		<li><a class="loginfont" href="denglu.jsp">登录</a></li>
					<li><a class="loginfont" href="zhuce.jsp">注册</a></li>
      			</ul>
    		</div>
    		<!-- /.navbar-collapse --> 
  		</div>
  		<!-- /.container-fluid --> 
	</nav>
	<div class="space_hx">&nbsp;</div>
	<!--头部-->
	<div class="scd">
    	<div class="pro_d">
    		<div class="pro_da clearfix">
            	<div class="pro_dal">
                	<div id="preview">
                    	<div class="jqzoom" id="spec-n1" onClick="">
                    		<IMG height=384 src="images/pro1.jpg" jqimg="images/pro1.jpg" width=452>
                    	</div>
                    	<div id="spec-n5">
                        	<div id="spec-list">
                            	<ul class="list-h">
                                	<li><img src="images/pro1.jpg"> </li>
                               		<li><img src="images/OMCCBGCB3.jpg"> </li>
                            	</ul>
                        	</div>
                    	</div>
                	</div>
                <SCRIPT type=text/javascript>
                    $(function(){			
                       $(".jqzoom").jqueryzoom({
                            xzoom:400,
                            yzoom:384,
                            offset:10,
                            position:"right",
                            preload:1,
                            lens:1
                        });
                        $("#spec-list").jdMarquee({
                            deriction:"left",
                            width:452,
                            height:120,
                            step:2,
                            speed:4,
                            delay:10,
                            control:true,
                            _front:"#spec-right",
                            _back:"#spec-left"
                        });
                        $("#spec-list img").bind("mouseover",function(){
                            var src=$(this).attr("src");
                            $("#spec-n1 img").eq(0).attr({
                                src:src.replace("\/n5\/","\/n1\/"),
                                jqimg:src.replace("\/n5\/","\/n0\/")
                            });
                            $(this).css({
                                "border":"1px solid #E90E22",
                            });
                        }).bind("mouseout",function(){
                            $(this).css({
                                "border":"1px solid #aaa",
                            });
                        });				
                    })
                    </SCRIPT>
            	</div>
				<script type="text/javascript" src="plugins/pro/js/lib.js"></script>
				<script type="text/javascript" src="plugins/pro/js/zzsc.js"></script>
            	<div class="pro_dar">
                	<h1>薇薇特南果咖啡豆</h1>
                	<p>危地马拉 卡西塞罗咖啡豆 当季热卖咖啡豆</p>
              		<ul class="ra clearfix">
                    	<li class="clearfix">
                    		<span class="title">数量：</span>
                        	<div class="li_m num clearfix">
                        		<span class="pn">&nbsp;</span>
                            	<input name="" type="text" value="1">
                            	<span class="an">&nbsp;</span>
                        	</div>
                    	</li>
                	</ul>
                	<div class="price">￥105.00</div>
                	<div class="scar"><a href="doCartServlet?action=add&id=3&send=product_d.jsp">加入购物车</a></div>
                	<div class="scar"><a href="doBuyServlet?id=3">立即购买</a></div>
            	</div>
        	</div>
        	<div class="pro_dm">
        		<div class="pro_head"><span>商品详情</span></div>
            	<div class="pm_ctn">
            		<img src="images/OMCCBGCB3.jpg" alt=""/>
            	</div>
        	</div>
    	</div>
	</div>
	<div class="space_hx">&nbsp;</div>
	<!--底部-->

  </body>
</html>
