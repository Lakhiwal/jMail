<!DOCTYPE html>

<html>
<head>
        <title>Logout Page</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width">

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script>$(window).load(function() {
	// Animate loader off screen
	$(".se-pre-con").fadeOut("slow");;
});</script>
</head>
<body>
	<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); 
%>
<div class="se-pre-con"></div>
<form action="index.jsp" method="post">
	<div class="menu">
	<a href="contact.jsp">Contact</a>
	<a href="aboutus.jsp">About us</a>
	
	</div>
	

        
                     <%
                     response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", " no-store"); 
response.setHeader("Expires", "0");
response.setDateHeader("Expires",-1);
session.invalidate();
 

%>
<input id="in" type="submit" value="Logout" align="centre"> 
        
           
</form>
    </body>
</html>