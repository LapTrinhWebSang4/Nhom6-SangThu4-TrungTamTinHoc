<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="123456"/>
                       
		       <sql:query dataSource="${dbsource }"  var="result">SELECT * FROM thongbao
		            WHERE MaThongBao =?;
            <sql:param value='${param.MaThongBao}' /></sql:query>
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
							<li><a href="Home.jsp">Trang chủ</a></li>
							<li><a href="thongbao.jsp">Thông báo</a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Giới thiệu<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="thungo.jsp">Thư ngỏ</a></li>
									<li><a href="giangvien.jsp">Đội ngủ giản viên</a></li>
									<li><a href="nhiemvu.jsp">Chức năng nhiệm vụ</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Lịch khai giảng<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Dangkiwindows-win.jsp">Windows 1 tháng
											10</a></li>
									<li><a href="Dangkiandroid-cban.jsp">Android 1 tháng
											10</a></li>
								</ul></li>

							<li><a href="tuvan-send.jsp">Tư vấn-hỏi đáp</a></li>
							<li><a href="login.jsp">Đăng xuất</a></li>
						</ul>
					</div>
				</div>
				<div class="page-content">
				<div class="space-32"></div>
				<c:forEach var="col" items="${result.rows}">
					<form style="padding-top: 25px" action="UpdateTB" method="post" enctype="multipart/form-data">
						<div class="col-sm-12 ">

							<div class="panel panel-primary">
								<div class="panel-heading" style="color: #f6bb42">
									<h3>
										<Strong>Sửa Thông Báo</Strong>
									</h3>
								</div>

								<div class="col-md-13 well">
								
									<div class="col-md-7">
									<div class="form-group">
										<label for="inputlg">Mã Thông Báo: </label> <input
											class="form-control" id="mathongbao" type="text"  onkeyup="changetext()" disabled
											value="${col.MaThongBao}">

									</div>
									<div class="hide">
										 <input
											class="form-control" id="mathongbao" type="text" name="mathongbao" " 
											value="${col.MaThongBao}">

									</div>
									<div class="form-group">
										<label for="inputlg">Tên Tiêu Đề: </label> <input
											class="form-control" id="tieude" type="text" name="tieude"
											value="${col.TieuDe}">

									</div>
									<c:if test="${col.LoaiThongBao =='Su Kien'}">
												<div class="form-group">
													<label for="inputlg">Loại Thông Báo </label> <select
														class="form-control" name="box" onchange="changefun();" id="box">

														<option>slide</option>
														<option selected="selected">Su Kien</option>
														<option>Thong Bao</option>

													</select>



												</div>
												
												
												</c:if>
												
												<c:if test="${col.LoaiThongBao =='slide'}">
												<div class="form-group">
													<label for="inputlg">Loại Thông Báo </label> 
													<select class="form-control" name="box" onchange="changefun();" id="box">

														<option selected="selected">slide</option>
														<option >Su Kien</option>
														<option>Thong Bao</option>

													</select>



												</div>
												
												</c:if>
												<c:if test="${col.LoaiThongBao =='Thong Bao'}">
												<div class="form-group">
													<label for="inputlg">Loại Thông Báo</label>
													 <select class="form-control" name="box" onchange="changefun();" id="box">

														<option>slide</option>
														<option >Su Kien</option>
														<option selected="selected">Thong Bao</option>

													</select>



												</div>
												
												</c:if>
									<div class="form-group">
										<label for="inputlg">Tóm Tắt:</label>
										<textarea class="form-control" rows="6" id="tomtat" name="tomtat" ><c:out  value="${col.TomTat}" ></c:out></textarea>
									</div>
									</div>
									<div class="col-md-5">
									<img src="${pageContext.servletContext.contextPath }/GetImageThongBao?mathongbao=${col.MaThongBao}" class="img-rounded" alt="" width="150" height="100" id="imgID">
									<div class="fileUpload btn btn-default">
										
											<input id="uploadBtn" type="file" onchange="onFileSelected(event)" name="photo" class="upload">
	
											
												
											</div>
										
											
										</div>
									
									
								
										
									<div class="form-group" style="padding-top: 500px">
									
										<label for="inputlg">Nội Dung:</label>
										<textarea class="form-control" rows="15" id="noidung" name="noidung" ><c:out  value="${col.NoiDung}" ></c:out></textarea>
									

									
									

									<div class="form-group"
										style="text-align: left; padding-top: 10px; padding-bottom: 10px">
										<button type="submit" class="btn btn-primary " id="taotb">
											Hoàn Thành </button> 
											<a href="QTNDThongBao.jsp"
											class="btn btn-danger" role="button"> Hủy bỏ </a>
									</div>
								
								</div>
							</div>
								</div>
							</div>
					
					</form>
					</c:forEach>
					
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
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
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
	<script type="text/javascript">
		function validate(id)
		{
			if($("#"+id).val()==null || $("#"+id).val()=="")
			{
				var div = $("#"+id).closest("div");
				$("#glypcn"+id).remove();
				div.addClass("has-error has-feedback");
				
				div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-warning-sign form-control-feedback"></span>');
				return false;
			}else {
				var div = $("#"+id).closest("div");
				div.removeClass("form-group has-error has-feedback")
				$("#glypcn"+id).remove();
				return true;
			}
		}
		function reset(){
   		document.getElementById("inputtk").reset();
   	}
		$(document).ready(
				function()
				{

					$("#btntao").click(function()
					{

						if(!validate("inputtd"))
						{
							return false;
						}
						if(!validate("comment"))
						{
							return false;
						}
						
						$("#inputtd").val("");
						$("#comment").val("");
						alert("Sua Thanh Cong");
						
					});
				}
			);
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

</body>
</html>