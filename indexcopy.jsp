﻿<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Understanding the External Links of Video Sharing Sites: Measurement and Analysis</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<style>
.Large
{
font-size: 16pt;
height: 40px;
}
</style>
<script type="text/javascript">
function valid1()
{
var a1=document.f.search1.value;
if(a1=="")
{
alert("Search Your Videos");
document.f.search1.focus();
return false;
}
}

function valid()
{
var a=document.s.name.value;
if(a=="")
{
alert("Enter User Name");
document.s.name.focus();
return false;
}

var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}
}

</script>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		
    <div id="header" class="container"> 
      <div id="logo"> <a href="#"> 
        <p>&nbsp;</p>
        <img src="images/title.png"></a> </div>
    </div>
		
	</div>
	<div id="page" class="container">
		<div id="content">
			<div class="post">
				
        <h2><font color="#0080FF">Welcome To My Search</font></h2>
     <h3 align="center"><strong><font color="#6600FF">Login First, If New User Create New Account</font></strong></h3>
			</div>
			<div class="post">
				<div class="post-title">
					
          <h2 align="center"><font color="#FF0000">My Search</font></h2>
		  		<form action="#" name="f" method="post" onsubmit="return valid1()">
					<table align="center">
						<tr>
							<td><p><input type="text" class="Large" name="search1" size="70"></p></td>	
						</tr>
						<tr>
							<td align="center"><p>&nbsp;&nbsp;<input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="My Search">&nbsp;&nbsp;
							<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></p></td>
						</tr>
					</table>
				</form>
				</div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
				<h2></h2>
				<ul class="style2">
					<li class="first">
                                            <h3><font color="#A60000">Admin Login :</font><a href="index.html"><font color="#FF0000">User login :</font></a></h3>
						<p>
						<form action="adminlo.jsp" name="s" method="post" onsubmit="return valid()">
						<table width="300">
							<tr>
								<td><p><font color="#FF33FF">Name</font></p></td>
								<td><p><input type="text" name="name"></p></td>
							</tr>
							<tr>
								<td><p><font color="#FF33FF">Password</font></p></td>
								<td><p><input type="password" name="pass"></p></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><p><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Submit">&nbsp;&nbsp;
								<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></p></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="signup.jsp"><font color="#0000FF">Create An Account</font></a></p></td>
							</tr>
						</table>
						</form></p>
					</li>		
                                    <li class="first">
						<h3><font color="#A60000">Login to Blog :</font></h3>
						<p>
						<form action="blog_check.jsp" name="s" method="post" onsubmit="return valid()">
						<table width="300">
							<tr>
								<td><p><font color="#FF33FF">Name</font></p></td>
								<td><p><input type="text" name="name"></p></td>
							</tr>
							<tr>
								<td><p><font color="#FF33FF">Password</font></p></td>
								<td><p><input type="password" name="pass"></p></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><p><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Submit">&nbsp;&nbsp;
								<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></p></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="blog_signup.jsp"><font color="#0000FF">Create An Account</font></a></p></td>
							</tr>
						</table>
						</form></p>
					</li>
				</ul>
				</div>
		</div>
	</div>
</div>
<div id="footer">
	
</div>
</body>
</html>
