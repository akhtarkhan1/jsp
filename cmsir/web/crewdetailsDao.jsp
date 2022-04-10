<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String cid;
String type;
String p_name;
String join_date;
String salary;
String desig;
int flag = 0;
%>
<%
	
	 	cid = request.getParameter("c_id");
		type = request.getParameter("c_type");
		join_date= request.getParameter("doj");
		salary= request.getParameter("basic_salary");
                desig= request.getParameter("designatiob");
                
	
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into crew_member values(?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,cid);
	stmt.setString(2,type);
	stmt.setString(3,join_date);
	stmt.setString(4,salary);
        stmt.setString(5,desig);
        
	
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
<jsp:include page="crewdetails.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

