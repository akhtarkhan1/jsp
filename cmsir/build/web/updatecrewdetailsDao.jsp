<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String cid;
String type;
String p_name;
String join_date;
String salary;
String desig;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	
                
	 	cid = request.getParameter("c_id");
		type = request.getParameter("c_type");
		join_date= request.getParameter("doj");
		salary= request.getParameter("basic_salary");
                desig= request.getParameter("designatiob");

	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	
	 ps = con.prepareStatement("update crew_member set c_type ='"+type+"',doj='"+join_date+"',basic_salary='"+salary+"',designatiob='"+desig+"'where c_id='"+cid+"'"); 
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