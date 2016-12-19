<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />
	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
	<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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


</head>
<body class="no-skin">
	<!--nav-->
	<sql:setDataSource var="con" driver ="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ttth" user="root" password="123456"></sql:setDataSource>
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<img src="Asset/header ttth.jpg" style="width: 100%; height: 120px">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span>

			</button>
		</div>
	</div>

	<!--end nav-->

<sql:query dataSource="${con }"  sql="select * from khoahoc" var="result"></sql:query>









	<div class="main-container ace-save-state" id="main-container">


		<div id="sidebar" class="sidebar responsive  ace-save-state">
			<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>





			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<div class="space-32"></div>
				<div class="space-32"></div>
				<div class="space-32"></div>
				<li class="active"><a href="QTNDPT.jsp"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Change Poster </span>
				</a> <b class="arrow"></b></li>
				<li class="#"><a href="QTNDThongBao.jsp"> <i
						class="menu-icon fa fa-newspaper-o"></i> <span class="menu-text">
							Đăng Thông Báo </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="QTNDMail.jsp"> <i
						class="menu-icon fa fa-envelope"></i> <span class="menu-text">
							Gửi Mail </span>
				</a> <b class="arrow"></b></li>
				
				<li class=""><a href="QTNDCaNhan.jsp"> <i
						class="menu-icon fa fa-user"></i> <span class="menu-text">
							Thông tin cá nhân </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="login.jsp"> <i
						class="menu-icon fa fa-sign-out"></i> <span class="menu-text">
							Đăng xuất </span>
				</a> <b class="arrow"></b></li>



			</ul>
			<!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>
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
							<li><a href="login.jsp"><strong>Đăng xuất</strong></a></li>
						</ul>
					</div>
				</div>
	<% int i=0; %>
	<div class="space-32"></div>
					<div class="space-32"></div>
	<div style="padding-left: 20px;padding-right: 20px;">
	<form action="UpdatePoster" method="Post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-11">
				<div class="table-header">
											<strong>POSTER KHÓA HỌC</strong>
										</div>

									
											<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
											
											<table id="dynamic-table" class="table table-striped table-bordered table-hover dataTable no-footer" role="grid" aria-describedby="dynamic-table_info">
												<thead>
													
															
														<th class="" tabindex="0" aria-controls="dynamic-table" >Mã Khóa Học </th>
														<th class="" tabindex="0" aria-controls="dynamic-table"  > Tên Khóa Học </th>
														<th class="" tabindex="0" aria-controls="dynamic-table"  > Poster </th>
														<th class="" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="">Đặc biệt </th>
														
														
															
														
												</thead>

												<tbody>

												<c:forEach var="col" items="${result.rows}">
												<tr role="row" class="odd">
														

														<td>
															<c:out value="${col.MaKhoaHoc}"></c:out>
															<div class="hide">
															<input
											class="form-control" id="${col.MaKhoaHoc}" type="text" name="makhoahoc<%=i %>" 
											value="${col.MaKhoaHoc}">
											</div>
														</td>
														<td>
														<c:out value="${col.TenKhoaHoc}"></c:out>
														</td>
														<td>
														<img src="${pageContext.servletContext.contextPath }/GetImageKhoaHoc?makhoahoc=${col.Makhoahoc}" style="width:300px; height:auto;" id="img">
														<div class="fileUpload btn btn-default">
										
															<input id="uploadBtn" type="file" onchange="onFileSelected(event)" name="photo<%=i %>" class="upload">
			
															</div>
										
														</td>
														<td>
														<c:if test="${col.db == true}">
														  	
														<select name="se<%=i %>" >  <option value="1"  selected >Dac Biet
																	<option value="0">Thuong </select>
														</c:if>
														<c:if test="${col.db != true}">
														  	<select name="se<%=i %>" >  <option value="1" >Dac Biet
																	<option value="0" selected>Thuong </select>
														
														</c:if>
														</td>

														

														<% i++; %>
													</tr>
												
													</c:forEach>
													
									</tbody>
								</table>
								
								</div>
								</div>
								<div class="col-xs-1">
							<a href="QTNDThem.jsp">
							<button type="submit" class="btn btn btn-warning"><strong>Lưu</strong>
							<i class="ace-icon fa fa-plus-square - 160"></i>
							</button>
							</a>
							</div>
								</div>
								</form>
								
				<!--END PAGE CONTENT-->
			</div>

		</div>

	</div>
	<!-- /.main-container -->




	

	<!--Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
		function onFileSelected(event) {
			
			var selectedFile = event.target.files[0];
			var reader = new FileReader();
			
			
			var imgtag = document.getElementById("img");
			imgtag.title = selectedFile.name;

			reader.onload = function(event) {
				imgtag.src = event.target.result;
			};

			reader.readAsDataURL(selectedFile);
			
		}
	</script>
</body>
</html>