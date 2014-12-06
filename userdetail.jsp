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
		
	</div>
	<div id="page" class="container">
		<div id="content"><h2 align="center"><font color="#0080FF">Welcome To My Search</font></h2>
			
			<div class="post"><h2><font color="#FF0000"></font></h2>
				<div class="post-title">
					<table width="600" cellpadding="6" align="center" style="border:1px gray solid">
					<tr align="center" bgcolor="#408080">
						<td align="center"><p><strong><font color="#FFFFFF">User Name</font></strong></p></td>
						<td align="center"><p><strong><font color="#FFFFFF">Mail-Id</font></strong></p></td>
						<td align="center"><p><strong><font color="#FFFFFF">Mobile Number</font></strong></p></td>
						<td align="center"><p><strong><font color="#FFFFFF">Gender</font></strong></p></td>
					</tr>
						<%
							String name=null;
							String email=null;
							String mobile=null;
							String gender=null;
							//String city=null;
							PreparedStatement ps = null;
							ResultSet rs = null;
							try
								{
									Connection con = databasecon.getconnection();
									ps=con.prepareStatement("select * from signup");
									rs=ps.executeQuery();
									while(rs.next())
									{
									name=rs.getString(2);
									email=rs.getString(6);
									mobile=rs.getString(7);
									gender=rs.getString(5);
									
						%>
						
						<tr align="center">
			  <td align="center"><p><font color="#FF0000"><%=name%></font></p></td>
			  <td align="center"><p><font color="#FF0000"><%=email%></font></p></td>
			  <td align="center"><p><font color="#FF0000"><%=mobile%></font></p></td>
			  <td align="center"><p><font color="#FF0000"><%=gender%></font></p></td>
			  
			
			</tr>
			
			 <%
			 }
			 %>
			 
			
			 		 
		  </table>
		   <%
		}
		catch(Exception e1)
{
out.println(e1.getMessage());
}

		%>
		</div>
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
						 <h3><a href="#"><font color="#00FFFF"><strong>User Details</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="recent_upload1.jsp"><font color="#9900FF"><strong>Recently Uploaded</strong></font></a></h3>
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
