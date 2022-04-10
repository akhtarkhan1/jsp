<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%! 
String cid; 
int flag = 0;
PreparedStatement ps = null;
%>
 <% 
 try{ 
	cid = request.getParameter("c_id");
	 Connection con = Dao.getMyConnection();
	 System.out.println("Creating statement...");
	 ps = con.prepareStatement("delete from crew_member " +"WHERE c_id = '"+cid+"'");
	 System.out.println("deleted...");
	 int i = ps.executeUpdate();
	 out.println(i);
         out.println("successfully deleted") ;
%>
<%
 }catch(Exception e) 
    {
        System.out.println(e);
    }
%>
</body>
</html>