<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="UTF-8">
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
    	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
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
			h2{
				color:#669fca
			}
			ul{
				list-style-type:none;
			}
		</style>
    	
		

		
	</head>
	<body class="no-skin">
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="kien2509" />
	


	<!--nav-->
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div>
				<img src="Asset/header ttth.jpg" style="width: 100%;height: 120px" >
			</div>
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
				<div class="main-content-inner">

					
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
					<li><a href="static-login.jsp">Đăng xuất</a></li>
				</ul>						
				</div>			
				
				
				<!--Region Giới thiệu -->	
				<sql:query var="result_khoahoc" sql="select * from khoahoc where MaKhoaHoc ='${param.khoahoc}'" dataSource="${con}" />
				<c:forEach var="row_khoahoc" items="${result_khoahoc.rows }">
					<div class="row" style="margin-left: 1%;margin-top: 1%">	
					<div class="col-sm-12">
						<div class="widget-box">
							<div class="widget-header">
								<h4 class="widget-title lighter smaller">
									<i></i><h4 class="text-center">Giới thiệu khóa học</h4><i></i>
								</h4>
								
							</div>

							<div class="widget-body">
								<div class="widget-main no-padding">
									<div class="jumbotron">
									<div class="row">								
										<div class="col-md-6"><a href="${pageContext.servletContext.contextPath }/DownloadFile?filename=${row_khoahoc.url}">
										<img class="img-responsive img-thumbnail" src="${pageContext.servletContext.contextPath }/RetrieveImage?khoahoc=${row_khoahoc.MaKhoaHoc}"></img>
										</a>
											
										</div>																
										<div class="col-md-6">
											<h2>Giới Thiệu</h2>
									<p>${row_khoahoc.GioiThieu}</p>
									
									
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="khoa-hoc-1" align="center" style="width:100%;height: 100%" id="manhinhchinh1">
								<div>
									
									<h2 style="padding-left:10px;">${row_khoahoc.TenKhoaHoc}</h2>
									<img src="Asset/ngoisao_cam.png"></img>
									<div>
										<span class="glyphicon glyphicon-calendar" style="color:#669fca;font-size:20px;padding-left:10px;"></span><h3 style="display:inline;color:#669fca;">Ngày khai giảng</h3><span style="display:block;font-size:20px;margin-left: 5px;margin-top:5px;">${row_khoahoc.NgayKhaiGiang}</span>
									</div>
									<sql:query var="result_miengiam" sql="select * from miengiam where MaKhoaHoc='${param.khoahoc }'" dataSource="${con}" />
									<h2 style="padding-left:10px;">Chế độ miễn giảm</h2>
									<ul>
										<c:forEach var="row_miengiam" items="${result_miengiam.rows }">
											<li>Giảm ${row_miengiam.TienGiam*100} cho ${row_miengiam.DoiTuong}</li>
										</c:forEach>
										</ul>
									
									<div style="padding-left:10px;">
										<h2>Lịch học</h2>
										<sql:query var="result_lichhoc" sql="select * from lophoc where MaKhoa='${param.khoahoc }'" dataSource="${con}" />
										<ul>
											<c:forEach var="row_lichhoc" items="${result_lichhoc.rows}">
												<li>${row_lichhoc.MaLop}  :  ${row_lichhoc.LichHoc}</li>
											</c:forEach>
										</ul>
									</div>
									</div>							
			              			<div align="center">
			              				<button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#myModal2"></span> Sửa</button>
			              			<button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-trash" data-toggle="modal" data-target="#myModal3"></span> Xóa</button>
			              			</div>	
									</div>
										</div>
										
									</div>
								</div>
								</div>
							</div><!--end widget body-->
						</div><!--end widget box-->
					</div><!--end col md 6-->
					<div class="col-md-6">
						
					</div><!--end col md 6-->
				</div><!--End row-->		
					
				</c:forEach>
							
				
				
					
				</div><!--End main content inner-->

				
				</div><!--End content-->
				
		</div><!-- /.main-container -->




		<!--Modal1-->
         <div class="modal fade" id="myModal1" role="dialog">
          <div class="modal-dialog">
    
            <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Thêm khóa học</h4>
                </div>
                <div class="modal-body">
                	<form id="sua_form" method="post" action="" role="form" >
                    <div class="form-group">
                    	<label for="input_id">Khóa học ID :</label>
                    	<input type="text" name="" id="input_id" class="form-control" value="" required="required" pattern="" title="">
                    </div>
                    <div class="form-group">
                    	<label for="input_id">Tên khóa học :</label>
                    	<input type="text" name="" id="input_tenkh" class="form-control" value="" required="required" pattern="" title="">
                    </div>
                    <div class="form-group">
                    	<label for="input_id">Giới thiệu :</label>
                    	<textarea name="" id="input_textarea" class="form-control" rows="3" required="required"></textarea>
                    </div>
                  	<div class="form-group">
                  		<label for="input_id">Chế độ miễn giảm :</label>
                  		<input type="text" name="" id="input_cdmg" class="form-control" value="" required="required" pattern="" title="">
                  	</div>
                  	<div class="form-group">
                  		<label for="input_id">Ngày khai giảng :</label>
                  		<input type="email" name="" id="input_nkg" class="form-control" value="" required="required" title="">
                  	</div>
                  	<div class="form-group">
                  		<label for="input_id">Mã Loại :</label>
                  		<input type="text" name="" id="input_ml" class="form-control" value="" required="required" title="">
                  	</div>                       
                    <button type="submit" id="button-modal1" class="btn btn-primary" style="text-align: center;width: 120px;margin-left: 450px;margin-top: 10px">Thêm</button>
                      
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
                
            </div>
      
          </div>
          <!--End Modal1-->

          <!--Modal2-->
        
        <div class="modal fade" id="myModal2" role="dialog">
          <div class="modal-dialog">
    
            <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Sửa khóa học</h4>
                </div>
                <div class="modal-body">
                	<form id="sua_form" method="post" action="" role="form" >
                    <div class="form-group">
                    	<label for="input_id">Khóa học ID :</label>
                    	<input type="text" name="" id="input_id1" class="form-control" value="" required="required" pattern="" title="">
                    </div>
                    <div class="form-group">
                    	<label for="input_id">Tên khóa học :</label>
                    	<input type="text" name="" id="input_tenkh1" class="form-control" value="" required="required" pattern="" title="">
                    </div>
                    <div class="form-group">
                    	<label for="input_id">Giới thiệu :</label>
                    	<textarea name="" id="input_textarea" class="form-control" rows="3" required="required"></textarea>
                    </div>
                  	<div class="form-group">
                  		<label for="input_id">Chế độ miễn giảm :</label>
                  		<input type="text" name="" id="input_cdmg" class="form-control" value="" required="required" pattern="" title="">
                  	</div>
                  	<div class="form-group">
                  		<label for="input_id">Ngày khai giảng :</label>
                  		<input type="email" name="" id="input_nkg1" class="form-control" value="" required="required" title="">
                  	</div>
                  	<div class="form-group">
                  		<label for="input_id">Mã Loại :</label>
                  		<input type="text" name="" id="input_ml1" class="form-control" value="" required="required" title="">
                  	</div>                                                   	
                    <button type="submit" class="btn btn-primary" id="button-modal2"  style="text-align: center;width: 120px;margin-left: 450px;margin-top: 10px">Lưu</button>
                     </form>
				
				
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
                
            </div>
      
          </div>
          
          <!--End Modal2-->


          <!--Modal3-->
        <div class="modal fade" id="myModal3" role="dialog">
          <div class="modal-dialog">
    
            <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Xóa khóa học</h4>
                </div>
                <div class="modal-body" align="center">
                    Có chắc muốn xóa không?
                    <div align="center">
                    	<button type="button" class="btn btn-primary" style="text-align: center;width: 120px;">Hủy</button>     	
                    	<button type="button" class="btn btn-primary" style="text-align: center;width: 120px;">Xóa</button>
                    </div>
                     
                  </div>
                  <div class="modal-footer">
                  	
                </div>
              </div>
                
            </div>
      
          </div>
          <!--End Modal3-->
		


		<!--Script-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript">
			function validateText(id){
				if($("#"+id).val()==null||$("#"+id).val()==""){
					var div =$("#"+id).closest("div");
					div.removeClass("has-success");
					$("#glypcn"+id).remove();
					div.addClass("has-error has-feedback");
					div.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-remove form-control-feedback"></span>');
					return false;
				}
				else{
					var div = $("#"+id).closest("div");
					div.removeClass("has-error");
					div.addClass("has-success has-feedback");
					$("#glypcn"+id).remove();
					div.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-ok form-control-feedback"></span>');
					return true;
				}
			}
			$(document).ready(
					function(){
						$("#button-modal1").click(function(){
							if(!validateText("input_id")){
								return false;
							}
							if(!validateText("input_tenkh")){
								return false;
							}
							if(!validateText("input_nkg")){
								return false;
							}
							if(!validateText("input_ml")){
								return false;
							}
						});
					}
					);
			$(document).ready(
					function(){
						$("#button-modal2").click(function(){
							if(!validateText("input_id1")){
								return false;
							}
							if(!validateText("input_tenkh1")){
								return false;
							}
							if(!validateText("input_nkg1")){
								return false;
							}
							if(!validateText("input_ml1")){
								return false;
							}
						});
					}
					);
			</script>
    	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    	<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
	
		</script>
		
		


		<!--End Script-->
	</body>
</html>