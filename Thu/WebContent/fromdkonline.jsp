<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Trung Tam tin hoc</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="css/cssfornav2.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>




<style type="text/css">
	body {
	background-color: lightgrey;
}
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
@media only screen (min-width:500px)and (max-width:700px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
	color:white;
	}
	#navbar-img{
		display:none;
	}
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


#header-img{
	height:120px;	
	z-index:3;
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
#head-text{
	color:#0082c8;
	 text-shadow: 1px 1px 2px white, 0 0 25px white, 0 0 5px black;
}
</style>
<link rel="stylesheet" href="css/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
	var app = angular.module('myApp', []);
	app.controller('validateCtrl', function($scope) {
		$scope.user = 'John';
		$scope.email = 'Example@gmail.com';
		$scope.phone = '09';
	});
</script>
</head>
<body>
	<div id="navbar-img" >
		<img src="Asset/header ttth.jpg" id="header-img" style="width: 100%;" >
	</div>
	
	
	<!-- Navbar -->
	<div class="navbar navbar-default " id="custom-bootstrap-menu" role="navigation">
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
					
					<li><a href="Home.jsp" id="thongbaolink"><span class="glyphicon glyphicon-pushpin"></span>Thông báo</a></li>
					
					<li><a href="" id="gioithieulink"><span class="glyphicon glyphicon-info-sign"></span>Giới thiệu <span class="caret"></span></a>
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
		
<div class="jumbotron col-md-12">
				<div class="col-md-6">
					<label>Môn học</label><select class="form-control">
						<option value="#">Lập trình window</option>
						<option value="Dangkiwindows-web.jsp">Lập trình web</option>
					</select>
				</div>
				<div class="col-md-6">
					<label>Lớp học</label><select class="form-control">
						<option>Thu 3-5 (18h00-20h00) KG: 1 thang 10</option>
						<option>Thu 2-4 (18h00-20h00) KG: 1 thang 10</option>
					</select>
				</div>
			</div>
			<div class="jumbotron">
				<form role="form" ng-app="myApp" ng-controller="validateCtrl"
					name="myForm" novalidate>

					<div class="panel panel-default">
						<div class="panel-body">
							<div class="col-md-12">
								<h3 align="center" style="color: #00ff00;">Thông tin cá
									nhân</h3>
								</span>
							</div>
							<div class="form-group">

								<row>
								<div class="col-md-6 has-feedback">
									<label for="name" style="color: #00ff00;">Họ tên</label><input type="text"
										class="form-control input-lg" type="text" name="user"
										ng-model="user" required placeholder="Nhập họ tên">
										
										<span
										style="color: red"
										ng-show="myForm.user.$dirty && myForm.user.$invalid"> <span
										ng-show="myForm.user.$error.required">Name is required.</span>
									</span>
								</div>

								<div class="col-md-6">
									<label for="email" style="color: #00ff00;">Email</label></span> <input
										class="form-control input-lg" type="email" name="email"
										ng-model="email" required> <span style="color: red"
										ng-show="myForm.email.$dirty && myForm.email.$invalid">
										<span ng-show="myForm.email.$error.required">Email is
											required.</span> <span ng-show="myForm.email.$error.email">Invalid
											email address.</span>
									</span>
								</div>
								</row>
								<row>
								<div class="col-md-6">
									<label for="sdt" style="color: #00ff00;">Số điện thoại</label><input type="text"
										class="form-control" id="sdt" placeholder="Nhập số điện thoại"
										name="phone" ng-model="phone" required> <span
										style="color: red"
										ng-show="myForm.phone.$dirty && myForm.phone.$invalid">
										<span ng-show="myForm.phone.$error.required">phone
											number is required.</span>
								</div>
								<div class="col-md-6">
									<input type="checkbox" style="margin-top: 40px;">Đang
									là sinh viên
								</div>
								</row>
								<row>
								<div class="col-md-8">
									<label for="name" style="color: #00ff00;">Thông tin
										khác</label>
									<textarea class="form-control" rows="3" cols="12"></textarea>
									<button
										style="width: 50px; height: 30px; background-color: grey; color: white; float: right;">
										<span class="glyphicon glyphicon-link"></span>
									</button>
								</div>

								</row>



							</div>
						</div>
					</div>

					<div class="container">
						<button class="btn btn-success btn-block" data-toggle="modal"
							data-target="#myModal"
							ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||
myForm.email.$dirty && myForm.email.$invalid || myForm.phone.$dirty && myForm.phone.$invalid || myForm.phone.$error.required">Xác
							nhận đăng kí</button>

						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h2 class="modal-title" id="myModalLabel" align="center">Xác
											nhận</h2>
									</div>
									<div class="modal-body">Bạn có muốn đăng kí</div>
									<div class="modal-footer">
										<a href="Home.jsp"><button type="button"
												class="btn btn-block btn-primary">Xác nhận</button></a>
										<button type="button" class="btn btn-block btn-default"
											data-dismiss="modal">Hủy</button>

									</div>
								</div>
								<!-- /.modal-content -->
							</div>
						</div>
					</div>

				</form>
			</div>

	<footer
		style="background-color: #0082c8; color: white; padding-top: 25px;">
	<div class="container">

		<div class="bottom-footer"
			style="border-top: 1px solid #b2b2b2; margin-top: 10px; padding-top: 10px; corlor: red;">
			<div class="col-md-5">
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
	</footer>
	
	<script type="text/javascript">
	function goToByScroll(id){
	      // Remove "link" from the ID
	    id = id.replace("link", "");
	      // Scroll
	    $('html,body').animate({
	        scrollTop: $("#"+id).offset().top},
	        'slow');
	}

	
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
	    	$('.navbar-default').addClass('navbar-fixed-top');
	    	
	    }
	  });
	});
</script>
<script type="text/javascript" src="js/jsfornav2.js"></script>


<script type="text/javascript" src="js/jsfornav2-1.js"></script>
</body>
</html>
