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
			<table>
				<%
		  		 try
				 	{
					String category= null;
					//String sports="sports";
					Connection con=null;
					Statement st=null;
					ResultSet rs=null;
					con = databasecon.getconnection();
					st=con.createStatement();
					PreparedStatement ps=con.prepareStatement("select  * from video where name='"+name+"' order by date");
					rs=ps.executeQuery();
					//ResultSet rs=ps.executeQuery();
					%>
				
					
					<tr><td><p><h3><strong><font color="#0000FF">Video List</font></strong></h3></p></td></tr>
					
					<%
						while(rs.next())
						{
						category=rs.getString(9);
						//out.print(i);
						
					%>
					<tr>
					<td><p>
					<a href="searchview.jsp?id=<%=rs.getString(1)%>">
						
					<video width="447px" height="298px"> <source src="Gallery/<%=rs.getString(8)%>" type="video/mp4">
						<source src="Gallery/<%=rs.getString(8)%>" type="video/ogg"> <source src="Gallery/<%=rs.getString(8)%>" type="video/webm">
						<object data="Gallery/<%=rs.getString(8)%>" width="447px" height="298px">
						<embed src="Gallery/<%=rs.getString(8)%>" width="447px" height="298px">
						</object></video></a></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp; Category :<font color="#9900FF"><%=category%></font>&nbsp;&nbsp;&nbsp;&nbsp; Uploaded at :<font color="#9900FF"><%=rs.getString(6)%></font> <br>
              </p>
              <p>&nbsp; </p></td>
						
						
						
						
					<%
						}
					%>
					</tr>
					
						<%
						
						}
						catch(Exception e1)
						{
						out.println(e1.getMessage());
						}
					%>
					
					</table>
        
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
						<h3><a href="utube.jsp"><font color="#9900FF"><strong>UTube</strong></font></a></h3>
					</li>
					<li>
						 <h3><a href="userupload.jsp"><font color="#9900FF"><strong>Upload Now</strong></font></a></h3>
					</li>
					<li>
						 <h3><a href="#"><font color="#00FFFF"><strong>My Videos</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="user.jsp"><strong><font color="#9900FF">Home</font></strong></a></h3>
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