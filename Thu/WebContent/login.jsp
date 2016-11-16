<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/cssfornav2.css">
<link rel="stylesheet" type="text/css" href="Asset/Login.css"/>

<style type="text/css">
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

.panel-default{
	box-shadow: 10px 10px 5px black;
}
.btn-primary{
	background-color: #0082c8;
}
.footer-nav {
	text-align: right;
	list-style: none;
}

.footer-nav li {
	display: inline;
}

.footer-nav li:before {
	contain: '|';
	padding: 0px 10px;
}
.navbar.navbar-default{
	padding-top:0px;
}


img{
	height:120px;	
	z-index:3;
}
body{
	background-color:lightgrey;
	background-image:url("Asset/tntt.jpg");
	background-repeat:no-repeat;
	z-index:-1;
	 rgba(255,255,255,0.4);
	 background-position:center; 
	 opactity:.1;
}



#login-form{
	padding-bottom:200px;
}
.footer-nav>li>a{
	color:white;
}
a>.glyphicon{
	padding-right:10px;
}
.inner-addon { 
    position: relative; 
    
}
/* style icon */
.inner-addon .glyphicon {
  position: absolute;
  padding: 10px;
  pointer-events: none;
}
input:focus + .glyphicon{
	color:#0082c8;
}


/* align icon */
.left-addon .glyphicon  { left:  0px;color:lightgrey}
.right-addon .glyphicon { right: 0px;}

/* add padding  */
.left-addon input  { padding-left:  30px; }
.right-addon input { padding-right: 30px; }

@media screen and (min-width:200px)and (max-width:700px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
		color:white;
	}
	
}
</style>
</head>
<body>
	
	
	<jsp:include page="header.jsp" />
		
	<div class="container " id="login-form" >
		<div class="row" style="margin-top:50px;">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="panel panel-default">					
					<div class="panel-body">
						<h3>Login</h3>
						<div class="whole-form">
					<form action="HandleLogin" method="post" role="form" >
						<div class="form-group">
							<label for="">Tài khoản</label> 
							<div class="inner-addon left-addon">
							<input type="text" name="username"
								class="form-control" id="username" placeholder="username">
								<i class="glyphicon glyphicon-user"></i>							
							</div>
							
						</div>
						<div class="form-group">
							<label for="">Mật khẩu</label>
							<div class=" inner-addon left-addon">
							<input type="password" name="password"
								class="form-control" id="password" placeholder="password">
							<i class="glyphicon glyphicon-lock"></i>
								
							</div> 
							
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-default col-sm-offset-9" id="link" value="Đăng Nhập" >
						</div>






					</form>

				</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
		
	
	
	<jsp:include page="/footer.jsp"/>


	<!--Jquery-->
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	  
	  $(window).scroll(function () {
	      //if you hard code, then use console
	      //.log to determine when you want the 
	      //nav bar to stick.  
	      console.log($(window).scrollTop())
	    if($(window).width()>800){
	    	if ($(window).scrollTop() > 120) {
	  	      $('.navbar-default').addClass('navbar-fixed-top');
	  	    }
	  	    if ($(window).scrollTop() < 121) {
	  	      $('.navbar-default').removeClass('navbar-fixed-top');
	  	    }
	    }else{
	    	if ($(window).scrollTop() > 120) {
		  	      $('.navbar-default').addClass('navbar-fixed-top');
		  	    }
		  	    if ($(window).scrollTop() < 121) {
		  	      $('.navbar-default').removeClass('navbar-fixed-top');
		  	    }
	    	
	    }
	  });
	  
	});
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
  // in the handler, 'this' refers to the box clicked on
  var $box = $(this);
  if ($box.is(":checked")) {
    // the name of the box is retrieved using the .attr() method
    // as it is assumed and expected to be immutable
    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    // the checked state of the group/box on the other hand will change
    // and the current value is retrieved using .prop() method
    $(group).prop("checked", false);
    $box.prop("checked", true);
  } else {
    $box.prop("checked", false);
  }
});	
});


</script>

<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="js/jsfornav2.js"></script>

<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="js/jsfornav2-1.js"></script>




</body>
</html>
