<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.po.User" import="com.po.Order"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%! 
double tprice;
String address;
String tele;
String consignee;
User myAddress;
Order order;
%>
<%
myAddress=(User)session.getAttribute("myAddress");
order=(Order)session.getAttribute("order");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <base href="<%=basePath%>">
    
    <title>订单处理</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 	<meta name="description" content=""/>
 	<meta name="format-detection" content="telephone=no" />
 	<meta name=""/>
 
	<link rel="stylesheet" href="css/queren.css" />
	<link href="css/querenorderconfirm.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/daohang.css"/>

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
  	</nav>

		<div id="page">

 			<div id="content" class="grid-c">

  				<div id="address" class="address" style="margin-top: 20px;" data-spm="2">
					<h3>确认收货地址
 						<span class="manage-address">
 							<a href="address.jsp" target="_blank" title="管理我的收货地址" data-point-url="#">管理收货地址</a>
 						</span>
					</h3>
					<%if(myAddress!=null){ 
						address=myAddress.getAddress();
						tele=myAddress.getTele();
						consignee=myAddress.getConsignee();
					%>
					<ul id="address-list" class="address-list">
     					<li class="J_Addr J_MakePoint clearfix  J_DefaultAddr "  data-point-url="http://log.mmstat.com/buy.1.20">
   							<div class="address-info">
 								<label for="addrId_674944241" class="user-address"><%=address %> (<%=consignee %> 收) <em><%=tele %></em></label>
 							</div>
     					</li>
     				</ul>
     				<%} 
     				else{%>
     				<p>暂无地址信息</p>
			<%} %>
				</div>
           			<div>
 						<h3 class="dib">确认订单信息</h3>
 						<table cellspacing="0" cellpadding="0" class="order-table" id="J_OrderTable" summary="统一下单订单信息区域">
 							<caption style="display: none">统一下单订单信息区域</caption>
	 						<thead>
 								<tr>
 									<th class="s-title">商品信息<hr/></th>
 									<th class="s-price">单价(元)<hr/></th>
 									<th class="s-amount">数量<hr/></th>
 									<th class="s-total">小计(元)<hr/></th>
	 							</tr>
	 						</thead>
							<tbody data-spm="3" class="J_Shop" data-tbcbid="0" data-outorderid="47285539868"  data-isb2c="false" data-postMode="2" data-sellerid="1704508670">
								<tr class="first"><td colspan="5"></td></tr>
								<tr class="shop blue-line">
 									<td colspan="2" class="promo">
 									</td>
								</tr>
								<%if(order!=null){
									ArrayList<Order>sorderList=order.getOrderList();
										for(int i=0;i<sorderList.size();i++){
											Order single=sorderList.get(i);
											String name=single.getName();
											int num=single.getNum();
											double price=single.getPrice();
											double totalprice=single.getTotal_price();
											String pic=single.getPic();
											if(name==null||pic==null){
												continue;
											}
											%>
								 <tr class="item" data-lineid="19614514619:31175333266:35612993875" data-pointRate="0">
 									<td class="s-title">
   										<a href="#" target="_blank"  class="J_MakePoint">
     									<img src="images/<%=pic %>" class="itempic"><span class="title J_MakePoint" ><%=name %></span></a>
     								</td>
 									<td class="s-price">
  										<span class='price '>
 											<em class="style-normal-small-black J_ItemPrice"  ><%=price %></em>
  										</span>
										<input type="hidden" name="costprice" value="630.00" class="J_CostPrice" />
									</td>
 									<td class="s-amount" data-point-url="">
         								<input type="hidden" class="J_Quantity" value="1" name="19614514619_31175333266_35612993875_quantity"/><%=num %>
 									</td>
 									<td class="s-total">
   										<span class='price '>
 											<em class="style-normal-bold-red J_ItemTotal"  ><%=totalprice %></em>
  										</span>
    									<input id="furniture_service_list_b_47285539868" type="hidden" name="furniture_service_list_b_47285539868"/>
 									</td>
								</tr>
										<%
										}
										tprice=order.getTotal_price();
										%>
								<tr class="shop-total blue-line">
 									<td colspan="5">应付金额：
 										<span class='price g_price '>
 											<span>&yen;</span>
 											<em class="style-middle-bold-red J_ShopTotal"  ><%=tprice %></em>
  										</span>
  										<input type="hidden" name="1704508670:2|creditcard" value="false" />
										<input type="hidden" id="J_IsLadderGroup" name="isLadderGroup" value="false"/>
   									</td>
								</tr>
									<%}%>		
							</tbody>
  							<tfoot>
 								<tr>
 									<td colspan="5">
										<div class="order-go" data-spm="4">
											<div class="J_AddressConfirm address-confirm">
 												<div class="kd-popup pop-back" style="margin-bottom: 40px;">
       												<a href="shopcart.jsp" class="back J_MakePoint" target="_top"data-point-url="">返回购物车</a>
       												<a href="alipay.jsp?tprice=<%=tprice %>" id="J_Go" class=" btn-go"  data-point-url=""  tabindex="0" title="点击此按钮，提交订单。">提交订单<b class="dpl-button"></b> </a>
  												</div>
 											</div>
 										</div>
 									</td>
 								</tr>
 							</tfoot>
 						</table>
					</div>
				</div>
			<div id="footer"></div>
		</div>
  </body>
</html>
