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
    <%
        Connection ncon = null;
                                    Statement nst = null;
                                    ResultSet nrs = null;
                                    %>
        
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
                session.setAttribute ("name",name);
	%>
		<div id="content">
			<div class="post">
				
        <h2><font color="#0080FF">Welcome "<font color="#0000FF"><%=name%></font>"</font></h2>
      </div>
			<div class="post">
				<div class="post-title">
					
          
		  		<form action="post.jsp" name="f" method="post" onSubmit="return valid1()">
					<table height="111" align="center">
						<tr>
							<td height="59"><p><input type="text" class="Large" name="post" size="70" placeholder="Paste Video URL"></p></td>	
						</tr>
						<tr>
							<td align="center"><p>&nbsp;&nbsp;<input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Post Video">&nbsp;&nbsp;
							
						</tr>
					</table>
				</form>
                                <%
                                    
                                    try {
                                        ncon = databasecon.getconnection();
                                        nst = ncon.createStatement();
                                        PreparedStatement nps = ncon.prepareStatement("select * from blog_video where name = '"+name+"'");
                                        nrs = nps.executeQuery();
                                    }
                                    catch (Exception e1) {
                                        out.println (e1.getMessage());
                                    }
                                     %>
                                    <tr><td><p><h3><strong><font color="#0000FF">Video List</font></strong></h3></p></td></tr>
                                    <% 
                                    while (nrs.next()) {
                                        String src = nrs.getString (2);
                                        %>
                                    <a href="blog_view.jsp?id=<%=src%>">
                                        <%=src%>	
					<video width="447px" height="298px"> <source src="Gallery/<%=src%>" type="video/mp4">
						<source src="Gallery/<%=src%>" type="video/ogg"> <source src="Gallery/<%=src%>" type="video/webm">
						<object data="Gallery/<%=src%>" width="447px" height="298px">
						<embed src="Gallery/<%=src%>" width="447px" height="298px">
						</object></video></a></p>
                                    <% } %>
				</div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
                            <h4> <a href="index.html"> Logout </a></h4>
				<h2> OTHER BLOGS </h2>
				<ul class="style2">
					
                                            <% 
                                                Connection con = databasecon.getconnection();
                                                PreparedStatement ps = con.prepareStatement ("select name from blog_signup where name <>'"+name+"'");
                                                ResultSet rs = ps.executeQuery();
                                                while (rs.next()) {
                                                    String n = rs.getString(1);
                                                
                                            %>
                                            <li class="first">
                                                
                                                <h3><a href="blog_other.jsp?name=<%=n%>&&mname=<%=name%>"><strong><font color="#9900FF"><%=n%>
                                                                
                                                
                                            </li>
                                            <% } %>
										
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