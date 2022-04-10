<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%! 
String t_id; 
int flag = 0;
PreparedStatement ps = null;
%>
 <% 
 try{ 
	 t_id = request.getParameter("t_id");
	 Connection con = Dao.getMyConnection();
	 System.out.println("Creating statement...");
	 ps = con.prepareStatement("delete from training " +"WHERE t_id = '"+t_id+"'");
	 System.out.println("deleted...");
	 int i = ps.executeUpdate();
	 out.println(i);	 
%>
<%
 }catch(Exception e) 
    {
        System.out.println(e);
    }
%>
</body>
</html>