<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%Vector<String>v=(Vector<String>)application.getAttribute("mess"); 
session.setAttribute("sendmess", "comment.jsp");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>ONE MORE CUP社区评论</title>
		<link rel="stylesheet" href="css/daohang.css"/>
		<link rel="stylesheet" href="css/comment.css"/>
		<link rel="stylesheet" href="css/bootstrap.css"/>
		
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
        				<li class="active"><a class="daohang" href="zhuye.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        				<li><a class="daohang" href="xinpin.jsp">新品热卖</a> </li>
        				<li><a class="daohang" href="coffee.jsp">咖啡</a> </li>
        				<li><a class="daohang" href="zhoubian.jsp">周边</a> </li>
        				<li><a class="daohang" href="gaodian.jsp">糕点</a> </li>
        				<li><a class="daohang" id="change" href="comment.jsp">社区</a> </li>
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
<div class="container1">
	<div class="commentbox">
		<form action="doMessServlet" method="post">
			<input type="text" name="txt" cols="80" rows="50" placeholder="一起聊聊咖啡这点趣事吧......" class="mytextarea" id="content">
			<div class="space_hx">&nbsp;</div>
			<p class="right"><input type="submit" class="btn btn-primary" value="评论"></p>
		</form>
	</div>
	<%if(v!=null){
		for(int i=0;i<v.size();i++){
			String mess=v.elementAt(i);
			byte bb[]=mess.getBytes("iso-8859-1");
			mess=new String(bb,"utf-8");
			String m[]=mess.split("#");
			String name=m[0];
			if(name.equals("????")){
				name=(String)session.getAttribute("loginoff_username");
			}
			String time=m[1];
			String text;
			if(m.length>2){
				text=m[2];
			}
			else{
				text="用户暂时无评论内容";
			}
			%>
	<div class="comment-list">
            	<div class="userinform"> 
      				<span><font size="3px" color="#BDA26C"><%=name %></font></span>
                    <br/>
                    <span><img src="images/time.jpg" width="16px" height="13px" ><font size="1px" color="#9B9999"><%=time %></font></span> 
                </div>	
            	<div><font size="2px"><%=text %></font></div>
	</div>
		<%}
	} %>
	</div>
</body>
</html>