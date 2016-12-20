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

<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="Asset/headercss.css">
<style type="text/css">
	hr.style13 {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px #8c8b8b inset;
}
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
<body class= "no-skin">
	
		<div id="navbar" class="navbar navbar-default          ace-save-state">
		<img src="Asset/header ttth.jpg" style="width: 100%; height: 120px">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span>

			</button>
		</div>
	</div>



	<div class="main-container ace-save-state" id="main-container">


		
		<div class="main-content">
			<div class="main-content-inner">
				<div class="row">
					<div class="container-fluid">
						<ul class="nav nav-justified w3-pale-blue">
							<li><a href="Home.jsp"><strong>Trang chủ</strong></a></li>
							<li><a href="thongbao.jsp"><strong>Thông báo</strong></a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><strong>Giới thiệu</strong><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="thungo.jsp"><strong>Thư ngỏ</strong></a></li>
									<li><a href="giangvien.jsp"><strong>Đội ngủ
												giản viên</strong></a></li>
									<li><a href="nhiemvu.jsp"><strong>Chức năng
												nhiệm vụ</strong></a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><strong>Lịch khai
										giảng</strong><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Dangkiwindows-win.jsp"><strong>Windows
												1 tháng 10</strong></a></li>
									<li><a href="Dangkiandroid-cban.jsp"><strong>Android
												1 tháng 10</strong></a></li>
								</ul></li>

							<li><a href="tuvan-send.jsp"><strong>Tư
										vấn-hỏi đáp</strong></a></li>
							<li><a href="static-login.jsp"><strong>Đăng xuất</strong></a></li>
						</ul>
					</div>
				</div>
				</div>
				</div>
				<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="1234"/>
					<sql:query dataSource="${dbsource }"  var="result">SELECT * FROM thongbao
		            WHERE MaThongBao=?;
            	<sql:param value='${param.mathongbao}' /></sql:query>
            	<div class="col-sm-2 ">
            	</div>
            	<div class="col-sm-9 ">
            	<c:forEach var="col" items="${result.rows}">
		  			<div class="page-header" style="color: #f6bb42">
		  			<h2><strong>${col.TieuDe}</strong></h2>
		  			  </div>
		  			<hr class="style13">
		  			<h5><strong>${col.TomTat}</strong></h5>
		  			
		  			<c:if test="${col.LoaiThongBao=='Su Kien'}">
		  			<div class="col-md-8">
						<img class="img-responsive img-thumbnail" src="${pageContext.servletContext.contextPath }/GetImageThongBao?mathongbao=${col.MaThongBao}" style="width:100%"></img>
					</div>	
					</c:if>
					<c:if test="${col.LoaiThongBao !='Su Kien'}">
		  			
						<img class="img-responsive img-thumbnail" src="${pageContext.servletContext.contextPath }/GetImageThongBao?mathongbao=${col.MaThongBao}" style="width:80%"></img>
					
					</c:if>
					<h5>${col.NoiDung}</h5>
				</c:forEach>
				</div>

					
					
		       
		 </div>
    
	

	
	
	
	


<script type="text/javascript" src="js/jsfornav2.js"></script>


<script type="text/javascript" src="js/jsfornav2-1.js"></script>
</body>
</html>
