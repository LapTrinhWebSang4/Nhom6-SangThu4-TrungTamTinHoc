<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Model.TaiKhoan"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Dashboard - Ace Admin</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

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

.row-content {
	background: #edf3f4;
	color: #3361b1;
}
.chat-site{
	right:0;
	bottom :0px;
	outline:none;
	z-index:9000;
	height:400px;
	

}
p{
	word-wrap: break-word;
}
.chat-site>div{
display:inline-block;
padding-right:8px;
padding-left:8px;
}
</style>



<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

			<style type="text/css">
.chat {
	list-style: none;
	margin: 0;
	padding: 0;
}

.img-circle {
	bottom: 0;
}

.chat li {
	margin-bottom: 10px;
	padding-bottom: 5px;
	border-bottom: 1px dotted #B3A9A9;
}

.chat li.left .chat-body {
	margin-left: 60px;
}

.chat li.right .chat-body {
	margin-right: 60px;
}

.img-circle {
	bottom: 0;
	margin-bottom: 0;
	padding-bottom: 0;
	outline: none;
}

.panel-header-closed-to-bottom {
	bottom: 0 !important;
	padding-bottom: 0;
	margin-bottom: 0;
}

.box-chat {
	height: 400px;
	width: 300px;
}

.chat li .chat-body p {
	margin: 0;
	color: #777777;
}

.panel .slidedown .glyphicon, .chat .glyphicon {
	margin-right: 5px;
}

.panel-body {
	overflow-y: scroll;
	height: 250px;
}

::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}

::-webkit-scrollbar {
	width: 12px;
	background-color: #F5F5F5;
}

