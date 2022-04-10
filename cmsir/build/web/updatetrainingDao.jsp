<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String tid;
String cid;
String c_name;
String t_frm;
String t_to;
String t_at;
String phy_test;
String pdate;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	
                tid = request.getParameter("t_id");
	 	cid = request.getParameter("c_id");
		c_name = request.getParameter("name");
		t_frm= request.getParameter("t_from");
		t_to= request.getParameter("t_to");
                t_at= request.getParameter("t_at");
                phy_test= request.getParameter("phy_test");
                pdate= request.getParameter("phy_date");

	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	
	 ps = con.prepareStatement("update training set c_id ='"+ cid+"',name='"+c_name+"',t_from='"+t_frm+"',t_to='"+t_to+"',t_at='"+t_at+"',phy_test='"+phy_test+"',phy_date='"+pdate+"' where t_id='"+tid+"'"); 
	//System.out.println("updated..."); 
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