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

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/ttth"
     user="root"  password="1234"/>


<style type="text/css">
	body {
	background-color: lightblue;
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
@media only screen and (min-width:200px)and (max-width:700px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
	color:white;
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

</head>
<body>
	<jsp:include page="header.jsp" />
		
	

	
	
	<div class="container" style="background-color: white;">
		<div class="row">
			<h2 class="text-center" id="head-text">&lt Giới thiệu &gt</h2>
		</div>
		<div class="panel panel-default" id="gioithieu">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-9">
					<img src="Hinh/ttth.jpg" class="img-rounded" alt="Cinque Terre"
						width="100%">
				</div>
				<div class="col-md-3">

					<marquee scrolldelay="6" scrollamount="2" id="banner"
						direction="up" height="300px" style="height: 300px;">
						<p style="font: Times New Roman; color: blue;">Information
							technology (IT) is the application of computers and internet to
							store, retrieve, transmit, and manipulate data, or information,
							often in the context of a business or other enterprise. IT is
							considered a subset of information and communications technology
							(ICT). In 2012, Zuppo proposed an ICT hierarchy where each
							hierarchy level "contain some degree of commonality in that they
							are related to technologies that facilitate the transfer of
							information and various types of electronically mediated
							communications." Business/IT was one level of the ICT hierarchy</p>
					</marquee>

				</div>
				</div>


			</div>
		</div>
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class="active"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item">
					<a href="list-mon-windows.jsp"> <img src="Hinh/android.png"
						alt="Chania" width="100%" height="500">
					</a>
				</div>

				<div class="item">
					<a href="list-mon-windows.jsp"> <img src="Hinh/ios.jpg"
						alt="Chania" width="100%" height="500">
					</a>
				</div>

				<div class="item">
					<a href="list-mon-windows.jsp"> <img src="Hinh/web.png"
						alt="Flower" width="100%" height="500">
					</a>
				</div>

				<div class="item active">
					<a href="list-mon-windows.jsp"> <img src="Hinh/pts.jpg"
						alt="Flower" width="100%" height="500">
					</a>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="container" id="thongbao" >
			<div class="row">
				<div class="col-md-6" style="padding-top:10px;padding-left:1px">

				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Thông Báo</h3>
					</div>
					<div class="panel-body">
						<div>
							<img alt="" src="Hinh/THONGBAO.png" style="width: 100%; height: 250px;">
						</div>
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							
							
							<sql:query dataSource="${snapshot}" var="result">
SELECT * from thongbao where LoaiThongBao = "Thong bao";
</sql:query>
<c:forEach var="row" items="${result.rows}">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#<c:out value="${row.MaThongBao}"/>"
											aria-expanded="false" aria-controls="<c:out value="${row.MaThongBao}"/>"><span
											class="glyphicon glyphicon-pushpin" style="color: #800080;"></span>
											<c:out value="${row.TieuDe}"/> [<c:out value="${row.Ngay}"/>]</a>
									</h4>
								</div>
								<div id="<c:out value="${row.MaThongBao}"/>" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body"><c:out value="${row.NoiDung}"/></div>
								</div>
							</div></c:forEach>
							
						</div>
					</div>

					<nav aria-label="...">
					<ul class="pager">
						<li class="previous"><a href="#"><span aria-hidden="true">&larr;</span>Mới
								hơn</a></li>
						<li class="next"><a href="#">Cũ hơn<span
								aria-hidden="true">&rarr;</span></a></li>
					</ul>
					</nav>



				</div>



			</div>
			<div class="col-md-6" style="padding-top:10px;">

				<div class="panel panel-default">
					<div class="panel-heading" style="background-color:red">
						<h3 class="panel-title">Sự kiện</h3>
					</div>
					<div class="panel-body">
						<div>
							<img alt="" src="Hinh/sukien.jpg" style="width: 100%; height: 250px">
						</div>
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							
							
							<sql:query dataSource="${snapshot}" var="result">
SELECT * from thongbao where LoaiThongBao = "Su kien";
</sql:query>
<c:forEach var="row" items="${result.rows}">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#<c:out value="${row.MaThongBao}"/>"
											aria-expanded="false" aria-controls="<c:out value="${row.MaThongBao}"/>"><span
											class="glyphicon glyphicon-pushpin" style="color: #800080;"></span>
											<c:out value="${row.TieuDe}"/> [<c:out value="${row.Ngay}"/>]</a>
									</h4>
								</div>
								<div id="<c:out value="${row.MaThongBao}"/>" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body"><c:out value="${row.NoiDung}"/></div>
								</div>
							</div></c:forEach>
							
						</div>
					</div>

					<nav aria-label="...">
					<ul class="pager">
						<li class="previous"><a href="#"><span aria-hidden="true">&larr;</span>Mới
								hơn</a></li>
						<li class="next"><a href="#">Cũ hơn<span
								aria-hidden="true">&rarr;</span></a></li>
					</ul>
					</nav>



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

	$(".navbar-nav>li>a").click(function(e) { 
	      // Prevent a page reload when a link is pressed
	    e.preventDefault(); 
	      // Call the scroll function
	    goToByScroll(this.id);           
	});
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
<script type="text/javascript" src="js/jsfornav2.js"></script>


<script type="text/javascript" src="js/jsfornav2-1.js"></script>
</body>
</html>
