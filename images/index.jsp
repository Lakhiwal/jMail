<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
 <script language="javascript" type="text/javascript" src="asd.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Email Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<body>



	
	<div class="menu">
	<a href="contact.jsp">Contact</a>
	<a href="About.jsp">About us</a>
	
	</div><br><br>


	
    <center><h1>Email System <span style="color: #e6b800">Energetic</span></h1></center><br>


<form action="Indexcontroller" method="post">
    
     <center><input type="text" name="email" placeholder="Email" ></input></center><br>
    
    <center><input type="password" name=pass placeholder="Password" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></input><br></center><br>
  	<center><input id="in" type= "submit" name="submit" value="LOGIN"  ></input><br><br></center>
    <center><p >Not registered? <a href="register.jsp">Create an account</a></p></center>
 </form></form>


</body>
</html>
