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

.list-user-online li:hover {
	background: lightblue;
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
					<ul class="dropdown-menu slidedown">
						<li><a href="http://www.jquery2dotnet.com"><span
								class="glyphicon glyphicon-refresh"> </span>Refresh</a></li>
						<li><a href="http://www.jquery2dotnet.com"><span
								class="glyphicon glyphicon-ok-sign"> </span>Available</a></li>
						<li><a href="http://www.jquery2dotnet.com"><span
								class="glyphicon glyphicon-remove"> </span>Busy</a></li>
						<li><a href="http://www.jquery2dotnet.com"><span
								class="glyphicon glyphicon-time"></span> Away</a></li>
						<li class="divider"></li>
						<li><a href="http://www.jquery2dotnet.com"><span
								class="glyphicon glyphicon-off"></span> Sign Out</a></li>
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



	<script type="text/javascript">
	populateFriendList();
	function populateFriendList(){
		
		$.ajax({
		  type : 'GET',//GET Or POST 
		  url  : "ListOfOnlineUsers",
		  cache: false, //get fresh copy of details.html instead of cahced one
		  success: function(response, textStatus, jqXHR){
			  $(".list-user-online").empty();
			  response = jqXHR.responseText;
			  if(response ==""){
				  
			  }else{
				  var users = JSON.parse(response);
				  
				  for(var i=0;i<users.length;i++){
					  	var str = users[i].TenThanhVien.replace(/\s/g,''); 
						 $(".list-user-online").append("<li id='"+str+"' onclick='GetPeerID(this.id)'>"+users[i].TenThanhVien+"</li>");	  
				  }
				  
			  }
		  },
		  
		  error: function(jqXHR, textStatus, errorThrown){
		      console.log(
		          "The following error occured: "+
		          textStatus, errorThrown
		      );
		  }
	
		});
}
	
	</script>



	<script type="text/javascript">
	var today = new Date();
	var hour = today.getHours();
	var minute = today.getMinutes();
	var second = today.getSeconds();
	var today = hour+":"+minute+":"+second;
		var peer = new Peer({
			key : 'nw6fe5gqssbutyb9',
			debug : 3,
			logFunction : function() {
				var copy = Array.prototype.slice.call(arguments).join(' ');
				$('.log').append(copy + '<br>');
			}
		});
		
		
		
		peer.on('open', function(id) {
			console.log(id +" has connected");
		});
		peer.on('connection',function(c){
			console.log("deo vao duoc day");
			if (c.label === 'chat') {
				c.on('data', function(data) {
					console.log("vao duoc on data roi");
					var chatbody = $("<li class='clearfix'>"
							+"<div class='chat-body clearfix'><div class=''>"
					+"<strong class='primary-font pull-right'>"+c.peer+"</strong><small class='text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small></div><p>"+data+"</p></div></li>");
					$(".chat").append(chatbody);
					
				});
				c.on('close', function() {
					alert(c.peer + ' has left the chat.');
				});
			}	
		});
			
		
		peer.on('error', function(err) {
		  console.log(err);
		});
		

		function connect(c) {
			console.log("deo vao duoc day");
			if (c.label === 'chat') {
				c.on('data', function(data) {
					console.log("vao duoc on data roi");
					var chatbody = $("<li class='clearfix'>"
							+"<div class='chat-body clearfix'><div class=''>"
					+"<strong class='primary-font pull-right'>"+c.peer+"</strong><small class='text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small></div><p>"+data+"</p></div></li>");
					$(".chat").append(chatbody);
					
				});
				c.on('close', function() {
					alert(c.peer + ' has left the chat.');
				});
			}	
		}
		function GetPeerID(peerid){
			console.log("chat voi  "+peerid);
			var c = peer.connect(peerid,{
				label:'chat',
				serialization: 'none',
		        metadata: {message: 'hi i want to chat with you!'}
			});
			c.on('open', function() {
		        connect(c);
		      });
			c.on('error', function(err) { alert(err); });
			$(".box-chat").attr("id",peerid);
		};
		$("#btn-chat").click(function(e){
			e.preventDefault();
		    // For each active connection, send the message.
		    var msg = $('#btn-input').val();
			var messages = $('<div><em>Peer connected.</em></div>')
					.addClass('messages');
			var chatbody = $("<li class='clearfix'>"
					+"<div class='chat-body clearfix'><div class=''>"
			+"<small class='pull-right text-muted'><span class='glyphicon "
			+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'>me</strong></div><p>"+msg+"</p></div></li>");
			
		    eachActiveConnection(function(c){
		    	if (c.label === 'chat') {
			        c.send(msg);
			        $('.chat').append(chatbody);
			      }
		    $('#btn-input').val('');
		    $('#btn-input').focus();
		    });
		    
		});
		 function eachActiveConnection(fn) {
			 var pid = $('.box-chat').attr('id');
				console.log("bede hehe " +pid);
				var checkedIds = {};
				if(!checkedIds[pid]){
					var conns = peer.connections[pid];
			        for (var i = 0, ii = conns.length; i < ii; i += 1) {
			          var conn = conns[i];
			          fn(conn);
			        }
				}
				checkedIds[pid] = 1;
			  }
		</script>
</body>
</html>