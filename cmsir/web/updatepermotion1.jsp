<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String p_id; 
String post_name; 
String date;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	p_id = request.getParameter("p_id");
	post_name=request.getParameter("post_name");
	date=request.getParameter("date");
	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	//PreparedStatement ps=con.prepareStatement("update promotion set name='"+name+"',course='"+course+"',mobile='"+mobile+"',address='"+address+"',trainer='"+trainer+"',description='"+description+"',dateofbirth='"+dateofbirth+"',dateofjoining='"+dateofjoining+"',qualification='"+qualification+"',feesub='"+feesub+"',fee='"+fee+"',paid='"+paid+"',balance='"+balance+"',fathername='"+fathername+"',mothername='"+mothername+"'  where id= '"+id+"'");
	 ps = con.prepareStatement("update promotion set post_name ='"+ post_name+"',date='"+date+"' where p_id='"+p_id+"'"); 
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