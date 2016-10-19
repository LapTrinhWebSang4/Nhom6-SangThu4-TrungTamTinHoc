<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="css/cssfornav2.css">
<link rel="stylesheet" type="text/css" href="Asset/Login.css"/>

<style>
	#custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(255, 255, 255, 1);
}
#custom-bootstrap-menu.navbar-default {
    font-size: 14px;
    background-color: rgba(0, 130, 200, 1);
    border-width: 1px;
    border-radius: 0px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(0, 130, 200, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: white;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar
 {
    background-color: #0082c8;
}
@media screen and (max-width:800px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
	color:white;
	}
	#navbar-img{
		display:none;
	}
}
@media screen and (min-width:800px){
	.navbar.navbar-default.navbar-fixed-top{
		margin-top:120px;	
	}
}

</style>
</head>
<body>
	
	<div id="navbar-img" class="navbar navbar-default          ace-save-state">
		<img src="Asset/header ttth.jpg" style="width: 100%; height: 120px">
		<div class="navbar-container ace-save-state" id="navbar-container">
		</div>
	</div>
	<!-- Navbar -->
	<div class="navbar navbar-default navbar-fixed-top" id="custom-bootstrap-menu" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
				 <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Project name</a>
		</div>
		<div class="navbar-collapse collapse">

			<!-- Left nav -->
			<ul class="nav navbar-nav">
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
				<li><a href="#">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu" id="sub1">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link <span
								class="caret"></span></a>
							<ul class="dropdown-menu" id="sub2">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">A long sub menu <span class="caret"></span></a>
									<ul class="dropdown-menu" id="sub3">
										<li><a href="#">Action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="disabled"><a class="disabled" href="#">Disabled
												item</a></li>
										<li><a href="#">One more link</a></li>
										<li><a href="#">Menu item 1</a></li>
										<li><a href="#">Menu item 2</a></li>
										<li><a href="#">Menu item 3</a></li>
										<li><a href="#">Menu item 4</a></li>
										<li><a href="#">Menu item 5</a></li>
										<li><a href="#">Menu item 6</a></li>
									
									
									
									</ul></li>
								<li><a href="#">Another link</a></li>
								<li><a href="#">One more link</a></li>
							</ul></li>
					</ul></li>
			</ul>

			<!-- Right nav -->
			<ul class="nav navbar-nav navbar-right">
				<li class="myactive"><a href="bootstrap-navbar.html">Default</a></li>
				<li><a href="bootstrap-navbar-static-top.html">Static top</a></li>
				<li><a href="bootstrap-navbar-fixed-top.html">Fixed top</a></li>
				<li><a href="bootstrap-navbar-fixed-bottom.html">Fixed
						bottom</a></li>
				<li><a href="#">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">A sub menu <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="disabled"><a class="disabled" href="#">Disabled
										item</a></li>
								<li><a href="#">One more link</a></li>
							</ul></li>
						<li><a href="#">A separated link</a></li>
					</ul></li>
			</ul>

		</div>
		<!--/.nav-collapse -->
	</div>













	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="whole-form">
					<form action="" method="post" role="form">
						<legend>Login</legend>
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" value="tvv" name="kien"
									checked="checked"> Tư vấn viên </label> <label> <input
									type="checkbox" value="nqtnd" name="kien" id="box2">
										Người quản trị nội dung </label> <label> <input
									type="checkbox" value="qtv" name="kien" id="box1"> Quản
										trị viên </label>
							</div>
						</div>
						<div class="form-group">
							<label for="">Tài khoản</label> <input type="text"
								class="form-control" id="" placeholder="username">
						</div>
						<div class="form-group">
							<label for="">Mật khẩu</label> <input type="password"
								class="form-control" id="" placeholder="password">
						</div>
						<div class="form-group">
							<a href="" id="link"
								class="btn btn-primary col-sm-offset-9 btn-sm">Đăng nhập</a>
						</div>






					</form>

				</div>
			</div>
		</div>

	</div>



	<!--Jquery-->
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="js/jsfornav2.js"></script>

<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="js/jsfornav2-1.js"></script>



</body>
</html>
