<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
		  <script src="http://code.angularjs.org/1.1.5/angular.js"></script>
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

		
		 
		 
		  <style >
		  	.animate-enter, 
				.animate-leave
				{ 
				  -webkit-transition: 400ms cubic-bezier(0.250, 0.250, 0.750, 0.750) all;
				  -moz-transition: 400ms cubic-bezier(0.250, 0.250, 0.750, 0.750) all;
				  -ms-transition: 400ms cubic-bezier(0.250, 0.250, 0.750, 0.750) all;
				  -o-transition: 400ms cubic-bezier(0.250, 0.250, 0.750, 0.750) all;
				  transition: 400ms cubic-bezier(0.250, 0.250, 0.750, 0.750) all;
				  position: relative;
				  display: block;
				} 
				 
				.animate-enter.animate-enter-active, 
				.animate-leave {
				  opacity: 1;
				  top: 0;
				  height: 30px;
				}
				 
				.animate-leave.animate-leave-active,
				.animate-enter {
				  opacity: 0;
				  top: -50px;
				  height: 0px;
				}
				.table-header{
    			background-color: #4CAF50;
    			color: white;
					}
		  </style>
		
	</head>
	<body  class="no-skin">
	<!--nav-->
	<sql:setDataSource var="con" driver ="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ttth" user="root" password="1234"></sql:setDataSource>
		<sql:query dataSource="${con }"  sql="select * from thongbao" var="result"></sql:query>
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<img src="Asset/header ttth.jpg" style="width: 100%;height: 120px">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

				</button>
			</div>
		</div>
	
	<!--end nav-->











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
					<li class="">
						<a href="QTNDPT.jsp">
							<i class="menu-icon fa fa-picture-o"></i>
							<span class="menu-text"> Change Poster </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="active">
						<a href="QTNDThongBao.jsp">
							<i class="menu-icon fa fa-newspaper-o"></i>
							<span class="menu-text"> Đăng Thông Báo </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="QTNDMail.jsp">
							<i class="menu-icon fa fa-envelope"></i>
							<span class="menu-text"> Gửi Mail </span>
						</a>

						<b class="arrow"></b>
					</li>
					
					
					<li class="">
						<a href="QTNDCaNhan.jsp">
							<i class="menu-icon fa fa-user"></i>
							<span class="menu-text"> Thông tin cá nhân </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="login.jsp">
							<i class="menu-icon fa fa-sign-out"></i>
							<span class="menu-text"> Đăng xuất </span>
						</a>

						<b class="arrow"></b>
					</li>
					</ul>

					
					
					

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="row">
					<div class="container-fluid">
						<ul class="nav nav-justified w3-pale-blue">
							<li><a href="Home.jsp"><strong>Trang chủ</strong></a></li>
							<li><a href="thongbao.html"><strong>Thông báo</strong></a></li>
								<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>Giới thiệu</strong><span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="thungo.html"><strong>Thư ngỏ</strong></a></li>
										<li><a href="giangvien.html"><strong>Đội ngủ giản viên</strong></a></li>
										<li><a href="nhiemvu.html"><strong>Chức năng nhiệm vụ</strong></a></li>
									</ul></li>
								<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><strong>Lịch khai giảng</strong><span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="Dangkiwindows-win.html"><strong>Windows 1 tháng 10</strong></a></li>
										<li><a href="Dangkiandroid-cban.html"><strong>Android 1 tháng 10</strong></a></li>
									</ul>
								</li>
								
								<li><a href="tuvan-send.html"><strong>Tư vấn-hỏi đáp</strong></a></li>
								<li><a href="#"><strong>Đăng xuất</strong></a></li>
							</ul>						
						</div>				
					</div>
					<div class="page-content">
					<div class="space-32"></div>
					<div class="space-32"></div>
						<div style="padding-left: 20px;padding-right: 20px;">
				<div class="space-12"></div>
					<div class="row">
						<div class="col-sm-9">
						
							
										<div class="table-header">
											Các Thông Báo Đã POST
										</div>

									
											<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
											
											<table id="dynamic-table" class="table table-striped table-bordered table-hover dataTable no-footer" role="grid" aria-describedby="dynamic-table_info">
												<thead>
													
															
														<th class="" tabindex="0" aria-controls="dynamic-table" r>Ngày Post </th>
														<th class="" tabindex="0" aria-controls="dynamic-table"  > Loại </th>
														<th class="" tabindex="0" aria-controls="dynamic-table"  > Tiêu Đề </th>
														<th class="" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="">Xem thông tin </th>
														<th class="" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="">Lượt xem
														</th>
														<th class="" rowspan="1" colspan="1" aria-label="">
															
														</th>
												</thead>

												<tbody>

												<c:forEach var="col" items="${result.rows}">
												<tr role="row" class="odd">
														

														<td>
															<c:out value="${col.Ngay}"></c:out>
														</td>
														<td>
														<c:out value="${col.LoaiThongBao}"></c:out>
														</td>
														<td>
														<c:out value="${col.TieuDe}"></c:out>
														</td>
														<td class="hidden-480">
														
															<a class="blue" href="FormThongBao.jsp?mathongbao=<c:out value="${col.MaThongBao}"/>">
																	<i class="ace-icon fa fa-info-circle bigger-120"></i>
																</a>
														</td>
														<td><c:out value="${col.LuotXem}"></c:out> </td>

														

														<td>
															<div class="hidden-sm hidden-xs action-buttons">
																
																<a class="green" href="QTNDSua.jsp?MaThongBao=<c:out value="${col.MaThongBao}"/>">
																	<i class="ace-icon fa fa-pencil bigger-150"></i>
																</a>

																<%int bang=2; %>
																<a class="red" href="javascript:confirmGo('Sure to delete this record?','delete.jsp?MaTB=<c:out value="${col.MaThongBao}"/>&bang=<%= bang %>')" MaTB="${col.MaThongBao}" >
																	
																	<i class="ace-icon fa fa-trash-o bigger-150"></i>
																</a>
															</div>

															<div class="hidden-md hidden-lg">
																<div class="inline pos-rel">
																	<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																		<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																	</button>

																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																		

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
							</div>
							</div>
							<div class="col-xs-3">
							<a href="QTNDThem.jsp">
							<button type="button" class="btn btn btn-warning"><strong>Thêm thông báo mới </strong>
							<i class="ace-icon fa fa-plus-square - 160"></i>
							</button>
							</a>
							 
							</div>
					
					</div>
				</div>
					</div>
				</div>
			</div>

		
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
<script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
		<!--End Script-->
	</body>
</html>