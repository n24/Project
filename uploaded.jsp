<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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


</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		
    <div id="header" class="container"> 
      <div id="logo"> <a href="#"> 
        <p>&nbsp;</p>
        <img src="images/title.png"></a> </div>
    </div>
		<% String name=(String)session.getAttribute("name");
		java.util.Date now = new java.util.Date();
		String DATE_FORMAT1 = "dd/MM/yyyy";
		SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
		String strDateNew1 = sdf1.format(now);
	%>
	</div>
	<div id="page" class="container">
		<div id="content"><h2 align="center"><font color="#0080FF">Welcome To My Search</font></h2>
			
			<div class="post"><h2><font color="#FF0000"></font></h2>
				<div class="post-title">
					<table align="center">
					<tr>
						<td align="center"><img src="images/Crystal_Project_success.png"></td>
					</tr>
					<tr>
						<td><h2><font color="#00FF00">Sucessfully Uploaded</font></h2></td>
					</tr>
					<tr>
						<td align="center"><p><a href="admin.jsp"><font color="#FF0080"><strong>Upload Again</strong></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="index.html"><font color="#FF0080"><strong>No Thanks</strong></font></a></p></td>
					</tr>
				</table></div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
				<h2></h2>
				<ul class="style2">
					<li class="first">
						<h3><a href="admin.jsp"><strong><font color="#9900FF">Upload Now</font></strong></a></h3>
					</li>
					<li>
						<h3><a href="userdetail.jsp"><font color="#9900FF"><strong>User Details</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="recent_upload.jsp"><font color="#9900FF"><strong>View Last Uploaded</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="index.html"><font color="#9900FF"><strong>LogOut</strong></font></a></h3>
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
