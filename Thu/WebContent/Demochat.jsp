<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Demo Chat</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<style>
.sidebar {
	background-color: black;
	width: 150px;
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
}

.sidebar h1 {
	color: white;
}

.portfolio {
	background-color: lightgrey;
	position: absolute;
	top: 0;
	left: 150px;
	right: 0;
	bottom: 0;
	-moz-transition: left 0.5s ease;
	transition: left 0.5s ease;
}

input[type=checkbox] {
	display: none;
}

input:checked ~ .portfolio {
	left: 0;
}

input:checked ~ label {
	left: 0;
}
p{
	word-wrap: break-word;
}
label {
	z-index: 2;
	position: absolute;
	top: 0;
	left: 150px;
	background-color: blue;
	-moz-transition: left 0.5s ease;
	transition: left 0.5s ease;
}

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
	right: 60px;
	bottom: -50px;
	position: fixed;
}

.chat li .chat-body p {
	margin: 0;
	color: #777777;
}

.panel .slidedown .glyphicon, .chat .glyphicon {
	margin-right: 5px;
}

.list-user-online {
	list-style-type: none;
	padding-left: 0;
	margin-left: 0;
	outline: none;
	left: 0;
}

.list-user-online li {
	color: white;
}

.list-user-online li a:hover {
	background: #337ab7;
	cursor: pointer;
}

.panel-body {
	overflow-y: scroll;
	height: 250px;
}
</style>
<script src="http://cdn.peerjs.com/0.3/peer.js"></script>
</head>
<body>
	<div class="main-wrap">
		<input id="slide-sidebar" type="checkbox" role="button" /> <label
			for="slide-sidebar"><span>close</span></label>
		<div class="sidebar">
			<h1>Settings</h1>
			<ul class="list-user-online"></ul>
		</div>
		<div class="portfolio">
			<h1>My Portfolio</h1>
		</div>
	</div>
	<div class="box-chat">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<span class="glyphicon glyphicon-comment"></span> Chat
				<div class="btn-group pull-right">
					<button type="button" id="minimizebtn"
						class="btn btn-default btn-xs">
						<span class="glyphicon glyphicon-minus"></span>
					</button>
					<button type="button"
						class="btn btn-default btn-xs dropdown-toggle"
						data-toggle="dropdown">
						<span class="glyphicon glyphicon-chevron-down"></span>
					</button>
					<ul class="dropdown-menu slidedown list-user-online">
						
					</ul>
				</div>
			</div>
			<div class="panel-body" id="hide-element">
				<ul class="chat">
					
					
				</ul>
			</div>
			<div class="panel-footer" id="hide-element">
				<div class="input-group">
					<input id="btn-input" type="text" class="form-control input-sm"
						placeholder="Type your message here..."> <span
						class="input-group-btn"> <input type="button" value="Send"
						class="btn btn-warning btn-sm" id="btn-chat"> Send</input>
					</span>
				</div>
			</div>
		</div>
	</div>


	<script src="assets/js/jquery-2.1.4.min.js"></script>

	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>



	



	<script type="text/javascript" src="js/guestchat.js"></script>
			
</body>
</html>