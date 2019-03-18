<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="js/verify.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0; 
            padding: 0;
            font: 16px/20px microsft yahei;
        }
        .wrap {
	width: 100%;
	height: 800px;
	padding: 100px 0;
	position: fixed;
	top: 32%;
	margin-top: -175px;
	opacity: 0.85;
            background: ;
	background-color: #555;
	background-image:url(images/background.png);
	background-position:center;
	background-repeat:no-repeat;
        }
        .cont {
	width: 60%;
	margin: 0 auto;
	font-family: "微软雅黑";
	font-size: 16px;
        }
        .cont h1 {
	text-align: center;
	color: #FFFFFF;
	font-weight: 500;
	font-size: 28px;
	font-family: "微软雅黑";
        }
		 .cont h2 {
	text-align: center;
	color: #FFFFFF;
	font-weight: 500;
	font-size: 20px;
	font-family: "微软雅黑";
        }
        .cont input {
            width: 320px;
            display: block;
            height: 36px;
            border: 0;
            outline: 0;
            padding: 6px 10px;
            line-height: 24px;
            margin: 32px auto;
            -webkit-transition: all 0s ease-in 0.1ms;
            -moz-transition: all 0s ease-in 0.1ms;
            transition: all 0s ease-in 0.1ms;
        }
        .cont input[type="text"] , .container input[type="password"]  {
	background-color: #FFFFFF;
	font-size: 16px;
	color: #333;
        }
        .cont input[type='submit'] {
	font-size: 16px;
	letter-spacing: 2px;
	color: #333;
	background-color: #FFFFFF;
        }
        .cont input:focus {
            width: 400px;
        }
        .cont input[type='submit']:hover {
            cursor: pointer;
            width: 400px;
        }

        .wrap ul {
	position: static;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: -10;
        }
        .wrap ul li {
            list-style-type: none;
            display: block;
            position: absolute;
            bottom: -120px;
            width: 15px;
            height: 15px;
            z-index: -8;
            background-color:rgba(255, 255, 255, 0.15);
            animotion: square 25s infinite;
            -webkit-animation: square 25s infinite;
        }
        .wrap ul li:nth-child(1) {
            left: 0;
            animation-duration: 10s;
            -moz-animation-duration: 10s;
            -o-animation-duration: 10s;
            -webkit-animation-duration: 10s;
        }
        .wrap ul li:nth-child(2) {
            width: 40px;
            height: 40px;
            left: 10%;
            animation-duration: 15s;
            -moz-animation-duration: 15s;
            -o-animation-duration: 15s;
            -webkit-animation-duration: 15s;
        }
        .wrap ul li:nth-child(3) {
            left: 20%;
            width: 25px;
            height: 25px;
            animation-duration: 12s;
            -moz-animation-duration: 12s;
            -o-animation-duration: 12s;
            -webkit-animation-duration: 12s;
        }
        .wrap ul li:nth-child(4) {
            width: 50px;
            height: 50px;
            left: 30%;
            -webkit-animation-delay: 3s;
            -moz-animation-delay: 3s;
            -o-animation-delay: 3s;
            animation-delay: 3s;
            animation-duration: 12s;
            -moz-animation-duration: 12s;
            -o-animation-duration: 12s;
            -webkit-animation-duration: 12s;
        }
        .wrap ul li:nth-child(5) {
            width: 60px;
            height: 60px;
            left: 40%;
            animation-duration: 10s;
            -moz-animation-duration: 10s;
            -o-animation-duration: 10s;
            -webkit-animation-duration: 10s;
        }
        .wrap ul li:nth-child(6) {
            width: 75px;
            height: 75px;
            left: 50%;
            -webkit-animation-delay: 7s;
            -moz-animation-delay: 7s;
            -o-animation-delay: 7s;
            animation-delay: 7s;
        }
        .wrap ul li:nth-child(7) {
            left: 60%;
            animation-duration: 8s;
            -moz-animation-duration: 8s;
            -o-animation-duration: 8s;
            -webkit-animation-duration: 8s;
        }
        .wrap ul li:nth-child(8) {
            width: 90px;
            height: 90px;
            left: 70%;
            -webkit-animation-delay: 4s;
            -moz-animation-delay: 4s;
            -o-animation-delay: 4s;
            animation-delay: 4s;
        }
        .wrap ul li:nth-child(9) {
            width: 100px;
            height: 100px;
            left: 80%;
            animation-duration: 20s;
            -moz-animation-duration: 20s;
            -o-animation-duration: 20s;
            -webkit-animation-duration: 20s;
        }
        .wrap ul li:nth-child(10) {
            width: 120px;
            height: 120px;
            left: 90%;
            -webkit-animation-delay: 6s;
            -moz-animation-delay: 6s;
            -o-animation-delay: 6s;
            animation-delay: 6s;
            animation-duration: 30s;
            -moz-animation-duration: 30s;
            -o-animation-duration: 30s;
            -webkit-animation-duration: 30s;
        }

        @keyframes square {
            0%  {
                    -webkit-transform: translateY(0);
                    transform: translateY(0)
                }
            100% {
                    bottom: 400px;
                    transform: rotate(600deg);
                    -webit-transform: rotate(600deg);
                    -webkit-transform: translateY(-500);
                    transform: translateY(-500)
            }
        }
        @-webkit-keyframes square {
            0%  {
                -webkit-transform: translateY(0);
                transform: translateY(0)
            }
            100% {
                bottom: 400px;
                transform: rotate(600deg);
                -webit-transform: rotate(600deg);
                -webkit-transform: translateY(-500);
                transform: translateY(-500)
            }
        }
    </style>

<title>找回密码</title>
</head>

<body>
	<nav>
  <div class="container"> 
    
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a href="zhuye.jsp"><img src="images/logo.png" width="158" height="43" alt=""/></a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="zhuye.jsp"> 首页 <span class="sr-only">(current)</span></a> </li>
        <li><a href="xinpin.jsp">新品热卖</a> </li>
        <li><a href="coffee.jsp">咖啡</a> </li>
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

    <div class="wrap">
        <div class="cont">
          <h1>找回密码</h1>
          <h2>验证手机号码</h2>
            <form action="RetrievePasswordServlet" method="post">
                <input type="text" placeholder="请输入您注册时的手机号码" name="tele"/>
                <input type="submit" value="下一步"/>
       
          </form>
        </div>
        <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</body>
</html>