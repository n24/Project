<%@ page import="java.sql.*,databaseconnection.*"%>

<%
	String name=request.getParameter("name");
String pass=request.getParameter("pass");
	session.setAttribute("name",name);
	//String name=null,pass=null;
int id=0;
	try{
		Connection con = databasecon.getconnection();
		PreparedStatement ps=con.prepareStatement("select id,name,pass from blog_signup where name='"+name+"' AND pass='"+pass+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		id=rs.getInt(1);
		name=rs.getString(2);
		pass=rs.getString(3);
		//role=rs.getString(3);
		session.setAttribute("id",id);
		session.setAttribute("name",name);
		session.setAttribute("pass",pass);
		out.print(name)	;
		response.sendRedirect("blog_user.jsp");

		}
		else
		{
		out.println("enter correct id and password");
		}


	}
	catch(Exception e2)
	{
		out.println(e2.getMessage());
	}
%>

