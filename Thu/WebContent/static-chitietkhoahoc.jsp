<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
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
						<link rel="stylesheet" type="text/css"
							href="css/bootstrap-theme.css">
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

h2 {
	color: #669fca
}

ul {
	list-style-type: none;
}

#leftcolumn, #rightcolumn {
	border: 1px solid white;
	float: left;
}

a {
	color: #0254EB
}

a:visited {
	color: #0254EB
}

a.morelink {
	text-decoration: none;
	outline: none;
}

.morecontent span {
	display: none;
}

.comment {
	background-color: #f0f0f0;
	margin: 10px;
}
</style>
</head>
<body class="no-skin">
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="1234" />
	<!--nav-->
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div>
			<img src="Asset/header ttth.jpg" style="width: 100%; height: 120px">
		</div>
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
			<!--Region Giới thiệu -->
			<sql:query var="result_khoahoc"
				sql="select * from khoahoc where MaKhoaHoc ='${param.khoahoc}'"
				dataSource="${con}" />
			<c:forEach var="row_khoahoc" items="${result_khoahoc.rows }">
				<div class="row" style="margin-left: 1%; margin-top: 1%">
					<div class="col-sm-12">
						<div class="widget-box">
							<div class="widget-header">
								<h4 class="widget-title lighter smaller">
									<i></i>
									<h4 class="text-center">Giới thiệu khóa học</h4>
									<i></i>
								</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main no-padding">
									<div class="jumbotron">
										<div class="row">
											<div id="" class="col-md-6">
												<button onclick="DownloadAttach('${row_khoahoc.url}')">
													<img class="img-responsive img-thumbnail" style="width:200%;height:100%"
														src="${pageContext.servletContext.contextPath}/RetrieveImage?khoahoc=${row_khoahoc.MaKhoaHoc}"></img>
												</button>
												<c:if test="${row_khoahoc.url!=null}">
													<div><span class="fa fa-folder fa-2x fa-fw"><a href="${pageContext.servletContext.contextPath}/DownloadFile?filename=${row_khoahoc.url}">${row_khoahoc.url }</a></span></div>
												</c:if>
												<c:if test="${row_khoahoc.url==null}">
													<div><span class="fa fa-folder fa-2x fa-fw"></span> <span style="font-size:18px">No attachment for this course</span></div>
												</c:if>
											</div>
											<div id="rightcolumn" class="col-md-6">
												<h2>Giới Thiệu</h2>
												<p class="comment more">${row_khoahoc.GioiThieu}</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="khoa-hoc-1" align="center"
													style="width: 100%; height: 100%" id="manhinhchinh1">
													<div>

														<h2 style="padding-left: 10px;">${row_khoahoc.TenKhoaHoc}</h2>
														<img src="Asset/ngoisao_cam.png"></img>
														<div>
															<span class="glyphicon glyphicon-calendar"
																style="color: #669fca; font-size: 20px; padding-left: 10px;"></span>
															<h3 style="display: inline; color: #669fca;">Ngày
																khai giảng</h3>
															<span
																style="display: block; font-size: 20px; margin-left: 5px; margin-top: 5px;">${row_khoahoc.NgayKhaiGiang}</span>
														</div>
														<sql:query var="result_miengiam"
															sql="select * from miengiam where MaKhoaHoc='${param.khoahoc }'"
															dataSource="${con}" />
														<h2 style="padding-left: 10px;">Chế độ miễn giảm</h2>
														<ul>
															<c:forEach var="row_miengiam"
																items="${result_miengiam.rows }">
																<li><fmt:formatNumber type="percent" 
           								 maxIntegerDigits="3" value="${row_miengiam.TienGiam}" /> cho
																	${row_miengiam.DoiTuong}</li>
																
															</c:forEach>
														</ul>

														<div style="padding-left: 10px;">
															<h2>Lịch học</h2>
															<sql:query var="result_lichhoc"
																sql="select * from lophoc where MaKhoa='${param.khoahoc }'"
																dataSource="${con}" />
															<ul>
																<c:forEach var="row_lichhoc"
																	items="${result_lichhoc.rows}">
																	<li>${row_lichhoc.MaLop}:${row_lichhoc.LichHoc}</li>
																</c:forEach>
															</ul>
														</div>
													</div>
													<div align="center">
														<button type="button" class="btn btn-primary">
															<span class="glyphicon glyphicon-pencil"
																data-toggle="modal" data-target="#myModal1"></span> Sửa
														</button>
														<button type="button" class="btn btn-primary">
															<span class="glyphicon glyphicon-trash"
																data-toggle="modal" data-target="#myModal3"></span> Xóa
														</button>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
							<!--end widget body-->
						</div>
						<!--end widget box-->
					</div>
					<!--end col md 6-->
					<div class="col-md-6"></div>
					<!--end col md 6-->
				</div>
				<!--End row-->

			</c:forEach>




		</div>
		<!--End main content inner-->


	</div>
	<!--End content-->

	</div>
	<!-- /.main-container -->



	<!--Modal1-->
	<form action="updateKhoaHoc" method="post"
		enctype="multipart/form-data">
		<c:forEach var="row" items="${result_khoahoc.rows}">

			<div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Sửa khóa học</h4>
						</div>
						<div class="modal-body">
							<form id="sua_form" method="post" action="" role="form">
								<div class="form-group">
									<label for="input_id">Khóa học ID :</label> <input type="text"
										name="MaKhoaHoc" id="input_id" class="form-control"
										value="${row.MaKhoaHoc}">
								</div>
								<div class="form-group">
									<label for="input_id">Tên khóa học :</label> <input type="text"
										name="TenKhoaHoc" id="input_tenkh" class="form-control"
										value="${row.TenKhoaHoc }">
								</div>
								<div class="form-group">
									<label for="input_id">Giới thiệu :</label>
									<textarea name="GioiThieu" id="input_textarea"
										class="form-control" rows="3">${row.GioiThieu }</textarea>
								</div>
								<div class="form-group">
									<label for="input_id">Học phí</label> <input type="text"
										name="HocPhi" id="input_cdmg" class="form-control"
										value="${ row.HocPhi}">
								</div>
								<div class="form-group">
									<label for="input_id">Ngày khai giảng :</label> <input
										type="text" name="date" id="input_nkg" class="form-control "
										value="${row.NgayKhaiGiang }">
								</div>
								<div class="form-group" id="before-click-upload">
									<label for="input_id">Hình :</label> <img
										class="img-responsive img-thumbnail"
										src="${pageContext.servletContext.contextPath }/RetrieveImage?khoahoc=${row.MaKhoaHoc}"
										alt="" id="imgID" />
								</div>
								<div class="form-group">
									<div class="fileUpload">
										<input id="" type="file" onchange="onFileSelected(event)"
											name="image" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="input_id">Mã Loại :</label> <input type="text"
										name="MaLoaiKhoaHoc" id="input_ml" class="form-control"
										value="${row.MaLoaiKhoaHoc }">
								</div>
								<button type="submit" id="button-modal1" class="btn btn-primary"
									style="text-align: center; width: 120px;">Lưu</button>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>

			</div>
		</c:forEach>
	</form>

	<!--End Modal1-->




	<!--Modal3-->
	<c:forEach var="row" items="${result_khoahoc.rows}">
		<form action="deleteKhoaHoc" method="post">
			<div class="modal fade" id="myModal3" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Xóa khóa học</h4>
						</div>
						<div class="modal-body" align="center">
							<input type="hidden" value="${row.MaKhoaHoc}" name="MaKhoaHoc"></input>
							Có chắc muốn xóa không?
							<div align="center">
								<button type="submit" class="btn btn-primary"
									style="text-align: center; width: 120px;">Xóa</button>
								<button type="button" class="btn btn-primary"
									style="text-align: center; width: 120px;" data-dismiss="modal">Hủy</button>
							</div>

						</div>
						<div class="modal-footer"></div>
					</div>

				</div>

			</div>
		</form>
	</c:forEach>

	<!--End Modal3-->



	<!--Script-->
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-tag.min.js"></script>
	<script src="assets/js/jquery.hotkeys.index.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
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
	function validateText(id) { 
		if ($("#" + id).val() == null || $("#" +id).val() == "") { 
			var div = $("#" + id).closest("div");
			div.removeClass("has-success"); $("#glypcn" + id).remove();
			div.addClass("has-error has-feedback"); 
			div .append('<span id="glypcn'+id+'"class="glyphicon glyphicon-remove form-control-feedback"></span>');
			return false; 
			} 
		else { 
			var div = $("#" + id).closest("div");
			div.removeClass("has-error"); 
			div.addClass("has-success has-feedback");
			$("#glypcn" + id).remove(); 
			div .append('<span id="glypcn'+id+'"class="glyphicon glyphicon-ok form-control-feedback"></span>'); 
			return true; 
			} 
		} 
	$(document).ready( function() { 
		var date_input = $('input[name="date"]'); //our date input has the name "date" var
		container = $('.bootstrap-iso form').length > 0 ? $( '.bootstrap-isoform').parent() : "body"; 
		var options = { format : 'yyyy-mm-dd',
		container : container, todayHighlight : true, autoclose : true, 
		};
	date_input.datepicker(options); }); 
	$(document).ready(function() {
	$("#button-modal1").click(function() { 
		if (!validateText("input_id")) {
	return false; 
	} 
		if (!validateText("input_tenkh")) { 
			return false; 
			} 
		if(!validateText("input_nkg")) {
			return false; 
			} 
		if(!validateText("input_ml")) {
			return false; 
			} 
		}); 
	});
	$(document).ready(function() { 
		$("#button-modal2").click(function() {
	if (!validateText("input_id1")) { 
		return false;
		} 
	if(!validateText("input_tenkh1")) { 
		return false; 
		} 
	if(!validateText("input_nkg1")) {
		return false;
		}
	if(!validateText("input_ml1")) { 
		return false; 
		}
	}); 
		}); 
	function onFileSelected(event) { 
		var selectedFile = event.target.files[0]; 
		var reader = new FileReader(); 
		var imgtag = document.getElementById("imgID"); imgtag.title = selectedFile.name;
		reader.onload = function(event) { imgtag.src = event.target.result; };
		reader.readAsDataURL(selectedFile); 
		}


	</script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script type="text/javascript">
	function DownloadAttach(id){
			console.log(id);
		 window.location = "${pageContext.servletContext.contextPath}/DownloadFile?filename=" + id;
	}
	
	</script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script>
  		tinymce.init({ 
  			selector: "textarea",
  			plugins: ["link textcolor paste "],
  		  menubar: "insert edit",
  		  toolbar: ["link forecolor backcolor autolink paste alignleft aligncenter alignright"],
  		default_link_target: "_blank"
  			});
  		
  </script>



	<!--End Script-->
</body>
</html>