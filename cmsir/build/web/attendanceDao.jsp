<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String cid;
String c_name;
String t_present;
String t_leave;
String date_frm;
String date_to;
int flag = 0;
%>
<%
	
	 	cid = request.getParameter("c_id");
		c_name = request.getParameter("name");
		t_present= request.getParameter("total_present");
		t_leave= request.getParameter("total_leave");
                date_frm= request.getParameter("date_of_leave_from");
                date_to= request.getParameter("date_of_leave_to");
                
                
	
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into attendance values(?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,cid);
	stmt.setString(2,c_name);
	stmt.setString(3,t_present);
	stmt.setString(4,t_leave);
        stmt.setString(5,date_frm);
        stmt.setString(6,date_to);
        
        
	
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
<jsp:include page="attendance.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

