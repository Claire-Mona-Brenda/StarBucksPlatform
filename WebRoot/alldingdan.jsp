<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.po.Order" %>
<%@ page import="java.util.*" %>
<%ArrayList<Order>orderList=(ArrayList<Order>)session.getAttribute("orderList"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户中心</title>
	<link rel="stylesheet" type="text/css" href="css/userreset.css"/>
	<script type="text/javascript" src="js/userjquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/userjquery-1.8.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/thems.css">
	<link rel="stylesheet" href="css/bootstrap.css">

  </head>
  <body>
    <!--头部-->
	<nav>
  		<div class="container"> 
    
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
      			<a href="zhuye2.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a>
      		</div>
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse">
      			<ul class="nav navbar-nav">
        			<li class="active"><a href="zhuye2.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
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
	<!--头部-->
	<div class="space_hx">&nbsp;</div>
	<div class="scd">
    	<div class="user clearfix">
    		<div class="u_l">
            	<div class="u_lb">
            	<div class="box_h"><span>个人中心</span></div>
                <div class="box_m">
                	<ul>
                    	<li><a href="user.jsp">用户信息</a></li>
                        <li class="now"><a href="alldingdan.jsp">全部订单</a></li>
                        <li><a href="address.jsp">收货地址</a></li>
                        <li><a href="LogoffServlet">退出账号</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="u_r">
            <div class="user_m user_ma clearfix">
            	<div class="shopcar">
                <div class="p_s">
					<p>全部订单</p>
                </div>
             	<table class="jianju1" cellpadding="0" cellspacing="0">
              		<tr>
                		<th id="jianju6" scope="col">&nbsp;</th>
                		<th id="jianju2" scope="col">商品信息</th>
                		<th id="jianju3" scope="col">数量</th>
                		<th id="jianju4" scope="col">价格</th>
                		<th id="jianju5" scope="col">交易时间</th>
                		<th scope="col">&nbsp;</th>
              		</tr>
				</table>
                <div class="car_m">
                	<table cellpadding="0" cellspacing="0">
                	<%if(orderList!=null){
                		for(int i=0;i<orderList.size();i++){
                			Order order=orderList.get(i);
                			String time=order.getPTime();
                			double tprice=order.getTotal_price();
                			ArrayList<Order>sorderList=order.getOrderList();
                				for(int j=0;j<sorderList.size();j++){
                					Order sorder=sorderList.get(j);
                					String sname=sorder.getName();
                					int snum=sorder.getNum();
                					double sprice=sorder.getTotal_price();
                					String spic=sorder.getPic();
                						if(sname==null||spic==null){
										continue;
									}
                				%>
                		   <tr>
                            <td class="tu"><a href=""><img src="images/<%=spic %>" alt=""/></a></td>
                            <td>
                            	<div class="title"><%=sname %></div>
                            </td>
                            <td class="namber"><p><%=snum %></p></td>
                            <td><div class="price">¥ <em><%=sprice %></em></div></td>
                            <td class="time"><p class="time"><%=time %></p></td>
                          </tr>
                				<%}
                			}
                		}
                	else{%>
                		<div class="kong2">
                		<div class="space_hx">&nbsp;</div>
                		<div class="space_hx">&nbsp;</div>
                		<div class="space_hx">&nbsp;</div>
						<p class="kongfont">您还没有任何订单记录哦！</p>
                    </div>
                    <div class="kong"></div>
                    <%} %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</div>
	<div class="space_hx">&nbsp;</div>
  </body>
</html>
