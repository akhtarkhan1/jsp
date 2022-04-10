<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
<%! 
String cid;
String ctoplace;
String ct_time;
String cm_place;
String cm_time;
String dr_depar;
String dr_arr;
int flag = 0;
PreparedStatement ps = null;
%>
<% 
try{
	
	 	cid = request.getParameter("c_id");
	 	ctoplace = request.getParameter("ctoplace");
		ct_time = request.getParameter("ctotime");
		cm_place= request.getParameter("cmoplace");
		cm_time= request.getParameter("cmotime");
                dr_depar= request.getParameter("driver_departure");
                dr_arr= request.getParameter("driver_arrival");
               
                
	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	 ps = con.prepareStatement("update ctocmo set ctoplace ='"+ctoplace+"',ctotime='"+ct_time+"',cmoplace='"+cm_place+"',cmotime='"+cm_time+"',driver_departure='"+dr_depar+"',driver_arrival='"+dr_arr+"' where c_id='"+cid+"'"); 
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