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
<link rel="stylesheet" type="text/css" href="assets/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>




<style type="text/css">
ul>li{
	list-style:none;
}
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
hr {
  border: 0;
  border-top: 3px double #8c8c8c;
}
</style>
<link rel="stylesheet" href="css/w3.css">

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
	<div class="container">
			<div class="row">
				<div class="col-md-8 " style="background-color:white">
					
						<table class="table table-hover">
						<thead>
							<h3>Lớp Access</h3>
							<hr style="border: 0; border-top: 3px double #0082c8;"/>
				
						</thead>
						<tbody>
							<tr>
								<td>#</td>
								<td>HoTen</td>
								<td>MaHV</td>
								<td>Diem</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Kien</td>
								<td>2345</td>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Huy</td>
								<td>3242</td>
								<td>10</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Hoang</td>
								<td>2348</td>
								<td>10</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Kien</td>
								<td>2345</td>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Huy</td>
								<td>3242</td>
								<td>10</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Hoang</td>
								<td>2348</td>
								<td>10</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Kien</td>
								<td>2345</td>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Huy</td>
								<td>3242</td>
								<td>10</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Hoang</td>
								<td>2348</td>
								<td>10</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Kien</td>
								<td>2345</td>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Huy</td>
								<td>3242</td>
								<td>10</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Hoang</td>
								<td>2348</td>
								<td>10</td>
							</tr>
						</tbody>
					</table>
					<hr style="border: 0; border-top: 3px double #0082c8;"/>
					<h4>Các khóa học khác</h4>
						<ul>
							<li>&#x2749<a> xcvz</a></li>
							<li>&#x2749<a> zxcvcxv</a></li>
							<li>&#x2749<a> xcbxzc</a></li>
							<li>&#x2749<a> xcbzv</a></li>
							<li>&#x2749<a> xcvx</a></li>
						</ul>
				</div>
				<div class="col-md-4 pull-right" style="background-color:white">
					<h4>Các lớp cùng khóa học</h4>
						<ul>
						<li>&#x2749<a> MS SQL</a></li>
						<li>&#x2749<a> Oracle SQL</a></li>
						<li>&#x2749<a> MySQL</a></li>
						<li>&#x2749<a> Mongo DB</a></li>
						<li>&#x2749<a> posgre</a></li>
						<li>&#x2749<a> Django</a></li>
					</ul>
					

			

				</div>
			</div>
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
