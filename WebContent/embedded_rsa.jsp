<!DOCTYPE html>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Telnet-5250</title>
  <style>
  body {
    margin:0px;
    padding:0px;
    overflow:hidden;
   }
   
   iframe {
     overflow:hidden;
     border: 0px;
     position:absolute;
     height:100%;
     width:100%;
     top: 0px;
     left: 0px;
   }
  </style>
</head>

<body>
 <iframe id="ifrm" src="lite?host=ISCAR&displayName=PHP00010&user=TOM&password=M%2BDVIKWlqjOwhfqEItP0ruKCLQSlqbmLS5n0RzjQEjLyJbK%2FHE2udIDLOgOgUvQe%2Bs8sFZ4hANTBeEXSY1SbVg%3D%3D" frameborder="0"  height="100%" width="100%">Your browser doesn't support iFrames.</iframe>
</body>

<script type="text/javascript" charset="UTF-8" src="lite/lib/jquery-2.1.4.min.js"></script>
<script type="text/javascript">

    document.oncontextmenu = function (e) {
        e.preventDefault();
        return false;
    };

    $(document).keydown(function (e) {    
    	if (e.which >=112 && e.which<=123) {
    		e.stopPropagation();
    		e.preventDefault();
    	}
    });

	$(document).ready(function(){
		  var ifrm = document.getElementById('ifrm');
		  ifrm.onload = function() {
			 ifrm.contentWindow.focus();
		  }	
	});    
    
</script>


<script type="text/javascript">
  /* It ispossible to call it from parent 
  var ifrm = document.getElementById('ifrm');
  ifrm.onload = function() {
	 ifrm.contentWindow.initialize('ISCAR', 'PHP00010', 'user', 'password');
	  
  }
  */
  function onClientClosed() {
	  var ifr = document.querySelector('#ifrm');
	  if (ifr) ifr.remove();
	  return false;  // will prevent calling redirect for url redirect parameter
  }  
</script>


</html>
