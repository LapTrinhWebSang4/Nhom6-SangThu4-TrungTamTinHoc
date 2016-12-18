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
			<title>Danh sách học viên</title> <!-- Bootstrap CSS -->
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
.container-fluid .dropdown-submenu {
	position: relative;
}

.container-fluid .dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -1px;
}

.container-fluid .dropdown-submenu:hover>.dropdown-menu {
	display: block;
	position: absolute;
}

.row {
	padding-top: 5px;
}

.alert-success-alt {
	border-color: #19B99A;
	background: #20A286;
	color: #fff;
}

.alert-danger-alt {
	border-color: #B63E5A;
	background: #E26868;
	color: #fff;
}

.glyphicon {
	margin-right: 10px;
}
</style>
</head>
<body class="no-skin">

	<!-- SQL statement -->
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="kien2509" />
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
		<div style="padding-left: 20px; padding-right: 20px;">
			<div class="main-content-inner">
				<c:if test="${errThatBai != null}">
					<div class='alert alert-danger-alt alert-dismissable'>
						<span class='glyphicon glyphicon-certificate'></span>
						<button type='button' class='close' data-dismiss='alert'
							aria-hidden='true'>×</button>
						${errThatBai}
					</div>
				</c:if>
				<c:if test="${errThanhCong != null}">
					<div class='alert alert-success-alt alert-dismissable'>
						<span class='glyphicon glyphicon-certificate'></span>
						<button type='button' class='close' data-dismiss='alert'
							aria-hidden='true'>×</button>
						${errThanhCong}
					</div>
				</c:if>
				<c:remove var="errThatBai" scope="session" />
				<c:remove var="errThanhCong" scope="session" />

				<sql:query var="result_lophoc"
					sql="select * from lophoc,khoahoc where 
					lophoc.MaKhoa=khoahoc.MaKhoaHoc and khoahoc.MaKhoaHoc='${param.khoahoc}'"
					dataSource="${con}" />
				<c:forEach var="row" items="${result_lophoc.rows}">
					<sql:query var="result_hocvien"
						sql="select * from hocvien where MaLop='${row.MaLop}'"
						dataSource="${con}" />
					<div class="row">
						<div class="col-xs-12">
							<div class="clearfix">
								<div class="pull-right tableTools-container">
									<div class="dt-buttons btn-overlap btn-group">
										<a
											class="dt-button buttons-copy buttons-html5 btn btn-white btn-primary btn-bold"
											tabindex="0" aria-controls="dynamic-table"
											data-original-title="" title=""><span><i
												class="fa fa-copy bigger-110 pink"></i> <span class="hidden">Copy
													to clipboard</span></span></a><a href="ExportToExcel?lophoc=${row.MaLop }"
											class="dt-button buttons-excel buttons-flash btn btn-white btn-primary btn-bold"
											tabindex="0" aria-controls="dynamic-table"><span><i
												class="fa fa-file-excel-o bigger-110 green"></i> <span
												class="hidden">Export to Excel</span></span>
											<div
												style="position: absolute; left: 0px; top: 0px; width: 39px; height: 35px; z-index: 99;"
												data-original-title="" title=""></div></a><a
											href="ExportToPDF?lophoc=${row.MaLop }"
											class="dt-button buttons-pdf buttons-flash btn btn-white btn-primary btn-bold"
											tabindex="0" aria-controls="dynamic-table"><span><i
												class="fa fa-file-pdf-o bigger-110 red"></i> <span
												class="hidden">Export to PDF</span></span>
											<div
												style="position: absolute; left: 0px; top: 0px; width: 39px; height: 35px; z-index: 99;"
												data-original-title="" title=""></div></a>
									</div>
								</div>
							</div>
							<div class="table-header">${row.MaLop}<a class="pull-right"
									data-toggle="collapse"
									data-target="#table-collapse-${row.MaLop}"><i
									style="color: white; padding-right: 10px; padding-top: 10px;"
									class="fa fa-chevron-circle-down fa-lg"></i></a>
							</div>

							<!-- div.table-responsive -->

							<!-- div.dataTables_borderWrap -->
							<div class="collapse" id="table-collapse-${row.MaLop}">
								<div id="dynamic-table_wrapper"
									class="dataTables_wrapper form-inline no-footer">
									<div class="row">
										<div class="col-xs-6 pull-right">
											<div id="dynamic-table_filter" class="dataTables_filter">
												<label>Lọc: <input type="search"
													class="form-control input-sm" placeholder=""
													aria-controls="dynamic-table"></label>
											</div>
										</div>
									</div>
									<table id="dynamic-table"
										class="table table-striped table-bordered table-hover dataTable no-footer"
										role="grid" aria-describedby="dynamic-table_info">
										<thead>
											<tr role="row">
												<th class="center sorting_disabled" rowspan="1" colspan="1"
													aria-label=""></th>
												<th class="sorting" tabindex="0"
													aria-controls="dynamic-table" rowspan="1" colspan="1"
													aria-label="Domain: activate to sort column ascending">
													Mã học viên</th>
												<th class="sorting" tabindex="0"
													aria-controls="dynamic-table" rowspan="1" colspan="1"
													aria-label="Price: activate to sort column ascending">
													Tên học viên</th>
												<th class="hidden-480 sorting" tabindex="0"
													aria-controls="dynamic-table" rowspan="1" colspan="1"
													aria-label="Clicks: activate to sort column ascending">
													Email</th>
												<th class="sorting" tabindex="0"
													aria-controls="dynamic-table" rowspan="1" colspan="1"
													aria-label="	
															Update
														: activate to sort column ascending">
													Số điện thoại</th>
												<th class="hidden-480 sorting" tabindex="0"
													aria-controls="dynamic-table" rowspan="1" colspan="1"
													aria-label="Status: activate to sort column ascending">
													Nợ học phí</th>
												<th class="sorting_disabled" rowspan="1" colspan="1"
													aria-label="">Địa chỉ</th>
												<th class="sorting_disabled" rowspan="1" colspan="1"
													aria-label="">Điểm</th>
												<th></th>
											</tr>
										</thead>

										<tbody>

											<c:forEach var="rows" items="${result_hocvien.rows }"
												varStatus="theCount">
												<tr role="row" class="odd">
													<td class="center"><label class="pos-rel"><span
															class="lbl">${theCount.count}</span></label></td>

													<td><a href="#">${rows.MaHocVien }</a></td>
													<td>${rows.Ten}</td>
													<td class="hidden-480">${rows.Email}</td>
													<td>${rows.Sodt}</td>
													<td class="hidden-480">${rows.NoHocPhi}</td>
													<td>${rows.DiaChi}</td>
													<td>${rows.Diem}</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#"> <i class=""></i>
															</a> <a class="green" href="#"> <i
																class="ace-icon fa fa-pencil bigger-130"></i>
															</a> <a rel="popover" data-placement="top"
																data-popover-content="#myPopover" class="red" href="#"
																id="delete-${rows.MaHocVien}"> <i
																class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button
																	class="btn btn-minier btn-yellow dropdown-toggle"
																	data-toggle="dropdown" data-position="auto">
																	<i
																		class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li><a href="#" class="tooltip-info"
																		data-rel="tooltip" title="" data-original-title="View">
																			<span class="blue"> <i
																				class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="" data-original-title="Edit">
																			<span class="green"> <i
																				class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#"> <span class="red"> <i
																				class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
												</tr>
											</c:forEach>


										</tbody>
									</table>
									<div class="row">
										<div class="col-xs-6">
											<div class="dataTables_info" id="dynamic-table_info"
												role="status" aria-live="polite">Showing 1 to 10 of 10
												entries</div>
										</div>
										<div class="col-xs-6">
											<div class="dataTables_paginate paging_simple_numbers"
												id="dynamic-table_paginate">
												<ul class="pagination">
													<li class="paginate_button previous disabled"
														aria-controls="dynamic-table" tabindex="0"
														id="dynamic-table_previous"><a href="#">Previous</a></li>
													<li class="paginate_button active"
														aria-controls="dynamic-table" tabindex="0"><a
														href="#">1</a></li>
													<li class="paginate_button next"
														aria-controls="dynamic-table" tabindex="0"
														id="dynamic-table_next"><a href="#">Next</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>



				<div class="space-6"></div>
				<div class="clearfix">
					<button data-toggle="modal" data-target="#myModal1"
						class="btn btn-yellow" style="float: right; width: 10%;">Thêm
						lớp</button>
				</div>

			</div>

		</div>
		<!--end padding div-->




	</div>
	<!--End content-->

	</div>
	<sql:query var="result_giangvien" dataSource="${con}">select * from giangvien</sql:query>
	<!-- /.main-container -->
	<form action="insertLopHoc" method="post">
		<div class="modal fade" id="myModal1" role="dialog"
			ng-controller="myController_nienkhoa">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Lớp học</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="input_id">Mã lớp :</label> <input type="text"
								name="MaLop" id="input_tenkh" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="input_id">Ngày học :</label> <input type="text"
								name="NgayHoc" id="input_textarea" class="form-control"></input>
						</div>
						<div class="form-group">
							<label for="input_id">Phòng :</label> <input type="text"
								name="Phong" id="input_cdmg" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="input_id">Số học viên :</label> <input
								name="SoHocVien" id="input_nkg" class="form-control " value="">
							</input>
						</div>
						<div class="form-group">
							<label for="input_id">Tên môn học :</label> <input type="text"
								name="TenMonHoc" id="input_cdmg" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="input_id">Lịch học :</label> <input type="text"
								name="LichHoc" id="input_cdmg" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="input_id">Mã khóa học :</label> <input type="text"
								name="MaKhoaHoc" id="input_cdmg" class="form-control"
								value="${param.khoahoc}">
						</div>
						<div class="form-group">
							<label for="input_id">Giảng viên :</label> <select
								name="MaGiangVien" class="form-control selectpicker target"
								id="modal-slt-giangvien"><option value="">Please
									select another value</option>
								<c:forEach var="row" items="${result_giangvien.rows}">
									<option value="${row.MaGiangVien}">${row.TenGiangVien}</option>
								</c:forEach>
							</select>
						</div>

						<div class="modal-footer">
							<input type="submit" value="Thêm" class="btn btn-danger"></input>
						</div>
					</div>

				</div>

			</div>
	</form>

	<div id="myPopover" align="center">
		Có chắc muốn xóa không?
		<div>
			<a style="cursor: pointer;" id="confirm"><span
				class="fa fa-check" style="color: green"></span>Xác nhận</a><a id="deny"
				style="cursor: pointer;"><span class="fa fa-times"
				style="color: red"></span>Đóng</a>
		</div>

	</div>

	<!--Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
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
		$('body')
				.on(
						'click',
						function(e) {
							$('[rel="popover"]')
									.each(
											function() {
												//the 'is' for buttons that trigger popups
												//the 'has' for icons within a button that triggers a popup
												if (!$(this).is(e.target)
														&& $(this)
																.has(e.target).length === 0
														&& $('.popover').has(
																e.target).length === 0) {
													$(this).popover('hide');
												}
											});
						});
		$(function() {
			$('[rel="popover"]').popover(
					{
						container : 'body',
						html : true,
						content : function() {
							var clone = $($(this).data('popover-content'))
									.clone(true).removeClass('hide');
							return clone;
						}
					}).click(function(e) {
				e.preventDefault();
			});
		});
		$(document).ready(
				function() {
					var date_input = $('input[name="NgayHoc"]'); //our date input has the name "date"
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
		$("a.pull-right").click(function(e) {
			e.preventDefault();
			if ($(this).find('.fa').attr('class').indexOf("circle-down") > 0) {
				console.log($(this).find('.fa').attr('class'));
				$(this).find('.fa').removeClass("fa-chevron-circle-down");
				$(this).find('.fa').addClass("fa-chevron-circle-up");
			} else {
				console.log($(this).find('.fa').attr('class'));
				$(this).find('.fa').removeClass("fa-chevron-circle-up");
				$(this).find('.fa').addClass("fa-chevron-circle-down");
			}
			console.log($(this).find('.fa').attr('class'));
		});
		$("#confirm").click(function(e) {
			$.ajax({
				method : 'post',
				url : 'deleteHocVien',
				data : {
					MaHocVien : valuetodelete
				},
				success : function() {
					$("#delete-" + valuetodelete).closest("tr").remove();
					$('.popover').popover("hide");
				},
				error : function() {
					alert("không xóa được");
				}

			});
		});
		var valuetodelete;
		$("a.red").click(function(e) {
			var value = $(this).attr('id');
			valuetodelete = value.replace("delete-", "");
			console.log(valuetodelete);
			e.preventDefault();

		});
	</script>


	<!--End Script-->
</body>
</html>