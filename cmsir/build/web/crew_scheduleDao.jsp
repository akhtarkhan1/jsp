<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String cid;
String c_name;
String t_id;
String t_name;
String s_on;
String s_off;
String min;
String date;
int flag = 0;
%>
<%
                cid = request.getParameter("c_id");
	 	c_name = request.getParameter("name");
		t_id = request.getParameter("train_id");
		t_name= request.getParameter("train_name");
                s_on= request.getParameter("sign_on");
                s_off= request.getParameter("sign_off");
                min= request.getParameter("min_no_of_crews");
                date= request.getParameter("date");    
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into crew_schedule values(?,?,?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,cid);
	stmt.setString(2,c_name);
	stmt.setString(3,t_id);
	stmt.setString(4,t_name);
        stmt.setString(5,s_on);
	stmt.setString(6,s_off);
	stmt.setString(7,min);
	stmt.setString(8,date);
        
	 flag=stmt.executeUpdate();
	 }catch(Exception e)
	 {
	 System.out.println(e);
	 }
%>
<%
if(flag==0)
{
out.println("Plz try again");
out.println("<hr>");
%>
<jsp:include page="crew_schedule.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

