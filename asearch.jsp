<strong><%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
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
		
	</div>
	<div id="page" class="container">
	<%
		//String id=(String)session.getAttribute("id");
		String name=(String)session.getAttribute("name");
	%>
		<div id="content">
		<form action="search.jsp" name="f" method="post" onSubmit="return valid1()">
				<table align="center">
					<tr><td height="59"><p><input type="text" class="Large" name="search1" size="70" placeholder="Search Videos Here">&nbsp;&nbsp;<input type="submit" value="Search">&nbsp;&nbsp;</p></td></tr>
				</table>
			</form>
			<div class="post">
				
        <h3><font color="#0080FF">Welcome "<font color="#0000FF"><%=name%></font>"</font></h3>
      </div>
			<div class="post">
				<div class="post-title">
					
          <h3 align="center"><font color="#FF0000">My Search</font></h3>
		  		<form action="search1.jsp" name="f" method="post" onSubmit="return valid1()">
					<table height="111" align="center">
						<tr><td align="center"><p><font color="#003399"><strong>Choose Category</strong></font></p></td></tr>
						<tr><td><p>
                    <select name="category" style="height: 2em; width: 30em; -moz-border-radius: 1em 1em 1em 1em; margin-left:center; font-size:20px; background-color:white" onkeypress="checkEnter(event)">
                      <option value="0">Choose Category:</option>
                      <option value="sports">Sports</option>
                      <option value="music">MUsic</option>
                      <option value="tv">TV Shows</option>
                      <option value="funny">Funny Videos</option>
                    </select>
                  </p>
                  <p>&nbsp; </p></td></tr><br>

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
						<h3><a href="#"><strong><font color="#00FFFF">Advanced Search</font></strong></a></h3>
					</li>
					<li>
						 <h3><a href="utube.jsp"><font color="#9900FF"><strong>UTube</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="udetails.jsp"><font color="#9900FF"><strong>My Details</strong></font></a></h3>
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
</strong>