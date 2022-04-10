<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String cid;
String name;
String p_name;
String desig;
String div;
String date;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	
	 	cid = request.getParameter("c_id");
		name = request.getParameter("c_name");
		p_name = request.getParameter("post_name");
		desig= request.getParameter("designation");
		div= request.getParameter("division");
                date= request.getParameter("date");
                
	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	 ps = con.prepareStatement("update reward set c_name ='"+name+"',post_name='"+p_name+"',designation='"+desig+"',division='"+div+"',date='"+date+"' where c_id='"+cid+"'"); 
	int s = ps.executeUpdate();
	out.println(s);
	if (s == 1){
		out.println("record is updated");
	}
	
%> 
<%
}
catch(Exception e) 
{
	System.out.println(e); 
} %>
</body>
</html>