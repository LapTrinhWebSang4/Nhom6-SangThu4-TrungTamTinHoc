<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="css/cssfornav2.css">
<link rel="stylesheet" type="text/css" href="Asset/Login.css"/>

<style type="text/css">
	#custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(255, 255, 255, 1);
}
#custom-bootstrap-menu.navbar-default {
    font-size: 14px;
    background-color: rgba(0, 130, 200, 1);
    border-width: 1px;
    border-radius: 0px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(0, 130, 200, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: white;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar
 {
    background-color: #0082c8;
}
@media screen and (max-width:800px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
	color:white;
	}
}
.panel-default{
	box-shadow: 10px 10px 5px black;
}

.footer-nav {
	text-align: right;
	list-style: none;
}

.footer-nav li {
	display: inline;
}

.footer-nav li:before {
	contain: '|';
	padding: 0px 10px;
}
.navbar.navbar-default{
	padding-top:0px;
}


img{
	height:120px;	
	z-index:3;
}
body{
	background-color:lightgrey;
	background-image:url("Asset/tntt.jpg");
	width:100%;
	height:100%;
	background-repeat:no-repeat;
	z-index:-1;
	 rgba(255,255,255,0.4);
	 background-position: 50% 60%; 
	 position:relative;
	 opactity:.1;
}



#login-form{
	padding-bottom:200px;
}
.footer-nav>li>a{
	color:white;
}
a>.glyphicon{
	padding-right:10px;
}
.inner-addon { 
    position: relative; 
    
}
.blur{
	
}



/* style icon */
.inner-addon .glyphicon {
  position: absolute;
  padding: 10px;
  pointer-events: none;
}

/* align icon */
.left-addon .glyphicon  { left:  0px;}
.right-addon .glyphicon { right: 0px;}

