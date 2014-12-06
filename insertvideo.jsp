<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>



<html>
<head>
</head>
<body>

<%
		String name=(String)session.getAttribute("name");
		String uid="0";
                int view = 0;
		String title=null,desc=null,date=null,image=null,videoname=null,category=null;
		//name=(String)session.getAttribute("name");
		//String qid=(String)session.getAttribute("qid");
				
		Statement st = null;
		ResultSet rs1=null;
		int id=0;
		
	try{
		
		Connection con1=databasecon.getconnection();
			st=con1.createStatement();
			String sql1="select max(vid) from video";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				if(rs1.getInt(1)==0)
					id=1;
				else
					id=rs1.getInt(1)+1;
			
				ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;
		String file=null;
		
		int report=0;
		int upload=0;
	
 
		File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	103333 * 103332400 * 1033333240); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("category"))
				{
					category=multi.getParameter(paramname);
				}				
				if(paramname.equalsIgnoreCase("title"))
				{
					title=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("desc"))
				{
					desc=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("date"))
				{
					date=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
				}
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Gallery\\"+image);
			file1 = new File(fPath);
			videoname=file1.getName();
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
			
			Connection con=databasecon.getconnection(); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO video VALUES(?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1,id);
                                ps.setInt(10,view);
               	ps.setString(2,uid);
				ps.setString(3,name);	
       			ps.setString(4,title);
       			ps.setString(5,desc);
			    ps.setString(6,date);
			    ps.setString(7,image);
				//ps.setInt(8,report);
				ps.setString(8,videoname);
				ps.setString(9,category);																			
				ps.executeUpdate();
       if(f == 0)
			ps.setObject(7,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(7,fs1,fs1.available());
		}	
			
		
			
			response.sendRedirect("uploaded.jsp");	
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		}		
	}
	catch (Exception eq) 
		{
			out.println(eq.getMessage());
		}
		
	
 %>

</body>
</html>