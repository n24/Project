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
		<% String name=(String)session.getAttribute("name");
		java.util.Date now = new java.util.Date();
		String DATE_FORMAT1 = "dd/MM/yyyy";
		SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
		String strDateNew1 = sdf1.format(now);
	%>
	</div>
	<div id="page" class="container">
		<div id="content"><h2 align="center"><font color="#0080FF">Welcome To My Search</font></h2>
			
			<div class="post"><h2><font color="#FF0000">Upload New Videos</font></h2>
				<div class="post-title">
					<table width="600">
					<form name="f3" action="insertvideo.jsp" method="post"  enctype="multipart/form-data">
					<tr><td><p><font color="#003399"><strong>Choose Category</strong></font></p></td></tr>
						<tr><td><p><select name="category" style="height: 2em; width: 30em; -moz-border-radius: 1em 1em 1em 1em; margin-left:center; font-size:20px; background-color:white" onkeypress="checkEnter(event)">
						<option value="0">Choose Category:</option>
						<option value="sports">Sports</option>
						<option value="music">MUsic</option>
						<option value="tv">TV</option>
						<option value="funny">Funny</option>
						</select>
						</p></td></tr>
						<tr><td><p><font color="#003399"><strong>Title</strong></font></p></td></tr>
						<tr>
						<td><p><input type="text" name="title" style="height: 2em; width: 30em; -moz-border-radius: 1em 1em 1em 1em; margin-left:center; font-size:20px; background-color:white" onkeypress="checkEnter(event)"></p></td>
						</tr>
						<tr><td><p><font color="#003399"><strong>Description</strong></font></p></td></tr>
						<tr>
						<td><p><textarea name="desc" style="height: 4em; width: 30em; -moz-border-radius: 1em 1em 1em 1em;  margin-left:center; font-size:20px; background-color:white" onkeypress="checkEnter(event)"></textarea></p></td>
						</tr>
						<tr>
						<td height="95"><p><font color="#003399"><strong>Date</strong></font></p> <p><input type="text" name="date" class="b" style="height: 2em; width: 20em; -moz-border-radius: 1em 1em 1em 1em;  margin-left:center; font-size:20px; background-color:white" onkeypress="checkEnter(event)" value="<%=strDateNew1%>" /></p></td>
						</tr>
						<tr>
						<td><p><font color="#003399"><strong>Select File To Upload</strong></font></p><p align="center">
						<input type="file" name="video" style="height: 2em; width: 20em; -moz-border-radius: 1em 1em 1em 1em;  margin-left:center; font-size:20px; background-color:white" onkeypress="checkEnter(event)"></p>	</td>
						</tr>
						<tr>
						<td height="50"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="sub" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input type="reset" name="re" value="Reset">
                  </p></td>
						</tr>
					</form>
					</table>
					
          
		  					
												  	
										          
												  									
											
				</div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
				<h2></h2>
				<ul class="style2">
					<li class="first">
						<h3><a href="#"><strong><font color="#00FFFF">Upload Now</font></strong></a></h3>
					</li>
					<li>
						 <h3><a href="userdetail.jsp"><font color="#9900FF"><strong>User Details</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="analysis.jsp"><font color="#9900FF"><strong>Measurement & Analysis</strong></font></a></h3>
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
