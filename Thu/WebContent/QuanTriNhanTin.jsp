<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.min.js"></script>

    	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    	<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
    	<link rel="stylesheet" type="text/css" href="Asset/headercss.css">
    	<style >
    		.me{
				    font-size: 14px;
				    margin: -4px;
				    border-right: 3px solid #60DF88 !important;
				    padding: 5px;
				    background-color: rgb(239, 255, 241);
				}

				.you{
				    font-size: 14px;
				    margin: -4px;
				    border-left: 3px solid rgb(255, 112, 0) !important;
				    padding: 5px;
				    padding-left:10px;
				    background-color: rgb(247, 247, 214);
				}
    	</style>


		
	</head>
	<body class="no-skin">
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











		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				

				<ul class="nav nav-list">
				<div class="space-32"></div>
				<div class="space-32"></div>
				<div class="space-32"></div>
					<li class="#"><a href="QuanTriVien.jsp"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Quản Lí Thành Viên </span>
				</a> <b class="arrow"></b></li>

				<li class="#"><a href="QuanTriMail.jsp"> <i
						class="menu-icon fa fa-envelope"></i> <span class="menu-text">
							Gửi Mail </span>
				</a> <b class="arrow"></b></li>
				<li class="active"><a href="QuanTriNhanTin.jsp"> <i
						class="menu-icon fa fa fa-commenting-o"></i> <span
						class="menu-text"> Tin nhắn </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="static-login.jsp"> <i
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
							<li><a href="static-login.jsp"><strong>Đăng xuất</strong></a></li>							</ul>						
						</div>				
					</div>

					<div class="page-content">				

						<div class="page-header">
							<h1 style="color: #e9573f ">
								<strong>Tin Nhắn </strong>
							</h1>
						</div><!-- /.page-header -->

			
						<div class="row">
							<div class="col-xs-12"">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-7">
										<div class="tabbable"  style="border: solid 2px #37BC9B" >
											

											<div class="tab-content no-border no-padding">
												<div id="inbox" class="tab-pane in active">
													<div class="message-container">
														<div id="id-message-list-navbar" class="message-navbar clearfix">
															<div class="message-bar">
																<div class="message-infobar" id="id-message-infobar">
																	<span class="blue bigger-150">Inbox</span>
																	<span class="grey bigger-110">(2 Tin nhắn chưa đọc)</span>
																</div>
																<div class="nav-search minimized">
																	<form class="form-search">
																		<span class="input-icon">
																			<input type="text" autocomplete="off" class="input-small nav-search-input" placeholder="Search inbox ...">
																			<i class="ace-icon fa fa-search nav-search-icon"></i>
																		</span>
																	</form>
																</div>
															</div>
														</div>

														

														<div class="message-list-container">
															<div class="message-list" id="message-list">
																<div class="message-item message-unread">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star orange2"></i>
																	<span class="sender" title="PTG">Pham Truong Giang  </span>
																	<span class="time">1:33 pm</span>

																	<span class="summary">
																		<span class="text">
																			Click to open this message
																		</span>
																	</span>
																</div>

																<div class="message-item message-unread">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star-o light-grey"></i>

																	<span class="sender" title="NND">
																		Nguyen Ngoc Duong
																		<span class="light-grey">(4)</span>
																	</span>
																	<span class="time">7:15 pm</span>

																	<span class="attachment">
																		<i class="ace-icon fa fa-paperclip"></i>
																	</span>

																	<span class="summary">
																		<span class="badge badge-pink mail-tag"></span>
																		<span class="text">
																			Clik to open this message right here
																		</span>
																	</span>
																</div>

																<div class="message-item">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star-o light-grey"></i>
																	<span class="sender" title="NTT">Nguyen Thi Trang </span>
																	<span class="time">10:15 am</span>

																	<span class="attachment">
																		<i class="ace-icon fa fa-paperclip"></i>
																	</span>

																	<span class="summary">
																		<span class="message-flags">
																			<i class="ace-icon fa fa-reply light-grey"></i>
																		</span>
																		<span class="text">
																			Làm xog rồi
																		</span>
																	</span>
																</div>

																<div class="message-item">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star orange2"></i>
																	<span class="sender" title="NTK">Phan Tuấn Kiệt</span>
																	<span class="time">Yesterday</span>

																	<span class="summary">
																		<span class="text">
																			Hôm qua mới họp xong
																		</span>
																	</span>
																</div>

																<div class="message-item">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star-o light-grey"></i>
																	<span class="sender" title="NP">Nguyễn Phúc </span>
																	<span class="time">Yesterday</span>

																	<span class="attachment">
																		<i class="ace-icon fa fa-paperclip"></i>
																	</span>

																	<span class="summary">
																		<span class="badge badge-success mail-tag"></span>
																		<span class="text">
																			Chỉnh sửa nội dung trong bài Thủ Thuật 
																		</span>
																	</span>
																</div>

																<div class="message-item">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star-o light-grey"></i>
																	<span class="sender" title="TD">Tuan Duc</span>
																	<span class="time">April 5</span>

																	<span class="summary">
																		<span class="text">
																			Hôm qua gửi rồi 
																		</span>
																	</span>
																</div>

																<div class="message-item">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star-o light-grey"></i>
																	<span class="sender" title="DP">Duong Pham</span>
																	<span class="time">April 4</span>

																	<span class="summary">
																		<span class="message-flags">
																			<i class="ace-icon fa fa-reply light-grey"></i>
																		</span>
																		<span class="text">
																			hinh.jpg
																		</span>
																	</span>
																</div>

																
																

																<div class="message-item">
																	<label class="inline">
																		<input type="checkbox" class="ace">
																		<span class="lbl"></span>
																	</label>

																	<i class="message-star ace-icon fa fa-star-o light-grey"></i>
																	<span class="sender" title="Yahoo!">Nguyển Ngọc Hân</span>
																	<span class="time">March 27</span>

																	<span class="summary">
																		<span class="message-flags">
																			<i class="ace-icon fa fa-mail-forward light-grey"></i>
																		</span>
																		<span class="text">
																			Thiết kế được không 
																		</span>
																	</span>
																</div>
																<div class="message-item">
																	<label class="inline">
																		
																		<span class="lbl"></span>
																	</label>

																	
																	<span class="sender" title="Yahoo!"></span>
																	<span class="time"></span>

																	<span class="summary">
																		<span class="message-flags">
																			
																		</span>
																		<span class="text">
																			
																		</span>
																	</span>
																</div>
																<div class="message-item">
																	<label class="inline">
																		
																		<span class="lbl"></span>
																	</label>

																	
																	<span class="sender" title="Yahoo!"></span>
																	<span class="time"></span>

																	<span class="summary">
																		<span class="message-flags">
																			
																		</span>
																		<span class="text">
																			
																		</span>
																	</span>
																</div>
															</div>
														</div>

														<div class="message-footer clearfix">
															<div class="pull-left">  12 messages total </div>

															<div class="pull-right">
																<div class="inline middle"> page 1 of 3 </div>

																&nbsp; &nbsp;
																<ul class="pagination middle">
																	<li class="disabled">
																		<span>
																			<i class="ace-icon fa fa-step-backward middle"></i>
																		</span>
																	</li>

																	<li class="disabled">
																		<span>
																			<i class="ace-icon fa fa-caret-left bigger-140 middle"></i>
																		</span>
																	</li>

																	<li>
																		<span>
																			<input value="1" maxlength="3" type="text">
																		</span>
																	</li>

																	<li>
																		<a href="#">
																			<i class="ace-icon fa fa-caret-right bigger-140 middle"></i>
																		</a>
																	</li>

																	<li>
																		<a href="#">
																			<i class="ace-icon fa fa-step-forward middle"></i>
																		</a>
																	</li>
																</ul>
															</div>
														</div>

														<div class="hide message-footer message-footer-style2 clearfix">
															<div class="pull-left"> simpler footer </div>

															<div class="pull-right">
																<div class="inline middle"> message 1 of 3 </div>

																&nbsp; &nbsp;
																<ul class="pagination middle">
																	<li class="disabled">
																		<span>
																			<i class="ace-icon fa fa-angle-left bigger-150"></i>
																		</span>
																	</li>

																	<li>
																		<a href="#">
																			<i class="ace-icon fa fa-angle-right bigger-150"></i>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div><!--End inbox-->
										
											</div><!-- /.tab-content -->											
										</div><!-- /.tabbable -->
									</div><!-- /.col -->
									<div class="col-xs-5">
										
													<div class=" message-container" >
														<div class="widget-box" >
															<form class="form-horizontal" role="form"  style="border: solid 2px #37BC9B" >
															<div style="padding-top: 20px;">
																<div class="form-group" style="width: 100%;">
																	<label class="col-sm-2 control-label" for="form-field-1"></label>

																	<div class="col-sm-12" >
																	
																				<div class="form-group" style="padding-left:30px" >
																					<div class="row">
																						<div class="col-md-12">
																				    	    <div class="panel panel-primary">
																				              
																					              <div class="panel-body"  style="background:url('http://subtlepatterns.com/patterns/geometry2.png');height: 300px; }">
																					               
																					               <div class="clearfix"><blockquote class="you pull-left">Hello how do u do ?</blockquote></div>
               																						 <div class="clearfix"><blockquote class="me pull-right">Yup great !</blockquote></div>
																					              
																					                
																					              </div>
																				            </div>
																				        </div>
																				        </div>
																					</div>
																					
																				
																		
																	</div>

																</div>
																<div class="form-group" style="width: 100%">
																		<label class="col-sm-2 control-label" for="form-field-1-1">Người nhận </label>

																		<div class="col-sm-9" >
																			<input type="text" id="form-field-1-1" placeholder="To" class="form-control">
																		</div>
																	</div>
																<div class="form-group"  style="width: 100%">
																		<label class="col-sm-2 control-label " for="form-field-1-1">Nội dung </label>

																		<div class="col-sm-9">
																			<textarea name="" id="input" class="form-control" rows="4" required="required"></textarea>
																		</div>
																	</div>
																	<div class="form-group"  style="width: 100%">
																		<label class="col-sm-2 control-label " for="form-field-1-1"></label>

																		<div class="col-sm-9">
																			<div>
																				<button type="button" class="btn btn-success" style="float:right;width: 100%">Gửi</button>
																			</div>
																			
																		</div>
																	</div>
																	
															</div>
																</form>
														</div>

													</div>
													
									</div>
								</div><!-- /.row -->











								

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
							
						</div><!-- /.row -->
					
		
					</div><!-- /.page-content -->
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
			opentab("inbox");

			function opentab(id) {
			    var i;
			    var x = document.getElementsByClassName("tab-pane");
			    for (i = 0; i < x.length; i++) {
			        x[i].style.display = "none"; 
			    }
			    document.getElementById(id).style.display = "block";
			    if(id=="texting"){
			    	$(".message-content").addClass('hide');
			    }

			    
			}
			$(".text").click(function(event) {				
			    	
			    	
			    		$(".message-content").removeClass('hide');	
			    			   				
			});

		</script>

		<!--End Script-->
	</body>
</html>