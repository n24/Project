<strong><%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
    <%
    String name = (String) session.getAttribute ("name");
    session.setAttribute ("name",name);
    String src = (String) request.getParameter("post");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    Connection ncon = null;
    Statement nst = null;
    ResultSet nrs = null;
           
            try {
                con = databasecon.getconnection();
                st = con. createStatement();
                PreparedStatement npt = con.prepareStatement("insert into blog_video values(?,?)");
                npt.setString(1,name);
                npt.setString(2,src);
                npt.executeUpdate();
                response.sendRedirect("blog_user.jsp");
            }
            catch (Exception e1) {
                out.println(e1.getMessage());
            }
          %>
    