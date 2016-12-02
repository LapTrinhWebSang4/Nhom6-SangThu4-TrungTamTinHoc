<%@ page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Title Page</title>

<!-- Bootstrap CSS -->
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
<link rel="stylesheet" type="text/css" href="Asset/box-github.css">



<style type="text/css">
fieldset .divider, .panel-body .divider {
	margin: 0.5em 0 0.5em 0;
	border: 0;
	height: 1px;
	width: 100%;
	display: block;
	background-color: #4f6fad;
	background-image: linear-gradient(to right, #ee9cb4, #4f6fad);
}

.col-md-3 {
	padding-left: 0px;
	padding-right: 0px;
}

.divider {
	display: block;
	border: 0;
	height: 1px;
	width: 100%;
	background-color: #f5f5f5;
	margin-left: initial;
}

li>div {
	display: inline;
}
</style>

</head>
<body class="no-skin">

	<!-- SQL statement -->
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="kien2509" />
	<!--nav-->
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<img src="Asset/header ttth.jpg" style="width: 100%; height: 120px">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>
	</div>
	<!--end nav-->











	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>
			<ul class="nav nav-list">
				<li class="active"><a href="static-dashboard.jsp"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							Dashboard </span>
				</a> <b class="arrow"></b></li>

				<li><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i> <span class="menu-text">
							Danh sách khóa học </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b> <sql:query var="result_nienkhoa"
						sql="select * from nienkhoa" dataSource="${con }" /> <c:forEach
						var="rowsss" items="${result_nienkhoa.rows }">
						<ul class="submenu nav-show">

							<li class=""><a href="#" class="dropdown-toggle"> <i
									class="menu-icon fa fa-caret-right"></i> ${rowsss.ThoiGian} <b
									class="arrow fa fa-angle-down"></b>
							</a> <b class="arrow"></b> <sql:query var="result_loaikhoahoc"
									sql="select * from loaikhoahoc where MaNienKhoa=${rowsss.MaNienKhoa}"
									dataSource="${con }" /> <c:forEach var="row_loaikhoahoc"
									items="${result_loaikhoahoc.rows }">
									<ul class="submenu nav-hide" style="display: none;">
										<li class=""><a href="#" class="dropdown-toggle"> <i
												class="menu-icon fa fa-pencil orange"></i>

												${row_loaikhoahoc.TenLoaiKhoaHoc } <b
												class="arrow fa fa-angle-down"></b>
										</a> <b class="arrow"></b> <sql:query var="result_khoahoc"
												sql="select * from khoahoc where MaLoaiKhoaHoc='${row_loaikhoahoc.MaLoaiKhoaHoc}'"
												dataSource="${con }" /> <c:forEach var="row_khoahoc"
												items="${result_khoahoc.rows }">
												<ul class="submenu">
													<li class=""><a
														href="static-chitietkhoahoc.jsp?khoahoc=${row_khoahoc.MaKhoaHoc}">
															<i class="menu-icon fa fa-plus purple"></i>
															${row_khoahoc.TenKhoaHoc }
													</a> <b class="arrow"></b></li>
												</ul>
											</c:forEach></li>
									</ul>
								</c:forEach></li>
						</ul>
					</c:forEach></li>

				<li><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-desktop"></i> <span class="menu-text">
							Danh sách học viên </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b> <sql:query var="result_nienkhoa"
						sql="select * from nienkhoa" dataSource="${con }" /> <c:forEach
						var="rowsss" items="${result_nienkhoa.rows }">
						<ul class="submenu nav-show">

							<li class=""><a href="#" class="dropdown-toggle"> <i
									class="menu-icon fa fa-caret-right"></i> ${rowsss.ThoiGian} <b
									class="arrow fa fa-angle-down"></b>
							</a> <b class="arrow"></b> <sql:query var="result_loaikhoahoc"
									sql="select * from loaikhoahoc where MaNienKhoa=${rowsss.MaNienKhoa}"
									dataSource="${con }" /> <c:forEach var="row_loaikhoahoc"
									items="${result_loaikhoahoc.rows }">
									<ul class="submenu nav-hide" style="display: none;">
										<li class=""><a href="#" class="dropdown-toggle"> <i
												class="menu-icon fa fa-pencil orange"></i>

												${row_loaikhoahoc.TenLoaiKhoaHoc } <b
												class="arrow fa fa-angle-down"></b>
										</a> <b class="arrow"></b> <sql:query var="result_khoahoc"
												sql="select * from khoahoc where MaLoaiKhoaHoc='${row_loaikhoahoc.MaLoaiKhoaHoc}'"
												dataSource="${con }" /> <c:forEach var="row_khoahoc"
												items="${result_khoahoc.rows }">
												<ul class="submenu">
													<li class=""><a
														href="static-danhsachhocvien.jsp?khoahoc=${row_khoahoc.MaKhoaHoc}">
															<i class="menu-icon fa fa-plus purple"></i>
															${row_khoahoc.TenKhoaHoc }
													</a> <b class="arrow"></b></li>
												</ul>
											</c:forEach></li>
									</ul>
								</c:forEach></li>
						</ul>
					</c:forEach></li>




				<li class=""><a href="static-guimail.jsp"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> Gửi mail </span> <b class="arrow"></b>
				</a></li>

				<li class=""><a href="static-thongtincanhan.jsp"> <i
						class="menu-icon fa fa-list-alt"></i> <span class="menu-text">
							Thông tin cá nhân </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="static-nhantin.jsp"> <i
						class="menu-icon fa fa-envelope"></i> <span class="menu-text">
							Tin nhắn </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="logout.jsp"> <i
						class="menu-icon fa fa-sign-out"></i> <span class="menu-text">
							Thoát </span>
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
				<div class="page-content">
					<div class="row">
						<div class="col-md-6">

							<form class="well form-horizontal" action=" " method="post"
								id="contact_form">
								<fieldset>

									<!-- Form Name -->
									<legend>New Semester!</legend>
									<div class="divider"></div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label">Mã Niên khóa</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-qrcode"></i></span> <input
													name="last_name" placeholder="Niên khóa"
													class="form-control" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Niên khóa</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													name="last_name" placeholder="Niên khóa"
													class="form-control" type="text">
											</div>
										</div>
									</div>
									<!-- Button -->
									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-6">
											<button type="submit" class="btn btn-warning">
												Send <span class="glyphicon glyphicon-send"></span>
											</button>
										</div>
									</div>

								</fieldset>
							</form>
							<form class="well form-horizontal" action=" " method="post"
								id="contact_form">
								<fieldset>

									<!-- Form Name -->
									<legend>Classify </legend>
									<div class="divider"></div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label">Niên khóa</label>
										<div class="col-md-6 selectContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-qrcode"></i></span> <select name="state"
													class="form-control selectpicker">
													<option value=" ">Please select semester</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Mã loại khóa học</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-barcode"></i></span> <input
													name="last_name" placeholder="Niên khóa"
													class="form-control" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Tên loại khóa
											học</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													name="last_name" placeholder="Tên loại khóa học"
													class="form-control" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-6">
											<button type="submit" class="btn btn-warning">
												Send <span class="glyphicon glyphicon-send"></span>
											</button>
										</div>
									</div>

								</fieldset>
							</form>
							<form class="well form-horizontal" action="AjaxInSert" method="post" enctype="multipart/form-data"
								id="course-form">
								<fieldset>

									<!-- Form Name -->
									<legend>New Course</legend>
									<div class="divider"></div>
									<div class="form-group">
										<label class="col-md-4 control-label">Mã niên khóa</label>
										<div class="col-md-6 selectContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-qrcode"></i></span> <select name="state"
													class="form-control selectpicker">
													<option value=" ">Please select</option>
												</select>
											</div>
										</div>
									</div>
									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label">Mã loại khóa
											học</label>
										<div class="col-md-6 selectContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-list"></i></span> <select name="MaLoaiKhoaHoc"
													class="form-control selectpicker">
													<option value="mlkh10001">mlkh10001</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Mã khóa học</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													name="MaKhoaHoc" placeholder="Tên khóa học"
													class="form-control" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Tên khóa học</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													name="TenKhoaHoc" placeholder="Tên khóa học"
													class="form-control" type="text">
											</div>
										</div>
									</div>


									<div class="form-group">
										<label class="col-md-4 control-label">Ngày khai giảng</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													name="date" placeholder="Ngày khai giảng"
													class="form-control" type="text">
											</div>
										</div>
									</div>

									<!-- Text Input -->
									<div class="form-group">
										<label class="col-md-4 control-label">Học phí</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span> <input
													name="HocPhi" placeholder="Học phí" class="form-control"
													type="text">
											</div>
										</div>
									</div>
									<!-- TextArea -->
									<div class="form-group">
										<label class="col-md-4 control-label">Giới thiệu khóa
											học</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-pencil"></i></span>
												<textarea class="form-control" name="GioiThieu" rows="6"
													placeholder="Giới thiệu"></textarea>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label">Attachment</label>
										<div class="col-md-6 inputGroupContainer">
											<div class="input-group">
												<label class="input-group-btn"> <span
													class="btn glyphicon glyphicon-open"><input
														type="file" style="display: none;" name="attachment">
												</span>
												</label> <input type="text" class="form-control" name="filetext" id="filetext" readonly>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-6">
											<button type="submit" class="btn btn-warning" id="course-submit">
												Send <span class="glyphicon glyphicon-send"></span>
											</button>
										</div>
									</div>
								</fieldset>
							</form>

							<!-- /.container -->

						</div>
						<div class="col-md-3" style="border-radius: 2px;" ng-app="myApp">
							<div class="boxed-group flush repos user-repos js-repo-filter"
								id="your_repos" role="navigation">
								<div class="boxed-group-action">
									<a href="/new" class="btn btn-sm btn-success"> New
										repository </a>
								</div>
								<h3>
									Your repositories <span class="counter">5</span>
								</h3>
								<div class="boxed-group-inner">
									<div class="filter-repos filter-bar" role="search">
										<input type="text" id="your-repos-filter"
											class="form-control input-sm input-block js-filterable-field"
											placeholder="Find a repository…"
											aria-label="Find a repository…" tabindex="2"
											ng-model="khoahoc">
										<ul class="repo-filterer">
											<li><button type="button" onclick="OpenTab(id)"
													id="_nienkhoa"
													class="btn-link repo-filter text-small text-gray js-repo-filter-tab filter-selected">Niên
													khóa</button></li>
											<li><button type="button" onclick="OpenTab(id)"
													id="_loaikhoahoc"
													class="btn-link repo-filter text-small text-gray js-repo-filter-tab">Loại
													khóa học</button></li>
											<li><button type="button" onclick="OpenTab(id)"
													id="_khoahoc"
													class="btn-link repo-filter text-small text-gray js-repo-filter-tab">Khóa
													học</button></li>
											<li><button type="button" onclick="OpenTab(id)"
													id="_lophoc"
													class="btn-link repo-filter text-small text-gray js-repo-filter-tab">Lớp
													học</button></li>
										</ul>
									</div>
									<ul id="repo_listing_khoahoc"
										class="mini-repo-list js-repo-list"
										ng-controller="myController">
										<li class="public source" ng-repeat="x in names"><a
											class="mini-repo-list-item css-truncate" href=""> <svg
													aria-hidden="true" class="octicon octicon-repo repo-icon"
													height="16" version="1.1" viewBox="0 0 12 16" width="12">
												<path
													d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"></path></svg>
												<span class="repo-and-owner css-truncate-target"> <span
													class="repo">{{x.TenKhoaHoc}}</span>
											</span>
										</a></li>
									</ul>
									<ul id="repo_listing_lophoc"
										class="mini-repo-list js-repo-list"
										ng-controller="myController_lophoc">
										<li class="public source" ng-repeat="x in names"><a
											class="mini-repo-list-item css-truncate" href=""> <svg
													aria-hidden="true" class="octicon octicon-repo repo-icon"
													height="16" version="1.1" viewBox="0 0 12 16" width="12">
												<path
													d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"></path></svg>
												<span class="repo-and-owner css-truncate-target"> <span
													class="repo">{{x.MaLop}}</span>
											</span>
										</a></li>
									</ul>
									<ul id="repo_listing_loaikhoahoc"
										class="mini-repo-list js-repo-list"
										ng-controller="myController_loaikhoahoc">
										<li class="public source" ng-repeat="x in names"><a
											class="mini-repo-list-item css-truncate" href=""> <svg
													aria-hidden="true" class="octicon octicon-repo repo-icon"
													height="16" version="1.1" viewBox="0 0 12 16" width="12">
												<path
													d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"></path></svg>
												<span class="repo-and-owner css-truncate-target"> <span
													class="repo">{{x.TenLoaiKhoaHoc}}</span>
											</span>
										</a></li>
									</ul>
									<ul id="repo_listing_nienkhoa"
										class="mini-repo-list js-repo-list"
										ng-controller="myController_nienkhoa">
										<li class="public source" ng-repeat="x in names"><a
											class="mini-repo-list-item css-truncate" href=""> <svg
													aria-hidden="true" class="octicon octicon-repo repo-icon"
													height="16" version="1.1" viewBox="0 0 12 16" width="12">
												<path
													d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"></path></svg>
												<span class="repo-and-owner css-truncate-target"> <span
													class="repo">{{x.ThoiGian}}</span>
											</span>
										</a></li>
									</ul>

								</div>
							</div>


						</div>

					</div>
				</div>
			</div>
			<!-- End page-content -->
		</div>
		<!-- end main-content-inner -->
	</div>
	<!--End content-->
	</div>
	<!-- /.main-container -->



	<!--Script-->
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script type="text/javascript" src="js/angular.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
	
	<script type="text/javascript">
	$("#course-submit").click(function(){
		$("#course-form").submit();
	});
	$(document).ready(function(){
	      var date_input=$('input[name="date"]'); //our date input has the name "date"
	      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
	      var options={
	        format: 'yyyy-mm-dd',
	        container: container,
	        todayHighlight: true,
	        autoclose: true,
	      };
	      date_input.datepicker(options);
	    })
	$(document).on('change', ':file', function() {
	    var input = $(this),
	        numFiles = input.get(0).files ? input.get(0).files.length : 1,
	        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
	        console.log(label);
	        $("#filetext").val(label);
	    input.trigger('fileselect', [numFiles, label]);
	});
	
		OpenTab("_nienkhoa");
		
		
		function OpenTab(id){
			$(".mini-repo-list").addClass("hide");
			var x = $("#"+"repo_listing"+id);
			x.removeClass("hide");
		}
		$(".btn-link").click(function(){
			$(".btn-link").removeClass("filter-selected");
			$(this).addClass("filter-selected");	
		});
		
		
		//Angular section
		var app = angular.module('myApp',[]);
			app.controller('myController',function($scope,$http){
				$http.get("FilterBox")
				.success(function(data){
					$scope.names=data;
				}).error(function(){
					alert("unexpected error");
				});
			});
			app.controller('myController_nienkhoa',function($scope,$http){
				$http.get("FilterBox_NienKhoa")
				.success(function(data){
					$scope.names=data;
				}).error(function(){
					alert("unexpected error");
				});
			});
			app.controller('myController_loaikhoahoc',function($scope,$http){
				$http.get("FilterBox_LoaiKhoaHoc")
				.success(function(data){
					$scope.names=data;
				}).error(function(){
					alert("unexpected error");
				});
			});
			app.controller('myController_lophoc',function($scope,$http){
				$http.get("FilterBox_LopHoc")
				.success(function(data){
					$scope.names=data;
				}).error(function(){
					alert("unexpected error");
				});
			});
	</script>

	<!--End Script-->
</body>
</html>