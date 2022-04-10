<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String pid;
String cid;
String p_name;
String date;
int flag = 0;
%>
<%
                pid = request.getParameter("p_id");
	 	cid = request.getParameter("c_id");
		p_name = request.getParameter("post_name");
		date= request.getParameter("date");
		                
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into promotion values(?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,pid);
	stmt.setString(2,cid);
	stmt.setString(3,p_name);
	stmt.setString(4,date);
        
       

        
        
	
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
<jsp:include page="promotion.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

