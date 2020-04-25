<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="icon" type="image/png" href="css/images/icon.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration_page</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>

<body>
<form action="Registercontroller" method="post">
<div class="menu">
<a href="contact.jsp">Contact</a>
<a href="aboutus.jsp">About us</a>
<a href="index.jsp">Home</a>
</div><br><br>
<center><h1>Email System <span style="color: #e6b800">Energetic</span></h1></center>

<center><input id= "first" style="text-indent:20px;" type="text" name="firstname" placeholder="First name"><br></center>
<center><input id= "last" style="text-indent:20px;" type="text" name="lastname" placeholder="Last name"><br></center>
<center><input id= "user" style="text-indent:20px;" type="text" name="uid" placeholder="User name"><br></center>
<center><input id= "email" style="text-indent:20px;" type="email" name="emailid" placeholder="Email"><br><center>
<center><input id= "password" style="text-indent:20px;" type="password" name="password" placeholder="Password"><br><center>
<center><input id= "confirmpass" style="text-indent:20px;" type="password" name="confirm" placeholder="Confirm password"><br><center>
<center><input id= "contact" style="text-indent:20px;" type="text" name="contact" placeholder="Contact number"><br><center>
<center><input id= "DOB" style="text-indent:20px;" type="date" name="dob"><br><center>
<center><input id="in"  type="submit" name="submit" value="Sign up"></input><center> 
<%
          response.setHeader("Cache-Control","no-cache");
          response.setHeader("Cache-Control","no-store");
          response.setDateHeader("Expires",0);
          response.setHeader("Pragma","no-cache");
          
          
          %>
</form>
<script type="text/javascript">
	function contact(inputtxt)
{
  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if((inputtxt.value.match(phoneno))
        {
      return true;
        }
      else
        {
        alert("Not a valid mobile number");
        return false;
        }
}
</script>
</body>
</html>