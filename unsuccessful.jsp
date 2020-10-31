<!DOCTYPE html>

<html>
<head>
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


        <title>Logout Page</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width">

    </head>

    <form method="link" action="index.jsp">

    <body >
    
<div class="se-pre-con"></div>
<form action="Indexcontroller" method="post">
	<div class="menu">
	<a href="contact.jsp">Contact</a>
	<a href="aboutus.jsp">About us</a>
	
	</div><br><br>
	

        <centre><h1>Check the Username you've entered.Click below to login again. </h1></centre>
        <input id="in" type="submit" value="Login again" align="centre"> 
                            <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1 headers.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
if(session.getAttribute("valid")==null)
{
    out.println("<script>parent.location.href='index.jsp'</script>");
}
%>
               </form>>
    </body>

</html>
