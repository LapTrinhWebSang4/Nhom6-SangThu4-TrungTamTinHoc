<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Title Page</title> <!-- Bootstrap CSS -->
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

#snackbar {
	visibility: hidden; /* Hidden by default. Visible on click */
	min-width: 250px; /* Set a default minimum width */
	margin-left: -125px; /* Divide value of min-width by 2 */
	background-color: #333; /* Black background color */
	color: #fff; /* White text color */
	text-align: center; /* Centered text */
	border-radius: 2px; /* Rounded borders */
	padding: 16px; /* Padding */
	position: fixed; /* Sit on top of the screen */
	z-index: 1; /* Add a z-index if needed */
	left: 50%; /* Center the snackbar */
	bottom: 30px; /* 30px from the bottom */
}

/* Show the snackbar when clicking on a button (class added with JavaScript) */
#snackbar.show {
	visibility: visible; /* Show the snackbar */
	/* Add animation: Take 0.5 seconds to fade in and out the snackbar. 
However, delay the fade out process for 2.5 seconds */
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

/* Animations to fade the snackbar in and out */
@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
.alert-success-alt { border-color: #19B99A;background: #20A286;color: #fff; }
.alert-danger-alt { border-color: #B63E5A;background: #E26868;color: #fff; }
.glyphicon { margin-right:10px; }
</style>
</head>
<body class="no-skin" ng-app="myApp">
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




	<jsp:include page="Sidebar.jsp" />






	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
			
			<c:if test="${errThatBai != null}">
				<div class='alert alert-danger-alt alert-dismissable'>
	            			<span class='glyphicon glyphicon-certificate'></span>
	            			<button type='button' class='close' data-dismiss='alert'
	            				aria-hidden='true'>×</button>
	            				${errThatBai}</div>
			</c:if>
			<c:if test="${errThanhCong != null}">
				<div class='alert alert-success-alt alert-dismissable'>
	            			<span class='glyphicon glyphicon-certificate'></span>
	            			<button type='button' class='close' data-dismiss='alert'
	            				aria-hidden='true'>×</button>
	            				${errThanhCong}</div>
			</c:if>
			<c:remove var="errThatBai" scope="session" /> 
			<c:remove var="errThanhCong" scope="session" /> 

				<div class="row">
					<div class="col-md-6">

						<form class="well form-horizontal" action="InsertNienKhoa"
							method="post" id="semester-form">
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
												name="MaNienKhoa" placeholder="Niên khóa"
												class="form-control" type="text">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">Thời gian</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span> <input
												name="ThoiGian" placeholder="Niên khóa" class="form-control"
												type="text">
										</div>
									</div>
								</div>
								<!-- Button -->
								<div class="form-group">
									<label class="col-md-4 control-label"></label>
									<div class="col-md-6">
										<button type="submit" class="btn btn-warning"
											id="semester-submit">
											Send <span class="glyphicon glyphicon-send"></span>
										</button>
									</div>
								</div>

							</fieldset>
						</form>
						<form class="well form-horizontal" action="InsertLoaiKhoaHoc"
							method="post" id="classify-form"
							ng-controller="myController_nienkhoa">
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
												class="glyphicon glyphicon-qrcode"></i></span> <select
												name="MaNienKhoa" class="form-control selectpicker">
												<option value="{{x.MaNienKhoa}}" ng-repeat="x in names">{{x.ThoiGian}}</option>
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
												name="MaLoaiKhoaHoc" placeholder="Niên khóa"
												class="form-control" type="text">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">Tên loại khóa học</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span> <input
												name="TenLoaiKhoaHoc" placeholder="Tên loại khóa học"
												class="form-control" type="text">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"></label>
									<div class="col-md-6">
										<button type="submit" class="btn btn-warning"
											id="classify-submit">
											Send <span class="glyphicon glyphicon-send"></span>
										</button>
									</div>
								</div>

							</fieldset>
						</form>
						<form class="well form-horizontal" action="AjaxInSert"
							method="post" enctype="multipart/form-data" id="course-form"
							ng-controller="myController_nienkhoa">
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
												id="manienkhoa" class="form-control selectpicker ">
												<option value="{{x.MaNienKhoa}}" ng-repeat="x in names">{{x.ThoiGian}}</option>

											</select>
										</div>
									</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
									<label class="col-md-4 control-label">Mã loại khóa học</label>
									<div class="col-md-6 selectContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-list"></i></span> <select
												name="MaLoaiKhoaHoc"
												class="form-control selectpicker target"
												id="slt-loaikhoahoc">
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
												class="glyphicon glyphicon-calendar"></i></span> <input name="date"
												placeholder="Ngày khai giảng" class="form-control"
												type="text">
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
													type="file" style="display: none;" name="attachment"></span>
											</label> <input type="text" class="form-control" name="filetext"
												id="filetext" readonly>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"></label>
									<div class="col-md-6">
										<button type="submit" class="btn btn-warning"
											id="course-submit">
											Send <span class="glyphicon glyphicon-send"></span>
										</button>
									</div>
								</div>
							</fieldset>
						</form>

						<!-- /.container -->

					</div>
					<div class="col-md-3" style="border-radius: 2px;">
						<div class="boxed-group flush repos user-repos js-repo-filter"
							id="your_repos" role="navigation">
							<div class="boxed-group-action">
								<a class="btn btn-sm btn-success" data-toggle="modal"
									data-target="#myModal1"> Chế độ miễn giảm </a>
							</div>
							<h3>
								 Search box
							</h3>
							<div class="boxed-group-inner">
								<div class="filter-repos filter-bar" role="search">
									<input type="text" id="your-repos-filter"
										class="form-control input-sm input-block js-filterable-field"
										placeholder="Find something" aria-label="Find something…"
										ng-model="search" tabindex="2">
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
									<li class="public source"
										ng-repeat="x in names | filter:search"><a
										class="mini-repo-list-item css-truncate"
										href="static-chitietkhoahoc.jsp?khoahoc={{x.MaKhoaHoc}}">
											<svg aria-hidden="true"
												class="octicon octicon-repo repo-icon" height="16"
												version="1.1" viewBox="0 0 12 16" width="12"> <path
												d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"></path></svg>
											<span class="repo-and-owner css-truncate-target"> <span
												class="repo">{{x.TenKhoaHoc}}</span>
										</span>
									</a></li>
								</ul>
								<ul id="repo_listing_lophoc" class="mini-repo-list js-repo-list"
									ng-controller="myController_lophoc">
									<li class="public source" ng-repeat="x in names |filter:search" ><a
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
									<li class="public source" ng-repeat="x in names |filter:search"><a
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
									<li class="public source" ng-repeat="x in names |filter:search"><a
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
	</div>


	</div>
	<!-- /.main-container -->
	<form action="insertMienGiam" method="post">
		<div class="modal fade" id="myModal1" role="dialog"
			ng-controller="myController_nienkhoa">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Chế độ miễn giảm</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="input_id">Mã miễn giảm :</label> <input type="text"
								name="MaMienGiam" id="input_tenkh" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="input_id">Đối tượng :</label> <input type="text"
								name="DoiTuong" id="input_textarea" class="form-control"></input>
						</div>
						<div class="form-group">
							<label for="input_id">Tiền giảm(%)</label> <input type="text"
								name="TienGiam" id="input_cdmg" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="input_id">Mô tả :</label>
							<textarea name="MoTa" id="input_nkg" rows="3"
								class="form-control " value="">
							</textarea>
						</div>
						<div class="form-group">
							<label for="input_id">Niên khóa :</label> <select
								name="MaNienKhoa" class="form-control selectpicker target"
								id="modal-slt-nienkhoa"><option value="">Please
									select another value</option>
								<option ng-repeat="x in names" value="{{x.MaNienKhoa}}">{{x.ThoiGian}}</option>
							</select>
						</div>
						<div class="form-group">
							<label for="input_id">Loại khóa học :</label> <select
								name="MaLoaiKhoaHoc" class="form-control selectpicker target"
								id="modal-slt-loaikhoahoc"><option value="">Please
									select another value</option>
							</select>
						</div>
						<div class="form-group">
							<label for="input_id">Mã khóa học :</label> <select
								name="MaKhoaHoc" class="form-control selectpicker target"
								id="modal-slt-khoahoc"><option value="">Please
									select another value</option>
							</select>
						</div>
						<div class="modal-footer">
							<input type="submit" value="Thêm" id="modal-submit"
								class="btn btn-danger"></input>
						</div>
					</div>

				</div>

			</div>
	</form>




	<!--Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript">
		
		function validateText(id) {
			if ($("#" + id).val() == null || $("#" + id).val() == "") {
				var div = $("#" + id).closest("div");
				div.removeClass("has-success");
				$("#glypcn" + id).remove();
				div.addClass("has-error has-feedback");
				div
						.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-remove form-control-feedback"></span>');
				return false;
			} else {
				var div = $("#" + id).closest("div");
				div.removeClass("has-error");
				div.addClass("has-success has-feedback");
				$("#glypcn" + id).remove();
				div
						.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-ok form-control-feedback"></span>');
				return true;
			}
		}
		$(document).ready(function() {
			$("#button-send").click(function() {
				if (!validateText("tieude")) {
					return false;
				}
				if (!validateText("nguoinhan")) {
					return false;
				}

			});
			var activenode = $("a[href='QuanLyKhoaHoc.jsp']").parent();
			activenode.addClass('active');
		});
	</script>
	
	<script src="js/bootstrap.min.js"></script>
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script scr="js/jquery.min.js"></script>
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	<script type="text/javascript" src="js/angular.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
		
	<script type="text/javascript">
	
	$("input#SearchBox").autocomplete(
			{
				select : function(event, ui) {
					$("input#SearchBox").val(ui.item.value);
				},
				width : 300,
				max : 10,
				delay : 100,
				minLength : 1,
				autoFocus : true,
				cacheLength : 1,
				scroll : true,
				highlight : false,
				source : function(request, response) {
					$.ajax({
						type : "GET",
						url : "SearchCourse",
						data : request,
						contentType : 'application/json; charset=utf-8',
						dataType : 'json',
						success : function(data) {
							console.log(data);
							response(data);

						},
						error : function(xhr, status, err) {
							alert('Error :' + err + ' status ' + status
									+ ' xhr ' + xhr);
						}
					});
				},
			});	
		$("#course-submit").click(function() {
			$("#course-form").submit();
		});
		$("#semester-submit").click(function() {
			$("#semester-form").submit();
		});
		$(document).ready(
				function() {
					var date_input = $('input[name="date"]'); //our date input has the name "date"
					var container = $('.bootstrap-iso form').length > 0 ? $(
							'.bootstrap-iso form').parent() : "body";
					var options = {
						format : 'yyyy-mm-dd',
						container : container,
						todayHighlight : true,
						autoclose : true,
					};
					date_input.datepicker(options);
				});
		$("#manienkhoa").change(
				function() {
					var value = $('#manienkhoa option:selected').val();
					console.log(value);
					$.ajax({
						type : 'get',
						dataType : "json",
						url : 'GetDataForDropDown',
						data : {
							manienkhoa : value
						},
						success : function(data) {
							$("#slt-loaikhoahoc").empty();
							for (var i = 0; i < data.length; i++) {
								$("#slt-loaikhoahoc").append(
										$("<option></option>").val(
												data[i].MaLoaiKhoaHoc).html(
												data[i].TenLoaiKhoaHoc));
							}
						},
						error : function() {
							alert('k co du lieu');
						}
					});
				});
		$("#modal-slt-nienkhoa").change(
				function() {
					var value = $('#modal-slt-nienkhoa option:selected').val();
					console.log(value);
					$.ajax({
						type : 'get',
						dataType : "json",
						url : 'GetDataForDropDown',
						data : {
							manienkhoa : value
						},
						success : function(data) {
							$("#modal-slt-loaikhoahoc").empty();
							$("#modal-slt-loaikhoahoc").append(
									$("<option></option>").html(
											"Please select value"));
							for (var i = 0; i < data.length; i++) {
								$("#modal-slt-loaikhoahoc").append(
										$("<option></option>").val(
												data[i].MaLoaiKhoaHoc).html(
												data[i].TenLoaiKhoaHoc));
							}
						},
						error : function() {
							alert('k co du lieu');
						}
					});
				});
		$("#modal-slt-loaikhoahoc").change(
				function() {
					var value = $('#modal-slt-loaikhoahoc option:selected')
							.val();
					console.log(value);
					$.ajax({
						type : 'get',
						dataType : "json",
						url : 'GetDataForDropDownKhoaHoc',
						data : {
							MaLoaiKhoaHoc : value
						},
						success : function(data) {
							$("#modal-slt-khoahoc").empty();
							$("#modal-slt-khoahoc").append(
									$("<option></option>").html(
											"Please select value"));
							for (var i = 0; i < data.length; i++) {
								$("#modal-slt-khoahoc").append(
										$("<option></option>").val(
												data[i].MaKhoaHoc).html(
												data[i].TenKhoaHoc));
							}
						},
						error : function() {
							alert('k co du lieu');
						}
					});
				});
		$(document).on(
				'change',
				':file',
				function() {
					var input = $(this), numFiles = input.get(0).files ? input
							.get(0).files.length : 1, label = input.val()
							.replace(/\\/g, '/').replace(/.*\//, '');
					console.log(label);
					$("#filetext").val(label);
					input.trigger('fileselect', [ numFiles, label ]);
				});

		OpenTab("_nienkhoa");

		function OpenTab(id) {
			$(".mini-repo-list").addClass("hide");
			var x = $("#" + "repo_listing" + id);
			x.removeClass("hide");
		}
		$(".btn-link").click(function() {
			$(".btn-link").removeClass("filter-selected");
			$(this).addClass("filter-selected");
		});

		//Angular section
		var app = angular.module('myApp', []);
		app.controller('myController', function($scope, $http) {
			$http.get("FilterBox").success(function(data) {
				$scope.names = data;
			}).error(function() {
				alert("unexpected error");
			});
		});
		app.controller('myController_nienkhoa', function($scope, $http) {
			$http.get("FilterBox_NienKhoa").success(function(data) {
				$scope.names = data;
			}).error(function() {
				alert("unexpected error");
			});
		});
		app.controller('myController_loaikhoahoc', function($scope, $http) {
			$http.get("FilterBox_LoaiKhoaHoc").success(function(data) {
				$scope.names = data;
			}).error(function() {
				alert("unexpected error");
			});
		});
		app.controller('myController_lophoc', function($scope, $http) {
			$http.get("FilterBox_LopHoc").success(function(data) {
				$scope.names = data;
			}).error(function() {
				alert("unexpected error");
			});
		});
		
	</script>
	
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
		  <script>tinymce.init({ 
	  			selector: "textarea",
	  			plugins: ["link textcolor paste"],
	  		  menubar: "insert edit",
	  		  toolbar: ["link forecolor backcolor autolink paste alignleft aligncenter alignright"],
	  		default_link_target: "_blank"
	  			});
	  		</script>
	<!--End Script-->
</body>
</html>