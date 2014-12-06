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
					String sports="sports";
					Connection con=null;
					Statement st=null;
					ResultSet rs=null;
					con = databasecon.getconnection();
					st=con.createStatement();
					PreparedStatement ps=con.prepareStatement("select  * from video where category='"+sports+"' order by RAND() limit 4");
					rs=ps.executeQuery();
					//ResultSet rs=ps.executeQuery();
					%>
				
					
					<tr><td><p><h3><strong><font color="#0000FF">Sports</font></strong></h3></p></td></tr>
					<tr>
					<%
						while(rs.next())
						{
						category=rs.getString(9);
						//out.print(i);
						
					%>
					<td>
					<a href="searchview.jsp?id=<%=rs.getString(1)%>">
						
					<video width="160px" height="100px"> <source src="Gallery/<%=rs.getString(8)%>" type="video/mp4">
						<source src="Gallery/<%=rs.getString(8)%>" type="video/ogg"> <source src="Gallery/<%=rs.getString(8)%>" type="video/webm">
						<object data="Gallery/<%=rs.getString(8)%>" width="160px" height="100px">
						<embed src="Gallery/<%=rs.getString(8)%>" width="160px" height="100px">
						</object></video></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						
						
						
						
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
					<%
		  		 try
				 	{
					//String category= null;
					String tv="tv";
					Connection con1=null;
					Statement st1=null;
					ResultSet rs1=null;
					con1 = databasecon.getconnection();
					st1=con1.createStatement();
					PreparedStatement ps1=con1.prepareStatement("select  * from video where category='"+tv+"' order by RAND() limit 4");
					rs1=ps1.executeQuery();
					//ResultSet rs=ps.executeQuery();
					%>
				
					
					<tr><td><p><h3><strong><font color="#0000FF">Tv Shows</font></strong></h3></p></td></tr>
					<tr>
					<%
						while(rs1.next())
						{
						//category=rs1.getString(9);
						//out.print(i);
						
					%>
					<td>
					<a href="searchview.jsp?id=<%=rs1.getString(1)%>">
						
					<video width="160px" height="100px"> <source src="Gallery/<%=rs1.getString(8)%>" type="video/mp4">
						<source src="Gallery/<%=rs1.getString(8)%>" type="video/ogg"> <source src="Gallery/<%=rs1.getString(8)%>" type="video/webm">
						<object data="Gallery/<%=rs1.getString(8)%>" width="160px" height="100px">
						<embed src="Gallery/<%=rs1.getString(8)%>" width="160px" height="100px">
						</object></video></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						
						
						
						
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
					<%
		  		 try
				 	{
					//String category= null;
					String music="music";
					Connection con2=null;
					Statement st2=null;
					ResultSet rs2=null;
					con2 = databasecon.getconnection();
					st2=con2.createStatement();
					PreparedStatement ps2=con2.prepareStatement("select  * from video where category='"+music+"' order by RAND() limit 4");
					rs2=ps2.executeQuery();
					//ResultSet rs=ps.executeQuery();
					%>
				
					
					<tr><td><p><h3><strong><font color="#0000FF">Music</font></strong></h3></p></td></tr>
					<tr>
					<%
						while(rs2.next())
						{
						//category=rs2.getString(9);
						//out.print(i);
						
					%>
					<td>
					<a href="searchview.jsp?id=<%=rs2.getString(1)%>">
						
					<video width="160px" height="100px"> <source src="Gallery/<%=rs2.getString(8)%>" type="video/mp4">
						<source src="Gallery/<%=rs2.getString(8)%>" type="video/ogg"> <source src="Gallery/<%=rs2.getString(8)%>" type="video/webm">
						<object data="Gallery/<%=rs2.getString(8)%>" width="160px" height="100px">
						<embed src="Gallery/<%=rs2.getString(8)%>" width="160px" height="100px">
						</object></video></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						
						
						
						
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
					
					<%
		  		 try
				 	{
					//String category= null;
					String funny="funny";
					Connection con3=null;
					Statement st3=null;
					ResultSet rs3=null;
					con3 = databasecon.getconnection();
					st3=con3.createStatement();
					PreparedStatement ps3=con3.prepareStatement("select  * from video where category='"+funny+"' order by RAND() limit 4");
					rs3=ps3.executeQuery();
					//ResultSet rs=ps.executeQuery();
					%>
				
					
					<tr><td><p><h3><strong><font color="#0000FF">Funny Videos</font></strong></h3></p></td></tr>
					<tr>
					<%
						while(rs3.next())
						{
						//category=rs3.getString(9);
						//out.print(i);
						
					%>
					<td>
					<a href="searchview.jsp?id=<%=rs3.getString(1)%>">
						
					<video width="160px" height="100px"> <source src="Gallery/<%=rs3.getString(8)%>" type="video/mp4">
						<source src="Gallery/<%=rs3.getString(8)%>" type="video/ogg"> <source src="Gallery/<%=rs3.getString(8)%>" type="video/webm">
						<object data="Gallery/<%=rs3.getString(8)%>" width="160px" height="100px">
						<embed src="Gallery/<%=rs3.getString(8)%>" width="160px" height="100px">
						</object></video></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						
						
						
						
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
						<h3><a href="#"><font color="#00FFFF"><strong>UTube</strong></font></a></h3>
					</li>
					<li>
						 <h3><a href="userupload.jsp"><font color="#9900FF"><strong>Upload Now</strong></font></a></h3>
					</li>
					<li>
						 <h3><a href="myvideos.jsp"><font color="#9900FF"><strong>My Videos</strong></font></a></h3>
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