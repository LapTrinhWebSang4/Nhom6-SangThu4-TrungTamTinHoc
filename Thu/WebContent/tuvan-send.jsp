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

<title>Câu hỏi-tư vấn</title>
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
<script>
	var app = angular.module('myApp', []);
	app.controller('validateCtrl', function($scope) {
		$scope.user = 'John';
		$scope.email = 'Example@gmail.com';
		$scope.phone = '09';
		$scope.lable = 'lable';
		$scope.txtara = 'your question';
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btn-send").click(function(event) {
			$("#list-q").hide();
			$("#send-q").show();
		});
		$("#btn-list").click(function(event) {
			$("#list-q").show();
			$("#send-q").hide();
		});
		$("#icon-chat").click(function(event) {
			$("#chat-box").toggle("slow");
		});
	});
</script>
<link rel="stylesheet" href="css/w3.css">
</head>
<body>
	<div style="right: 0px; bottom: 125px; position: fixed;" id="icon-chat">
		<img src="element/chat.gif" height="100" width="100" />
	</div>
	<div
		style="bottom: 40px; right: 50px; position: fixed; display: none; width: 170px; height: 240px;"
		id="chat-box">
		<div style="background-color: lightblue; height: 20px;">
			<h4 align="center">Tư vấn</h4>
		</div>
		<div
			style="background-color: white; height: 200px; border: solid 1px blue">
			TTV: Xin chào, tôi có thể giúp gì cho bạn</div>

		<input type="text" name="chat"
			style="height: 20px; width: 170px; border: solid 1px blue;"
			placeholder="chat" />
	</div>
	<jsp:include page="header.jsp" />
	<div class="container-fluid">
		

		<nav class="navbar w3-light-grey">
		<ul class="nav nav-tabs">
			<li><a id="btn-send"><button class="btn btn-info active">Đặt
						câu hỏi</button></a></li>
			<li><a id="btn-list"><button class="btn btn-info">danh
						sách câu hỏi</button></a></li>
		</ul>
		</nav>
		<div class="jumbotron" id="send-q">
			<form ng-app="myApp" ng-controller="validateCtrl" name="myForm" action="insertdbcauhoi.jsp" method="post"
				novalidate>
				<h2 style="color: blue;">Đặt câu hỏi</h2>
				<br>
				<div class="col-md-12">
					<label for="name">Họ tên</label> <input type="text"
						class="form-control input-lg" placeholder="Nhập họ tên"
						name="user" ng-model="user" required><span
						style="color: red"
						ng-show="myForm.user.$dirty && myForm.user.$invalid"> <span
						ng-show="myForm.user.$error.required">Name is required.</span></span><br>
				</div>
				
				
				<div class="col-md-12">
					<label for="name">Email</label> <input class="form-control"
						type="email" name="email" ng-model="email" required> <span
						style="color: red"
						ng-show="myForm.email.$dirty && myForm.email.$invalid"> <span
						ng-show="myForm.email.$error.required">Email is required.</span> <span
						ng-show="myForm.email.$error.email">Invalid email address.</span>
					</span>
				</div>

				<div class="col-md-12">
					<label>Lĩnh vực</label><select class="form-control" name="linhvuc">
						<option>Chế độ Chính sách - Học bổng</option>
						<option>Học phí và kỷ luật về HP</option>
						<option>Chứng chỉ</option>
					</select>
				</div>
				
				<div class="col-md-12">
					<label for="name">Tiêu đề</label> <input type="text"
						class="form-control" id="tieude" placeholder="Tiêu đề"
						name="lable" ng-model="lable" required> <span
						style="color: red"
						ng-show="myForm.lable.$dirty && myForm.lable.$invalid"> <span
						ng-show="myForm.lable.$error.required">Lable is required.</span></span>
				</div>

				<div class="col-md-12">
					<label for="name">Nội dung</label>
					<textarea class="form-control" rows="6" name="txtara"
						ng-model="txtara" required></textarea>
					<span style="color: red"
						ng-show="myForm.txtara.$dirty && myForm.txtara.$invalid"> <span
						ng-show="myForm.txtara.$error.required">Question is
							required.</span></span>
				</div>



				<input class="btn btn-success" data-toggle="modal" type="submit" value="save"
					data-target="#myModal"
					ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||
myForm.email.$dirty && myForm.email.$invalid || myForm.phone.$dirty && myForm.phone.$invalid || myForm.phone.$error.required || myForm.lable.$error.required || myForm.txtara.$error.required">

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="" aria-hidden="false">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h2 class="modal-title" id="myModalLabel" align="center">Thành
									công</h2>
							</div>
							<div class="modal-body">Bạn sẽ nhận được câu trả lời qua
								email trong thời gian sớm nhất</div>
							<div class="modal-footer">

								<button type="button" class="btn btn-block btn-success"
									data-dismiss="modal">OK</button>

							</div>
						</div>
						<!-- /.modal-content -->
					</div>
				</div>
			</form>
		</div>

		<div id="list-q" style="display: none;">
			<div class="col-md-12" style="padding-top:10px;padding-left:1px">

				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Câu hỏi</h3>
					</div>
					<div class="panel-body">
						
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
<sql:query dataSource="${snapshot}" var="result">
SELECT * from cauhoi where TinhTrang=1;
</sql:query>
<c:forEach var="row" items="${result.rows}">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">

										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#<c:out value="${row.MaCauHoi}"/>"
											aria-expanded="false" aria-controls="<c:out value="${row.MaCauHoi}"/>"><span
											class="glyphicon glyphicon-question-sign" style="color: #800080;"></span>
											<c:out value="${row.TieuDe}"/> [<c:out value="${row.Ngay}"/>]
											<br>
											Bởi: <c:out value="${row.TenNguoiHoi}"/>
											</a>
									</h4>
								</div>
								<div id="<c:out value="${row.MaCauHoi}"/>" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">Cau hoi: <c:out value="${row.NoiDung}"/><br>Tra Loi: <c:out value="${row.TraLoi}"/></div>
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