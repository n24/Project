<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>
	<form>
	<% 
           session.setAttribute("name",request.getParameter("name"));
	session.setAttribute("pass",request.getParameter("pass"));
	
	String name=(String)session.getAttribute("name");	
String pass=(String)session.getAttribute("pass");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	if(name.equals("admin")&&(pass.equals("admin")))
	{
	response.sendRedirect("admin.jsp");
	}
	else
	{	
	  out.println("Oop's! you are not Authenticated Person");
	}
	
	
	
            %>
             </form>
       </body> 	
