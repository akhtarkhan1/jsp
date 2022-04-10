<%@page import="java.sql.*"%>
<%@page import="mypack.Dao" %>
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
PreparedStatement ps = null;
%>
<% 
try{
	
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
                t_na=Integer.parseInt(ttl_na);
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
                
                

	Connection con = Dao.getMyConnection();
	System.out.println("Creating statement...");
	
	
	 ps = con.prepareStatement("update tdt set c_name ='"+c_name+"',sign_on='"+s_on+"',sign_off='"+s_off+"',km_earning='"+km_earn+"',duration='"+duration+"',total_tdt='"+t_tdt+"',total_na='"+t_na+"',sec_id='"+s_id+"',sec_name='"+s_name+"',sec_code='"+s_code+"',p_from='"+from+"',p_to='"+to+"',tounge='"+tounge+"',trips='"+trip+"',train_load='"+t_load+"',train_type='"+t_type+"',service='"+serv+"',cls_of_engine='"+co_engine+"',running_room='"+r_room+"',na_spell='"+na_sp+"',ot_spell='"+ot_sp+"'where c_id='"+cid+"'"); 
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