/* add padding  */
.left-addon input  { padding-left:  30px; }
.right-addon input { padding-right: 30px; }
</style>
</head>
<body>
	
	
	<div id="navbar-img" >
		<img src="Asset/header ttth.jpg" style="width: 100%;" >
	</div>
	
	
	<!-- Navbar -->
	<div class="navbar navbar-default " id="custom-bootstrap-menu" role="navigation"">
		<div class="container">
			<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar" ></span>
				<span class="icon-bar" ></span>
				<span class="icon-bar" ></span> 
				
			</button>
			<a class="navbar-brand" href="Home.jsp"><span class="glyphicon glyphicon-home"></span>Trang chủ</a>
		</div>
		<div class="navbar-collapse collapse">

			<!-- Left nav -->
			<ul class="nav navbar-nav">
					
					<li><a href="#" id="thongbaolink"><span class="glyphicon glyphicon-pushpin"></span>Thông báo</a></li>
					
					<li><a href="#" id="gioithieulink"><span class="glyphicon glyphicon-info-sign"></span>Giới thiệu <span class="caret"></span></a>
						<ul class="dropdown-menu" id="sub1">
							<li><a href="giangvien.jsp">Đội ngủ giảng viên</a></li>
							<li><a href="nhiemvu.jsp">Chức năng - Nhiệm vụ </a></li>
							
							
						</ul></li>
						<li><a href="#"><span class="glyphicon glyphicon-calendar"></span>Lịch khai giảng <span class="caret"></span></a>
						<ul class="dropdown-menu" id="sub1">
							<li><a href="Dangkiwindows-win.jsp">Windows 1 tháng 10</a></li>
							<li><a href="Dangkiandroid-cban.jsp">Android 1 tháng 10</a></li>
							
							
						</ul></li>
						<li><a href=""><span class="glyphicon glyphicon-list-alt"></span>Xem điểm <span class="caret"></span></a>
						<ul class="dropdown-menu" id="sub1">
		
							<li><a href="#">Khóa 101<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="sub2">
									<li><a href="#">Lớp lập trình windows 01</a></li>
									<li><a href="#">Lớp lập trình web 01</a></li>
									<li><a href="#">Lớp lập trình web 02</a></li>
								</ul></li>
								<li><a href="#">Khóa 100<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="sub2">
									<li><a href="#">Lớp lập trình windows 01</a></li>
									<li><a href="#">Lớp lập trình web 01</a></li>
									<li><a href="#">Lớp lập trình web 02</a></li>
								</ul></li>
								<li><a href="#">Khóa 99<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="sub2">
									<li><a href="#">Lớp lập trình windows 01</a></li>
									<li><a href="#">Lớp lập trình web 01</a></li>
									<li><a href="#">Lớp lập trình web 02</a></li>
								</ul></li>
						</ul></li>
						<li><a href="tuvan-send.jsp"><span class="glyphicon glyphicon-question-sign"></span>Tư vấn- hỏi đáp</a></li>
						<li><a href="list-mon-windows.jsp"><span class="glyphicon glyphicon-edit"></span>Đăng kí online</a></li>
				</ul>


			
			

		</div>
		<!--/.nav-collapse -->
		</div>
	</div>
		
		
	

		
			
				<div class="container " id="login-form" >
		<div class="row" style="margin-top:50px;">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="panel panel-default">					
					<div class="panel-body">
						<h3>Login</h3>
						<div class="whole-form">
					<form action="" method="post" role="form">
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" value="tvv" name="kien"
									checked="checked"> Tư vấn viên </label> <label> <input
									type="checkbox" value="nqtnd" name="kien" id="box2">
										Người quản trị nội dung </label> <label> <input
									type="checkbox" value="qtv" name="kien" id="box1"> Quản
										trị viên </label>
							</div>
						</div>
						<div class="form-group">
							<label for="">Tài khoản</label> 
							<div class="inner-addon left-addon">
								<i class="glyphicon glyphicon-user">
								</i>
								<input type="text"
								class="form-control" id="" placeholder="username">
							</div>
							
						</div>
						<div class="form-group">
							<label for="">Mật khẩu</label>
							<div class=" inner-addon left-addon">
							<i class="glyphicon glyphicon-lock" style="color:black"></i>
								<input type="password"
								class="form-control" id="" placeholder="password">
							</div> 
							
						</div>
						<div class="form-group">
							<a href="" id="link"
								class="btn btn-primary col-sm-offset-9 btn-sm">Đăng nhập</a>
						</div>






					</form>

				</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
		
	
	
	<footer
		style="background-color: #0082c8; color: white; padding-top: 25px;">
	<div class="container">

		<div class="bottom-footer"
			style="border-top: 1px solid #b2b2b2; margin-top: 10px; padding-top: 10px; corlor: red;">
			<div class="row">
				<div class="col-md-5" style="padding-bottom:45px;">
				<p>developed by G6</p>
				<span class="glyphicon glyphicon-home"></span> Cơ sở chính: XX/XX,
				đường ss, Q.qq, TH. HCM <br> <span
					class="glyphicon glyphicon-phone-alt"></span> Đt: xx50 43x 8xx
			</div>
			<div class="col-md-7">
				<ul class="footer-nav">
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="giangvien.jsp">Contract</a></li>
					<li><a href="thungo.jsp">About us</a></li>
				</ul>
			</div>
			</div>

		</div>

	</div>
	</footer>



	<!--Jquery-->
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	  
	  $(window).scroll(function () {
	      //if you hard code, then use console
	      //.log to determine when you want the 
	      //nav bar to stick.  
	      console.log($(window).scrollTop())
	    if($(window).width()>800){
	    	if ($(window).scrollTop() > 120) {
	  	      $('.navbar-default').addClass('navbar-fixed-top');
	  	    }
	  	    if ($(window).scrollTop() < 121) {
	  	      $('.navbar-default').removeClass('navbar-fixed-top');
	  	    }
	    }else{
	    	if ($(window).scrollTop() > 120) {
		  	      $('.navbar-default').addClass('navbar-fixed-top');
		  	    }
		  	    if ($(window).scrollTop() < 121) {
		  	      $('.navbar-default').removeClass('navbar-fixed-top');
		  	    }
	    	
	    }
	  });
	});
</script>

<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="js/jsfornav2.js"></script>

<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="js/jsfornav2-1.js"></script>




</body>
</html>
