<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%
//String company=(String)session.getAttribute("com");
String name=request.getParameter("name");
session.setAttribute("name",request.getParameter("name"));
String pass=request.getParameter("pass");
String dob=request.getParameter("dob");
String gender=request.getParameter("log");
String email=request.getParameter("mail");
String mobile=request.getParameter("mob");

try
{
	Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into signup(name,pass,dob,gender,email,mobile) values(?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,pass);
ps.setString(3,dob);
ps.setString(4,gender);
ps.setString(5,email);
ps.setString(6,mobile);

//ps.setString(7,status);

ps.executeUpdate();
response.sendRedirect("suc.jsp?success");



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

