<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String cid;
String c_name;
String s_on;
String s_off;
String km_earng;
int km_earn;
String duration;
String ttl_tdt;
int t_tdt;
String ttl_na;
int t_na;
String s_id;
String s_name;
String s_code;
String from;
String to;
String tounge;
String trip;
int trp;
String tr_load;
int t_load;
String t_type;
String serv;
String co_engine;
String r_room;
String na_sp;
String ot_sp;
int flag = 0;
%>
<%
	
	 	cid = request.getParameter("c_id");
		c_name = request.getParameter("c_name");
		s_on= request.getParameter("sign_on");
		s_off= request.getParameter("sign_off");
                km_earng= request.getParameter("km_earning");
                km_earn=Integer.parseInt(km_earng);
                duration= request.getParameter("duration");
                ttl_tdt = request.getParameter("total_tdt");
                t_tdt=Integer.parseInt(ttl_tdt);
		ttl_na = request.getParameter("total_na");
                t_tdt=Integer.parseInt(ttl_na);
		s_id= request.getParameter("sec_id");
		s_name= request.getParameter("sec_name");
                s_code= request.getParameter("sec_code");
                from= request.getParameter("p_from");
                to= request.getParameter("p_to");
		tounge = request.getParameter("tounge");
		trip= request.getParameter("trips");
                trp=Integer.parseInt(trip);
		tr_load= request.getParameter("train_load");
                t_load=Integer.parseInt(tr_load);
                t_type= request.getParameter("train_type");
                serv= request.getParameter("service");
                co_engine= request.getParameter("cls_of_engine");
                r_room= request.getParameter("running_roon");
                na_sp= request.getParameter("na_spell");
                ot_sp= request.getParameter("ot_spell");
                
                
	
	try{
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into tdt values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,cid);
	stmt.setString(2,c_name);
	stmt.setString(3,s_on);
	stmt.setString(4,s_off);
        stmt.setInt(5,km_earn);
        stmt.setString(6,duration);
        stmt.setInt(7,t_tdt);
	stmt.setInt(8,t_na);
	stmt.setString(9,s_id);
	stmt.setString(10,s_name);
        stmt.setString(11,s_code);
        stmt.setString(12,from);
        stmt.setString(13,to);
	stmt.setString(14,tounge);
	stmt.setInt(15,trp);
	stmt.setInt(16,t_load);
        stmt.setString(17,t_type);
        stmt.setString(18,serv);
        stmt.setString(19,co_engine);
	stmt.setString(20,r_room);
	stmt.setString(21,na_sp);
	stmt.setString(22,ot_sp);
        
        
	
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
<jsp:include page="TDT.jsp"></jsp:include>
<%
}
else
{ 
out.println("Successfully Registered");
}
 %>

