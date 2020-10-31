<html>
<head>
	<title>
		<% out.println("welcome"+" "+session.getAttribute("uname")); %>
		
	</title>
	<link rel="icon" type="image/png" href="css/images/icon.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>	
	<style>
	.header
	{
		width: auto;
		height: 185px;
		background-color: rgba(255,255,255,0);
		
	}
	.body
	{
		width: 100%;
		height: 52%;
		
	}
	.compose
	{
		position: fixed;
		bottom: 0;
		right: 0;
		display: none;	
		width: 20%;
		height: 12%;
		background-color: red;
	}
	.footer
	{
		height: 24%;
		width: auto;	
		background-color: yellow;
	}
	.profile
	{
		background-image: url("css/images/male.png");
		background-repeat: no-repeat;
		background-size: contain;
		height: 75%;
		width: 100%;
		float: right;
		display: inline-block;
	}
	body
	{
		background-image: url("css/images/background.jpg");
		background-repeat: no-repeat;
		background-attachment: fixed;
	}
	.button
	{
		height: 8.5%;
    border-bottom-left-radius: 30px;
    border-top-left-radius: 30px;
    width: 90%;
    background: rgba(0,128,0,0.9);
	}
	.menu
	{
		float: left;
		text-align: center;
	}
	.logo
	{
		background-image: url("css/images/icon.png");
		background-size: contain;
		background-repeat: no-repeat;
	}
	.menu : hover
	{

	}
	.input
	{
		background-color: white;
		border-radius: 130px 130px 130px 130px;
	}
	.input-msg
	{
		color: cyan;
		border: 2px solid black;
	}

	/* message box collapsible */
	.collapsible 
	{

	}
	.content
	{
		max-height: 0px;
		overflow: hidden;
		transition: max-height 0.2s ease-out;
		color: white;
	}

.active, .collapsible:hover {
  background-color: #555;
}
</style>
</head>
<body>
	<% HttpSession s=request.getSession(false); %>
	<% if(s==null){ response.sendRedirect("index.jsp");} %>
	<div>
	<div class="header" >
		<div class="logo" style="width: 17%; height: 100%; float: left;">
			
		</div>
		<div style="background-color: white;width: 73%; height: 100%;float: left;">
			<div style="background-color: cyan;width: 100%; height: 70%; text-align: center;">
				<div style="display: inline-block; font-size: 30px;">
					<span style="color: red">j</span><span style="color: #e6b800">Mail</span>
				</div>
			</div>
			<div style="background-color: green;width: 100%; height: 30%;">
				
			</div>
		</div>
		<div style="width: 10%; height: 100%;float: right;">
			<div style="text-align: center;">
				<div class="profile">
				</div>
				<div style="width: 10%; height: 100%;float: right;">
			<div style="text-align: center;">
				<div class="profile">
				</div>
				<div class="dropdown">
  <button class="dropbtn">Dropdown</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="/jMail/logout">logout</a>
  </div>
</div>
				<div style="float: left;">
					Welcome <% out.println(session.getAttribute("uname")); %>
				</div>
				<div class="menu">
					<div style="display: inline-block;">options</div>
				</div>
			</div>
			
		</div>
	</div>
	<br>
	<div style="background-color: rgba(0,0,0,0); height: 20px;">
			<div style="float: right;">
				<input class="input" type="text" name=""><br>
			</div>
			<div style="float: left;color: white;width: 15%;">
				<center>TABS</center>
			</div>
		</div><br>
	<div class="body">
		<div style="float: left; width: 15%; height: 100%;">
			<div style="text-align: right;"><button class="button" data-toggle="modal" data-target="#myModal">
				compose
			</button>
			<br>
			<button class="button" onclick="document.getElementById('received').style.display='block';document.getElementById('sent').style.display='none';">
				received
			</button>
			<br>
			<button class="button" onclick="document.getElementById('sent').style.display='block';document.getElementById('received').style.display='none';">
				sent
			</button>
			<br></div>
		</div>
		<%@ page import="java.util.*" %>
		<% int i=0,j=0; %>
		<div id="received" style="display: block; overflow: auto; height: 100%;">
			<% ArrayList<String> it1=(ArrayList)session.getAttribute("msg2"); %>
			<% long test2=(long)session.getAttribute("rec"); %>
			<% while(i<it1.size())
				{ %>
					<button class="collapsible"  style="width: 85%;" onclick="hideMessage()">
					<div style="background-color: white; border: thin solid;">
						<div style="width: 100%;" id="hide-message">Message: <% out.println(it1.get(i)); %></div>
						<div style="width: 100%">
							<div style="float: left; width: 12%">User: User</div>
							<div style="float: right;">Date: Tomowrrowlad</div>
							<div> wed</div>
							
						</div>
					</div>
				</button> 
				<div class="content">
  <p>full message here: <% out.println(it1.get(i)); %></p>
</div>
				<% i++; }
			%>
			sent box pane
		</div>
		

	
		<div id="sent" style="display: none; overflow: auto; height: 100%;">
			<% ArrayList<String> it2=(ArrayList)session.getAttribute("msg1"); %>
			<% long test1=(long)session.getAttribute("sen"); %>
			<% while(j<it2.size())
				{ %>
					<button class="collapsible"  style="width: 85%;" onclick="hideMessage()">
					<div style="background-color: white; border: thin solid;">
						<div style="width: 100%;" id="hide-message">Message: <% out.println(it2.get(j)); %></div>
						<div style="width: 100%">
							<div style="float: left; width: 12%">User: User</div>
							<div style="float: right;">Date: Tomowrrowlad</div>
							<div> wed</div>
							
						</div>
					</div>
				</button> 
				<div class="content">
  <p>full message here: <% out.println(it2.get(j)); %></p>
</div>
				<% j++; }
			%>
			sent box pane
		</div>
		

	</div>
//modal

	<div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog" style="bottom: 0; position: fixed; right: 3; width: 25%">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Compose Mail</h4>
                    </div>
                    <div class="modal-body" style="text-align: center;">
                        <div style="display: inline-block;">
                            <form action="sendMail">
			<center>
				<input name="r-email" class="input" placeholder="enter reciever's address" type="text"><br>	
				<textarea id="box" name="message" placeholder="enter text"></textarea><br>
				<input type="submit" value="send">
			</center>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </form>
                    </div>
                </div>

            </div>
        </div>

	<div class="footer">
		footer goes here
	</div>			
</div>
	<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
function hideMessage() {
  var x = document.getElementById("hide-message");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>	
</body>
</html>
