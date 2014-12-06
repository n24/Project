<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
//String s="orkut";
String query="SELECT e_links,i_links from analysis";

JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/external_links","com.mysql.jdbc.Driver","root","root");

dataset.executeQuery(query);
JFreeChart chart = ChartFactory .createBarChart("analysis", "e_links", "i_links",dataset,PlotOrientation.VERTICAL,true, true, false);
try
{
%>
<table>
<%
ChartUtilities.saveChartAsJPEG(new File("E:/apache-tomcat-6.0.18/webapps/reddened_10-12N/Gallery/12345.jpg"), chart, 400, 300);

%>
</table>
<%

}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href='http://fonts.googleapis.com/css?family=Englebert|Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />


</head>
<body>
<div id="header" class="container"> 
  <h1>A Learning Approach to SQL Query Results Ranking Using Skyline and Users’ 
    Current Navigational Behavior</h1>
  <div id="logo"> 
    <h1><a href="#"></a></h1>
  </div>
</div>
<div id="wrapper" class="container">
	<div id="page">
		<div id="content"<h2>Welcome: Admin</h2> <a href="#" class="image-style"><img src="Gallery/12345.jpg" width="700" height="250" alt="" /></a>
			
					</div>
		<div id="sidebar">
			<div id="sbox1">
				
				<ul class="list-style1">
					<strong></strong>
	<a href="auto.jsp" accesskey="1" title=""><font size="+3">Upload Auto</font></a><br>
			<a href="ranking.jsp" accesskey="1" title=""><font size="+3">View Data</font></a><br>
			<a href="graph.jsp" accesskey="3" title=""><font size="+3">View Graph</font></a><br>
			<a href="logout.jsp" accesskey="3" title=""><font size="+3">Logout</font></a><br>
				</ul>
			</div>
			<div id="sbox2">
				<h2></h2>
					<ul class="list-style2">
						
					</ul>
			</div>
		</div>
	</div>
</div>
<div id="footer">
	
</div>
</body>
</html>
