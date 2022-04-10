<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String cid;
String c_name;
String train_id;
String t_name;
String s_on;
String s_off;
String min;
String date;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	
                cid = request.getParameter("c_id");
	 	c_name = request.getParameter("name");
		train_id = request.getParameter("train_id");
		t_name= request.getParameter("train_name");
                s_on= request.getParameter("sign_on");
                s_off= request.getParameter("sign_off");
                min= request.getParameter("min_no_of_crews");
                date= request.getParameter("date");    

	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	
	 ps = con.prepareStatement("update crew_schedule set name ='"+c_name+"',train_id='"+train_id+"',train_name='"+t_name+"',sign_on='"+s_on+"',sign_off='"+s_off+"',min_no_of_crews='"+min+"',date='"+date+"'where c_id='"+cid+"'"); 
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