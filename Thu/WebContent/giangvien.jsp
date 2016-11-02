<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/ttth"
     user="root"  password="1234"/>
<meta charset="UTF-8">
<title>Chức năng- nhiệm vụ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
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

#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar {
	background-color: #0082c8;
}

@media only screen (min-width:500px)and (max-width:700px) {
	#sub1.dropdown-menu>li>a, #sub2.dropdown-menu>li>a, #sub3.dropdown-menu>li>a
		{
		color: white;
	}
	#navbar-img {
		display: none;
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

.navbar.navbar-default {
	padding-top: 0px;
}

#header-img {
	height: 120px;
	z-index: 3;
}

#login-form {
	padding-bottom: 200px;
}

.footer-nav>li>a {
	color: white;
}

a>.glyphicon {
	padding-right: 10px;
}

#head-text {
	color: #0082c8;
	text-shadow: 1px 1px 2px white, 0 0 25px white, 0 0 5px black;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<link rel="stylesheet" href="css/w3.css">
</head>
<body>
	
	
	<jsp:include page="header.jsp" />

		<div id="home-gv">
	
	<sql:query dataSource="${snapshot}" var="result">
SELECT * from giangvien;
</sql:query>
<c:forEach var="row" items="${result.rows}">
		<div class="container">
			<div class="jumbotron">
				<ul class="nav nav-tabs">
					<li><img src="element/per01.jpg" class="img-circle"
						align="bottom"></li>
					<li><div>
							<label>Họ tên</label>
							<h4><c:out value="${row.TenGiangVien}"/></h4>
							<label>Email</label>
							<h4><c:out value="${row.Email}"/></h4>
							<label>Số đt</label>
							<h4><c:out value="${row.Sodt}"/></h4>
							<h5><c:out value="${row.GioiThieu}"/></h5>
						</div></li>
				</ul>
			</div>
		</div>
		</c:forEach>
		
		
    
   
		
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
	
	<script type="text/javascript" src="js/jsfornav2.js"></script>


	<script type="text/javascript" src="js/jsfornav2-1.js"></script>
</body>
</html>