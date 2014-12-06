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
		String category=null;
		String uname=(String)session.getAttribute("name");
		String s=request.getParameter("search1");
		String id=null;
		String title=null;
		String name=null;
		String date=null;
		String videoname = null;
		Connection con=null;
                
		Statement st=null;
		ResultSet rs=null;

		   try
{

con = databasecon.getconnection();
	    st=con.createStatement();

PreparedStatement ps=con.prepareStatement("select  * from video where title LIKE '%" + s + "%'");
rs=ps.executeQuery();

//ResultSet rs=ps.executeQuery();
	%>
		<div id="content">
			<form action="search.jsp" name="f" method="post" onSubmit="return valid1()">
				<table align="center">
					<tr><td height="59"><p><input type="text" class="Large" name="search1" value="<%=s%>" size="70">&nbsp;&nbsp;<input type="submit" value="Search">&nbsp;&nbsp;</p></td></tr>
				</table>
			</form>
			<div class="post">
				<table width="800">
				<tr><td><p><font color="#9999FF"><strong>Search Results For "<font color="#FF00FF"> <%=s%> </font>"</strong></font></p></td></tr>
					<%
						while(rs.next())
						
						{
					category=rs.getString(9);
                                        
						session.setAttribute( "category", category );
					%>
					
					<tr>
					<td><p><a href="searchview.jsp?id=<%=rs.getString(1)%>"><h3><strong><font color="#993366"><%=rs.getString(4)%></font></strong></h3></a></p> - <%=rs.getString(8)%>
						<p><font color="#999999"><%=rs.getString(5)%></font></p>
                                                <p><strong><font color="#FFCC99">Uploaded By <font color="#330099"><%=rs.getString(3)%></font> on <font color="#3300FF"><%=rs.getString(6)%></font><font color="#3300F0"> , <%=rs.getInt(10)%> View(s).</font></font></strong></p>
                                                
					</td>
					<%}%>
					</tr>
				
					<%
					
						}
						catch(Exception e1)
						{
						out.println(e1.getMessage());
						}
					%>
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
						<h3><a href="asearch.jsp"><strong><font color="#00FFFF">Advanced Search</font></strong></a></h3>
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