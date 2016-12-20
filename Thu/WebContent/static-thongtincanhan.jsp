<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="Model.TaiKhoan"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Thong tin ca nhan</title> <!-- Bootstrap CSS -->
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
.hide {
	display: none;
}
</style>
</head>
<body class="no-skin">
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


	<%
		session = request.getSession(false);
		TaiKhoan tk = (TaiKhoan) session.getAttribute("taikhoan");
		int year = Calendar.getInstance().get(Calendar.YEAR);
		String TaiKhoan = tk.getTaikhoan();
		String TenThanhVien = tk.getTenThanhVien();
		String DiaChi = tk.getDiaChi();
		String GioiThieu = tk.getGioiThieu();
		java.sql.Date NgSinh = tk.getNgaySinh();
		int SoCMND = tk.getSoCMND();
		int Sodt = tk.getSodt();
		String Email = tk.getEmail();
	%>

	<jsp:include page="Sidebar.jsp" />
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="1234" />
	<sql:query var="result_taikhoan" dataSource="${con }">select * from taikhoan where Taikhoan='<%=TaiKhoan%>'</sql:query>






	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="hr dotted"></div>
						<c:forEach var="row" items="${result_taikhoan.rows }">
							<div class="">
								<div id="user-profile-1" class="user-profile row">
									<div class="col-xs-12 col-sm-3 center">
										<div>
											<span class="profile-picture"> <img id="avatar"
												class="editable img-responsive editable-click editable-empty"
												alt="Alex's Avatar"
												src="assets/images/avatars/profile-pic.jpg"></img>
											</span>

											<div class="space-4"></div>

											<div
												class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
												<div class="inline position-relative">
													<a href="#" class="user-title-label dropdown-toggle"
														data-toggle="dropdown"> <i
														class="ace-icon fa fa-circle light-green"></i> &nbsp; <span
														class="white">${row.TenThanhVien }</span>
													</a>

													<ul
														class="align-left dropdown-menu dropdown-caret dropdown-lighter">
														<li class="dropdown-header">Change Status</li>

														<li><a href="#"> <i
																class="ace-icon fa fa-circle green"></i> &nbsp; <span
																class="green">Available</span>
														</a></li>

														<li><a href="#"> <i
																class="ace-icon fa fa-circle red"></i> &nbsp; <span
																class="red">Busy</span>
														</a></li>

														<li><a href="#"> <i
																class="ace-icon fa fa-circle grey"></i> &nbsp; <span
																class="grey">Invisible</span>
														</a></li>
													</ul>
												</div>
											</div>


										</div>

										<div class="space-6"></div>

										<div class="profile-contact-info">
											<div class="profile-contact-links align-centers">
												<a href="#" class="btn btn-link"> <i
													class="ace-icon fa fa-globe bigger-125 blue"></i> Hồ sơ cá
													nhân
												</a>
											</div>

											<div class="space-6"></div>

											<div class="profile-social-links align-center">
												<a href="#" class="tooltip-info" title=""
													data-original-title="Visit my Facebook"> <i
													class="middle ace-icon fa fa-facebook-square fa-2x blue"></i>
												</a> <a href="#" class="tooltip-info" title=""
													data-original-title="Visit my Twitter"> <i
													class="middle ace-icon fa fa-twitter-square fa-2x light-blue"></i>
												</a> <a href="#" class="tooltip-error" title=""
													data-original-title="Visit my Pinterest"> <i
													class="middle ace-icon fa fa-pinterest-square fa-2x red"></i>
												</a>
											</div>
										</div>

										<div class="hr hr12 dotted"></div>

										<div class="clearfix">
											<h4 style="">About Me</h4>
											<%
												if (GioiThieu == null) {
														out.println("<p><a id='btn-intro' style='cursor:pointer'>Introduce your self</a></p>");
													} else {
											%><p>${row.GioiThieu}</p>
											<%
												}
											%>
										</div>

										<div class="hr hr16 dotted"></div>

										<div class="hr hr16 dotted"></div>
									</div>

									<div class="col-xs-12 col-sm-9">


										<div class="space-12"></div>

										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Họ và tên:</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username">${row.TenThanhVien }</span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Địa chỉ</div>

												<div class="profile-info-value">
													<i class="fa fa-map-marker light-orange bigger-110"></i> <span
														class="editable editable-click" id="country">
														${row.DiaChi } </span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Tuổi</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age"></span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Số CMND</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup">${row.SoCMND }
													</span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Ngày sinh</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup">${row.NgaySinh }
													</span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Số điện thoại</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup">
														${row.Sodt } </span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Email</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup">${row.Email }
													</span>
												</div>
											</div>
										</div>

										<div class="space-20"></div>
										<div class="center">
											<button class="btn btn-sm btn-success" id="btnchangepassword">
												<i class="fa fa-pencil"></i> <span
													class="bigger-110 no-text-shadow">Đổi mật khẩu</span>
											</button>
											<button class="btn btn-sm btn-success" id="btnupdate">
												<i class="fa fa-pencil"></i> <span
													class="bigger-110 no-text-shadow">Cập nhật</span>
											</button>

										</div>
										<div class="hr hr2 hr-double"></div>

										<div class="space-6"></div>

										<form action="updateInfo" method="post" id="capnhatform"
											class="hide">
											<input type="hidden" value="<%=TaiKhoan%>" name="TaiKhoan" />
											<div class="col-xs-12 col-sm-12" id="capnhat">
												<div class="widget-box">
													<div class="widget-header">
														<h4 class="widget-title">Cập nhật thông tin cá nhân</h4>

														<div class="widget-toolbar">
															<a class=" btn-bold" style="cursor: pointer;"
																id="savebtn"> <i
																class="ace-icon fa fa-floppy-o bigger-120 blue"></i> Lưu
															</a> <a href="#" data-action="collapse"> <i
																class="ace-icon fa fa-chevron-up"></i>
															</a> <a href="#" data-action="close"> <i
																class="ace-icon fa fa-times"></i>
															</a>
														</div>
													</div>

													<div class="widget-body">
														<div class="widget-main">
															<div>
																<label for="form-field-8">Họ và tên</label> <input
																	type="text" value="${row.TenThanhVien }"
																	class="form-control" id="form-field-8"
																	name="TenThanhVien"></input>
															</div>

															<hr>

																<div>
																	<label for="form-field-9">Địa chỉ</label> <input
																		type="text" value="${row.DiaChi }"
																		class="form-control" id="form-field-8" name="DiaChi"></input>

																</div>

																<hr>

																	<div>
																		<label for="form-field-11">Số CMND</label> <input
																			type="text" value="${row.SoCMND }"
																			class="form-control" id="form-field-8" name="SoCMND"></input>
																	</div>
																	<hr>

																		<div>
																			<label for="form-field-11">Ngày sinh</label> <input
																				type="text" value="${row.NgaySinh }"
																				class="form-control" id="form-field-8" name="NgSinh"></input>
																		</div>
																		<hr>

																			<div>
																				<label for="form-field-11">Số điện thoại</label> <input
																					type="text" value="${row.Sodt }"
																					class="form-control" id="form-field-8" name="Sodt"></input>
																			</div>
																			<hr>

																				<div>
																					<label for="form-field-11">Email</label> <input
																						type="text" value="${row.Email }"
																						class="form-control" id="form-field-8"
																						name="Email"></input>
																				</div>
																				<hr>

																					<div>
																						<label for="form-field-11">Giới thiệu</label>
																						<textarea class="form-control" id="form-field-8"
																							name="GioiThieu">${row.GioiThieu}</textarea>
																					</div>
														</div>
													</div>
												</div>
											</div>
										</form>



										<form method="post" action="changePassword"
											id="doimatkhauform" class="hide">
											<input type="hidden" value="${row.Taikhoan}" name="TaiKhoan"></input>
											<div class="col-xs-12 col-sm-12" id="doimatkhau">
												<div class="widget-box">
													<div class="widget-header">
														<h4 class="widget-title">Change Password</h4>

														<div class="widget-toolbar">
															<a class=" btn-bold" style="cursor: pointer;"
																id="savebtn-pass"> <i
																class="ace-icon fa fa-floppy-o bigger-120 blue"></i> Lưu
															</a> <a href="#" data-action="collapse"> <i
																class="ace-icon fa fa-chevron-up"></i>
															</a> <a href="#" data-action="close"> <i
																class="ace-icon fa fa-times"></i>
															</a>
														</div>
													</div>

													<div class="widget-body">
														<div class="widget-main">
															<div>
																<label for="form-field-8">Mật khẩu cũ</label> <input
																	type="password" name="oldpass" class="form-control"
																	id="form-field-8"></input>
															</div>

															<hr>

																<div>
																	<label for="form-field-9">Mật khẩu mới</label> <input
																		type="password" name="newpass" class="form-control"
																		id="form-field-8"></input>
																</div>
														</div>
													</div>
												</div>
											</div>
										</form>

									</div>
								</div>
							</div>
						</c:forEach>


						<!--End PAGE CONTENT-->
					</div>
					<!-- /.row -->
				</div>
			</div>
		</div>



	</div>
	<!-- /.main-container -->



	<!--Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
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
		$(document).ready(function() {
			var activenode = $("a[href='static-thongtincanhan.jsp']").parent();
			activenode.addClass('active');
		});
		$(document).ready(
				function() {
					var date_input = $('input[name="NgSinh"]'); //our date input has the name "date"
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
		$("#savebtn").click(function() {
			$("#capnhatform").submit();
		});
		$("#savebtn-pass").click(function() {
			$("#doimatkhauform").submit();
		});
		$("#btnupdate").click(function() {
			introduceclick();
		});
		$("#btnchangepassword").click(function() {
			if ($("#capnhatform").attr("class") == "hide") {
				console.log("btnchangepasclick");
				$("#doimatkhauform").toggleClass("hide");
			} else {
				$("#doimatkhauform").addClass("hide");
			}
		});
		$("#btn-intro").click(function() {
			introduceclick();

		});
		function introduceclick() {
			if ($("#doimatkhauform").attr("class") == "hide") {
				console.log("updateclick");
				$("#capnhatform").toggleClass("hide");
			} else {
				$("#capnhatform").addClass("hide");
			}
		}
	</script>


	<!--End Script-->
</body>
</html>