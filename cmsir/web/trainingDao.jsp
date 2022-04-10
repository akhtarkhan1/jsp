<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

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
%>
<%
                tid = request.getParameter("t_id");
	 	cid = request.getParameter("c_id");
		c_name = request.getParameter("name");
		t_frm= request.getParameter("t_from");
		t_to= request.getParameter("t_to");
                t_at= request.getParameter("t_at");
                phy_test= request.getParameter("phy_test");
                pdate= request.getParameter("phy_date");

                
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into training values(?,?,?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,tid);
	stmt.setString(2,cid);
	stmt.setString(3,c_name);
	stmt.setString(4,t_frm);
        stmt.setString(5,t_to);
        stmt.setString(6,t_at);
         stmt.setString(7,phy_test);
        stmt.setString(8,pdate);

        
        
	
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
<jsp:include page="training.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

