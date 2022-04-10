<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String cid;
String name;
String p_name;
String desig;
String div;
String date;
int flag = 0;
%>
<%
	
	 	cid = request.getParameter("c_id");
		name = request.getParameter("c_name");
		p_name = request.getParameter("post_name");
		desig= request.getParameter("designation");
		div= request.getParameter("division");
                date= request.getParameter("date");
                
	
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into reward values(?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,cid);
	stmt.setString(2,name);
	stmt.setString(3,p_name);
	stmt.setString(4,desig);
	stmt.setString(5,div);
        stmt.setString(6,date);
        
	
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
<jsp:include page="reward.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

