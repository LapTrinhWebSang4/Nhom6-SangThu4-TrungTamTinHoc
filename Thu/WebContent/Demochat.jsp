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
					<li class="left clearfix"><span class="chat-img pull-left">
							<img src="http://placehold.it/50/55C1E7/fff&amp;text=U"
							alt="User Avatar" class="img-circle">
					</span>
						<div class="chat-body clearfix">
							<div class="">
								<strong class="primary-font">Jack Sparrow</strong> <small
									class="pull-right text-muted"> <span
									class="glyphicon glyphicon-time"></span>12 mins ago
								</small>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur bibendum ornare dolor, quis ullamcorper ligula
								sodales.</p>
						</div></li>
					<li class="right clearfix"><span class="chat-img pull-right">
							<img src="http://placehold.it/50/FA6F57/fff&amp;text=ME"
							alt="User Avatar" class="img-circle">
					</span>
						<div class="chat-body clearfix">
							<div class="">
								<small class=" text-muted"><span
									class="glyphicon glyphicon-time"></span>13 mins ago</small> <strong
									class="pull-right primary-font">Bhaumik Patel</strong>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur bibendum ornare dolor, quis ullamcorper ligula
								sodales.</p>
						</div></li>
					<li class="left clearfix"><span class="chat-img pull-left">
							<img src="http://placehold.it/50/55C1E7/fff&amp;text=U"
							alt="User Avatar" class="img-circle">
					</span>
						<div class="chat-body clearfix">
							<div class="">
								<strong class="primary-font">Jack Sparrow</strong> <small
									class="pull-right text-muted"> <span
									class="glyphicon glyphicon-time"></span>14 mins ago
								</small>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur bibendum ornare dolor, quis ullamcorper ligula
								sodales.</p>
						</div></li>
					<li class="right clearfix"><span class="chat-img pull-right">
							<img src="http://placehold.it/50/FA6F57/fff&amp;text=ME"
							alt="User Avatar" class="img-circle">
					</span>
						<div class="chat-body clearfix">
							<div class="">
								<small class=" text-muted"><span
									class="glyphicon glyphicon-time"></span>15 mins ago</small> <strong
									class="pull-right primary-font">Bhaumik Patel</strong>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur bibendum ornare dolor, quis ullamcorper ligula
								sodales.</p>
						</div></li>
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
				  var users = response.split(",");
				  for(var i=0;i<users.length;i++){
						 $(".list-user-online").append("<li>"+users[i]+"</li>");	  
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
		peer.on('connection', connect);
		peer.on('error', function(err) {
		  console.log(err);
		})
		

		function connect(c) {
			// Handle a chat connection.
			if (c.label === 'chat') {
				var header = $('<h1></h1>').html(
						'Chat with <strong>' + c.peer + '</strong>');
				var messages = $('<div><em>Peer connected.</em></div>')
						.addClass('messages');
				$(".chat").append(header);
				$(".chat").append(messages);
				
				c.on('data', function(data) {
					$(".chat").append("<li class='left clearfix'></li>");
					$(".left .clearfix").append("<span class='chat-img pull-left'></span>");
					$(".chat-img .pull-left").append("<img src='http://placehold.it/50/55C1E7/fff&amp;text=U' alt='User Avatar' class='img-circle'>");
					$(".left .clearfix").append("<div class='chat-body clearfix'></div>");
					$(".chat-body .clearfix").append("<p>"+data+"</p>")
				});
				c.on('close', function() {
					alert(c.peer + ' has left the chat.');
					delete c.peer;
				});
			}
		}
		$(".list-user-online li").click(function(peerid){
			var requestedPeer = peerid;
			var c = peer.connect(requestedPeer,{
				label:'chat',
				serialization: 'none',
		        metadata: {message: 'hi i want to chat with you!'}
			});
			c.on('open', function() {
		        connect(c);
		      });	
			c.on('error', function(err) { alert(err); });
		});
		$("#btn-chat").submit(function(e){
			e.preventDefault();
		    // For each active connection, send the message.
		    var msg = $('#text').val();
		    eachActiveConnection(function(c, $c){
		    	if (c.label === 'chat') {
		        c.send(msg);
		        $c.find('.chat').append("<li class='right clearfix'>"
		        		+"<img src='http://placehold.it/50/FA6F57/fff&amp;text=ME'"
							+"alt='User Avatar' class='img-circle'>"
					+"</span>"
						+"<div class='chat-body clearfix'>"
							+"<p>"+msg+"</p>"
						+"</div></li>");
		      }
		    $('#btn-input').val('');
		    $('#btn-input').focus();
		    });
		    
		});
		
		 function eachActiveConnection(fn) {
			    var actives = $('.active');
			    var checkedIds = {};
			    actives.each(function() {
			      var peerId = $(this).attr('id');
			      if (!checkedIds[peerId]) {
			        var conns = peer.connections[peerId];
			        for (var i = 0, ii = conns.length; i < ii; i += 1) {
			          var conn = conns[i];
			          fn(conn, $(this));
			        }
			      }
			      checkedIds[peerId] = 1;
			    });
			  }
		</script>
</body>
</html>