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
		<% 
			String name=(String)session.getAttribute("name");
		%>
	</div>
	<div id="page" class="container">
		<div id="content"><h2 align="center"><font color="#0080FF">Welcome To My Search</font></h2>
			
			<div class="post"><h2><font color="#FF0000"></font></h2>
				<div class="post-title">
					<table>
					<%PreparedStatement ps1 = null;
							ResultSet rs2 = null;
							//String name=null;
							String image=null;
							String vid=null;
							String title=null;
							String date=null;
							String videoname=null;
							//String q="accept";
							try
								{
									Connection con2 = databasecon.getconnection();
									ps1=con2.prepareStatement("select * from video");
									rs2=ps1.executeQuery();
									
									
									while(rs2.next())
									{
									
									name=rs2.getString(3);
									image=rs2.getString(7);
									date=rs2.getString(6);
									title=rs2.getString(4);
									videoname=rs2.getString(8);
									session.setAttribute( "videoname", videoname );
									vid=rs2.getString(1);									
									session.setAttribute( "vid", vid );
									}
																
									%>									
									<tr><td width="100"><font color="#9900FF"><%=title%></font></td>							
									<td><video width="447px" height="298px" controls autoplay> <source src="Gallery/<%=videoname%>" type="video/mp4">
										<source src="Gallery/<%=videoname%>" type="video/ogg"> <source src="Gallery/<%=videoname%>" type="video/webm">
										<object data="Gallery/<%=videoname%>" width="447px" height="298px">
										<embed src="Gallery/<%=videoname%>" width="447px" height="298px">
										</object></video></td>
<%
									}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								%>
								</tr>
								</table><br>

		<table align="left" width="700">
								<form action="comments.jsp" name="ff" method="post" onSubmit="return valid12()">
								<tr>
									 <td><p><font color="#FF00FF">Comments :</font></p></td>
								</tr>
								<tr><td align="center" height="59"><p><input type="text" class="Large" name="comment" size="40 ">&nbsp;&nbsp;<input type="submit" value="send">&nbsp;&nbsp;</p></td></tr>
								</form></table>
								
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
						<h3><a href="userdetail.jsp"><font color="#9900FF"><strong>User Details</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="#"><font color="#00FFFF"><strong>View Last Uploaded</strong></font></a></h3>
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
