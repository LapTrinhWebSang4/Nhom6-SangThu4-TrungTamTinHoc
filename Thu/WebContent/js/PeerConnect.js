var peerid = $("#peerid").val().replace(/\s/g,'');  
var today = new Date();
var hour = today.getHours();
var minute = today.getMinutes();
var second = today.getSeconds();
var today = hour+":"+minute+":"+second;
var numofmess = 0;
var peer = new Peer(
			peerid,
			{
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
			myFunction();
			var chatbox = $("<div class='box-chat' id='"+c.peer+"'>" +
					"<div class='panel panel-default'>" +
					"<div class='panel-heading'><span class='glyphicon glyphicon-comment'></span> Chat<div class='btn-group pull-right'>"+						
					"<button type='button' class='btn btn-default btn-xs' onclick='closefunc()'>"
						+"<span class='glyphicon glyphicon-remove'></span>"+
					"</button>"+
				"</div></div>" +
				
					"<div class='panel-body'><ul class='chat'></ul></div>" +
					"<div class='panel-footer'><div class='input-group'>"+
					"<input id='btn-input' type='text' class='form-control input-sm' placeholder='Type your message here...'> <span class='input-group-btn'> <button onclick='chatclick()' type='button' value='Send' class='btn btn-warning btn-sm' id='btn-chat'> Send"+
					"</button></span>"+
				"</div></div>" +
					"</div></div>");
			
			console.log("create box success");
			numofmess++;
			$("#numberofmessage").html(numofmess);
			chatbox.on('click', function() {
				$(".box-chat").removeClass("active");
				$(".panel").removeClass("panel-primary");
			      if ($(this).attr('class').indexOf('active') === -1) {
			        $(this).addClass('active');
			        $(this).find(".panel").addClass("panel-primary");
			      }
			    });
			
			if(!$("#"+c.peer).length){
				$(".chat-site").append(chatbox);
				$("#"+c.peer+".chat").append("<p>Connected with "+c.peer+"</p>");
			}
			// Handle a chat connection.
			if(c.label==='chat'){
				c.on('data', function(data) {
					var body = $("<li class='clearfix'>"
							+"<div class='chat-body clearfix'><div class=''>"
					+"<strong class='primary-font pull-right'>"+c.peer+"</strong><small class='text-muted'><span class='glyphicon "
					+"glyphicon-time'></span>"+today+"</small></div><p>"+data+"</p></div></li>");
					$("#"+c.peer).find(".chat").append(body);
				});
				c.on('close', function() {
					numofmess--;
					$("#numberofmessage").html(numofmess);
					$("#"+c.peer).find(".chat").append("<li class='clearfix'>"
					+"<div class='chat-body clearfix'><div class=''>"
			+"<small class='pull-right text-muted'><span class='glyphicon "
			+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'></strong></div><p style='color:red;'>"+c.peer+" has disconnected!!!</p></div></li>");
					delete connectedPeers[c.peer];
				});
			}
			connectedPeers[c.peer] = 1;
		});
		peer.on('error', function(err) {
		  console.log(err);
		});
		
		var connectedPeers = {};		
		
		function chatclick(){
		    // For each active connection, send the message.
			var active = $(".active");
		    var msg = active.find("#btn-input").val();
		    var chatbody = $("<li class='clearfix'>"
					+"<div class='chat-body clearfix'><div class=''>"
			+"<small class='pull-right text-muted'><span class='glyphicon "
			+"glyphicon-time'></span>"+today+"</small><strong class='primary-font'>me</strong></div><p>"+msg+"</p></div></li>");
			
		    sendToEachOther(function(c){
		    	if (c.label === 'chat') {	
		        c.send(msg);
		        active.find('.chat').append(chatbody);
		     }
		    active.find("#btn-input").val('');
		    active.find("#btn-input").focus();
		    });
		}
		
		function sendToEachOther(fn){
			var pid = $('.box-chat.active').attr('id');
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
		 function eachActiveConnection(fn) {
			    var actives = $('.box-chat');
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
		 
		 $(document).keypress(function(e) {
			    if(e.which == 13) {
			    	chatclick();
			    }
			});
		 function myFunction() {
			    // Get the snackbar DIV
			    var x = document.getElementById("snackbar");

			    // Add the "show" class to DIV
			    x.className = "show";
			    $("#snackbar").addClass("show");
			    // After 3 seconds, remove the show class from DIV
			    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
			}
		 function closefunc(){
			 $(".box-chat.active").remove();
		 }
		 
		 
		 