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
function valid2()
{
var a=document.ff.comment.value;
if(a=="")
{
alert("Search Your Videos");
document.ff.comment.focus();
return false;
}
}

</script>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
<%
			Statement st4 = null;
			ResultSet rs1=null;
			int id1=0;
                        String nm = null;

			Connection con1=databasecon.getconnection();
			st4=con1.createStatement();
			String sql1="select max(i_links) from link2";
			rs1=st4.executeQuery(sql1);
			while(rs1.next()){
				if(rs1.getInt(1)==0)
					id1=1;
				else
					id1=rs1.getInt(1)+1;
try
{
	Connection con6 = databasecon.getconnection();
PreparedStatement ps6=con6.prepareStatement("insert into link2(i_links) values(?)");
ps6.setInt(1,id1);
//ps6.setString(2,c);
ps6.executeUpdate();
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

<%
			String c=(String)session.getAttribute("c");			
try
{
	Connection con3 = databasecon.getconnection();
PreparedStatement ps3=con3.prepareStatement("insert into analysis(category) values(?)");
//ps3.setInt(1,id1);
ps3.setString(1,c);
ps3.executeUpdate();
}
catch(Exception e3)
{
out.println(e3.getMessage());
}
}

%>

  <div id="header" class="container"> 
    <div id="logo"> <a href="#"> 
      <p>&nbsp;</p>
      <img src="images/title.png"></a> </div>
  </div>
		
	</div><h3 align="right"><a href="utube.jsp"><font color="#0000FF">Home</font></a>&nbsp;&nbsp;<a href="userupload.jsp"><font color="#0000FF">Upload</font></a>&nbsp;&nbsp;<a href="myvideos.jsp"><font color="#0000FF">My VIdeos</font></a>&nbsp;&nbsp;<a href="index.html"><font color="#0000FF">LogOut</font></a>&nbsp;&nbsp;&nbsp;</h3>

	<div id="page" class="container">
	
	<%
		String name=(String)session.getAttribute("name");
		//out.print(name);
		String i=request.getParameter("id");
		
		String vid1 =null;
		String title=null;
		//String name=null;
		String date=null;
                String c = null;
		String videoname1 = null;
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		

		   try
{

con = databasecon.getconnection();
	    st=con.createStatement();

PreparedStatement ps=con.prepareStatement("select  * from video where vid='"+i+"' ");
rs=ps.executeQuery();
//ResultSet rs=ps.executeQuery();
	%>
		<div id="content">
			<form action="search.jsp" name="f" method="post" onSubmit="return valid1()">
				<table align="center">
					<tr><td height="59"><p><input type="text" class="Large" name="search1" size="70">&nbsp;&nbsp;<input type="submit" value="Search">&nbsp;&nbsp;</p></td></tr>
				</table>
			</form>
			<div class="post">
				<table width="800" align="center">
					
					<%
						while(rs.next())
						{
						vid1=rs.getString(1);
                                                nm = rs.getString(3);
                                                c = rs.getString(9);
						session.setAttribute( "vid1", vid1 );
						videoname1=rs.getString(8);
						session.setAttribute( "videoname1", videoname1 );
						//date=rs.getString()
						//out.print(i);
						
					%>
					<tr><td align="left"><font color="#9900FF"><%=rs.getString(4)%></font></td></tr>
					<tr>
						<td align="center"><video width="447px" height="298px" controls> <source src="Gallery/<%=videoname1%>" type="video/mp4">
						<source src="Gallery/<%=videoname1%>" type="video/ogg"> <source src="Gallery/<%=videoname1%>" type="video/webm">
						<object data="Gallery/<%=videoname1%>" width="447px" height="298px">
						<embed src="Gallery/<%=videoname1%>" width="447px" height="298px">
						</object></video></td>
						<tr><td><p>Video Description :<font color="#FF00FF"><%=rs.getString(5)%></font></p>
						<p>Uploaded By <font color="#FF0000"><%=rs.getString(3)%></font> on <font color="#FF0000"><%=rs.getString(6)%></font></p>
                                                <p> <%=rs.getInt(10)%> Views
                                                    <p> External link: </p>
                                                        <p> <input type ="textbox" name ="exlink" value ="<%=videoname1%>"> </input> <p></td></tr>
					<%
						}
					%>
					</tr>
				</table>
					<%
						}
						catch(Exception e1)
						{
						out.println(e1.getMessage());
						}
					%>
					<table align="left" width="700">
								<form action="comments2.jsp" name="ff" method="post" onSubmit="return valid12()">
								<tr>
									 <td><p><h3><font color="#FF6633">Comments</font></h3></p></td>
								</tr>
								<tr><td align="center" height="59"><p><input type="text" class="Large" name="comment" size="40 ">&nbsp;&nbsp;<input type="submit" value="send">&nbsp;&nbsp;</p></td></tr>
								</form>
								</table>
								    <p>&nbsp;</p>
    <p><br>
    </p>
                                                                    <% 
        Connection ncon = null;
        Statement nst = null;
        ResultSet nrs = null;
        
    
        try {
            ncon = databasecon.getconnection();
            nst = ncon.createStatement();
            String q = "select view from video where vid='"+i+"'";
            PreparedStatement ppt = ncon. prepareStatement(q);
            nrs=ppt.executeQuery();
            
            
        }
        catch (Exception e1) {
            out.println (e1.getMessage());
        }
    
     %>
     <%
        Connection ncon1 = null;
        ResultSet nrs1 = null;
        Statement nst1 = null;
        int view = 0;
        if (nrs.next())
        view = nrs.getInt(1) + 1;
        try {
            ncon1 = databasecon.getconnection();
            nst1 = ncon1.createStatement();
            PreparedStatement nps1 = ncon1.prepareStatement ("update video set view='"+view+"' where vid='"+i+"' ");
            nps1.executeUpdate();        
        }
        catch (Exception e1) {
            out.println (e1.getMessage());
        }
      %>
<%
		
		Connection con0=null;
		Statement st0=null;
		ResultSet rs0=null;
		

		   try
{

con0 = databasecon.getconnection();
	    st0=con0.createStatement();

PreparedStatement ps0=con0.prepareStatement("select  * from comments where vid='"+i+"' ");
rs0=ps0.executeQuery();
//ResultSet rs=ps.executeQuery();
	%>
	<table width="600"><tr><td><p><strong><font color="#FF0000">User Comments :</font></strong></p></td></tr></table>
	<table width="600" cellpadding="6"  style="border:1px gray solid">
	
					<%
						while(rs0.next())
						{
						//date=rs.getString()
						//out.print(i);
						
					%>									
									<tr><td width="100"><font color="#9900FF"><%=rs0.getString(2)%></font></td>
									<td><%=rs0.getString(6)%></td>
									<td width="100"><font color="#9900FF"><%=rs0.getString(3)%></font></td>
					<%
						}
					%>
					</tr>
				</table>
					<%
						}
						catch(Exception e1)
						{
						out.println(e1.getMessage());
						}
					%>
					
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
			
		<div id="content">
			<div class="post"><p><h3><font color="#FF0000">Related Videos</font></h3></p>
			<%
		  		 try
				 	{
					con = databasecon.getconnection();
					st=con.createStatement();
					PreparedStatement ps=con.prepareStatement("select  * from video where (category='"+c+"' OR name='"+nm+"') AND vid <>'"+vid1+"' order by RAND() limit 4");
					rs=ps.executeQuery();
					//ResultSet rs=ps.executeQuery();
					%>
				
					<ul class="style2">
					<%
						while(rs.next())
						{
						//out.print(i);
						
					%>
					<h2><font color="#9900FF"><%=rs.getString(4)%></font></h2>
					
					<li class="first"><a href="searchview1.jsp?id=<%=rs.getString(1)%>">
						
					<video width="150px" height="100px"> <source src="Gallery/<%=rs.getString(8)%>" type="video/mp4">
						<source src="Gallery/<%=rs.getString(8)%>" type="video/ogg"> <source src="Gallery/<%=rs.getString(8)%>" type="video/webm">
						<object data="Gallery/<%=rs.getString(8)%>" width="150px" height="100px">
						<embed src="Gallery/<%=rs.getString(8)%>" width="150px" height="100px">
						</object></video></a>
						<br>Uploaded by <%=rs.getString(3)%>
                                                    <br> On <%=rs.getString(6)%>
                                                    <br> <%=rs.getInt(10)%> View(s)
						</li>
					<%
						}
					%>
					</ul>
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
</div>
<div id="footer">	
</div>
</body>
</html>
</strong>