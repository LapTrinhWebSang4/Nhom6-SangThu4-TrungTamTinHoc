<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

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
				
				<li class=""><a href="QTNDCaNhan.jsp"> <i
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
			<div class="main-content-inner">
				<div class="row">
					<div class="container-fluid">
						<ul class="nav nav-justified w3-pale-blue">
							<li><a href="Home.jsp"><strong>Trang chủ</strong></a></li>
							<li><a href="thongbao.jsp"><strong>Thông báo</strong></a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><strong>Giới thiệu</strong><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="thungo.jsp"><strong>Thư ngỏ</strong></a></li>
									<li><a href="giangvien.jsp"><strong>Đội ngủ
												giản viên</strong></a></li>
									<li><a href="nhiemvu.jsp"><strong>Chức năng
												nhiệm vụ</strong></a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><strong>Lịch khai
										giảng</strong><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Dangkiwindows-win.jsp"><strong>Windows
												1 tháng 10</strong></a></li>
									<li><a href="Dangkiandroid-cban.jsp"><strong>Android
												1 tháng 10</strong></a></li>
								</ul></li>

							<li><a href="tuvan-send.jsp"><strong>Tư
										vấn-hỏi đáp</strong></a></li>
							<li><a href="login.jsp"><strong>Đăng xuất</strong></a></li>
						</ul>
					</div>
				</div>
				<div class="page-content">
				<div class="space-32"></div>
					<form style="padding-top: 25px" action="InsertTB" method="post" enctype="multipart/form-data">
						<div class="col-sm-12 ">

							<div class="panel panel-primary">
								<div class="panel-heading" style="color: #f6bb42">
									<h3>
										<Strong>Thêm Thông Báo</Strong>
									</h3>
								</div>

								<div class="col-md-13 well">
								
									<div class="col-md-7">
									<div class="form-group">
										<label for="inputlg">Mã Thông Báo: </label> <input
											class="form-control" id="mathongbao" type="text" name="mathongbao" onkeyup="changetext()"
											>

									</div>
									<div class="form-group">
										<label for="inputlg">Tên Tiêu Đề: </label> <input
											class="form-control" id="tieude" type="text" name="tieude"
											placeholder="Tiêu đề bài báo...">

									</div>
									<div class="form-group">
													<label for="inputlg">Loại Thông Báo</label> <select
														class="form-control" name="box" id="box" >

														<option>slide</option>
														<option >Thong Bao</option>
														<option>Su Kien</option>

													</select>
												</div>
									<div class="form-group">
										<label for="inputlg">Tóm Tắt:</label>
										<textarea class="form-control" rows="6" id="tomtat" name="tomtat"></textarea>
									</div>
									</div>
									<div class="col-md-5">
									<img src="Hinh/THONGBAO.png" class="img-rounded" alt="" width="150" height="100" id="imgID">
									<div class="fileUpload btn btn-default">
										
											<input id="uploadBtn" type="file" onchange="onFileSelected(event)" name="photo" class="upload">
	
											
												
											</div>
										
											
										</div>
									
									
								
										
									<div class="form-group" style="padding-top: 500px">
									
										<label for="inputlg">Nội Dung:</label>
										<textarea class="form-control" rows="15" id="noidung" name="noidung"></textarea>
									

									
									

									<div class="form-group"
										style="text-align: left; padding-top: 10px; padding-bottom: 10px">
										<button type="submit" class="btn btn-primary " id="taotb">
											Tạo Thông báo </button> 
											<a href="QTNDThongBao.jsp"
											class="btn btn-danger" role="button"> Hủy bỏ </a>
									</div>
								
								</div>
							</div>
								</div>
							</div>
					
					</form>
					
					
				</div>
			</div>
		</div>
	</div>
	<!-- /.main-container -->
	<script type="text/javascript">
		function onFileSelected(event) {
			var selectedFile = event.target.files[0];
			var reader = new FileReader();

			var imgtag = document.getElementById("imgID");
			imgtag.title = selectedFile.name;
			
			reader.onload = function(event) {
				imgtag.src = event.target.result;
			};

			reader.readAsDataURL(selectedFile);
			
		}
	</script>



	<!--Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		
	<script type="text/javascript">
	function changetext() {
		var MaTB = $("#mathongbao").val();
		
		$.get('LayTTTB',{MaTB: MaTB},function(response){
			
			if( response.MaThongBao == $("#mathongbao").val())
				{
				var div = $("#mathongbao").closest("div");
				div.addClass("has-error")
				alert(response.MaThongBao);
				$("#no").remove();
				div.append('<small class="form-text text-muted" id="no">Mã thông báo bị trùng vui lòng chọn mã khác</small>');
				}
			else {
				
				var div = $("#mathongbao").closest("div");
				div.removeClass("has-error");
				$("#no").remove();
				
				
			}
			
			
			
		})
	};
		function validate(id)
		{
			if($("#"+id).val()==null || $("#"+id).val()=="")
			{
				var div = $("#"+id).closest("div");
				div.addClass("form-group has-error has-feedback")
				
				return false;
			}else {
				var div = $("#"+id).closest("div");
				div.removeClass("form-group has-error has-feedback")
				
				return true;
			}
		}
		
		$(document).ready(
				function()
				{

					$("#taotb").click(function()
					{

						if(!validate("mathongbao"))
						{
							return false;
						}
						if(!validate("tieude"))
						{
							return false;
						}
						if(!validate("noidung"))
						{
							return false;
						}
						if(!validate("tomtat"))
						{
							return false;
						}
						
						
						
					});
				});
		</script>
		

</body>
</html>