<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Title Page</title> <!-- Bootstrap CSS -->
			<link rel="stylesheet" type="text/css"
				href="css/bootstrap-theme.min.css">
				<link rel="stylesheet"
					href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
				<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />
				<link rel="stylesheet" href="assets/css/ace.min.css"
					class="ace-main-stylesheet" id="main-ace-style" />			
				<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
				<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
				<script src="assets/js/ace-extra.min.js"></script>
				<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
					<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
						<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
								<style type="text/css">
.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -1px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
	position: absolute;
}
.alert-success-alt { border-color: #19B99A;background: #20A286;color: #fff; }
.alert-danger-alt { border-color: #B63E5A;background: #E26868;color: #fff; }
</style>
</head>
<body class="no-skin">

	<!-- SQL statement -->
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="1234" />
	<!-- End SQL statement -->



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
		
			<c:if test="${not empty errThatBai}">
				<div class='alert alert-danger alert-dismissable'>
	            			<span class='glyphicon glyphicon-certificate'></span>
	            			<button type='button' class='close' data-dismiss='alert'
	            				aria-hidden='true'>×</button>
	            				${errThatBai}</div>
			</c:if>
			<c:if test="${not empty errThanhCong}">
				<div class='alert alert-success alert-dismissable'>
	            			<span class='glyphicon glyphicon-certificate'></span>
	            			<button type='button' class='close' data-dismiss='alert'
	            				aria-hidden='true'>×</button>
	            				${errThanhCong}</div>
			</c:if>
			<c:remove var="errThatBai" scope="session" /> 
			<c:remove var="errThanhCong" scope="session" /> 
			<div class="row"
				style="padding-top: 10px; padding-left: 30px; padding-right: 20px;">
				<div class="">
					<div id="exTab2">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#1" data-toggle="tab"><span
									class="fa fa-envelope-o" style="padding-right: 10px;"></span>Email</a>
							</li>
							<li><a href="#2" data-toggle="tab"><span
									class="fa fa-send-o" style="padding-right: 10px;"></span>SMS</a></li>
						</ul>
						<div class="tab-content col-sm-12">
							<div class="tab-pane active" id="1">
								<div class="message-container">
									<div id="id-message-new-navbar" class="message-navbar clearfix"
										style="height: 60px; border: solid 1px #a3eaf0">
										<div>
											<div class="messagebar-item-left">
												<a href="#" class="btn-back-message-list"> <i
													class="ace-icon fa fa-arrow-left bigger-110 middle blue"></i>
													<b class="middle bigger-110">Back</b>
												</a>
											</div>

											<div class="messagebar-item-right">
												<span class="inline btn-send-message">
													<button type="submit" id="btn-send"
														class="btn btn-sm btn-primary no-border btn-white btn-round">
														<span class="bigger-110">Send</span> <i
															class="ace-icon fa fa-arrow-right icon-on-right"></i>
													</button>
												</span>
											</div>
										</div>
									</div>
									<form id="id-message-form" method="post"
										action="HandleSendEmail" enctype="multipart/form-data"
										class="form-horizontal message-form border col-xs-12"
										style="border: solid 1px #a3eaf0">
										<div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-recipient">To:</label>

												<div class="col-sm-9">
													<span class="input-icon"> <input type="email"
														name="recipient" id="form-field-recipient" placeholder="" />
														<i class="ace-icon fa fa-user"></i>
													</span><a data-toggle="modal" data-target="#myModal2"><span
														class="ace-icon fa fa-list fa-fw" style="font-size:25px;"></span></a>
												</div>

											</div>

											<div class="hr hr-18 dotted"></div>

											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-subject">Subject:</label>

												<div class="col-sm-6 col-xs-12">
													<span class="input-icon block col-xs-12 no-padding">
														<input maxlength="100" type="text" class="col-xs-12"
														name="subject" id="form-field-subject"
														placeholder="Subject" /> <i
														class="ace-icon fa fa-comment-o"></i>
													</span>
												</div>
											</div>

											<div class="hr hr-18 dotted"></div>

											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right">
													<span class="inline space-24 hidden-480"></span> Message:
												</label>

												<div class="col-sm-9">
													<textarea name="message" id="input" class="form-control"
														rows="7" required="required"></textarea>
												</div>
											</div>

											<div class="hr hr-18 dotted"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-subject">Google Password:</label>

												<div class="col-sm-6 col-xs-12">
													<span class="input-icon block col-xs-12 no-padding">
														<input maxlength="100" type="password" class="col-xs-12"
														name="googlepass" id="form-field-password"
														placeholder="Password" /> <i class="ace-icon fa fa-key"></i>
													</span>
												</div>
											</div>
											<div class="form-group no-margin-bottom">


												<label class="col-sm-3 control-label no-padding-right">Attachments:</label>

												<div class="col-sm-9">
													<div id="form-attachments">
														<div class="form-group file-input-container">
															<div class="col-sm-7">
																<label class="ace-file-input width-90 inline"><input
																	type="file" name="attachment"><span
																		class="ace-file-container" data-title="Choose"><span
																			class="ace-file-name" data-title="No File ..."><i
																				class=" ace-icon fa fa-upload"></i></span></span><a class="remove"
																		href="#"><i class=" ace-icon fa fa-times"></i></a></label>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="space"></div>
										</div>
									</form>
								</div>
								<!--End message container-->
							</div>
							<div class="tab-pane" id="2">
								<form class="form-horizontal" id="smsform" action="HandleSendSMS" method="get">
									<div class="form-group">
										<label class="control-label col-sm-2" for="email">To Phone Number:</label>
										<div class="col-sm-10">
											<input type="email" class="form-control" id="PhoneNumber" name="PhoneNumber"
												placeholder="Enter phone number...">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Message</label>
										<div class="col-sm-10">
											<textarea rows="7" class="form-control" id="pwd" name="Message" id="Message"
												placeholder="Enter message..."></textarea>
										</div>
									</div>									
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" id="btn-send-sms" class="btn btn-sm btn-primary btn-white btn-round">
														<span class="bigger-110">Send SMS</span> <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
													</button>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!--end message content inner-->

		<!-- Begin SQL site -->
		<sql:query var="nienkhoa_result" sql="select * from nienkhoa"
			dataSource="${con}">
		</sql:query>
		<!-- End SQL site -->
		<!-- Modal 2-->
		<div id="myModal2" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Chọn danh sách học viên</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="input_id">Niên khóa :</label> <select
								name="MaNienKhoa" class="form-control selectpicker target"
								id="modal-slt-nienkhoa"><option value="">Please
									select another value</option>
								<c:forEach var="row" items="${nienkhoa_result.rows }">
									<option value="${row.MaNienKhoa}">${row.ThoiGian }</option>
								</c:forEach>
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
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success" id="OKbtn">Xác
							nhận</button>
						<button type="button" class="btn btn-success" id="Close"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>



	</div>
	<!--End content-->
	</div>
	<!-- /.main-container -->
	<!--[if !IE]> -->
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-tag.min.js"></script>
	<script src="assets/js/jquery.hotkeys.index.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	<!-- inline scripts related to this page -->
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
		$("#OKbtn").click(function() {
			$("#form-field-recipient").val($("#modal-slt-khoahoc").val());
			$('#Close').click();
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
		

			//check/uncheck all messages
			
			
			
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript">
	
	function validateText2(id) {
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
		function validateText(id) {
			if ($("#" + id).val() == null || $("#" + id).val() == "") {
				var span = $("#" + id).closest("span");
				span.removeClass("has-success");
				$("#glypcn" + id).remove();
				span.addClass("has-error has-feedback");
				span
						.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-remove form-control-feedback"></span>');
				return false;
			} else {
				var span = $("#" + id).closest("span");
				span.removeClass("has-error");
				span.addClass("has-success has-feedback");
				$("#glypcn" + id).remove();
				span
						.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-ok form-control-feedback"></span>');
				return true;
			}
		}
		$(document)
				.ready(
						function() {
							$("#btn-send")
									.click(
											function() {
												if (!validateText("form-field-recipient")) {
													return false;
												}
												if (!validateText("form-field-subject")) {
													return false;
												}
												if (!validateText("form-field-password")) {
													return false;
												}
												if ($("input[type='file']")
														.val() === "") {
													$("#id-message-form")
															.attr("enctype",
																	"application/x-www-form-urlencoded");
													$("#id-message-form")
															.submit();
												} else {
													$("#id-message-form")
															.submit();
												}

											});
							$("#btn-send-sms")
							.click(
									function() {
										console.log("btn-send-sms click");
										if (!validateText2("PhoneNumber")) {
											return false;
										}																
										$("#smsform").submit();

									});
							var activenode = $("a[href='static-guimail.jsp']")
									.parent();
							activenode.addClass('active');
						});
	</script>




	<!--End Script-->
</body>
</html>