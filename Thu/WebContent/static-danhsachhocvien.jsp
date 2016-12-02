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
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

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
			.row{
				padding-top: 5px;
			}
			
		

		</style>


		
	</head>
	<body class="no-skin">
	
	<!-- SQL statement -->
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="kien2509"/>	
	<!-- End SQL statement -->
	
	<!--nav-->
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<img src="Asset/header ttth.jpg" style="width: 100%;height: 120px">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>
			</div>
		</div>
	<!--end nav-->



		<jsp:include page="Sidebar.jsp" />






			<div class="main-content" >
				<div style="padding-left: 20px;padding-right: 20px;">
					<div class="main-content-inner">
					<div class="row">
						
					<div class="container-fluid">
						<ul class="nav nav-justified w3-pale-blue">
					<li><a href="Home.jsp">Trang chủ</a></li>
					<li><a href="thongbao.jsp">Thông báo</a></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Giới thiệu<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="thungo.jsp">Thư ngỏ</a></li>
							<li><a href="giangvien.jsp">Đội ngủ giản viên</a></li>
							<li><a href="nhiemvu.jsp">Chức năng nhiệm vụ</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lịch khai giảng<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="Dangkiwindows-win.jsp">Windows 1 tháng 10</a></li>
							<li><a href="Dangkiandroid-cban.jsp">Android 1 tháng 10</a></li>
						</ul>
					</li>
					
					<li><a href="tuvan-send.jsp">Tư vấn-hỏi đáp</a></li>
					<li><a href="HandleLogout">Đăng xuất</a></li>
				</ul>						
				</div>				
					</div>
										
					<sql:query var="result_lophoc" sql="select * from lophoc,khoahoc where 
					lophoc.MaKhoa=khoahoc.MaKhoaHoc and khoahoc.MaKhoaHoc='${param.khoahoc}'" dataSource="${con}"/>
						<c:forEach var="row" items="${result_lophoc.rows}">
							<sql:query var="result_hocvien" sql="select * from hocvien where MaLop='${row.MaLop}'" dataSource="${con}"/>
							<div class="row">
									<div class="col-xs-12">
										<div class="clearfix">
												<div class="pull-right tableTools-container">
												<div class="dt-buttons btn-overlap btn-group">
													<a 
														class="dt-button buttons-copy buttons-html5 btn btn-white btn-primary btn-bold"
														tabindex="0" aria-controls="dynamic-table" data-original-title=""
														title=""><span><i class="fa fa-copy bigger-110 pink"></i>
															<span class="hidden">Copy to clipboard</span></span></a><a href="ExportToExcel?lophoc=${row.MaLop }"
														class="dt-button buttons-excel buttons-flash btn btn-white btn-primary btn-bold"
														tabindex="0" aria-controls="dynamic-table"><span><i
															class="fa fa-file-excel-o bigger-110 green"></i> <span
															class="hidden">Export to Excel</span></span>
													<div
															style="position: absolute; left: 0px; top: 0px; width: 39px; height: 35px; z-index: 99;"
															data-original-title="" title="">
															
														</div></a><a href="ExportToPDF?lophoc=${row.MaLop }"
														class="dt-button buttons-pdf buttons-flash btn btn-white btn-primary btn-bold"
														tabindex="0" aria-controls="dynamic-table"><span><i
															class="fa fa-file-pdf-o bigger-110 red"></i> <span class="hidden">Export 
																to PDF</span></span>
													<div
															style="position: absolute; left: 0px; top: 0px; width: 39px; height: 35px; z-index: 99;"
															data-original-title="" title="">
															
														</div></a>
												</div>
											</div>
										</div>
										<div class="table-header">
											${row.MaLop}
										</div>

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
											<div class="row">
											<div class="col-xs-6 pull-right">
												<div id="dynamic-table_filter" class="dataTables_filter">
													<label>Lọc:
													<input type="search" class="form-control input-sm" placeholder="" aria-controls="dynamic-table">
													</label>
													</div>
												</div>
											</div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover dataTable no-footer" role="grid" aria-describedby="dynamic-table_info">
												<thead>
													<tr role="row">
													<th class="center sorting_disabled" rowspan="1" colspan="1" aria-label="">
															
														</th>
														<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">
															Mã học viên
														</th>
														<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">
														Tên học viên
														</th>
														<th class="hidden-480 sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Clicks: activate to sort column ascending">
														Email
														</th>
														<th class="sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="	
															Update
														: activate to sort column ascending">
															Số điện thoại
														</th>
														<th class="hidden-480 sorting" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">
														Nợ học phí
														</th>
														<th class="sorting_disabled" rowspan="1" colspan="1" aria-label="">
															Địa chỉ
														</th>
														<th class="sorting_disabled" rowspan="1" colspan="1" aria-label="">
															Điểm
														</th>
														<th></th>
														</tr>
												</thead>

												<tbody>
												<c:forEach var="rows" items="${result_hocvien.rows }">
													<tr role="row" class="odd">
														<td class="center">
															<label class="pos-rel">
																<input type="checkbox" class="ace">
																<span class="lbl"></span>
															</label>
														</td>

														<td>
															<a href="#">${rows.MaHocVien }</a>
														</td>
														<td>${rows.Ten}</td>
														<td class="hidden-480">${rows.Email}</td>
														<td>${rows.Sodt}</td>
														<td class="hidden-480">
															${rows.NoHocPhi}
														</td>
														<td>
															${rows.DiaChi}
														</td>
														<td>
															${rows.Diem}
														</td>

														<td>
															<div class="hidden-sm hidden-xs action-buttons">
																<a class="blue" href="#">
																	<i class=""></i>
																</a>

																<a class="green" href="#">
																	<i class="ace-icon fa fa-pencil bigger-130"></i>
																</a>

																<a class="red" href="#">
																	<i class="ace-icon fa fa-trash-o bigger-130"></i>
																</a>
															</div>

															<div class="hidden-md hidden-lg">
																<div class="inline pos-rel">
																	<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																		<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																	</button>

																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																		<li>
																			<a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																			</a>
																		</li>
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
														<div class="dataTables_info" id="dynamic-table_info" role="status"
															aria-live="polite">Showing 1 to 10 of 10 entries</div>
													</div>
													<div class="col-xs-6">
														<div class="dataTables_paginate paging_simple_numbers"
															id="dynamic-table_paginate">
															<ul class="pagination">
																<li class="paginate_button previous disabled"
																	aria-controls="dynamic-table" tabindex="0"
																	id="dynamic-table_previous"><a href="#">Previous</a></li>
																<li class="paginate_button active" aria-controls="dynamic-table"
																	tabindex="0"><a href="#">1</a></li>
																<li class="paginate_button next" aria-controls="dynamic-table"
																	tabindex="0" id="dynamic-table_next"><a href="#">Next</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
						</c:forEach>


					
						<div class="space-6">
							
						</div>
						<div class="clearfix">
							<button class="btn btn-yellow" style="float: right;width:10%;">Them Lop</button>
							</div>
						
					</div>
						
					</div><!--end padding div-->
					
					


				</div><!--End content-->
				
		</div><!-- /.main-container -->



		<!--Script-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    	<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!--End Script-->
	</body>
</html>