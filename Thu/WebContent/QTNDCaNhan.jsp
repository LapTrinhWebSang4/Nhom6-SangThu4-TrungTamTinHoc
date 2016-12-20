<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
	<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
   <%@ page import="Model.TaiKhoan" %>

 
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
<style>
	.modal-header{
	background-color: #4FC1E9;
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
				<span class="sr-only">Toggle sidebar</span>

			</button>
		</div>
	</div>
<%
	session = request.getSession(false);
	TaiKhoan tk = (TaiKhoan)session.getAttribute("taikhoan");
	String tentaikhoan = tk.getTaikhoan();
	String matkhau = tk.getMatKhau();	
	String pk=tentaikhoan;
	
%>	




<sql:setDataSource var="con" driver ="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ttth" user="root" password="1234"></sql:setDataSource>
		<sql:query dataSource="${con }"   var="result">select * from taikhoan where Taikhoan = "<%= pk %>" ;</sql:query>


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
				<li class=""><a href="QTNDPT.jsp"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Change Poster </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="QTNDThongBao.jsp"> <i
						class="menu-icon fa fa-newspaper-o"></i> <span class="menu-text">
							Đăng Thông Báo </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="QTNDMail.jsp"> <i
						class="menu-icon fa fa-envelope"></i> <span class="menu-text">
							Gửi Mail </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="QTNDNhanTin.jsp"> <i
						class="menu-icon fa fa-commenting-o"></i> <span class="menu-text">
							Tin nhắn </span>
				</a> <b class="arrow"></b></li>
				<li class="active"><a href="QTNDCaNhan.jsp"> <i
						class="menu-icon fa fa-user"></i> <span class="menu-text">
							Thông tin cá nhân </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="login.jsp"> <i
						class="menu-icon fa fa-sign-out"></i> <span class="menu-text">
							Đăng xuất </span>
				</a> <b class="arrow"></b></li>
			</ul>




			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>
		<div class="main-content">
			
				<div class="page-content">
				
					<div class="page-header" >
							<h1  style="color: #e9573f ">
								<strong>Thông tin cá nhân</strong>
							</h1>
						</div>
					<div style="padding-left: 20px; padding-right: 20px;">
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

									<c:forEach var="col" items="${result.rows}">
											<div class="profile-contact-info">
												<div class="profile-contact-links align-centers" >
												
													<a href="#" class="btn btn-link" > <strong><c:out
												value="${col.TenThanhVien}" /></strong>
													</a>
													
												</div>

												<div class="space-6"></div>


											</div>

											<div class="hr hr12 dotted"></div>

											<div class="clearfix">
												<strong><c:out
												value="${col.Quyen}" /></strong>
											</div>

											<div class="hr hr16 dotted"></div>
										</div>
									</c:forEach>
										<div class="col-xs-12 col-sm-9">


											

											







													
<c:forEach var="col" items="${result.rows}">
<div class="profile-user-info profile-user-info-striped">
												<div class="profile-info-row">
													<div class="profile-info-name">Họ và tên:</div>

													<div class="profile-info-value">
														<div class="align-left">
															<span class="editable editable-click" id="username"> </span> <c:out
												value="${col.TenThanhVien}" />


														</div>
														</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">Địa chỉ</div>

													<div class="profile-info-value">

														<div class="align-left">
															<span class="editable editable-click" id="diachi"><c:out
												value="${col.DiaChi}" />
													 
														</div>
													</div>
												</div>

												
												<div class="profile-info-row">
													<div class="profile-info-name">Số CMND</div>

													<div class="profile-info-value">
														<div class="align-left">
															<span class="editable editable-click" id="signup"><c:out
												value="${col.SoCMND}" /></span>
															
														</div>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">Ngày sinh</div>

													<div class="profile-info-value">
														<div class="align-left">
															<span class="editable editable-click" id="signup"><c:out
												value="${col.NgaySinh}" /></span>
															
														</div>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name">Ngày vào làm</div>

													<div class="profile-info-value">
														<div class="align-left">
															<span class="editable editable-click" id="signup"><c:out
												value="${col.Ngayvaolam}" /></span>
															
															
														</div>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">Số điện thoại</div>

													<div class="profile-info-value">
														<div class="align-left">
															<span class="editable editable-click" id="signup"><c:out
												value="${col.Sodt}" /></span>
															
															
														</div>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name">Email</div>

													<div class="profile-info-value">
														<div class="align-left">
															<span class="editable editable-click" id="signup"><c:out
												value="${col.Email}" /></span>
															
															
														</div>
													</div>
												</div>
											</div>
</c:forEach>
											<div class="space-20"></div>
											<div id="group-button" class="center">
												<span class="green">
												<button button type="button" class="btn btn-sm btn-success " data-toggle="modal" data-target="#my"> Sửa Thông Tin
												 <i class="ace-icon fa fa-pencil-square-o max"></i>
															</span>
												</button>
												<div class="modal fade" id="my" role="dialog">
													    <div class="modal-dialog">
													    
													      <!-- Modal content-->
													      <div class="modal-content">
													        <div class="modal-header">
													          <button type="button" class="close" data-dismiss="modal">&times;</button>
													          <h4 style="color: #f5f7fa;font-size: 20px;"><strong>Thay Đổi Thông Tin</strong></h4>
													        </div>
													        <div class="modal-body">
													        <c:forEach var="col" items="${result.rows}">
													        
													        <form class="form-horizontal" action="update.jsp" method="post">
													        <div class="form-group">
																    <label for="input1" class="col-sm-3 control-label">Họ Và Tên</label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in1" value="${col.TenThanhVien}" name="name">
																    </div>
																  </div>
													          <div class="form-group">
																    <label for="input1" class="col-sm-3 control-label">Địa Chỉ</label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in2" value="${col.DiaChi}" name="diachi">
																    </div>
																  </div>
																  <div class="form-group">
																    <label for="input2" class="col-sm-3 control-label">Số CMND </label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in3" value="${col.SoCMND}" name="cmnd">
																    </div>
																  </div>
																  <div class="form-group">
																    <label for="input3" class="col-sm-3 control-label">Ngày Sinh </label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in4" value="${col.NgaySinh}" name="ngaysinh">
																    </div>
																  </div>
																  <div class="form-group">
																    <label for="input3" class="col-sm-3 control-label">Số Điện Thoại</label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in5" value="${col.SoDT}" name="sodt">
																    </div>
																  </div>
																  
																  <div class="form-group">
																    <label for="input3" class="col-sm-3 control-label">Email</label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in6" value="${col.Email}" name="email">
																    </div>
																  </div>
																  <div class="hide">
																    <label for="input3" class="col-sm-3 control-label">Số Điện Thoại</label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" id="in6" value="${col.Taikhoan}" name="id">
																    </div>
																  </div>
																 <div class="hide">
																    <label for="input1" class="col-sm-3 control-label"></label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" name="bang" value="${1}" >
																    </div>
																  </div>
																 
																  <input class="btn btn-info" type="submit" value="Xác nhận" id="submi"/>
																  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																  </form>
																  </c:forEach>
																  <div class="modal-footer">
																  
															        
															      </div>
													        </div>
													        
													      </div>
													      
													    </div>
													  </div>
												<button button type="button" class="btn btn-sm btn-success " data-toggle="modal" data-target="#myModal">Đổi
													mật khẩu</button>
													<div class="modal fade" id="myModal" role="dialog">
													    <div class="modal-dialog">
													    
													      <!-- Modal content-->
													      <div class="modal-content">
													        <div class="modal-header">
													          <button type="button" class="close" data-dismiss="modal">&times;</button>
													          <h4 style="color: #f5f7fa;font-size: 20px;"><strong>Đổi mật khẩu </strong></h4>
													        </div>
													       <div class="modal-body">
													       
													        
													        <form class="form-horizontal" action="update.jsp" method="post">
													        <div class="form-group">
																    <label for="input1" class="col-sm-3 control-label">Mật khẩu cũ</label>
																    <div class="col-sm-7">
																      <input type="password" class="form-control" id="pass1" >
																    </div>
																  </div>
													          <div class="form-group">
																    <label for="input1" class="col-sm-3 control-label">Mật khẩu mới</label>
																    <div class="col-sm-7">
																      <input type="password" class="form-control" id="pass2"  name="matkhau">
																    </div>
																  </div>
																  <div class="form-group">
																    <label for="input1" class="col-sm-3 control-label">Xác nhận mật khẩu</label>
																    <div class="col-sm-7">
																      <input type="password" class="form-control" id="pass3"  >
																    </div>
																  </div>
																  <div class="hide">
																    
																      <input type="text" class="form-control" name="id" value="<%= pk%>" >
																    </div>
																 <div class="hide">
																    <label for="input1" class="col-sm-3 control-label"></label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" name="bang" value="${2}" >
																    </div>
																  </div>
																  <input class="btn btn-info" type="submit" value="Xác nhận" id="submit"/>
																  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																  </form>
																  
																  
													        </div>
													       
													      </div>
													      
													    </div>
													  </div>
												<button type="button" class="btn btn-sm btn-success">Cập
													nhật</button>
													
											</div>
											<div class="hr hr2 hr-double"></div>

											<div class="space-6"></div>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<div class="hide">
				<input type="text" class="form-control" id="mk" value="<%= matkhau%>">
					
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
			function validate(id)
			{
				if($("#"+id).val()==null || $("#"+id).val()=="")
				{
					var div = $("#"+id).closest("div");
					div.addClass(" has-error ")
					
					return false;
				}else {
					var div = $("#"+id).closest("div");
					div.removeClass(" has-error ")
					
					return true;
				}
			}
			function ktmkcu(id,id2)
			{
				if($("#"+id).val()!=$("#"+id2).val())
				{
					var div = $("#"+id).closest("div");
					div.addClass(" has-error ")
					
					div.append('<small class="form-text text-muted" id="no1">Mật khẩu cũ không chính xác</small>');

					
					return false;
				}else {
					var div = $("#"+id).closest("div");
					div.removeClass(" has-error ")
					$("#no1").remove();
					return true;
				}
				
			}
			function ktmkmoi(id1,id2)
			{
				if($("#"+id1).val()!=$("#"+id2).val())
				{
					var div = $("#"+id2).closest("div");
					div.addClass(" has-error ")
					$("#no").remove();
					div.append('<small class="form-text text-muted" id="no">Mật khẩu xác nhận không trùng với mật khẩu mới</small>');
					return false;
				}
				else {
					var div = $("#"+id2).closest("div");
					div.removeClass(" has-error ")
					$("#no").remove();
					return true;
				}
			}
			$(document).ready(
					function()
					{

						$("#xn").click(function()
						{

							if(!validate("input1"))
							{
								return false;
							}
							if(!validate("input2"))
							{
								return false;
							}
							if(!validate("input3"))
							{
								return false;
							}
							
							
							$("#input1").val("");
							$("#input2").val("");
							$("#input3").val("");
							
						});
						$("#submi").click(function()
								{
							if(!validate("in1"))
							{
								return false;
							}
							if(!validate("in2"))
							{
								return false;
							}
							if(!validate("in3"))
							{
								return false;
							}
							if(!validate("in4"))
							{
								return false;
							}
							if(!validate("in5"))
							{
								return false;
							}
								});
						
						$("#submit").click(function()
								{
							if(!validate("pass1"))
							{
								
								return false;
							}
							if(!validate("pass2"))
							{
								return false;
							}
							if(!validate("pass3"))
							{
								return false;
							}
							if(!ktmkcu("pass1","mk"))
							{
								return false;
							}
							if(!ktmkmoi("pass2","pass3"))
							{
								return false;
							}
							
							
								});
					
					}
				);
		</script>
		<script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
</body>
</html>