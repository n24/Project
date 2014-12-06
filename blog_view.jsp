<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html> 
    <head>`
        <title></title> 
    </head> 
    <body>
<%
            String src = (String)request.getParameter("id");
            
%>
            
   
            <video width="447px" height="298px" controls> <source src="Gallery/<%=src%>" type="video/mp4">
						<source src="Gallery/<%=src%>" type="video/ogg"> <source src="Gallery/<%=src%>" type="video/webm">
						<object data="Gallery/<%=src%>" width="447px" height="298px">
						<embed src="Gallery/<%=src%>" width="447px" height="298px">
                                                </object></video>
                                                <%
			Statement st4 = null;
			ResultSet rs1=null;
			int id1=0;
			//String category=(String)session.getAttribute("category");
			Connection con1=databasecon.getconnection();
			st4=con1.createStatement();
			String sql1="select max(e_links) from link1";
			rs1=st4.executeQuery(sql1);
			if(rs1.next()){
				if(rs1.getInt(1)==0)
					id1=1;
				else
					id1=rs1.getInt(1)+1;
                        }
try
{
	Connection con6 = databasecon.getconnection();
PreparedStatement ps6=con6.prepareStatement("insert into link1(e_links) values(?)");
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
        Connection ncon = null;
        Statement nst = null;
        ResultSet nrs = null;
        
    
        try {
            ncon = databasecon.getconnection();
            nst = ncon.createStatement();
            String q = "select view from video where videoname='"+src+"'";
            nrs=nst.executeQuery(q);
            
            
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
            PreparedStatement nps1 = ncon1.prepareStatement ("update video set view='"+view+"' where videoname='"+src+"' ");
            nps1.executeUpdate();        
        }
        catch (Exception e1) {
            out.println (e1.getMessage());
        }
      %>
<% 
        String c = null;
        try
{
	Connection ncon3 = databasecon.getconnection();
PreparedStatement nps3=ncon3.prepareStatement("select category from video where videoname = '"+src+"'");
ResultSet nrs2 = nps3.executeQuery();
if (nrs2.next())
    c = nrs2.getString(1);
}
        catch (Exception e1) {
            out.println(e1.getMessage());
        }
        %>
        <%
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
</body>
</html>