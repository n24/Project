<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%
//String company=(String)session.getAttribute("com");
		//String id = session.getAttribute("id").toString();
		String name=(String)session.getAttribute("name");
		java.util.Date now = new java.util.Date();
		String DATE_FORMAT1 = "dd/MM/yyyy";
		SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
		String strDateNew1 = sdf1.format(now);
		//out.print(id);
//String name=request.getParameter("name");<br>
//String i=request.getParameter("id");
String vid1=(String)session.getAttribute("vid1");
//out.print(vid);
String videoname1=(String)session.getAttribute("videoname1");
String comment=request.getParameter("comment");
//String gender=request.getParameter("log");
//String email=request.getParameter("mail");
//String mobile=request.getParameter("mob");

try
{
	Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into comments(name,date,vid,videoname,comment) values(?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,strDateNew1);
ps.setString(3,vid1);
ps.setString(4,videoname1);
ps.setString(5,comment);
//ps.setString(6,mobile);

//ps.setString(7,status);

ps.executeUpdate();
response.sendRedirect("sview1.jsp?success");



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

