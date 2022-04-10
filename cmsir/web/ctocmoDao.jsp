<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String cid;
String ct_place;
String ct_time;
String cm_place;
String cm_time;
String dr_depar;
String dr_arr;
int flag = 0;
%>
<%
                cid = request.getParameter("c_id");
	 	ct_place = request.getParameter("ctoplace");
		ct_time = request.getParameter("ctotime");
		cm_place= request.getParameter("cmoplace");
		cm_time= request.getParameter("cmptime");
                dr_depar= request.getParameter("driver_departure");
                dr_arr= request.getParameter("driver_arrival");
               

                
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into ctocmo values(?,?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,cid);
	stmt.setString(2,ct_place);
	stmt.setString(3,ct_time);
	stmt.setString(4,cm_place);
        stmt.setString(5,cm_time);
        stmt.setString(6,dr_depar);
        stmt.setString(7,dr_arr);
       

        
        
	
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
<jsp:include page="ctocmo.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

