<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%! 
String aid; 
int flag = 0;
PreparedStatement ps = null;
%>
 <% 
 try{ 
	aid = request.getParameter("a_id");
	 Connection con = Dao.getMyConnection();
	 System.out.println("Creating statement...");
	 ps = con.prepareStatement("delete from allowance " +"WHERE a_id = '"+aid+"'");
	 System.out.println("deleted...");
	 int i = ps.executeUpdate();
	 out.println(i);
         out.println("successfully deleted") ;
%>
<%
 }catch(Exception e) 
    {
        System.out.println(e);
    }
%>
</body>
</html>