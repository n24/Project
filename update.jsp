<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%
String id=(String)session.getAttribute("id");
String a=request.getParameter("a");
String b=request.getParameter("b");
String c=request.getParameter("c");
String d=request.getParameter("d");
   try
{

Connection con = databasecon.getconnection();

PreparedStatement ps=con.prepareStatement("update signup set name='"+a+"',email='"+b+"',mobile='"+c+"',gender='"+d+"' where id='"+id+"' ");
ps.executeUpdate();
}

catch(Exception e1)
{
out.println(e1.getMessage());
}
out.print(id);
out.print(a);
response.sendRedirect("s1.jsp?success");
%>

