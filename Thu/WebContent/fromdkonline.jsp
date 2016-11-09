<%@ page language="java" contentType="text/html; UTF-8"
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
	<jsp:include page="header.jsp" />
	
	<script>
     $(document).ready(function() {
         $("#listmon").change(function() {
             
             $("#btn-submit").hide();
        	 servletCall();
         });

     });
     function servletCall() {
    	 var fullname = $('#listmon').val();
         $.post(
             "DangkiServ",
             {name : fullname}, //meaasge you want to send
             function(result) {
             $('#listlop').html(result); //message you want to show
         });
         $(document).ready(function() {
             $("#listlop").click(function() {
     			$("#btn-submit").show();
             });

         });
     };
   </script>
	
		<div class="container">
		<form role="form" ng-app="myApp" ng-controller="validateCtrl" action="insertdbhocvien.jsp" method="post"
					name="myForm" novalidate>
<div class="jumbotron col-md-12">
<% String id = request.getParameter( "id" ); %>
<% String loaimonhoc = request.getParameter( "loaimonhoc" ); %>
				<div class="col-md-6">
					<label>Môn học</label><select class="form-control" id="listmon">
					
					
					
					<sql:query dataSource="${snapshot}" var="result">
SELECT * from khoahoc where MaKhoaHoc="<%=id %>";
</sql:query>
<c:forEach var="row" items="${result.rows}">
						<option value="<c:out value="${row.MaKhoaHoc}"/>"><c:out value="${row.TenKhoaHoc}"/></option>
						
						</c:forEach>
					
					<sql:query dataSource="${snapshot}" var="result">
SELECT * from khoahoc where MaLoaiKhoaHoc="<%=loaimonhoc%>" && MaKhoaHoc!="<%=id %>";
</sql:query>
<c:forEach var="row" items="${result.rows}">
						<option value="<c:out value="${row.MaKhoaHoc}"/>"><c:out value="${row.TenKhoaHoc}"/></option>
						
						</c:forEach>
					
					</select>
				</div>
				<div class="col-md-6">
					<label>Lớp học</label><select class="form-control" id="listlop" name="listlop">
						
						<sql:query dataSource="${snapshot}" var="result">
SELECT * from lophoc where MaKhoa="<%=id %>";
</sql:query>
<c:forEach var="row" items="${result.rows}">
						<option value="<c:out value="${row.MaLop}"/>"><c:out value="${row.LichHoc}"/> room: <c:out value="${row.Phong}"/></option>
						
						</c:forEach>
						
					</select>
				</div>
			</div>
			<div class="jumbotron">
				

					<div class="panel panel-default">
						<div class="panel-body">
							<div class="col-md-12">
								<h3 align="center" style="color: #00ff00;">Thông tin cá
									nhân</h3>
								
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
								
								</row>
								<row>
								<div class="col-md-8">
									<label for="name" style="color: #00ff00;">Địa chỉ</label>
									<textarea class="form-control" rows="3" cols="12" name="address"></textarea>
									<button
										style="width: 50px; height: 30px; background-color: grey; color: white; float: right;">
										<span class="glyphicon glyphicon-link"></span>
									</button>
								</div>

								</row>



							</div>
						</div>
					</div>

					<div class="container" style="display: none;" id="btn-submit">
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
										<input type="submit" value="Có" class="btn btn-block btn-success">
										<button type="button" class="btn btn-block btn-default"
											data-dismiss="modal">Hủy</button>

									</div>
								</div>
								<!-- /.modal-content -->
							</div>
						</div>
					</div>

				
			</div></form>
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
