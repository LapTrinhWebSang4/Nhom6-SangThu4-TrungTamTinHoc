<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
<link rel="stylesheet" type="text/css" href="css/cssfornav2.css"/>


</head>
<body>
<button class="btn btn-danger" id="kienbtn">
	Click Me
</button>
<input type="text"  id="myinput"></input>
<div id="kiendiv"></div>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-submenu.js"></script>
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
$("#kienbtn").click(function(){
	var myname = $("#myinput").val();
	$.ajax({	
		url:'MyServlet',
		type:'GET',
		data:{name:myname},
		success:function(data){$("#kiendiv").html(data);},
        error:function(){alert('loi');}
	});
	
});
</script>
</body>
</html>