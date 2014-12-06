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
		String a=(String)session.getAttribute("name");
		String b=(String)session.getAttribute("email");
		String c=(String)session.getAttribute("mobile");
		String d=(String)session.getAttribute("gender");
	%>
		<div id="content">
			<form action="search.jsp" name="f" method="post" onSubmit="return valid1()">
				<table align="center">
					<tr><td height="59"><p><input type="text" class="Large" name="search1" placeholder="Search Videos Here" size="70">&nbsp;&nbsp;<input type="submit" value="Search">&nbsp;&nbsp;</p></td></tr>
				</table>
			</form>
			 <a href="udetails.jsp">Back</a> 
			<div class="post">
				
  <table width="500" cellpadding="6" align="center" style="border:1px gray solid">
<form action="update.jsp" name="f" onSubmit="return valid()">
					<tr>
						<td align="center"><p><strong><font color="#408080">User Name</font></strong></p></td>
						<td align="center"><p><input type="text" name="a" value="<%=a%>"></p></td>
					</tr>
					<tr>	
						<td align="center"><p><strong><font color="#408080">Mail-Id</font></strong></p></td>
						<td align="center"><p><input type="text" name="b" value="<%=b%>"></p></td>
					<tr>
						<td align="center"><p><strong><font color="#408080">Mobile Number</font></strong></p></td>
						<td align="center"><p><input type="text" name="c" value="<%=c%>"></p></td>
					</tr>
					<tr>	
						<td align="center"><p><strong><font color="#408080">Gender</font></strong></p></td>
						<td align="center"><p><select name="d">
		  <option value="<%=d%>"><%=d%></option>
		  <option value="male">Male</option>
		  <option value="female">Female</option>
		  </select></p></td>
					</tr>
					<tr><td>&nbsp;</td><td><p><input type="submit" value="Submit"></p></td></tr>
					</form>			 		 
		  </table>
        <h2></h2>
      </div>
			<div class="post">
				<div class="post-title">
					
          <h2 align="center"></h2>
		  		
				</div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
				<h2></h2>
				<ul class="style2">
					<li class="first">
						<h3><a href="asearch.jsp"><strong><font color="#9900FF">Advanced Search</font></strong></a></h3>
					</li>
					<li>
						 <h3><a href="user1.jsp"><font color="#9900FF"><strong>UTube</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="#"><font color="#00FFFF"><strong>My Details</strong></font></a></h3>
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