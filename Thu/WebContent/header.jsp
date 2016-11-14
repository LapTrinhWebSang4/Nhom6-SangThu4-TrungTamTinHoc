<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/ttth" user="root" password="1234" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style>
body{
	background-color:black;
	background-image:url("element/window.png");
	width:100%;
	height:100%;
	background-repeat:no-repeat;
	
}
</style>
</head>
<body>

	<div id="navbar-img">
			<img src="Asset/header ttth.jpg" id="header-img" style="width: 100%;">
		</div>


		<!-- Navbar -->
		<div class="navbar navbar-default " id="custom-bootstrap-menu"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>

					</button>
					<a class="navbar-brand" href="Home.jsp"><span
						class="glyphicon glyphicon-home"></span>Trang chủ</a>
				</div>
				<div class="navbar-collapse collapse">

					<!-- Left nav -->
					<ul class="nav navbar-nav">

						<li><a href="#" id="thongbaolink" class="scroll"><span
								class="glyphicon glyphicon-pushpin"></span>Thông báo</a></li>

						<li><a href="#" id="gioithieulink" class="scroll"><span
								class="glyphicon glyphicon-info-sign"></span>Giới thiệu <span
								class="caret"></span></a>
							<ul class="dropdown-menu" id="sub1">
								<li><a href="giangvien.jsp">Đội ngủ giảng viên</a></li>
								<li><a href="nhiemvu.jsp">Chức năng - Nhiệm vụ </a></li>


							</ul></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-calendar"></span>Lịch khai giảng <span
								class="caret"></span></a>
							<ul class="dropdown-menu" id="sub1">
								<sql:query dataSource="${snapshot}" var="result">
SELECT * from khoahoc;
</sql:query>
								<c:forEach var="row" items="${result.rows}">
									<li><a href="fromdkonline.jsp?loaimonhoc=<c:out value="${row.MaLoaiKhoaHoc}" />">
									<c:out value="${row.TenKhoaHoc}" /> [<c:out
												value="${row.NgayKhaiGiang}" />]</a></li>

								</c:forEach>

							</ul></li>
						<li><a href=""><span class="glyphicon glyphicon-list-alt"></span>Xem
								điểm <span class="caret"></span></a>
							<ul class="dropdown-menu" id="sub1">
								<sql:query dataSource="${snapshot}" var="result">
SELECT * from hocvien where Diem != "NULL"
GROUP by MaLop;
</sql:query>
								<c:forEach var="row" items="${result.rows}">
									<li><a
										href="bangdiem.jsp?classes=<c:out value="${row.MaLop}"/>">Lớp
											<c:out value="${row.MaLop}" />
									</a></li>
								</c:forEach>


							</ul></li>
						<li><a href="tuvan-send.jsp"><span
								class="glyphicon glyphicon-question-sign"></span>Tư vấn- hỏi đáp</a></li>
						<li><a href="list-mon-windows.jsp"><span
								class="glyphicon glyphicon-edit"></span>Đăng kí online</a></li>
					</ul>





				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
</body>
</html>