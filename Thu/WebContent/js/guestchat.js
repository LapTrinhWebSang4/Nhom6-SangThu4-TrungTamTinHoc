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
						 $(".list-user-online").append("<li id='"+str+"' onclick='GetPeerID(this.id)'><a>"+
							users[i].TenThanhVien+"</a></li>");
						 
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
			if (c.label === 'chat') {
				c.on('data', function(data) {
					var chatbody = $("<li class='clearfix'>"
							+"<div class='chat-body clearfix'><div class=''>"
					+"<strong class='primary-font pull-right'>"+c.peer+"</strong><small class='text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small></div><p>"+data+"</p></div></li>");
					$(".chat").append(chatbody);
					
				});
				c.on('close', function() {
					$("#"+c.peer).find(".chat").append("<li class='clearfix'>"
							+"<div class='chat-body clearfix'><div class=''>"
					+"<small class='pull-right text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'></strong></div><p style='color:red;'>"+c.peer+" has disconnected!!!</p></div></li>");
				});
			}	
		});
			
		
		peer.on('error', function(err) {
		  console.log(err);
		});		

		function connect(c) {
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
					$(".chat").append("<li class='clearfix'>"
							+"<div class='chat-body clearfix'><div class=''>"
					+"<small class='pull-right text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'></strong></div><p style='color:red;'>"+c.peer+" has disconnected!!!</p></div></li>");
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
			$(".box-chat").find(".chat").append("<li class='clearfix'>"
					+"<div class='chat-body clearfix'><div class=''>"
			+"<small class='pull-right text-muted'><span class='glyphicon "
			+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'></strong></div><p style='color:green;'>"+c.peer+" has connected!!!</p></div></li>");
			c.on('open', function() {
		        connect(c);		        
		      });
			c.on('error', function(err) { $(".box-chat").find(".chat").append("<li class='clearfix'>"
					+"<div class='chat-body clearfix'><div class=''>"
					+"<small class='pull-right text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'></strong></div><p style='color:red;'> Have problem when connect to user</p></div></li>"); });
			$(".box-chat").attr("id",peerid);
			$("#callbtn").attr('id',peerid);
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
		function chat(){
			
		}
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
		 
		 
		 ////////
		 //Call//
		 ////////
		 function CallClick(peerid){
			 navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
			 navigator.getUserMedia({video: false, audio: true}, function(stream) {
			   var call = peer.call(peerid, stream);	   
			   call.on('stream', function(remoteStream) {
				   console.log("goi dien thoai");
			   });
			 }, function(err) {
			   console.log('Failed to get local stream' ,err);
			 });
		 }
		 
		 
	