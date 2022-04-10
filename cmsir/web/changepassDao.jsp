<%@page import="mypack.Dao"%>
<%@page import="java.sql.*"%>
<% 
String pass,npass; 
pass=request.getParameter("pass"); 
npass=request.getParameter("npass");
boolean f= validate(pass,npass);
if(f==false) 
{
%> 
<%@ include file="changepass.jsp" %>
<%
} else {
%> 
<%@ include file="admindept.jsp" %>
<%
} 
%>
<%!
public static PreparedStatement ps=null;
public static Connection con=null;
public static boolean validate(String pass, String npass)
{
	boolean flag =false; 
	try 
	{ 
		Connection con = Dao.getMyConnection();
		ps = con.prepareStatement("update admin set pass='"+npass+"' where pass='"+pass+"'");
		int i = ps.executeUpdate();
		System.out.print(i);
		if(i > 0){
			System.out.println("Password is setup");	
		}
		
	} catch(Exception ex) 
	{
		System.out.println(ex); 
	} 
	return flag; 
} 
	
%>