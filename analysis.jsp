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
		
	</div>
	<div id="page" class="container">
		<div id="content"><font color="#0080FF"><a href="chart.jsp">View Graph Based On Category</a></font>
			
			<div class="post"><h2><font color="#FF0000"></font></h2>
				<div class="post-title">
				
          
		  					
												<table>
  <tr><td width="80"></td><td><a href="#"><font color="#006666" size="3" face="Times New Roman, Times, serif"><b>View Graph</b></font></a></td></tr></table>
<table id=graph align=center width=400 cellpadding=0 cellspacing=1 border=0 background="images/12.gif">
<tr>
<% 
int count = 0;
//String f="e_links";
//String s=null;
 try
{
Connection con2=databasecon.getconnection();
  PreparedStatement ps2=con2.prepareStatement("select e_links from link1");
   ResultSet rs2=ps2.executeQuery();

 
    while(rs2.next()) {
	count=rs2.getInt(1);
     // count++;
                }
    //out.print(count);
//out.print(count);
         
      } 
	  catch(Exception e3)
{
out.println(e3.getMessage());
}

int count1 = 0;
//String f1="i_links";
//String s1=null;
 try
{
Connection con=databasecon.getconnection();
  PreparedStatement ps=con.prepareStatement("select i_links from link2");
   ResultSet rs=ps.executeQuery();

 
    while(rs.next()) {
	count1=rs.getInt(1);
      //count1++;
                }
    //out.print(count);
//out.print(count);
         
      } 
	  catch(Exception e)
{
out.println(e.getMessage());
}


int a=count*20;
int b=count1*20;


	%>
        <p> X-Axis: Type of Links </p> <p> Y-Axis: No.of Links</p><p>1 CM = 1 Link</p>
	<td align=center valign=bottom width=10><font color="#660066" size="2"><%=count%></font><font color="#660066" size="2">(External Links)</font><br>
<div style=' background-color:cyan; width:20; height:<%=a%>;' />
<td align=center valign=bottom width=10><font color="#660066" size="2"><%=count1%></font><font color="#660066" size="2">(Internal Links>)</font><br>
<div style=' background-color:green; width:20; height:<%=b%>;' />
</tr>


</table>  	
										          
												  									
											
				</div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
				<h2></h2>
				<ul class="style2">
					<li class="first">
						<h3><a href="admin.jsp"><strong><font color="#009900FFFFFF">Upload Now</font></strong></a></h3>
					</li>
					<li>
						 <h3><a href="userdetail.jsp"><font color="#9900FF"><strong>User Details</strong></font></a></h3>
					</li>
					<li>
						<h3><a href="#"><font color="#00FFFF"><strong>Measurement & Analysis</strong></font></a></h3>
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