::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	background-color: #555;
}
</style>
</head>
<body class="no-skin">
	
	<!-- SQL statement -->
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://Localhost/ttth" user="root" password="kien2509" />
	<sql:query var="result_cauhoi" sql="select * from cauhoi"
		dataSource="${con }" />
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
			<div class="main-content-inner">
				<div class="container-fluid">
					<ul class="nav nav-justified w3-pale-blue">
						<li><a href="Home.jsp">Trang chủ</a></li>
						<li><a href="thongbao.jsp">Thông báo</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Giới thiệu<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="thungo.jsp">Thư ngỏ</a></li>
								<li><a href="giangvien.jsp">Đội ngủ giản viên</a></li>
								<li><a href="nhiemvu.jsp">Chức năng nhiệm vụ</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Lịch khai giảng<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="Dangkiwindows-win.jsp">Windows 1 tháng 10</a></li>
								<li><a href="Dangkiandroid-cban.jsp">Android 1 tháng 10</a></li>
							</ul></li>

						<li><a href="tuvan-send.html">Tư vấn-hỏi đáp</a></li>
						<li><a href="HandleLogout">Đăng xuất</a></li>
					</ul>
				</div>
				<div class="page-content">
					<div class="page-header" style="margin-top: 0%">
						<h1>Dashboard <%out.println(session.getId()); %></h1>
					</div>
					<!-- /.page-header -->
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="alert alert-block alert-info">
								<button type="button" class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>

								<i class="ace-icon fa fa-check blue"></i> Welcome to <strong
									class="blue"> Trung tâm tin học đại học sư phạm kỹ
									thuật TP.Hồ Chí Minh </strong>,How are you today ?
							</div>

							<div class="row">
								<div class="space-6"></div>

								<div class="col-sm-12 infobox-container">
									<div class="infobox infobox-green">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-comments"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">32</span>
											<div class="infobox-content">số câu hỏi vừa nhận</div>
										</div>

										<div class="stat stat-success">8%</div>
									</div>

									<div class="infobox infobox-blue">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-twitter"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">11</span>
											<div class="infobox-content">Mức độ hài lòng</div>
										</div>

										<div class="badge badge-success">
											+32% <i class="ace-icon fa fa-arrow-up"></i>
										</div>
									</div>

									<div class="infobox infobox-pink">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-shopping-cart"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number" style="margin-top: -4%">10</span>
											<div class="infobox-content">Lượng học viên đăng ký hôm
												nay</div>
										</div>
										<div class="stat stat-important">4%</div>
									</div>

									<div class="infobox infobox-red">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-flask"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">7</span>
											<div class="infobox-content">Số câu hỏi vi phạm</div>
										</div>
									</div>

									<div class="infobox infobox-orange2">
										<div class="infobox-data">
											<span class="infobox-data-number">6,251</span>
											<div class="infobox-content">Lượt view trang web</div>
										</div>

										<div class="badge badge-success">
											7.2% <i class="ace-icon fa fa-arrow-up"></i>
										</div>
									</div>

									<div class="infobox infobox-blue2">
										<div class="infobox-data">
											<span class="infobox-data-number" style="margin-top: -4%">200</span>
											<div class="infobox-content">Lượng học viên đăng ký
												trực tuyến</div>
										</div>
										<div class="badge badge-success">
											7.2% <i class="ace-icon fa fa-arrow-up"></i>
										</div>
									</div>

									<div class="space-6"></div>

									<div class="infobox infobox-green infobox-small infobox-dark">
										<div class="infobox-progress">
											<div class="easy-pie-chart percentage" data-percent="61"
												data-size="39"
												style="height: 39px; width: 39px; line-height: 38px;">
												<span class="percent">61</span>%
												<canvas height="39" width="39"></canvas>
											</div>
										</div>

										<div class="infobox-data">
											<div>
												<div class="infobox-content">câu hỏi đã trả lời</div>
											</div>


										</div>
									</div>

									<div class="infobox infobox-blue infobox-small infobox-dark"
										style="width: 135px;">
										<div class="infobox-progress">
											<div class="easy-pie-chart percentage" data-percent="61"
												data-size="39"
												style="height: 39px; width: 39px; line-height: 38px;">
												<span class="percent">29</span>%
												<canvas height="39" width="39"></canvas>
											</div>
										</div>

										<div class="infobox-data">
											<div>
												<div class="infobox-content" style="width: 100px;">câu
													hỏi chưa trả lời</div>
											</div>


										</div>
									</div>
								</div>

								<div class="vspace-12-sm"></div>

							</div>
							<!-- /.row -->

							<div class="hr hr32 hr-dotted"></div>

							<div class="row">
								<div class="col-sm-12">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-flat">

											<h4 class="widget-title lighter">
												<i class="ace-icon fa fa-star orange"></i> Danh sách câu hỏi
											</h4>

											<div class="widget-toolbar">
												<a href="#" id="clickhere"> <i
													class="ace-icon fa fa-chevron-up" id="arrow"></i>
												</a>
											</div>
										</div>

										<div class="widget-body" id="danh-sach-cau-hoi-cho-tra-loi">
											<div class="widget-main no-padding">
												<table id="simple-table"
													class="table  table-bordered table-hover">
													<thead>
														<tr>
															<th class="detail-col">Details</th>
															<th>Họ tên</th>
															<th>Tiêu đề</th>
															<th class="hidden-480">Lĩnh vực</th>

															<th><i
																class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
																Ngày hỏi</th>
															<th class="hidden-480">Tình trạng</th>

															<th></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="row_cauhoi" items="${result_cauhoi.rows}">
															<tr id="title-${row_cauhoi.MaCauHoi}">

																<td class="center">
																	<div class="action-buttons">
																		<a href="#" class="green bigger-140 show-details-btn" onclick="ShowDetail(this.id);return false;"
																			id="${row_cauhoi.MaCauHoi}" title="Show Details">
																			<i class="ace-icon fa fa-angle-double-down"></i> <span
																			class="sr-only">Details</span>
																		</a>
																	</div>
																</td>

																<td><a href="#">${row_cauhoi.TenNguoiHoi}</a></td>
																<td>${row_cauhoi.TieuDe }</td>
																<td class="hidden-480">${row_cauhoi.LinhVuc }</td>
																<td>${row_cauhoi.Ngay }</td>

																<td class="hidden-480"><span
																	class="label label-sm label-warning">${row_cauhoi.TinhTrang}
																</span></td>

																<td>
																	<div class="hidden-sm hidden-xs btn-group">
																		<button class="btn btn-xs btn-info">
																			<i class="ace-icon fa fa-pencil bigger-120"></i>
																		</button>

																		<button class="btn btn-xs btn-danger" id="btn-delete-${row_cauhoi.MaCauHoi}" onclick="deletecauhoi(this.id);return false;">
																			<i class="ace-icon fa fa-trash-o bigger-120"></i>
																		</button>

																		<button class="btn btn-xs btn-warning">
																			<i class="ace-icon fa fa-flag bigger-120"></i>
																		</button>
																	</div>

																	<div class="hidden-md hidden-lg">
																		<div class="inline pos-rel">
																			<button
																				class="btn btn-minier btn-primary dropdown-toggle"
																				data-toggle="dropdown" data-position="auto">
																				<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-info"
																					data-rel="tooltip" title=""
																					data-original-title="View"> <span class="blue">
																							<i class="ace-icon fa fa-search-plus bigger-120"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title=""
																					data-original-title="Edit"> <span class="green">
																							<i
																							class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title=""
																					data-original-title="Delete"> <span class="red">
																							<i class="ace-icon fa fa-trash-o bigger-120"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</td>
															</tr>





															<tr class="detail-row" id="detail-row-${row_cauhoi.MaCauHoi }">
																<td colspan="8">
																	<div class="table-detail">
																		<div class="row">
																			<div class="col-xs-12 col-sm-9">
																				<div class="space visible-xs"></div>
																				<div class="row-content">
																					<p>${row_cauhoi.NoiDung}</p>
																				</div>

																			</div>

																			<div class="col-xs-12 col-sm-3">
																				<div class="space visible-xs"></div>
																				<h4 class="header blue lighter less-margin">Send
																					a message to ${row_cauhoi.TenNguoiHoi}</h4>

																				<div class="space-6"></div>

																				<form action="UpdateCauHoi"  method="post" id="form-traloi-${row_cauhoi.MaCauHoi}">
																					<fieldset>
																						<input type="hidden" name="macauhoi" value="${row_cauhoi.MaCauHoi}"></input>
																						<textarea class="width-100" name="traloi" resize="none"
																							placeholder="Type something…"></textarea>
																					</fieldset>

																					<div class="hr hr-dotted"></div>

																					<div class="clearfix">
																						<label class="pull-left"> <input
																							type="checkbox" class="ace"> <span
																								class="lbl"> Email me a copy</span></label>

																						<button id="btn-${row_cauhoi.MaCauHoi}" onclick="SubmitForm(this.id)"
																							class="pull-right btn btn-sm btn-primary btn-white btn-round"
																							type="button">
																							Submit <i
																								class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																						</button>
																					</div>
																				</form>
																			</div>
																		</div>
																	</div>
																</td>
															</tr>

														</c:forEach>

													</tbody>
												</table>
											</div>
											<!-- /.widget-main -->
										</div>
										<!-- /.widget-body -->
									</div>
									<!-- /.widget-box -->
								</div>
								<!-- /.col -->


							</div>
							<!-- /.row -->

							<div class="hr hr32 hr-dotted"></div>




							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
					<div class="chat-site"></div>
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!--End content-->
	</div>
	<!-- /.main-container -->

	<div style="right: 0px; bottom: 125px; position: fixed;" id="icon-chat">
		<img src="element/chat.gif" class="img-responsive"
			style="height: 100px; width: 100px">
	</div>
	
		<input type="hidden" id="peerid" name="peerid" value="${taikhoan.tenThanhVien}"></input>
		


	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#clickhere").click(function(event) {
				if ($("#arrow").prop('class') == "ace-icon fa fa-chevron-up") {
					$("#arrow").removeClass('ace-icon fa fa-chevron-up');
					$("#arrow").addClass('ace-icon fa fa-chevron-down');
					$("#danh-sach-cau-hoi-cho-tra-loi").slideToggle("fast");
					return false;
				} else {
					$("#arrow").removeClass('ace-icon fa fa-chevron-down');
					$("#arrow").addClass('ace-icon fa fa-chevron-up');
					$("#danh-sach-cau-hoi-cho-tra-loi").slideToggle("fast");
					return false;

				}

			});
		});
		
		
		
	</script>


	<!-- <![endif]-->

	<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>



	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/jquery.sparkline.index.min.js"></script>
	<script src="assets/js/jquery.flot.min.js"></script>
	<script src="assets/js/jquery.flot.pie.min.js"></script>
	<script src="assets/js/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script src="http://cdn.peerjs.com/0.3/peer.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(document).ready(function() {
			
			$("#icon-chat").click(function(event) {
				$("#chat-box").toggle("slow");
			});
		});
		function ShowDetail(id) {
			$("#detail-row-"+id).slideToggle("fast");
			return false;
		}
		function SubmitForm(id){
			id=id.replace("btn-","");
			console.log(id);
			$("#form-traloi-"+id).submit();
		}
		function deletecauhoi(id){
			id = id.replace("btn-delete-","");
			console.log("delete record with ma cau hoi :"+id);
			$.ajax({
				type:'post',
				url:'DeleteCauHoi',
				data:{macauhoi:id},
				success:function(){
					$("#title-"+id).remove();
					$("#detail-row-"+id).remove();
				},
				error:function(){
					alert("can't not delete record");
				}
			});
		}
		
		
		jQuery(function($) {

			//flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			//but sometimes it brings up errors with normal resize event handlers
			$.resize.throttleWindow = false;

			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});

			/**
			we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			so that's not needed actually.
			 */

			//pie chart tooltip example
			var $tooltip = $(
					"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
					.hide().appendTo('body');
			var previousPoint = null;

			placeholder.on('plothover', function(event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : "
								+ item.series['percent'] + '%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({
						top : pos.pageY + 10,
						left : pos.pageX + 10
					});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}

			});

			/////////////////////////////////////
			$(document).one('ajaxloadstart.page', function(e) {
				$tooltip.remove();
			});

			$('#recent-box [data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('.tab-content')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

			$('.dialogs,.comments').ace_scroll({
				size : 300
			});

			//show the dropdowns on top or bottom depending on window height and menu position
			$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
				var offset = $(this).offset();

				var $w = $(window)
				if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
					$(this).addClass('dropup');
				else
					$(this).removeClass('dropup');

			});

		});
		$(document).ready(function(){
			var activenode = $("a[href='static-dashboard.jsp']").parent();
			activenode.addClass('active');	
		});
	</script>

		<script src="js/PeerConnect.js"></script>
		
	<!--End Script-->
</body>
</html>
