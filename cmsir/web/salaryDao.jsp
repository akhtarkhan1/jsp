<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String aid;
String cid;
String desig;
String p_scale;
int pay_scale;
String grade_pay;
int gradepay;
String n_allow;
int night_allow;
String ot_allow;
int ovt_allow;
String total_sal;
int t_sal;
int flag = 0;
%>
<%
                aid = request.getParameter("a_id");
	 	cid = request.getParameter("c_id");
		desig = request.getParameter("designation");
		p_scale = request.getParameter("payscale");
                pay_scale=Integer.parseInt(p_scale);
		grade_pay=request.getParameter("gradepay");
                gradepay=Integer.parseInt(grade_pay);
                n_allow= request.getParameter("night_allowance_spell");
                night_allow=Integer.parseInt(n_allow);
                ot_allow= request.getParameter("overtime_allowance_spell");
                ovt_allow=Integer.parseInt(ot_allow);
                total_sal= request.getParameter("t_salary");
                t_sal=Integer.parseInt(total_sal);
               
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into allowance values(?,?,?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,aid);
	stmt.setString(2,cid);
	stmt.setString(3,desig);
	stmt.setInt(4,pay_scale);
        stmt.setInt(5,gradepay);
        stmt.setInt(6,night_allow);
        stmt.setInt(7,ovt_allow);
	stmt.setInt(8,t_sal);
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
<jsp:include page="salary.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

