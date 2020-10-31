<html>
<head>
	<title>jMail-Home</title>
	<link rel="icon" type="image/png" href="css/images/icon.png">
	<style type="text/css">
		html
		{
			scroll-behavior: smooth;
			hieght: 100%;
			width: auto;
		}
		body
		{
			background-color: white;

		}
		.a
		{
			 background-image: url("css/images/icon.png");
			 display: inline-block;  
			 background-size:contain;
			 background-repeat: no-repeat;
			 transition: 3s;
			 height: 100%;
			 width: 39%;
		}
		.about
		{
			height: 100%;
			background-color: #23408F;
			border-radius: 25px;
		}
		center
		{
			color: white;
		}
		.top
		{
			position: fixed;
			bottom: 0;
			right: 0;
			height: 50px;
			width: 50px;
			margin-bottom: 2%;
			margin-right: 3%; 
			border-radius: 130px 130px 130px 130px;
			display: none;
			background-color: #23408F;
			background-image: url("css/images/arrow-up-white.png"); 
			background-size: contain; 
			background-repeat: 
			no-repeat;
		}
		button
		{
			border: 0px;
			bwdwdorder-radius: 10px;
			color: white;
			background-color: #75CABE;
		}
		.left
		{
			float: left;
			background-color: white;
			background-repeat: no-repeat;
			background-size: cover;
			height: 50%;
		}
		.mid
		{
		    background-color: white;	
			background-repeat: no-repeat;
			background-size: cover;
			height: 50%;
		}
		.right
		{
			background-color: white;
			float: right;
			background-repeat: no-repeat;
			background-size: cover;
			height: 50%;
		}
		button:hover
		{
			color: white;
			background-color: black;
		}
		.button {
  background-color:#23408F ; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 9px;
}
	</style>

	</head>
<body>
	<div id="top" style="text-align: center;">
		<div style="text-align: center; height: 65%;width: auto;">

			<div style="display: inline-block; float: center;" class="a">
				
			</div>
		</div>
		<div style="height: 35%; display: inline-block;background-color: #23408F; color: white;width: 100%;border-radius: 25px;">
			<strong><h1 style="font-size: 80px;margin-top: 1%;margin-bottom: 0%;">Welcome to <span style="color: red">j</span><span style="color: #e6b800">Mail</span></h1></strong><br>
			<i style="font-size: 21px;">Free, open source and easy to use Email Management System</i><br><br>
			<a href="index.jsp"><button class="button" ><b>Go to Login page</b></button></a>
		</div>
		<br>
		<div style="height: 10%; display: inline-block;">
			<a href="#1" onclick="document.getElementById('bottom').style.display='block'"><img src="css/images/down-arrow.gif" style="height: 100%; width: auto;"></a>
		</div>
	</div>
	

	<div id="1" class="about">
		<div style="font-size: 500%;height: 40%;">
			<center>About <span style="color: red">j</span><span style="color: #e6b800">Mail</span></center>		
		
		<div style="text-align: center; ">
			<div style="display: inline-block;color: white; font-size: 30px;"
 >
				jMail is an Open source, easy to use and free email management system. Open source being its key feature, that means its source code is available directly and thus there is no concern for privacy breach. Developed by two amatuer devs in their college days, 'jMail' is open to suggestions and corrections. The best part of being open source is, one can easily get the source code and customize it based on one's individual skills and creativity. jMail was meant to be just another mailing system but it has potential of becoming much more and that depends upon the developer who's working on it.
			</div>
			</div>
		</div>
			<a href="#top" onclick="document.getElementById('bottom').style.display='none';"><div id="bottom" class="top">
				
			</div></a>
			<div style="height:80%;">
				<a href="https://www.java.com"><div class="left">
					<img src="images/java_logo.png" width=490px height="250px">
				</div></a>
				<div class="right">
					<a href="https://www.mysql.com/">
					<img src="images/mysql_logo.png" width=430px height="300px">
				</div></a>
				<div class="mid">
					<a href="https://www.mongodb.com/">
					<img src="images/MongoDB_Logo_FullColorBlack_RGB.png" width=560px height="250px">
				</div></a>
			</div>
		</div>
	<script>
//Get the button
var mybutton = document.getElementById("bottom");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
</body>
