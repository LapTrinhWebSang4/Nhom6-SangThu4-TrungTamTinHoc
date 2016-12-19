<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="Hoang.LayTT" %>
<!DOCTYPE html >
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
		  <script src="http://code.angularjs.org/1.1.5/angular.js"></script>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
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
		<script src="js/bootstrap.js"></script>
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
	<body class="no-skin" >
	
	<!--nav-->
	<sql:setDataSource var="con" driver ="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ttth" user="root" password="123456"></sql:setDataSource>
		<sql:query dataSource="${con }"  sql="select * from taikhoan" var="result"></sql:query>
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<img src="Asset/header ttth.jpg" style="width: 100%;height: 120px">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

				</button>
			</div>
		</div>
	


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
				<li class="active"><a href="QuanTriVien.jsp"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Quản Lí Thành Viên </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="QuanTriMail.jsp"> <i
						class="menu-icon fa fa-envelope"></i> <span class="menu-text">
							Gửi Mail </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="QuanTriCN.jsp"> <i
						class="menu-icon fa fa fa-commenting-o"></i> <span
						class="menu-text"> Thông Tin Cá Nhân </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="login.jsp"> <i
						class="menu-icon fa fa-sign-out"></i> <span class="menu-text">
							Đăng xuất </span>
				</a> <b class="arrow"></b></li>
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
							<li><a href="home.html">Trang chủ</a></li>
							<li><a href="thongbao.html">Thông báo</a></li>
								<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Giới thiệu<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="thungo.html">Thư ngỏ</a></li>
										<li><a href="giangvien.html">Đội ngủ giản viên</a></li>
										<li><a href="nhiemvu.html">Chức năng nhiệm vụ</a></li>
									</ul></li>
								<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lịch khai giảng<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="Dangkiwindows-win.html">Windows 1 tháng 10</a></li>
										<li><a href="Dangkiandroid-cban.html">Android 1 tháng 10</a></li>
									</ul>
								</li>
								
								<li><a href="tuvan-send.html">Tư vấn-hỏi đáp</a></li>
								<li><a href="#">Đăng xuất</a></li>
							</ul>						
						</div>				
					</div>
					<div class="page-content">
						<div style="padding-left: 20px;padding-right: 20px;">
				<div class="space-32"></div>
				<div class="space-22"></div>
					<div class="row">
						<div class="col-sm-9">
						
							
										<div class="table-header" >
											<strong>Các Thành Viên</strong>
										</div>

									
											<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
											
											<table id="dynamic-table" class="table table-striped table-bordered table-hover dataTable no-footer" role="grid" aria-describedby="dynamic-table_info">
												<thead>
													
															
														<th class="" tabindex="0" aria-controls="dynamic-table" r>Tài Khoản </th>
														<th class="" tabindex="0" aria-controls="dynamic-table"  > Tên Thành Viên </th>
														<th class="" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="">Phân Quyền </th>
														<th class="" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="">Ngày sử dụng gần nhất
														</th>
														<th class="" rowspan="1" colspan="1" aria-label="">
															
														</th>
														
												</thead>
											
												<tbody>

												<%String matk=""; %>
												<c:forEach var="col" items="${result.rows}">
												<tr role="row" class="odd">
														

														<td>
															<c:out value="${col.Taikhoan}"></c:out>
														</td>
														<td>
														<a href="#" data-toggle="modal" data-target="#my" class="detail"  data-id="${col.Taikhoan}" id="data">	<c:out value="${col.Tenthanhvien}"></c:out> </a>
														
														<div class="modal fade " id="my" role="dialog">
													    <div class="modal-dialog">
													    
													      <!-- Modal content-->
													      <div class="modal-content">
													        <div class="modal-header">
													          <button type="button" class="close" data-dismiss="modal">&times;</button>
													          <h4  style="color: #e9573f ">
																			<strong>Thông tin cá nhân</strong>
																		</h4>
													        </div>
													          <div class="modal-body">
													        
																
													       <div class="page-content">
				
																
																<div style="padding-left: 0px; padding-right: 0px;">
																	<div class="row">
																		<div class="col-xs-12">
																			<!-- PAGE CONTENT BEGINS -->
																			<div class="clearfix"></div>
											
																			<div class="hr dotted"></div>
											
																			<div>
																				<div id="user-profile-1" class="user-profile row">
																					<div class=" col-sm-3 center">
																						<div>
																							<span class="profile-picture"> <img id="avatar"
																								class="editable img-responsive editable-click editable-empty"
																								alt="Alex's Avatar"
																								src="assets/images/avatars/profile-pic.jpg"></img>
																							</span>
																								
																					
																						</div>
																					
																					</div>
																					<div class="col-xs-12 col-sm-9">
																					<div class="profile-user-info profile-user-info-striped">
																								<div class="profile-info-row">
																									<div class="profile-info-name">Họ và tên:</div>
												
																									<div class="profile-info-value">
																										<div class="align-left">
																											<span class="editable editable-click" id="username"></span>
												
																										</div>
																										</div>
																								</div>
																								<div class="profile-info-row">
																									<div class="profile-info-name">Địa chỉ</div>
												
																									<div class="profile-info-value">
												
																										<div class="align-left">
																											<span class="editable editable-click" id="diachi"></span>
																									 
																										</div>
																									</div>
																								</div>
												
																								
																								<div class="profile-info-row">
																									<div class="profile-info-name">Số CMND</div>
												
																									<div class="profile-info-value">
																										<div class="align-left">
																											<span class="editable editable-click" id="socmnd"></span>
																											
																										</div>
																									</div>
																								</div>
																								<div class="profile-info-row">
																									<div class="profile-info-name">Ngày sinh</div>
												
																									<div class="profile-info-value">
																										<div class="align-left">
																											<span class="editable editable-click" id="ngaysinh"></span>
																											
																										</div>
																									</div>
																								</div>
												
																								
																								<div class="profile-info-row">
																									<div class="profile-info-name">Số điện thoại</div>
												
																									<div class="profile-info-value">
																										<div class="align-left">
																											<span class="editable editable-click" id="sdt"><c:out
																								value="${col.Sodt}" /></span>
																											
																											
																										</div>
																									</div>
																								</div>
																								<div class="profile-info-row">
																									<div class="profile-info-name">Email</div>
												
																									<div class="profile-info-value">
																										<div class="align-left">
																											<span class="editable editable-click" id="email"></span>
																											
																											
																										</div>
																									</div>
																								</div>
																								<div class="profile-info-row">
																									<div class="profile-info-name">Giới Thiệu</div>
												
																									<div class="profile-info-value">
																										<div class="align-left">
																											<span class="editable editable-click" id="gioithieu"></span>
																											
																											
																										</div>
																									</div>
																								</div>
																							</div>
																							</div>
																				</div>
																			</div>
																			</div>
																	</div>
																	</div>
																	</div>
																  
																 </div>
																 <div class="modal-footer">
													        
											
													          <button type="button" class="btn btn-danger" data-dismiss="modal">Thoát</button>
													        	</div>
													      </div>
													      
													    </div>
													  </div>
														</td>
														<td class="hidden-480">
														 <c:out value="${col.Quyen}"></c:out>
														</td>
														<td><c:out value="${col.NgayDangNhapGanNhat}"></c:out></td>

														

														<td>
															<div class="hidden-sm hidden-xs action-buttons">
																<c:if test="${col.Quyen=='qtv'}">
																<a class="green" href=""/>
																	<i class="ace-icon fa fa-pencil bigger-150"></i>
																</a>
																</c:if>
																<c:if test="${col.Quyen!='qtv'}">
																<a class="green" href="SuaTV.jsp?Taikhoan=<c:out value="${col.Taikhoan}"/>" >
																	<i class="ace-icon fa fa-pencil bigger-150"></i>
																</a>
																</c:if>
																<%int bang=1; %>
																<a class="red" href="javascript:confirmGo('Sure to delete this record?','delete.jsp?Taikhoan=<c:out value="${col.Taikhoan}"/>&bang=<%= bang %>')" Taikhoan="${col.Taikhoan}" >
																	
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
																			<a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit" >
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete" >
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
							<div class="col-md-3">
							<a href="ThemTV.jsp">
							<button type="button" class="btn btn btn-warning"><strong>Thêm Thành Viên Mới </strong>
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
		<script type="text/javascript">
			$(".detail").click(function(){
			
				var MaTK = $(this).attr("data-id");
				alert(MaTK);
				$.get('LayTT',{MaTK: MaTK},function(response){
					
					
					document.getElementById("username").innerHTML = response.TenThanhVien;
					document.getElementById("email").innerHTML = response.Email;
					document.getElementById("sdt").innerHTML = response.Sodt;
					document.getElementById("diachi").innerHTML = response.DiaChi;
					document.getElementById("socmnd").innerHTML = response.SoCMND;
					document.getElementById("gioithieu").innerHTML = response.GioiThieu;
					document.getElementById("ngaysinh").innerHTML = response.NgaySinh;
					
					
					
				});
			});
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