<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String cid;
String c_name;
String t_present;
String t_leave;
String date_frm;
String date_to;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	
                cid = request.getParameter("c_id");
		c_name = request.getParameter("name");
		t_present= request.getParameter("total_present");
		t_leave= request.getParameter("total_leave");
                date_frm= request.getParameter("date_of_leave_from");
                date_to= request.getParameter("date_of_leave_to");
                date_to= request.getParameter("date_of_leave_to");
                

	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	
	 ps = con.prepareStatement("update attendance set name ='"+c_name+"',total_present='"+t_present+"',total_leave='"+t_leave+"',date_of_leave_from='"+date_frm+"',date_of_leave_to='"+date_to+"'where c_id='"+cid+"'"); 
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