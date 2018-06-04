 	console.log("Loading ws.js....");

 	var wsConn;

 	function connect() {
 	    if ("WebSocket" in window) {
 	        wsConn = new WebSocket("ws://localhost:2786/");
 	        console.log("Connecting to q process...");
 	        wsConn.onopen = function(arg) { console.log("Connection Open"); }
 	        wsConn.onclose = function(arg) {
 	            console.log("Disconnected");
 	            wsConn.close();
 	        }
 	        wsConn.onmessage = function(arg) {
 	            obj = JSON.parse(arg.data);
 	            console.log(obj)
 	            refresh(obj[0])
 	        }
 	        wsConn.onerror = function(arg) { console.log(arg.data); }
 	    } else alert("Browser does not support WebSockets");
 	}

 	function refresh(json) {
		console.log(json);
 	}