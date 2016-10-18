<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/ttth"
     user="root"  password="1234"/>

<html>
<head>

     
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đội ngủ giảng viên</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/w3.css">
<style type="text/css">
body {
	background-color: #999966;
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

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px;
	border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar">
			<img src="element/header ttth.jpg" style="width: 100%;">
			<div class="containner">
				<ul class="nav nav-justified"
					style="background-color: #4d004d; color: white;">
					<li><a href="home.jsp">Trang chủ</a></li>
					<li><a href="thongbao.jsp">Thông báo</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Giới thiệu<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="thungo.jsp">Thư ngỏ</a></li>
							<li><a href="giangvien.jsp">Đội ngủ giản viên</a></li>
							<li><a href="nhiemvu.jsp">Chức năng nhiệm vụ</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Lịch khai giảng<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
						
					<sql:query dataSource="${snapshot}" var="result">
SELECT * from khoahoc;
</sql:query>
<c:forEach var="row" items="${result.rows}">
							<li><a href="Fromdk<c:out value="${row.MaLoai}"/>.jsp">
							<c:out value="${row.TenKhoaHoc}"/> <c:out value="${row.NgayKhaiGiang}"/></a>
							
							</li></c:forEach>
							
							
						</ul></li>
					<li><div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown"> xem điểm <span
								class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								
								<sql:query dataSource="${snapshot}" var="result">
SELECT * from nienkhoa;
</sql:query>
<c:forEach var="row" items="${result.rows}">
								<li class="dropdown-submenu"><a class="test" tabindex="-1"
									href="#">Khóa <c:out value="${row.MaNienKhoa}"/> <span class="caret"></span></a>
									
											<ul class="dropdown-menu">
											
											<sql:query dataSource="${snapshot}" var="result">
SELECT * from bangdiem where MaNienKhoa ='${row.MaNienKhoa}';
</sql:query>
<c:forEach var="row2" items="${result.rows}">
												<li><a href="<c:out value="${LinkGoogle}"/>">Lớp <c:out value="${row2.MaLop}"/></a></li>
												
												</c:forEach>
											</ul></li>
									</li></c:forEach>
							</ul>
						</div></li>
					<li><a href="tuvan-send.jsp">Tư vấn-hỏi đáp</a></li>
					<li><a href="list-mon-windows.jsp">Đăng kí online</a></li>
				</ul>

			</div>
		</nav>
	</div>
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
		style="background-color: #4d004d; color: white; padding-top: 25px;">
		<div class="container">
			
			<div class="bottom-footer" style="border-top: 1px solid #b2b2b2; margin-top: 10px; padding-top: 10px; corlor: red;">
				<div class="col-md-5">
				<p>developed by G6</p>
				<img src="element/diachiicon.png" class="img-rounded" width="20px" height="20px" align="left">
				Cơ sở chính: XX/XX, đường ss, Q.qq, TH. HCM
				<br>
				<img src="element/phoneicon.png" class="img-rounded" width="20px" height="20px" align="left">
				Đt: xx50 43x 8xx
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
</body>
</html>