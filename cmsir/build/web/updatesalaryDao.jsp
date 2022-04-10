<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
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
PreparedStatement ps = null;
%>
<% 
try{
	
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
               
                
	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	 ps = con.prepareStatement("update allowance set c_id ='"+cid+"',designation='"+desig+"',payscale='"+pay_scale+"',gradepay='"+gradepay+"',night_allowance_spell='"+night_allow+"',overtime_allowance_spell='"+ovt_allow+"',t_salary='"+t_sal+"' where a_id='"+aid+"'"); 
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